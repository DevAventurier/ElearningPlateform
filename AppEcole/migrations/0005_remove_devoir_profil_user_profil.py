# Generated by Django 4.1.5 on 2023-08-18 10:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppEcole', '0004_devoir_profil_alter_user_role'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='devoir',
            name='profil',
        ),
        migrations.AddField(
            model_name='user',
            name='profil',
            field=models.ImageField(blank=True, default='12.png', upload_to='images'),
        ),
    ]
