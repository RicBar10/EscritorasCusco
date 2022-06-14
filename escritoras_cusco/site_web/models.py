from django.db import models
import datetime

TIPO_CATEGORIA = [
    ('Es', 'Escritora'),
    ('Po', 'Poeta'),
    ('Ed', 'Editora'),
    ('Pr', 'Profesora'),
    ('An', 'Antropologa'),
    ('Il', 'Ilustradora'),
    ('Tr', 'Traductora'),
    ('Hi', 'Historiadora'),
    ('Co', 'Historietista')  # Co de Comic
]

# Create your models here.


class Lugar(models.Model):
    distrito = models.CharField(max_length=200)
    provincia = models.CharField(max_length=200)
    region = models.CharField(max_length=200)


class Mujer(models.Model):
    nombre = models.CharField(max_length=200)
    apellido = models.CharField(max_length=200)
    fecha_nacimiento = models.CharField(max_length=10, null=True)
    fecha_defuncion = models.CharField(max_length=10, null=True)
    coordx = models.CharField(max_length=200)
    coordy = models.CharField(max_length=200)
    trayectoria = models.CharField(max_length=200, null=True)
    link_imagen = models.CharField(max_length=200)
    contacto = models.CharField(max_length=200)
    entrevista = models.CharField(max_length=200, null=True)
    lugar = models.ForeignKey(Lugar, on_delete=models.CASCADE)


class Publicacion(models.Model):
    titulo = models.CharField(max_length=200)
    isbn = models.CharField(max_length=200, null=True)
    categorizacion = models.CharField(max_length=200)
    fecha = models.CharField(max_length=10)
    descripcion = models.CharField(max_length=200, null=True)
    mujer = models.ForeignKey(Mujer, on_delete=models.CASCADE)
    link_imagen = models.CharField(max_length=200)
    titulo_disponible = models.CharField(max_length=200, null=True)
    link_disponible = models.CharField(max_length=200, null=True)


class Ejerce(models.Model):
    categoria = models.CharField(choices=TIPO_CATEGORIA, max_length=2)
    mujer = models.ForeignKey(Mujer, on_delete=models.CASCADE)


class Contact(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField()
    subject = models.TextField()

    def __str__(self):
        return self.name


class Evento(models.Model):
    titulo = models.CharField(max_length=200)
    descripcion = models.CharField(max_length=400)
    link_imagen = models.CharField(max_length=200)
    nombre_organizador = models.CharField(max_length=200)
    logo_organizador = models.CharField(max_length=200)
    link_organizador = models.CharField(max_length=200, null=True)
    fecha_evento = models.CharField(max_length=150, null=True)
    fecha_publicacion = models.DateField(default=datetime.date.today)
