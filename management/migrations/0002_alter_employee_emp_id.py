# Generated by Django 4.0.1 on 2022-01-19 05:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('management', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='employee',
            name='emp_id',
            field=models.CharField(default='emp211057', max_length=70),
        ),
    ]
