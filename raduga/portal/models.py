from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField

# Create your models here.


class About(models.Model):
    header = models.CharField(max_length=70, verbose_name='Заголовок', blank=True, null=True)
    text = RichTextUploadingField(verbose_name='Текст основной', blank=True, null=True)
    active = models.BooleanField(verbose_name='Использовать', default=True)

    def __str__(self):
        if self.header:
            return self.header+' '+self.text[0:20]
        else:
            return self.text[0:20]

    class Meta:
        verbose_name = 'О компании'
        verbose_name_plural = 'О компании'


class News(models.Model):
    header = models.CharField(max_length=120, verbose_name='Заголовок новостей', blank=True, null=True)
    text = RichTextUploadingField(verbose_name='Текст новостей',blank=True, null=True)
    img = models.ImageField(upload_to='news', blank=True,null=True, verbose_name='Изображение новости')
    active = models.BooleanField(verbose_name='Использовать', default=True)

    def __str__(self):
        return self.header[:16]

    class Meta:
        verbose_name = 'Новость'
        verbose_name_plural = 'Новости'