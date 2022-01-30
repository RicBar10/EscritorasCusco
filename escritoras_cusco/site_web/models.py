from django.db import models

CATEGORIA = [
		('Es','Escritora'),
		('Pt','Poeta'),
		('Ed','Editora'),
        ('Pr','Profesora'),
		('An','Antropologa'),
		('Il','Ilustradora'),
]

# Create your models here.
class Escritora(models.Model):
    nombre = models.CharField(max_length=200)
    lugar_nacimiento = models.CharField(max_length=200)
    fecha_nacimiento = models.DateField()
    fecha_defuncion = models.DateField()
    trayector = models.CharField(max_length=200)
    categorizacion = models.CharField(choices = CATEGORIA, max_length=2)


class Publicacion(models.Model):
    escritora = models.ForeignKey(Escritora, on_delete=models.CASCADE)
    nombre = models.CharField(max_length=200)
    descripcion = models.CharField(max_length=200)
    fecha = models.DateField()