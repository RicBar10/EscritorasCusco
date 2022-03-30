from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from site_web.models import Mujer, Profesion
from django.db.models import Q

# Create your views here.


def index(request):
    template = loader.get_template('index.html')
    return HttpResponse(template.render(request=request))


def galleries(request):
    template = loader.get_template('galleries.html')
    mujeres = [{'id': c.mujer_id, 'link_imagen': c.mujer.link_imagen,
                'categoria': c.get_categoria_display(),
                'nombre': c.mujer.nombre} for c in Profesion.objects.all()]

    context = {"mujeres": mujeres}
    return HttpResponse(template.render(context, request=request))


def gallerie(request, mujer_id):
    template = loader.get_template('singleGallery.html')
    mujer = Mujer.objects.get(id=mujer_id)
    context = {"mujer": mujer}
    return HttpResponse(template.render(context, request=request))


def contact(request):
    template = loader.get_template('contact.html')
    return HttpResponse(template.render(request=request))


def about(request):
    template = loader.get_template('about.html')
    return HttpResponse(template.render(request=request))


def merci(request):
    template = loader.get_template('merci.html')
    return HttpResponse(template.render(request=request))
