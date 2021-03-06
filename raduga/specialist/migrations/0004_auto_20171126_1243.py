# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-11-26 12:43
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('specialist', '0003_auto_20171126_0017'),
    ]

    operations = [
        migrations.AddField(
            model_name='specialist',
            name='consultation',
            field=models.BooleanField(default=True, verbose_name='Показывать в консультации'),
        ),
        migrations.AlterField(
            model_name='specialist',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='media/specialists', verbose_name='Фотография'),
        ),
    ]
