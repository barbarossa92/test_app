# coding=utf-8
from __future__ import unicode_literals

from django.db import models
from ckeditor.fields import RichTextField


class Materials(models.Model):
    title = models.CharField(max_length=250, verbose_name='Заголовок')
    description = RichTextField(verbose_name='Текст')
    published = models.BooleanField(verbose_name='Опубликовать?', default=True)
    slug = models.SlugField(unique=True)
    date = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name_plural="Материалы"

    def __unicode__(self):
        return unicode(self.id) or u''


class Comments(models.Model):
    text = models.TextField(verbose_name='Текст комментария')
    material = models.ForeignKey(Materials)
    date = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name_plural="Комментарии"



