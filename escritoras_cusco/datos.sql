delete from site_web_profesion;
delete from site_web_mujer;
delete from site_web_lugar;

insert into site_web_lugar (id,distrito,provincia,departamento) values (1,"distrito centro","cusco","cusco");

insert into site_web_mujer (id,nombre,apellido,fecha_nacimiento,fecha_defuncion,trayectoria,link_imagen,lugar_id) values (1,"toto","tata","12/12/1940","12/12/2020","trayector","img/Escritora_01.jpg",1);
insert into site_web_mujer (id,nombre,apellido,fecha_nacimiento,fecha_defuncion,trayectoria,link_imagen,lugar_id) values (2,"escritora2","gomez","12/12/1960",null,"trayectoria","img/Escritora_02.jpg",1);

insert into site_web_profesion (categoria,mujer_id) values ('Es',1);
insert into site_web_profesion (categoria,mujer_id) values ('Po',2);