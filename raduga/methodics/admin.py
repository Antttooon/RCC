from django.contrib import admin
from .models import Methodics
# Register your models here.


class MethodicsAdmin(admin.ModelAdmin):
    list_display = ['pk','active', 'name']
    list_display_links = ['name']
    list_editable = ['active']
    search_fields = ['name','slug']
    prepopulated_fields = {"slug": ("name",)}

    class Meta:
        model = Methodics
        exclude = ()

admin.site.register(Methodics, MethodicsAdmin)