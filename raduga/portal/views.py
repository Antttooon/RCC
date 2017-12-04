from django.shortcuts import render
from django.views.generic import DetailView
from specialist.models import Specialist
from price.models import ServicePrice
from methodics.models import Methodics
from .models import About


# Create your views here.


def main(request):

    title = u'О нас'

    consult = ServicePrice.objects.filter(active=True, consult=True)
    # print(consult)

    return render(request, 'index.html', {'title': title,'consult':consult})


def specialists(request):
    title = 'Cпециалисты'
    specialists = Specialist.objects.filter(active=True)

    return render(request, 'specialist/specialist.html', {'title':title, 'specialists':specialists,})




# def consultation(request, pk):

    # consultation = ServicePrice.objects.get(pk=pk, active=True, consult=True)

    # title = '333'

    # return render(request, 'consultation/consultation.html', {'title':title,
    #                                                           'consultation':consultation,
    #                                                            })

class ConsultationDetail(DetailView):
    model = ServicePrice
    context_object_name = 'cons'
    template_name = 'consultation/consultation.html'


class MethodicDetail(DetailView):
    model = Methodics
    context_object_name = 'meth'
    template_name = 'methodics/methodics.html'