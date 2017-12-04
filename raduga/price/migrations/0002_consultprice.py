# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-11-28 12:13
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('specialist', '0004_auto_20171126_1243'),
        ('price', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ConsultPrice',
            fields=[
                ('serviceprice_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, serialize=False, to='price.ServicePrice')),
                ('specialist', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='specialist.Specialist', verbose_name='Специалист')),
            ],
            bases=('price.serviceprice',),
        ),
    ]
