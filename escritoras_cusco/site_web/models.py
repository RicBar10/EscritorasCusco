from django.db import models

TIPO_CATEGORIA = [
    ('Es', 'Escritora'),
    ('Po', 'Poeta'),
    ('Ed', 'Editora'),
    ('Pr', 'Profesora'),
    ('An', 'Antropologa'),
    ('Il', 'Ilustradora'),
]

# Create your models here.


class Lugar(models.Model):
    distrito = models.CharField(max_length=200)
    provincia = models.CharField(max_length=200)
    departamento = models.CharField(max_length=200)
    coordx = models.CharField(max_length=200)
    coordy = models.CharField(max_length=200)

class Mujer(models.Model):
    nombre = models.CharField(max_length=200)
    apellido = models.CharField(max_length=200)
    fecha_nacimiento = models.CharField(max_length=10)
    fecha_defuncion = models.CharField(max_length=10, null=True)
    trayectoria = models.CharField(max_length=200)
    link_imagen = models.CharField(max_length=200)
    lugar = models.ForeignKey(Lugar, on_delete=models.CASCADE)

class Publicacion(models.Model):
    titulo = models.CharField(max_length=200)
    fecha = models.CharField(max_length=10)
    descripcion = models.CharField(max_length=200)
    mujer = models.ForeignKey(Mujer, on_delete=models.CASCADE)


class Profesion(models.Model):
    categoria = models.CharField(choices=TIPO_CATEGORIA, max_length=2)
    mujer = models.ForeignKey(Mujer, on_delete=models.CASCADE)


class Contact(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField()
    subject = models.TextField()

    def __str__(self):
        return self.name
