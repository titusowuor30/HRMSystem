from django.db import models
import random
from django.urls import reverse
from django.utils import timezone
import time
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
    thumb = models.ImageField(upload_to='media/user/',
                              default='media/user/img.png')

    REQUIRED_FIELDS = ['first_name', 'last_name', 'email']

# Create your models here.


class Department(models.Model):
    name = models.CharField(max_length=70, null=False, blank=False)
    history = models.TextField(
        max_length=1000, null=True, blank=True, default='No History')

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse("management:dept_detail", kwargs={"pk": self.pk})


class Employee(models.Model):
    user = models.OneToOneField(
        User, on_delete=models.CASCADE, related_name='employees')
    LANGUAGE = (('english', 'ENGLISH'), ('yoruba', 'YORUBA'),
                ('hausa', 'HAUSA'), ('french', 'FRENCH'))
    GENDER = (('male', 'MALE'), ('female', 'FEMALE'), ('other', 'OTHER'))
    emp_id = models.CharField(
        max_length=70, default='emp'+str(random.randrange(100, 999999, 1)))
    mobile = models.CharField(max_length=15)
    address = models.TextField(max_length=100, default='')
    emergency = models.CharField(max_length=11)
    gender = models.CharField(choices=GENDER, max_length=10)
    department = models.ForeignKey(
        Department, on_delete=models.SET_NULL, null=True)
    joined = models.DateTimeField(default=timezone.now)
    language = models.CharField(
        choices=LANGUAGE, max_length=10, default='english')
    account_no = models.CharField(max_length=10, default='0123456789')
    bank = models.CharField(max_length=25, default='First Bank Plc')
    salary = models.DecimalField(max_digits=8, decimal_places=2, default=0.00)

    def __str__(self):
        return self.user.first_name

    def get_absolute_url(self):
        return reverse("management:employee_view", kwargs={"pk": self.pk})


class Deductions(models.Model):
    description = models.CharField(max_length=100, default='PAYE')
    type = models.CharField(max_length=20, default='deduction', choices=(
        ('income', 'income'), ('deduction', 'deduction')))
    amount = models.DecimalField(max_digits=6, decimal_places=2, default=0.00)

    def __str__(self):
        return self.description

    @property
    def get_total_deductions(self):
        list = []
        for i in range(self.amount.count()):
            t_deductions = self.amount
            list.append(t_deductions)
        return sum(list)

    class Meta:
        verbose_name_plural = 'Income Setup'


class Cashadvance(models.Model):
    employee = models.ForeignKey(
        'Employee', on_delete=models.CASCADE, related_name='advance', blank=True, null=True)
    date = models.DateTimeField(auto_now_add=True)
    amount = models.DecimalField(max_digits=8, decimal_places=2, default=0.00)

    def __str__(self):
        return f'{self.amount}'


class GenPayrol(models.Model):
    employee = models.ForeignKey(
        'Employee', on_delete=models.CASCADE, related_name='payroll')
    deductions = models.ManyToManyField('Deductions', related_name='payroll')
    advance = models.ForeignKey(
        'Cashadvance', on_delete=models.CASCADE, related_name='payroll', blank=True, null=True)
    date_created = models.DateTimeField(
        auto_now_add=True, blank=True, null=True)

    def __str__(self):
        return self.employee.user.first_name

    @property
    def total_deductions(self):
        queryset = self.deductions.all().filter(type='deduction').aggregate(
            totalDeductions=models.Sum('amount'))
        return queryset["totalDeductions"]

    @property
    def total_incomes(self):
        queryset = self.deductions.all().filter(type='income').aggregate(
            totalDeductions=models.Sum('amount'))
        return queryset["totalDeductions"]

    @property
    def getNetSalary(self):
        return ((self.employee.salary + self.total_incomes)-(self.advance.amount + self.total_deductions))


class Kin(models.Model):
    first_name = models.CharField(max_length=20)
    last_name = models.CharField(max_length=20)
    address = models.TextField(max_length=100)
    occupation = models.CharField(max_length=20)
    mobile = models.CharField(max_length=15)
    employee = models.OneToOneField(
        Employee, on_delete=models.CASCADE, blank=False, null=False)

    def __str__(self):
        return self.first_name+'-'+self.last_name

    def get_absolute_url(self):
        return reverse("management:employee_view", kwargs={'pk': self.employee.pk})


class Attendance (models.Model):
    STATUS = (('PRESENT', 'PRESENT'), ('ABSENT', 'ABSENT'),
              ('UNAVAILABLE', 'UNAVAILABLE'))
    date = models.DateField(auto_now_add=True)
    first_in = models.TimeField()
    last_out = models.TimeField(null=True)
    status = models.CharField(choices=STATUS, max_length=15)
    staff = models.ForeignKey(Employee, on_delete=models.SET_NULL, null=True)

    def save(self, *args, **kwargs):
        self.first_in = timezone.localtime()
        super(Attendance, self).save(*args, **kwargs)

    def __str__(self):
        return 'Attendance -> '+str(self.date) + ' -> ' + str(self.staff)


class Leave (models.Model):
    STATUS = (('approved', 'APPROVED'), ('unapproved',
              'UNAPPROVED'), ('decline', 'DECLINED'))
    employee = models.OneToOneField(Employee, on_delete=models.CASCADE)
    start = models.CharField(blank=False, max_length=15)
    end = models.CharField(blank=False, max_length=15)
    status = models.CharField(
        choices=STATUS,  default='Not Approved', max_length=15)

    def __str__(self):
        return self.employee + ' ' + self.start


class Recruitment(models.Model):
    first_name = models.CharField(max_length=25)
    last_name = models.CharField(max_length=25)
    position = models.CharField(max_length=15)
    email = models.EmailField(max_length=25)
    phone = models.CharField(max_length=11)

    def __str__(self):
        return self.first_name + ' - '+self.position
