from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from django.template import RequestContext
from .models import Contact, Publicacion
from site_web.models import Mujer, Ejerce, Publicacion, Evento
from django.db.models import Q
# from django.core.mail import EmailMessage
from django.core import mail
from django.conf import settings

# views.py
from django.core import serializers

# Create your views here.


def index(request):
    template = loader.get_template('index.html')
    return HttpResponse(template.render(request=request))


def mapa(request):
    template = loader.get_template('map.html')
    mujeres = Mujer.objects.all()
    result = []
    for m in list(mujeres):
        categorias = [c.get_categoria_display()
                      for c in Ejerce.objects.filter(mujer=m.id)]
        result.append({
            'id': m.id,
            'categoria': ', '.join(map(str, categorias)),
            'nombre': m.nombre,
            'link_imagen': m.link_imagen,
            "coordx": m.coordx,
            "coordy": m.coordy,
            'lugar': {
                "distrito": m.lugar.distrito,
                "region": m.lugar.region
            }
        })

    context = {"mujeres": result}
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
    categorias = [e.get_categoria_display()
                  for e in Ejerce.objects.filter(mujer=mujer.id)]
    result = {
        "mujer": mujer,
        'categorias': ', '.join(map(str, categorias))
    }
    publicaciones = Publicacion.objects.filter(mujer=mujer_id)
    context = {"result": result, "publicaciones": publicaciones}
    return HttpResponse(template.render(context, request=request))


def contact(request):
    template = loader.get_template('contact.html')
    if request.method == "POST":
        name = request.POST.get('name')
        lastName = request.POST.get('lastName')
        from_email = request.POST.get('email')
        subject = 'Nuevo mensaje de '+name+' '+lastName
        html_content = request.POST.get(
            'message') + '\nCorreo electrónico : '+from_email + '\nNombre y apellido : '+name+' '+lastName
        mail.send_mail(subject, html_content, settings.EMAIL_HOST_USER,
                       recipient_list=[settings.EMAIL_HOST_USER])

        return render(request, 'merci.html')
        # return HttpResponse(template.render(request=request))
    return HttpResponse(template.render(request=request))


def about(request):
    template = loader.get_template('about.html')
    return HttpResponse(template.render(request=request))


def eventos(request):
    template = loader.get_template('eventos.html')
    new = []
    list = Evento.objects.all()
    for i in range(0, len(list), 3):
        new.append((i, list[i: i+3]))
    print(new)
    context = {"eventos": Evento.objects.all(), "eList": new}
    return HttpResponse(template.render(context, request=request))


def merci(request):
    template = loader.get_template('merci.html')
    return HttpResponse(template.render(request=request))
