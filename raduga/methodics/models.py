from django.db import models
from django.urls import reverse
# Create your models here.



class Methodics(models.Model):
    name = models.CharField(max_length=200,verbose_name='Название методики', blank=True, null=True)
    slug = models.SlugField(max_length=200,unique = True, default='', blank=True, null=True)
    img = models.ImageField(upload_to='methodics',blank=True,null=True)
    desc = models.TextField(verbose_name='Описание',blank=True, null=True)
    active = models.BooleanField(verbose_name='Использовать', default=True)



    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('methodics/'+ str(self.pk))

    class Meta:
        verbose_name = u'Наши услуги'
        verbose_name_plural = u'Наши услуги'


