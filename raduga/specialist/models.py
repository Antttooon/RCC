from django.db import models
from django.urls import reverse

# Create your models here.


class Specialist(models.Model):
    name = models.CharField(verbose_name='Имя', max_length=100, blank=True, null=True)
    image = models.ImageField(upload_to='media/specialists', verbose_name='Фотография', blank=True, null=True)
    desc_short = models.CharField(verbose_name='Заголовок описания', max_length=120, blank=True, null=True)
    desc = models.TextField(verbose_name='Подробное описание специалиста', blank=True, null=True)
    consultation = models.BooleanField(verbose_name='Показывать в консультации', default=True)
    active = models.BooleanField(verbose_name='Показывать на странице',default=True)

    def __str__(self):
        return str(self.name) + ' - '+ str(self.desc_short)

    def get_absolute_url(self):
        print( 'consultation/'+str(self.pk) )
        return 'consultation/'+str(self.pk)

    class Meta:
        verbose_name = u'Специалист'
        verbose_name_plural = u'Специалисты'




