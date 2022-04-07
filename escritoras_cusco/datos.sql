delete from site_web_profesion;
delete from site_web_mujer;
delete from site_web_lugar;

insert into site_web_lugar (id,distrito,provincia,departamento,coordx,coordy) values (1,"distrito centro","cusco","cusco","-13.5498695","-71.953328,12");
insert into site_web_lugar (id,distrito,provincia,departamento,coordx,coordy) values (2,"distrito centro","cusco","cusco","-14.26944","-71.22611");

insert into site_web_mujer (id,nombre,apellido,fecha_nacimiento,fecha_defuncion,trayectoria,link_imagen,lugar_id) values (1,"toto","tata","12/12/1940","12/12/2020","trayector","img/Escritora_01.jpg",1);
insert into site_web_mujer (id,nombre,apellido,fecha_nacimiento,fecha_defuncion,trayectoria,link_imagen,lugar_id) values (2,"escritora2","gomez","12/12/1960",null,"trayectoria","img/Escritora_02.jpg",2);

insert into site_web_profesion (categoria,mujer_id) values ('Es',1);
insert into site_web_profesion (categoria,mujer_id) values ('Po',2);
