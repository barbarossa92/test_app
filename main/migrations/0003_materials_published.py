# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-03 16:25
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0002_comments'),
    ]

    operations = [
        migrations.AddField(
            model_name='materials',
            name='published',
            field=models.BooleanField(default=True, verbose_name='\u041e\u043f\u0443\u0431\u043b\u0438\u043a\u043e\u0432\u0430\u0442\u044c?'),
        ),
    ]
