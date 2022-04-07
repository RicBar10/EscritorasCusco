DELETE FROM site_web_mujer;
DELETE FROM site_web_publicacion;
DELETE FROM site_web_lugar;
DELETE FROM site_web_ejerce;

INSERT INTO site_web_mujer(id,nombre,apellido,lugar_id,fecha_nacimiento,fecha_defuncion,trayectoria,link_imagen) VALUES
	(1,"Iñakapalla","Chávez Bermúdez",1,"20/06/1986",NULL,NULL,"img/not_found.jpg"),
	(2,"Rosa Augusta","Rivero Ricalde",1,"14/04/1907","01/10/1966",NULL,"img/not_found.jpg"),
	(3,"Inés Qorich'aska","Quispe Puma",2,"1990",NULL,NULL,"img/not_found.jpg"),
	(4,"Aleyda","Cárdenas",NULL,"1987",NULL,NULL,"img/not_found.jpg"),
	(5,"Silvia Rosa","Huamaní Quispe",3,"1982",NULL,NULL,"img/not_found.jpg"),
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

INSERT INTO site_web_lugar(id,distrito,provincia,departamento,coordx,coordy) VALUES
	(1,NULL,NULL,"Cusco",NULL,NULL),
	(2,NULL,"Acomayo","Cusco",NULL,NULL),
	(3,NULL,"Espinar","Cusco",NULL,NULL),
	(4,"Limatambo","Anta","Cusco",NULL,NULL);

INSERT INTO site_web_ejerce(id,mujer_id,categoria_id) VALUES
	(1,7,"Es"),
	(2,8,"Po"),
	(3,8,"Tr"),
	(4,8,"Pr"),
	(5,10,"Es"),
	(6,10,"Ed"),
	(7,10,"An"),
	(8,14,"Es"),
	(9,14,"Ed"),
	(10,15,"Es"),
	(11,15,"Il"),
	(12,17,"Ed"),
	(13,19,"An"),
	(14,20,"Po"),
	(15,23,"Es");
