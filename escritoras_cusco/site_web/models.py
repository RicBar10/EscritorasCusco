from django.db import models

TIPO_CATEGORIA = [
    ('Es', 'Escritora'),
    ('Pt', 'Poeta'),
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
    # coordenada  = models.CharField(max_length=200)


class Mujer(models.Model):
    nombre = models.CharField(max_length=200)
    apellido = models.CharField(max_length=200)
    lugar = models.ForeignKey(Lugar, on_delete=models.CASCADE)
    fecha_nacimiento = models.CharField(max_length=200)
    fecha_defuncion = models.CharField(max_length=200)
    trayectoria = models.CharField(max_length=200)
    link_imagen = models.CharField(max_length=200)


class Publicacion(models.Model):
    titulo = models.CharField(max_length=200)
    fecha = models.CharField(max_length=10)
    # descripcion = models.CharField(max_length=200)
    mujer = models.ForeignKey(Mujer, on_delete=models.CASCADE)


class Profesion(models.Model):
    mujer = models.ForeignKey(Mujer, on_delete=models.CASCADE)
    categoria = models.CharField(choices=TIPO_CATEGORIA, max_length=2)


class Contact(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField()
    subject = models.TextField()

    def __str__(self):
        return self.name
