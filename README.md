# Mujeres del Libro Peruano
Página web para proyecto de localización y difusión de escritoras peruanas en Cusco
# Como actualizar el sitio web
1)En tu branch, haces un pull del main, actualizar el datos.sql con el excel que tiene 4 escritoras, cuando funcione actualizar el main

2)Luego de que funciona en el main te conectas en el cmd con la linea: ssh root@194.195.86.114
  pwd (preguntar a un miebro del equipo)

3)Justo despues de conectarse debes hacer: source /mujeresP/venv/bin/activate

4)Ir a mujeresP y haces un git pull main para actualizar la branch production con el main

5)Conectarse a la base de datos sql con 
	sqlite3 db.sqlite3   ---> para entrar a la base de datos
	.read datos.sql ---> para actualizar la base de datos
	.tables   ---> para ver tus tablas
	.exit	  ---> para salir

6)Luego haces un remove de static con: rm -rf /mujeresP/public/static

7)luego estas lineas para generar el nuevo static:

python manage.py makemigrations site_web
python manage.py migrate
python manage.py collectstatic

8)Hacer: systemctl restart apache2 para actualizar el sitio web

<img width="600" alt="mapa" src="https://user-images.githubusercontent.com/58043367/153087745-def8f2ef-e795-474b-81d8-69eb316f0f78.png">
