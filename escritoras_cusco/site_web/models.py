from django.db import models

TIPO_CATEGORIA = [
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


class Publicacion(models.Model):
    escritora = models.ForeignKey(Escritora, on_delete=models.CASCADE)
    nombre = models.CharField(max_length=200)
    descripcion = models.CharField(max_length=200)
    fecha = models.DateField()

class Categoria(models.Model):
    escritora = models.ForeignKey(Escritora, on_delete=models.CASCADE)
    categorizacion = models.CharField(choices = TIPO_CATEGORIA, max_length=2)

class Contact(models.Model):
    name = models.CharField(max_length=200)
    email=models.EmailField()
    subject=models.TextField()
    def __str__(self):
        return self.name
