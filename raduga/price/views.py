from django.shortcuts import render
from django.views.generic import ListView
from price.models import ServicePrice

# Create your views here.
class Price(ListView):
    model = ServicePrice
    template_name = 'price/price.html'
    queryset = ServicePrice.objects.filter(active=True)