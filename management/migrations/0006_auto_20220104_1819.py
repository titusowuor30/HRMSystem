# Generated by Django 3.2 on 2022-01-04 15:19

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('management', '0005_auto_20220104_1803'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cashadvance',
            name='employee',
        ),
        migrations.AlterField(
            model_name='employee',
            name='emp_id',
            field=models.CharField(default='emp316771', max_length=70),
        ),
        migrations.CreateModel(
            name='Payroll',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('advance', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='payroll', to='management.cashadvance')),
                ('deductions', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='payroll', to='management.deductions')),
                ('employee', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='payroll', to='management.employee')),
            ],
        ),
    ]
