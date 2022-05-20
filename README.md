# Mujeres del Libro Peruano
Página web para proyecto de localización y difusión de escritoras peruanas en Cusco
[http://www.mujeresdellibroperuano.com]
# Como actualizar el sitio web
1. En tu branch, haces un pull del main, actualizar el datos.sql con el excel que tiene x escritoras, cuando funcione actualizar el main
	- link del excel https://docs.google.com/spreadsheets/d/1KlCkJWFNr1gTMr5zBHXApoWU-pSU3DPq/edit#gid=322631104
	- Copiar los datos del excel de docs.google.com en el excel que esta en CR
	- Comando para usar el script excel2sql.py --> python excel2sql.py -t LMPE
2. Luego de que funciona en el main te conectas en el cmd con la linea: ```ssh root@194.195.86.114```

3. Justo despues de conectarse debes hacer: ```source /mujeresP/venv/bin/activate```

4. Ir a mujeresP y haces un ```git pull main``` para actualizar la branch production con el main

5. Conectarse a la base de datos sql con 
	- sqlite3 db.sqlite3   ---> para entrar a la base de datos
	- .read datos.sql ---> para actualizar la base de datos
	- .tables   ---> para ver tus tablas
	- .exit	  ---> para salir

6. Luego haces un remove de static con: ```rm -rf /mujeresP/public/static```

7. luego estas lineas para generar el nuevo static:

```python manage.py makemigrations site_web```
```python manage.py migrate```
```python manage.py collectstatic```

8. Finalmente hacer: ```systemctl restart apache2``` para actualizar el sitio web

