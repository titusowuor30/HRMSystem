# Generated by Django 3.1.7 on 2021-09-07 21:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('management', '0002_auto_20210907_2338'),
    ]

    operations = [
        migrations.AlterField(
            model_name='employee',
            name='emp_id',
            field=models.CharField(default='emp209', max_length=70),
        ),
        migrations.AlterField(
            model_name='user',
            name='thumb',
            field=models.ImageField(default='media/user/img.png', upload_to='media/user/'),
        ),
    ]