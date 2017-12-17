from django.contrib import admin
from .models import ServicePrice
# Register your models here.

class ServicePriceAdmin(admin.ModelAdmin):
    search_fields = ['name',]
    list_display = ['pk','name','price','active','consult']
    list_editable = ['price','active','consult']
    list_display_links = ['pk','name']





admin.site.register(ServicePrice,ServicePriceAdmin)

