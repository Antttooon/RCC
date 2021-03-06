# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-11-25 23:40
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('specialist', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='specialist',
            options={'verbose_name': 'Специалист', 'verbose_name_plural': 'Специалисты'},
        ),
        migrations.AddField(
            model_name='specialist',
            name='active',
            field=models.BooleanField(default=True, verbose_name='Показывать на странице'),
        ),
        migrations.AlterField(
            model_name='specialist',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='media/specialists', verbose_name='Фотография'),
        ),
    ]
