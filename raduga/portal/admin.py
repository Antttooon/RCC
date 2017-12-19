from django.contrib import admin
from .models import About, News
# Register your models here.

class AboutAdmin(admin.ModelAdmin):
    list_display = ['pk','header','__str__','active']
    list_editable = ['active']
    list_display_links = ['header','__str__']

class NewsAdmin(admin.ModelAdmin):
    list_display = ['id','header','active',]
    list_editable = ['active',]

admin.site.register(About,AboutAdmin)
admin.site.register(News,NewsAdmin)

