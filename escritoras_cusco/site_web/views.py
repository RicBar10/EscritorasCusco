from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from site_web.models import Escritora, Categoria
from django.db.models import Q

# Create your views here.


def index(request):
    template = loader.get_template('index.html')
    return HttpResponse(template.render(request=request))


def galleries(request):
    template = loader.get_template('galleries.html')
    escritoras = [{'id': c.escritora_id, 'link_imagen': c.escritora.link_imagen,
                   'categorizacion': c.get_categorizacion_display(),
                   'nombre': c.escritora.nombre} for c in Categoria.objects.all()]

    context = {"escritoras": escritoras}
    return HttpResponse(template.render(context, request=request))


def gallerie(request, id_escritora):
    template = loader.get_template('singleGallery.html')
    escritora = Escritora.objects.get(id=id_escritora)
    context = {"escritora": escritora}
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
