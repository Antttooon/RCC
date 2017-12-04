from django.db import models
from specialist.models import Specialist

# Create your models here.

class ServicePrice(models.Model):
    number = models.PositiveIntegerField(verbose_name='Порядковый номер (уникален)',unique=True, blank=True)
    name = models.CharField(max_length=70, verbose_name='Название услуги', blank=True, null=True)
    specialist = models.ForeignKey(Specialist, verbose_name='Специалист', blank=True, null=True)
    desc = models.TextField(verbose_name='Описание', blank=True, null=True)
    price = models.PositiveIntegerField(verbose_name='Стоимость', blank=True, null=True)
    active = models.BooleanField(verbose_name='Использовать', default=True)
    consult = models.BooleanField(verbose_name='Консультация', default=False)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = u'Услуги - Цены'
        verbose_name_plural = u'Услуги - Цены'


