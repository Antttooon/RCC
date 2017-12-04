


from django.conf.urls import url, include
from django.contrib import admin
from portal.views import main
from portal.views import specialists

urlpatterns = [
    url(r'^$', specialists, name='specialist' ),
]
