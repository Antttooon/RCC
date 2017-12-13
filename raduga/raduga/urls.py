"""raduga URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.conf import settings
from django.conf.urls.static import static

from django.contrib import admin
from portal.views import main, specialists, ConsultationDetail, MethodicDetail
from price.views import Price
urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^specialist/', specialists, name='specialist'),
    url(r'^$', main, name='main' ),
    url(r'^consultation/(?P<pk>\d+)/$', ConsultationDetail.as_view(), name='consultation'),
    url(r'^methodics/(?P<pk>\d+)/$', MethodicDetail.as_view(), name='methodics'),
    url(r'^price/', Price.as_view(), name='price'),
    url(r'^ckeditor/', include('ckeditor_uploader.urls')),



]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)


if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
