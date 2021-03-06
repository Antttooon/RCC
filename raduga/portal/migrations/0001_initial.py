# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-12-01 13:42
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Header',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('header', models.CharField(blank=True, max_length=70, null=True, verbose_name='Заголовок')),
                ('text', models.TextField(blank=True, null=True, verbose_name='Текст основной')),
                ('active', models.BooleanField(default=True, verbose_name='Использовать')),
            ],
            options={
                'verbose_name': 'О компании',
                'verbose_name_plural': 'О компании',
            },
        ),
    ]
