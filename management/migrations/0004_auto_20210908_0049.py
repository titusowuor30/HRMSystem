# Generated by Django 3.1.7 on 2021-09-07 21:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('management', '0003_auto_20210908_0012'),
    ]

    operations = [
        migrations.RenameField(
            model_name='employee',
            old_name='nuban',
            new_name='account_no',
        ),
        migrations.AlterField(
            model_name='employee',
            name='emp_id',
            field=models.CharField(default='emp616', max_length=70),
        ),
    ]