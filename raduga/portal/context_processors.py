from price.models import ServicePrice
from methodics.models import Methodics
from portal.models import About, News
from datetime import datetime


def consultation(request):
    return {'consultation_list': ServicePrice.objects.filter(active=True, consult=True)}

def methodics(request):
    return {'methodic_list':Methodics.objects.filter(active=True)}

def about(request):
    return dict(about=About.objects.filter(active=True).last())

def news(request):
    return {'news_list': News.objects.filter(active=True)}

def time(request):
    return {'time': datetime.now()}