# Generated by Django 3.1.4 on 2020-12-14 22:33

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('posts', '0005_post_image'),
    ]

    operations = [
        migrations.RenameField(
            model_name='post',
            old_name='image',
            new_name='postimage',
        ),
    ]
