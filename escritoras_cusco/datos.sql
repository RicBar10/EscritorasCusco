DELETE FROM site_web_mujer;
DELETE FROM site_web_publicacion;
DELETE FROM site_web_lugar;
DELETE FROM site_web_ejerce;

INSERT INTO site_web_lugar(id,distrito,provincia,departamento,coordx,coordy) VALUES
	(1,NULL,NULL,"Cusco","-13.5498695","-71.953328,12"),
	(2,NULL,"Acomayo","Cusco","-14.26944","-71.22611"),
	(3,NULL,"Espinar","Cusco","-13.5269522","-71.9751357,14.72"),
	(4,"Limatambo","Anta","Cusco","-13.5267773","-71.9714999,16"),
	(5,NULL,NULL,"Cusco","-13.527820432248365","-71.96757312285558");

INSERT INTO site_web_mujer(id,nombre,apellido,lugar_id,fecha_nacimiento,fecha_defuncion,trayectoria,link_imagen) VALUES
	(1,"Iñakapalla","Chávez Bermúdez",1,"20/06/1986",NULL,NULL,"img/not_found.jpg"),
	(2,"Rosa Augusta","Rivero Ricalde",5,"14/04/1907","01/10/1966",NULL,"img/not_found.jpg"),
	(3,"Inés Qorich'aska","Quispe Puma",2,"1990",NULL,NULL,"img/not_found.jpg"),
	(4,"Aleyda","Cárdenas",3,"1987",NULL,NULL,"img/not_found.jpg"),
	(5,"Silvia Rosa","Huamaní Quispe",4,"1982",NULL,NULL,"img/not_found.jpg"),
	(6,"Gladys","Conde Camargo",1,"1982",NULL,NULL,"img/not_found.jpg"),
	(7,"Ana María","Milla Hurtado",1,"1977",NULL,NULL,"img/not_found.jpg"),
	(8,"Ch'aska Eugenia","Anka Ninawaman",3,"1973",NULL,NULL,"img/not_found.jpg"),
	(9,"Tania","Castro",1,"1973",NULL,NULL,"img/not_found.jpg"),
	(10,"Karina","Pacheco Medrano",1,"1969",NULL,NULL,"img/not_found.jpg"),
	(11,"Carmen","Escalante Gutiérrez",1,"1953",NULL,NULL,"img/not_found.jpg"),
	(12,"Ana Bertha","Vizcarra",1,"1947",NULL,NULL,"img/not_found.jpg"),
	(13,"Mercedes","Delgado",1,"1939",NULL,NULL,"img/not_found.jpg"),
	(14,"Clorinda","Matto de Turner",1,"11/11/1852","25/10/1909",NULL,"img/not_found.jpg"),
	(15,"Adriana","Hiromi Cule",1,NULL,NULL,NULL,"img/not_found.jpg"),
	(16,"Alfonsina","Barrionuevo",1,NULL,NULL,NULL,"img/not_found.jpg"),
	(17,"Anael Nuit","Pilares Valdivia",1,NULL,NULL,NULL,"img/not_found.jpg"),
	(18,"Areli","Aráoz",4,NULL,NULL,NULL,"img/not_found.jpg"),
	(19,"Emperatriz","Escalante Gutiérrez",1,NULL,NULL,NULL,"img/not_found.jpg"),
	(20,"Frida","Ibáñez Ayerbe",1,NULL,NULL,NULL,"img/not_found.jpg"),
	(21,"Gladys","Conde",1,NULL,NULL,NULL,"img/not_found.jpg"),
	(22,"Nataly","Villena",1,NULL,NULL,NULL,"img/not_found.jpg"),
	(23,"Nohemi","Estrada Pérez",1,NULL,NULL,NULL,"img/not_found.jpg"),
	(24,"Tania Consuelo","Gutiérrez Samanez",1,NULL,NULL,NULL,"img/not_found.jpg");

INSERT INTO site_web_publicacion(id,titulo,fecha,descripcion,mujer_id) VALUES
	(1,"Teorías del reflejo","2018",NULL,4),
	(2,"Ch'askaschay","2004",NULL,8),
	(3,"T'ika chumpicha","2010",NULL,8),
	(4,"1 al 20","1970",NULL,12),
	(5,"Manual del guerillo","1971",NULL,12),
	(6,"Machupicchu, orgasmo de piedra","2017",NULL,12),
	(7,"Peces de betún","1969",NULL,13),
	(8,"Sueño Indigo","2018",NULL,15),
	(9,"Juego y silencio","2009",NULL,21),
	(10,"Semillitas","2015",NULL,24);

INSERT INTO site_web_ejerce(id,mujer_id,categoria) VALUES
	(1,1,"Es"),
	(2,2,"Po"),
	(3,3,"Tr"),
	(4,4,"Pr"),
	(5,5,"Es");
