# Mujeres del Libro Peruano
Página web para proyecto de localización y difusión de escritoras peruanas en Cusco
[http://www.mujeresdellibroperuano.com]
# Como actualizar el sitio web
1. En tu branch, haces un pull del main, actualizar el datos.sql con el excel que tiene x escritoras, cuando funcione actualizar el main
	- link del excel https://docs.google.com/spreadsheets/d/1KlCkJWFNr1gTMr5zBHXApoWU-pSU3DPq/edit#gid=322631104
	- Copiar los datos del excel de docs.google.com en el excel que esta en CR
	- Comando para usar el script excel2sql.py --> python excel2sql.py -t LMPE
	- Copiar el datos.sql a escritoras_cusco y hacer sqlite3 db.sqlite3   ---> para entrar a la base de datos
	- .read datos.sql
	- python manage.py runserver
	- Descargar las imagenes del link --> https://drive.google.com/drive/folders/17naKuLxqrHXwq6oHhhKYE-Q3zSsB_uZZ  en la carpeta static/img 
	- Agregar en el index.html a la mano la imagen de la mujer

# 	Verificar que funciona en Local y actualizar el main del github

2. Luego de que funciona en el main te conectas en el cmd con la linea: ```ssh root@194.195.86.114```

3. Justo despues de conectarse debes hacer: ```source /mujeresP/venv/bin/activate```

4. Ir a mujeresP/EscritorasCusco# y haces un ```git pull origin main``` para actualizar la branch production con el main. Si da error de datos.sql se tiene que eliminar el datos.sql que esta en mujeresP/EscritorasCusco/escritoras_cusco y hacer  git add . y git commit -m "algo", luego git pull origin main, luego traer el datos.sql que esta en CR a escritoras_cusco --ejemplo ---> root@mujeres:/mujeresP/EscritorasCusco# cp CR/datos.sql escritoras_cusco/

5. Ir a  root@mujeres:/mujeresP/EscritorasCusco/escritoras_cusco# y conectarse a la base de datos sql con 
	- sqlite3 db.sqlite3   ---> para entrar a la base de datos
	- .read datos.sql ---> para actualizar la base de datos
	- .tables   ---> para ver tus tablas
	- .exit	  ---> para salir

6. Luego vas a root@mujeres:/# y haces un remove de static con: ```rm -rf /mujeresP/public/static``` ---ejemplo---> root@mujeres:/# rm -rf /mujeresP/public/static

7. luego ir a root@mujeres:/mujeresP/EscritorasCusco/escritoras_cusco# y hacer estas lineas para generar el nuevo static:

- ```python manage.py makemigrations site_web```
- ```python manage.py migrate```
- ```python manage.py collectstatic```

8. Finalmente hacer: ```systemctl restart apache2``` para actualizar el sitio web



