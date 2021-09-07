from django.shortcuts import render,redirect, resolve_url,reverse, get_object_or_404
from django.urls import reverse_lazy
from django.contrib.auth import get_user_model
from .models  import Employee, Department,Kin, Attendance, Leave, Recruitment
from django.contrib.auth.views import LoginView
from django.contrib.auth import logout
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import FormView, CreateView,View,DetailView,TemplateView,ListView,UpdateView,DeleteView
from .forms import RegistrationForm,LoginForm,EmployeeForm,KinForm,DepartmentForm,AttendanceForm, LeaveForm, RecruitmentForm
from django.core.exceptions import ObjectDoesNotExist
from django.contrib import messages
from django.utils import timezone
from django.db.models import Q


# Create your views here.
class Index(TemplateView):
   template_name = 'management/home/home.html'

#   Authentication
class Register (CreateView):
    model = get_user_model()
    form_class  = RegistrationForm
    template_name = 'management/registrations/register.html'
    success_url = reverse_lazy('management:login')
    
class Login_View(LoginView):
    model = get_user_model()
    form_class = LoginForm
    template_name = 'management/registrations/login.html'

    def get_success_url(self):
        url = resolve_url('management:dashboard')
        return url

class Logout_View(View):

    def get(self,request):
        logout(self.request)
        return redirect ('management:login',permanent=True)
    
    
 # Main Board   
class Dashboard(LoginRequiredMixin,ListView):
    template_name = 'management/dashboard/index.html'
    login_url = 'management:login'
    model = get_user_model()
    context_object_name = 'qset'            
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs) 
        context['emp_total'] = Employee.objects.all().count()
        context['dept_total'] = Department.objects.all().count()
        context['admin_count'] = get_user_model().objects.all().count()
        context['workers'] = Employee.objects.order_by('-id')
        return context

# Employee's Controller
class Employee_New(LoginRequiredMixin,CreateView):
    model = Employee  
    form_class = EmployeeForm  
    template_name = 'management/employee/create.html'
    login_url = 'management:login'
    redirect_field_name = 'redirect:'
    
    
class Employee_All(LoginRequiredMixin,ListView):
    template_name = 'management/employee/index.html'
    model = Employee
    login_url = 'management:login'
    context_object_name = 'employees'
    paginate_by  = 5
    
class Employee_View(LoginRequiredMixin,DetailView):
    queryset = Employee.objects.select_related('department')
    template_name = 'management/employee/single.html'
    context_object_name = 'employee'
    login_url = 'management:login'
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        try:
            query = Kin.objects.get(employee=self.object.pk)
            context["kin"] = query
            return context
        except ObjectDoesNotExist:
            return context
        
class Employee_Update(LoginRequiredMixin,UpdateView):
    model = Employee
    template_name = 'management/employee/edit.html'
    form_class = EmployeeForm
    login_url = 'management:login'
    
    
class Employee_Delete(LoginRequiredMixin,DeleteView):
    pass

class Employee_Kin_Add (LoginRequiredMixin,CreateView):
    model = Kin
    form_class = KinForm
    template_name = 'management/employee/kin_add.html'
    login_url = 'management:login'
   

    def get_context_data(self):
        context = super().get_context_data()
        if 'id' in self.kwargs:
            emp = Employee.objects.get(pk=self.kwargs['id'])
            context['emp'] = emp
            return context
        else:
            return context

class Employee_Kin_Update(LoginRequiredMixin,UpdateView):
    model = Kin
    form_class = KinForm
    template_name = 'management/employee/kin_update.html'
    login_url = 'management:login'

    def get_initial(self):
        initial = super(Employee_Kin_Update,self).get_initial()
        
        if 'id' in self.kwargs:
            emp =  Employee.objects.get(pk=self.kwargs['id'])
            initial['employee'] = emp.pk
            
            return initial

#Department views

class Department_Detail(LoginRequiredMixin, ListView):
    context_object_name = 'employees'
    template_name = 'management/department/single.html'
    login_url = 'management:login'
    def get_queryset(self): 
        queryset = Employee.objects.filter(department=self.kwargs['pk'])
        return queryset

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["dept"] = Department.objects.get(pk=self.kwargs['pk']) 
        return context
    
class Department_New (LoginRequiredMixin,CreateView):
    model = Department
    template_name = 'management/department/create.html'
    form_class = DepartmentForm
    login_url = 'management:login'

class Department_Update(LoginRequiredMixin,UpdateView):
    model = Department
    template_name = 'management/department/edit.html'
    form_class = DepartmentForm
    login_url = 'management:login'
    success_url = reverse_lazy('management:dashboard')

#Attendance View

class Attendance_New (LoginRequiredMixin,CreateView):
    model = Attendance
    form_class = AttendanceForm
    login_url = 'management:login'
    template_name = 'management/attendance/create.html'
    success_url = reverse_lazy('management:attendance_new')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["today"] = timezone.localdate()
        pstaff = Attendance.objects.filter(Q(status='PRESENT') & Q (date=timezone.localdate())) 
        context['present_staffers'] = pstaff
        return context

class Attendance_Out(LoginRequiredMixin,View):
    login_url = 'management:login'

    def get(self, request,*args, **kwargs):

       user=Attendance.objects.get(Q(staff__id=self.kwargs['pk']) & Q(status='PRESENT')& Q(date=timezone.localdate()))
       user.last_out=timezone.localtime()
       user.save()
       return redirect('management:attendance_new')

class LeaveNew (LoginRequiredMixin,CreateView, ListView):
    model = Leave
    template_name = 'management/leave/create.html'
    form_class = LeaveForm
    login_url = 'management:login'
    success_url = reverse_lazy('management:leave_new')

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["leaves"] = Leave.objects.all()
        return context

class Payroll(LoginRequiredMixin, ListView):
    model = Employee
    template_name = 'management/payroll/index.html'
    login_url = 'management:login'
    context_object_name = 'stfpay'

class RecruitmentNew (CreateView):
    model = Recruitment
    template_name = 'management/recruitment/index.html'
    form_class = RecruitmentForm
    success_url = reverse_lazy('management:recruitment')

class RecruitmentAll(LoginRequiredMixin,ListView):
    model = Recruitment
    login_url = 'management:login'
    template_name = 'management/recruitment/all.html'
    context_object_name = 'recruit'

class RecruitmentDelete (LoginRequiredMixin,View):
    login_url = 'management:login'
    def get (self, request,pk):
     form_app = Recruitment.objects.get(pk=pk)
     form_app.delete()
     return redirect('management:recruitmentall', permanent=True)

class Pay(LoginRequiredMixin,ListView):
    model = Employee
    template_name = 'management/payroll/index.html'
    context_object_name = 'emps'
    login_url = 'management:login'
