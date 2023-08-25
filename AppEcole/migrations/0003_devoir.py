# Generated by Django 4.1.5 on 2023-08-15 21:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('AppEcole', '0002_alter_user_birthdate'),
    ]

    operations = [
        migrations.CreateModel(
            name='Devoir',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('intitule', models.CharField(max_length=255)),
                ('matiere', models.CharField(max_length=255)),
                ('statut', models.CharField(choices=[('en_cours', 'En cours'), ('soumis', 'Soumis'), ('corrigé', 'Corrige'), ('traité', 'Traite'), ('archivé', 'Archivé')], max_length=20)),
                ('projet', models.FileField(upload_to='projets')),
            ],
        ),
    ]