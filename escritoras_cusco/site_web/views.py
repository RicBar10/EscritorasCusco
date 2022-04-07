from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from django.template import RequestContext
from .models import Contact
from site_web.models import Mujer, Profesion
from django.db.models import Q

# views.py
from django.core import serializers

# Create your views here.
def index(request):
    template = loader.get_template('index.html')
    mujeres = [{'id': c.mujer_id, 'link_imagen': c.mujer.link_imagen,
                'categoria': c.get_categoria_display(),
                'nombre': c.mujer.nombre,
                'lugar':{ 
                 "distrito":c.mujer.lugar.distrito,
                 "departamento":c.mujer.lugar.departamento,
                 "coordx":c.mujer.lugar.coordx,
                 "coordy":c.mujer.lugar.coordy
                } 
                } for c in Profesion.objects.all()    
                ]

    context = {"mujeres": mujeres}
    return HttpResponse(template.render(context, request=request))


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
    if request.method == "POST":
        contact = Contact()
        name = request.POST.get('name')
        email = request.POST.get('email')
        subject = request.POST.get('subject')
        contact.name = name
        contact.email = email
        contact.subject = subject
        contact.save()
        # return render_to_response('contact.html', {'form': c['UploadFileForm']},  RequestContext(request))
        # return HttpResponse("<h1>thanks for contact</h1>")
        return render(request, 'merci.html')
        # return HttpResponse(template.render(request=request))
    return HttpResponse(template.render(request=request))


def about(request):
    template = loader.get_template('about.html')
    return HttpResponse(template.render(request=request))


def eventos(request):
    template = loader.get_template('eventos.html')
    return HttpResponse(template.render(request=request))


def merci(request):
    template = loader.get_template('merci.html')
    return HttpResponse(template.render(request=request))
