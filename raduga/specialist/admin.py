from django.contrib import admin
from .models import Specialist
# Register your models here.


class SpecialistAdmin(admin.ModelAdmin):
    list_display = ('pk','name', 'desc_short','active','consultation')
    list_editable = ('active','consultation')
    list_display_links = ['pk','name', 'desc_short',]
    search_fields = ['name', 'desc_short',]

    class Meta:
        model = Specialist
        exclude = ('pk','name')




admin.site.register(Specialist, SpecialistAdmin)
