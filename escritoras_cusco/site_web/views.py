from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader

# Create your views here.
def index(request):
    template = loader.get_template('index.html')
    return HttpResponse(template.render(request=request))

def galleries(request):
    template = loader.get_template('galleries.html')
    return HttpResponse(template.render(request=request))

def gallerie(request, id_escritor):
    template = loader.get_template('singleGallery.html')
    return HttpResponse(template.render(request=request))

def contact(request):
    template = loader.get_template('contact.html')
    if request.method=="POST":
        contact=Contact()
        name=request.POST.get('name')
        email=request.POST.get('email')
        subject=request.POST.get('subject')
        contact.name=name
        contact.email=email
        contact.subject=subject
        contact.save()
        return HttpResponse(template.render(request=request))
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