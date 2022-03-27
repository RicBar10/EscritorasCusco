from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader
from django.template import RequestContext
from .models import Contact
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
