from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from django.template import RequestContext
from .models import Contact, Publicacion
from site_web.models import Mujer, Ejerce, Publicacion
from django.db.models import Q

# views.py
from django.core import serializers

# Create your views here.


def index(request):
    template = loader.get_template('index.html')
    mujeres = [{'id': c.id,
                'link_imagen': c.link_imagen,
                'categoria': list(Ejerce.objects.all().filter(mujer=c.id).values_list('categoria', flat=True)),
                'nombre': c.nombre,
                "coordx": c.coordx,
                "coordy": c.coordy,
                'lugar': {
                    "distrito": c.lugar.distrito,
                    "region": c.lugar.region
                }
                } for c in Mujer.objects.all()
               ]

    context = {"mujeres": mujeres}
    return HttpResponse(template.render(context, request=request))


def galleries(request):
    template = loader.get_template('galleries.html')
    mujeres = [{'id': c.mujer_id, 'link_imagen': c.mujer.link_imagen,
                'categoria': c.get_categoria_display(),
                'nombre': c.mujer.nombre} for c in Ejerce.objects.all()]

    context = {"mujeres": mujeres}
    return HttpResponse(template.render(context, request=request))


def gallerie(request, mujer_id):
    template = loader.get_template('singleGallery.html')
    mujer = Mujer.objects.get(id=mujer_id)
    publicaciones = Publicacion.objects.filter(mujer=mujer_id)
    context = {"mujer": mujer, "publicaciones": publicaciones}
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
