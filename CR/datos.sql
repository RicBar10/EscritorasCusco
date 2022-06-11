DELETE FROM site_web_lugar;
DELETE FROM site_web_mujer;
DELETE FROM site_web_publicacion;
DELETE FROM site_web_ejerce;

INSERT INTO site_web_lugar(id,region,provincia,distrito) VALUES
	(1,"Cusco","Cusco","Cusco"),
	(2,"Cusco","Canas","Layo");

INSERT INTO site_web_mujer(id,nombre,apellido,lugar_id,fecha_nacimiento,fecha_defuncion,trayectoria,link_imagen,Contacto,coordx,coordy,Entrevista) VALUES
	(1,"Adriana Hiromi ","Cule Vargas",1,"20/04/1996",NULL,"Adriana Cule es una artista visual y retratista profesional. Se desenvuelve en el terreno del diseño gráfico, el modelado análogo y digital, el desarrollo de personajes pintorescos y la creación de cuentos cortos. En sus obras busca que las perspectivas y composición interactúen con el espectador exagerando las formas.
Ha participado en diferentes proyectos, muestras artísticas, diferentes campañas y producciones entre ellas la inauguración de Saga Falabella en Cusco, la filmación de Transformers en Cusco y la iniciativa de “Hagamos un Perú que de gusto” de Inca Kola.
Ilustro el cuento “El zorro y el cóndor” de Maximo Ccama, realizo el libro de cuentos “Sueño Índigo” y los cómics “Pasado” y “Colores”.","img/Mujer_1.jpg","yozoh2004@gmail.com
","-13.518936101916335 ","-71.98050471302038","https://www.youtube.com/embed/Nz-d6tKw4wA"),
	(2,"Ana Maria","Milla Hurtado",1,"15/06/1977",NULL,"Cusqueña de nacimiento, administradora de formación. Desde el 2003 ha participado como gestora cultural como productora de eventos y posteriormente la primera agenda cultural virtual, Agenda Cusco. Tiene trayectoria de empresaria turística del 2002, como diseñadora y productora de eventos durante 9 años. Ha participado en numerosos recitales, como poeta y productora. Actualmente dirige el Planetarium Cusco, centro de interpretación cultural, planetario y observatorio, lugar donde se difunde la ciencia, el universo y la astronomía cultural de los inkas. Es también feliz de mamá de tres y artista floral","img/Mujer_2.jpg","anamaria@planetariumcusco.com","-13.5219062351864","-71.95797387209109","https://www.youtube.com/embed/KezcLgAdhTA"),
	(3,"Angela María"," Concha Pacheco",1,"06/06/1980",NULL,"Angela M. Concha es licenciada en Historia por la Universidad Nacional de San Antonio Abad del Cusco. Magister en Historia de América Latina, Mundos Indígenas por la Universidad Pablo de Olavide en Sevilla-España, y candidata a Doctora en Historia y Estudios Humanísticos: Europa, América, Arte y Lenguas por la misma Universidad. Con experiencia en trabajos sobre patrimonio documental y monumental (templos, casonas coloniales, centros arqueológicos y archivos históricos), en labores de conservación, catalogación e investigación. Docente de la Universidad de Salamanca (España)/ International Studies Abroad (ISA-Cusco) y de la Universidad Nacional de San Antonio Abad del Cusco. 
","img/Mujer_3.jpg","angelamaria11y6@gmail.com","-13.5215231640725","-71.95862120997890","https://www.youtube.com/embed/v7WSLHeSR44"),
	(4,"Gladys","Conde Camargo",1,"07/03/1982",NULL,"Poeta y cantautora. Ha sido acompañante musical en centros de educación inicial de Cusco. También facilitadora de talleres en torno del arrullo para madres gestantes, madres adolescentes, abuelos, recien nacidos, profesores, médicos y enfermeros.
Obtuvo una mención honrosa en poesía por el Premio Regional de Cultura de Cusco (2006), publicándose sus poesías “Antología Poética del Cusco” INC (2007), “Juego y silencio” Editorial Saqra (2009), “Lliqlla. El Canto de la abuela” (2020) por el Fondo Editorial SM. Sus composiciones musicales que son poesías hechas canción que se encuentran en los discos ”Zorrito Ramón” (2011), “Intiwawacha” (2012); “El vuelo de katari” (2013), “Wanamey: Árbol de vida” (2017). “Wawa Bebé” (2021). Ha venido desarrollando proyectos integrales como “Tejedores del sonido”, donde se enseña a hilar acompañadas del recurso del canto, “Conciertos de arrullo para bebés” y los círculos de expresión “El Cuerpo de la Voz”, para víctimas que han callado la violencia y “Voces y cantos para el arrullo” para fortalecer los vínculos afectivos de la familia con el bebé. Últimamente fue facilitadora del programa “Cartas y arrullos desde adentro” en el Penal de Qenqoro de Cusco a través del proyecto atravesando Muros liderado por Anahí Araoz. Actualmente viene componiendo cantos para obras escénicas y cine. Pueden ser apreciadas en “ Lliqllas infinitas” (2021), bajo la dirección Huandy Laguna y “K´anchay” (2022), que son cuentos salvavidas para niños y niñas bajo la inspiración de Luz Saenz y Adalid Rondan.
","img/Mujer_4.jpg","condeinfinito@hotmail.com","-13.522798","-71.97945447901128","https://www.youtube.com/embed/myEpMpTkVSY"),
	(5,"Natalya Eddem ","Lizarraga Conchatupa",1,"07/10/1982",NULL,"Con experiencia laboral desde el 2003 hasta la actualidad. Natalya Lizarraga ha trabajado en diferentes proyectos artísticos individuales y colectivos. Su trabajo consiste en estéticas como el surrealismo, surrealismo narrativo, que se ven reflejados en trabajos como: “Dulcinea”, “Huida a Egipto“, “Nativo“, parte del proyecto “Memoria 2014“ que constó de 4 exhibiciones realizadas en diferentes Centros Culturales del Cusco-Perú; otros trabajos con enfoque mayormente ecológico, de diferentes especies emblemáticas o en peligro de extinción a nivel nacional o internacional tenemos “Tigrillo“ 2015. Tambien en sus exposiciones se han enfocado en la cultura viva como son tradiciones orales, con obras como con la muestra realizada en la casa cultural Cusco-Perú , 2016. Otras expresiones artisticas que revalorando tradiciones y creencias mortuarios que se tienen en la actualidad que provienen desde la cosmovisión precolombina, con obras como “El condenado“, “Aparición“, “Ofrendas“ . Sobre mitos y leyendas, a nivel nacional e internacional nos deleita con obras como “El Minotauro“ 2004. Natalia Lizarraga ha tenido exposiciónes individuales y colectivas en el Perú como en el extranjero en paises como: México, Bruselas, Alemania y Estados Unidos. En el campo de la ilustración ha participando en proyecto como la publicación “Cuentos Aguarunas“ del Centro Guamán Poma de Ayala Cusco en 2010, tambien trabajo en el libro-cancionero “LLIQLLA“2021 con la Editorial SM Perú y colaborando en la portada del Álbum Musical Lliqlla de la misma cantautora Gladys Conde, Cusco, 2021.","img/Mujer_5.jpg","milimetricoinfinito@gmail.com","-13.522533","-71.966346","https://www.youtube.com/embed/-Q8TvP0NMos"),
	(6,"Antonieta","Conde Marquina",2,"10/05/1981",NULL,"Maestra y gestora intercultural. Magíster en Educación Intercultural Bilingüe. Madre, mujer e hija del ancestral Pueblo Quechua Kʼana de Layo, Cusco. Sus áreas de interés son: Intraculturalidad e interculturalidad, investigación y gestión intercultural en temáticas socioculturales, socioeducativas, sociolingüísticas y ciudadanía intercultural vinculados a los pueblos indígenas. En su trayectoria de proyección sociocultural, académica y de vida ha realizado publicaciones, presentaciones, actividades formativas y labores profesionales, con énfasis en lo testimonial, desde el enfoque intercultural dentro y fuera del Perú. Editora y correctora independiente, en quechua y castellano, de investigaciones científico sociales, literarias e informativas (desde 2003 hasta la actualidad). Es alumni/exbecaria de la Fundación Ford, FLACSO Argentina e Ibercultura Viva, FILAC y AECID.","img/Mujer_6.jpg","antonietacondemarquina@gmail.com","-14.48242077795887","-71.15427871932138","https://www.youtube.com/embed/aXVNtofplSk"),
	(7,"Lucy Magály","Fernández Medina",1,"24/11/1980",NULL,"Nació en la mítica ciudad del Cusco. Lugar en el que vivió hasta terminar sus estudios en la Universidad Andina (UAC). Es escritora, profesora de español como lengua extranjera y licenciada en Turismo. Ha llevado talleres de narrativa y escritura creativa en el Centro Cultural de la Pontificia Universidad Católica del Perú (PUCP), y durante varios años asistió a talleres con el escritor Alonso Cueto. El 2016 participó en la “Antología de microrrelatos eróticos II” de la editorial Altazor. El 2018 publica “Rojo” su primera novela de la mano con la editorial Forjadestino.
Cuenta la historia de una joven, quien es obligada a casarse con un rico y cruel hacendado a inicios de los años 30. 
El 2020 su novela “Otra selva para Mercedes” fue ganadora de los Estímulos Económicos para la Cultura (Apoyo a la Producción Editorial Peruana). Aquí narra las vicisitudes de una mujer en el ambiente hostil y genocida de la época del caucho. Y su cuento “Un trozo desprendido de la luna”, inspirado en Tomasa de Amat y García Mancebo será publicado en “21 Relatos sobre mujeres que lucharon por la independencia del Perú” de Petroperú.
","img/Mujer_7.jpg","artemisa_30@hotmail.com","-13.5367","-71.9049","https://www.youtube.com/embed/KKCDJW7P2P8");

INSERT INTO site_web_publicacion(id,titulo,isbn,categorizacion,fecha,descripcion,mujer_id,link_imagen,titulo_disponible,link_disponible) VALUES
	(1,"Sueño Índigo","9786124751028","Cuentos","2018","Libros que contiene dos historias tiernas, acompañadas de espectaculares ilustraciones que te transportarán junto a los protagonistas.",1,"img/Mujer_1_Libro1.jpg","Libreria Búho Azul","https://www.facebook.com/buhoazulcusco"),
	(2,"Colores",NULL,"Cómic","2020","La autora nos cuenta una pequeña anécdota de su infancia en el jardín de su abuela.",1,"img/Mujer_1_Libro2.jpg","Plataforma Behance","https://www.behance.net/gallery/125265469/COLORS-COMIC-Colores-Comic"),
	(3,"Pasado",NULL,"Cómic","2021","Cómic Ganador del Concurso Internacional de Historieta “La sociedad en tiempos de Pandemia” del Festival Virtual Internacional de las artes “Qosqo T’ikarinampaq 2020” Organizado por la Municipalidad del Cusco.",1,"img/Mujer_1_Libro3.jpg","Plataforma Behance","https://www.behance.net/gallery/124964849/PASADO-por-Adriana-Cule-AKA-Madivera"),
	(4,"Antología Ángeles y Demonios",NULL,"Cuentos","1998","Antología organizada por la Asociación Centro Cultural Cusco.",2,"img/Mujer_2_Libro1.jpg","Esta publicación no esta disponible.",NULL),
	(5,"Poemario Acidulce","200901791","Poemario","2009","Éste es su primer poemario, como el título, un cúmulo de dulces y ácidas experiencias",2,"img/Mujer_2_Libro2.jpg","Sitio Web Ana María Milla","https://anamaria.pro/acidulce/"),
	(6,"Mil Poemas a César Vallejo: Una gesta de amor universal",NULL,"Poemario","2012","Ana María Milla participa en esta antología con su poema en la página 349, esta publicación es una recopilación hecha por Alfred Asís Antología-Recopilación-Escritoras, Escritores-Poetas del Mundo.",2,"img/Mujer_2_Libro3.jpg","Enlace Drive","https://drive.google.com/file/d/1k0S8eXwEdFe0iNi_0PyDisx1lE-LiT0c/view?usp=sharing"),
	(7,"La hija del bosque",NULL,"Poemario","2019","La Hija del Bosque es su segundo poemario, y el primero la colección El Retorno de los paganos, colección de publicaciones sobre el retorno a la naturaleza y el viaje interior que toma de pretexto de los viajes físicos hacia otra comprensión del mundo y del universo.",2,"img/Mujer_2_Libro4.jpg","Libreria Búho Azul","https://www.facebook.com/buhoazulcusco"),
	(8,"Poemic: El atardecer del fin del mundo",NULL,"Cómic","2019","Poemic, es una producción que busca fusionar un poema con el arte del cómic. Con el título El atardecer del Fin del Mundo, es un viaje épico en un mundo en guerra, hacia la esperanza de un mundo mejor. Magistralmente ilustrado por el equipo de Qosqomic, liderado por el artista Fabricio Rivas Mar.",2,"img/Mujer_2_Libro5.jpg","Sitio Web Ana María Milla","https://anamaria.pro/poemic/"),
	(9,"Documentos para la historia eclesiástica de Apurímac. Análisis histórico al documento de la peregrinación de Sebastián Quimichi, siglo XVII","27098680","Artículo de revista","2020","El presente trabajo analiza la peregrinación de Sebastián “Quimichi”, a partir de la documentación que pertenece al archivo histórico del Santuario de Cocharcas, específicamente al documento denominado “Relación de la imagen de Nuestra Señora que está en este pueblo de Cocharca hecha por el licenciado don Pedro Guillén de Mendoza en 20 de julio de 1625 años”.",3,"img/Mujer_3_Libro1.jpg","Revista Riqch’ariy Vol. 1, N° 01, 2020. pp. 147-178","https://www.academia.edu/44910438/REVISTA_RIQCH_ARIY_No_01"),
	(10,"El archivo del Santuario de Cocharcas: historia, catalogación y transcripción paleográfica siglos XVI-XX.","287307","Artículo de revista","2017","El motivo del presente trabajo es la difusión de los fondos documentales del Archivo Histórico del Santuario de Cocharcas, cuya recuperación y organización se inició el 2009 a través del entonces Instituto Nacional de Cultura Cusco (INC), institución que se encontraba restaurando el citado santuario. Con el trabajo efectuado, que fue la Puesta en Valor del archivo, se logró poner al servicio libros de cofradías, fábrica, inventarios, empadronamientos, testamentos y libros sacramentales (entierros, bautizos, matrimonios y confirmaciones), además de libros de inicios del siglo xx como litigación de tierras, peticiones y solicitudes, entre otros, que dan cuenta de la vida social, religiosa y cultural del santuario y la doctrina de Cocharcas, desde finales del siglo XVI hasta inicios del XX.",3,"img/Mujer_3_Libro2.jpg","Revista del Archivo General de la Nación N°32, 2017, págs. 287-307","https://revista.agn.gob.pe/ojs/index.php/ragn/issue/view/1/4"),
	(11,"Espacios de inclusión y exclusión: Etnias, ayllus y cofradías en la conformación de la doctrina eclesiástica de Cocharcas 1570-1614.","9786124544637","Artículo de revista","2013","El presente artículo se enmarca en el difícil proceso de reorganización social y religiosa que las poblaciones indígenas padecieron dentro de la región de Huamanga en la coyuntura finisecular del siglo XVI. Nuestra preocupación por comprender dichas reorganizaciones obedece a un doble interés, primero dar cuenta de la conformación del espacio social de la doctrina de Cocharcas, y segundo realizar un análisis de las relaciones interétnicas y las nociones de inclusión/exclusión a partir de la implantación de la institución de la cofradía, convirtiéndose en el medio de mayor eficacia para canalizar y viabilizar los intereses colonial étnicos locales de poder para así ganarse un espacio dentro de la nueva sociedad colonial que se conformaba.",3,"img/Mujer_3_Libro3.jpg","Cuadernos de Investigación Universitaria, 2013, núm. 01. 01 págs. 45-70","https://www.academia.edu/44912519/CUADERNOS_DE_INVESTIGACI%C3%93N_N_01"),
	(12,"El Santuario de Cocharcas: Construcción, clero secular y participación indígena (1611-1680)",NULL,"Articulo de revista","2013","El presente artículo se enmarca en el difícil proceso de reorganización social y religiosa que las poblaciones indígenas padecieron dentro de la región de Huamanga en la coyuntura finisecular del siglo XVI. Nuestra preocupación por comprender dichas reorganizaciones obedece a un doble interés, primero dar cuenta de la conformación del espacio social de la doctrina de Cocharcas, y segundo realizar un análisis de las relaciones interétnicas y las nociones de inclusión/exclusión a partir de la implementación de la cofradía, convirtiéndose en el medio de mayor eficacia para canalizar y viabilizar los intereses colonial étnicos locales de poder para así ganarse un espacio dentro de la nueva sociedad colonial que se conformaba.",3,"img/Mujer_3_Libro4.jpg","Arquitextual N°02, Huancayo, Diciembre 2013, pp 82-102.","https://issuu.com/gusstockconchaflores/docs/arquitextual_2"),
	(13,"Investigación histórica del Santuario de Cocharcas y el Archivo Arzobispal de Abancay.",NULL,"Artículo de revista","2014",NULL,3,"img/Mujer_3_Libro5.jpg","Red de Archivos y Bibliotecas Históricas del Perú","http://archivosybibliotecasdelperu.blogspot.com/2014/03/investigacion-historica-del-santuario_1784.html"),
	(14,"RIQCH´ARIY",NULL,"Edición","2006, 2008, 2020, 2021","Revista de corte social con carácter multidisciplinario producido por el círculo de estudios del mismo nombre pertenecientes a la Facultad de Ciencias Sociales de la Universidad Nacional de San Antonio Abad del Cusco (UNSAAC).",3,"img/Mujer_3_Libro6.jpg","Revista Riqch’ariy ","https://revistariqchariy.com/"),
	(15,"CUADERNOS DE INVESTIGACIÓN UNIVERSITARIA",NULL,"Edición","2012, 2013, 2014","Revista exclusivo para jóvenes y egresados de las diversas carreras profesionales, con el objetivo de dar a conocer los resultados de las investigaciones científicas y los procesos de transferencia tecnológica que se da en la Universidad de San Antonio Abad del Cusco (UNSAAC)",3,"img/Mujer_3_Libro7.jpg","Vicerrectorado de Investigación de la Universidad de San Antonio Abad del Cusco (UNSAAC)","http://vrin.unsaac.edu.pe/"),
	(16,"II SEMANA DE INVESTIGACIÓN",NULL,"Edición","2014","Publicación que conjuga un conjunto de actividades de capacitación y promoción de la investigación científica con el objetivo de generar un espacio plural de debate en relación a la invención, innovación e investigación científica, tecnológica y humanista en la región Cusco con participación de expertos, profesores y estudiantes universitarios de la UNSAAC y el país.",3,"img/Mujer_3_Libro8.jpg","Vicerrectorado de Investigación de la Universidad de San Antonio Abad del Cusco (UNSAAC)","http://vrin.unsaac.edu.pe/"),
	(17,"VADEMÉCUM",NULL,"Edición","2013-2014","El Vicerrectorado de Investigación de la Universidad Nacional de San Antonio Abad del Cusco presenta la publicación VADEMÉCUM DE INVESTIGACIÓN FEDU 2013-2014, que da continuidad a la difusión de las diferentes investigaciones realizadas por grupos de docentes activos y jubilados durante el bienio señalado, los mismos fueron financiados con el Fondo Especial de Desarrollo Universitario (FEDU)",3,"img/Mujer_3_Libro9.jpg","Vicerrectorado de Investigación UNSAAC-VADEMÉCUM - Recursos Digitales","http://vrin.unsaac.edu.pe/publicaciones/1/vademecum-fedu-20132014.html"),
	(18,"Antología Poética del Cusco",NULL,"Poemario","2007","Gladys Conde es acreedora de mención honrosa en poesía por el Premio Regional de Cultura de Cusco (2006), publicándose sus poemas en “Antología Poética del Cusco” realizado por el INC en el 2007.",4,"img/Mujer_4_Libro1.jpg","Libreria Búho Azul","https://www.facebook.com/buhoazulcusco"),
	(19,"Juego y silencio","9786124544811","Poemario","2009","Poemario de 26 poemas cortos, algunos lúdicos otros más serios; donde la poeta relaciona el proceso de creer con metaforas de la naturaleza, el juego y el silencio.",4,"img/Mujer_4_Libro2.jpg","Esta publicación no esta disponible.",NULL),
	(20,"Lliqlla: El canto de la abuela","9786123169701","Cancionero","2020","Gladys Conde ha bebido de la fuente de nuestros ancestros para crear estas maravillosas canciones para el arrullo y el sueño; para crecer y sanar. Los once cantos que incluye este libro nos hacen contemplar la armonía cósmica que reina entre plantas y animales; entre el cielo y la tierra. Las canciones además vienen acompañadas de las luminosas pinturas de la artista plástica Natalya Lizárraga.
",4,"img/Mujer_4_Libro3.jpg","Libreria Búho Azul","https://www.facebook.com/buhoazulcusco"),
	(21,"Cancionero para bebés 2. Colección Tuctupillín","9786124456237","Cancionero","2020","Gladys Conde es parte de este proyecto con 3 canciones. El programa Bebetecas de la Casa de la Literatura Peruana presenta el segundo volumen de Cancionero para bebés. Esta antología reúne más de 30 arrullos, juegos de palabras y canciones que involucran el cuerpo para propiciar el primer vínculo musical de los bebés con el lenguaje. 

",4,"img/Mujer_4_Libro4.jpg","La Casa de la Literatura Peruana","http://www.casadelaliteratura.gob.pe/segundo-cancionero-del-programa-bebetecas/"),
	(22,"Cuentos Aguarunas","DL 2011 00716","Cuentos","2010","Los dos mitos publicados en este folleto han sido tomados del libro Mitos e historias aguarunas de José Luis Jordana Laguna (Retablo de papel ediciones. Lima. 1974); esta publicación trabajada por Guaman Poma de Ayala trae a la vida estos hermosos mitos mediante la ilustración de Natalya Lizarraga.",5,"img/Mujer_5_Libro1.jpg","Plataforma Yumpu","https://www.yumpu.com/es/document/read/14596588/cuentos-aguarunas-en-espanol-guaman-poma-de-ayala"),
	(23,"Identidad, tradición oral y cosmovisión basada en el ecosistema en Perú: reflexiones estéticas desde el surrealismo",NULL,"Artículo de revista","2022","En el presente artículo la ilustradora explica: Lejos de proponer una visión romanizada de la tradición oral y la cosmovisión ancestral, pretendo brindar reflexiones desde mi práctica artística personal y desde la corriente estética del surrealismo sobre los elementos claves de la identidad y los ecosistemas en el Perú. Mucha de la influencia e inspiración nace tanto de artistas y artesanos locales como internacionales. Me enfoco en corrientes que nacieron en la colonia, como es la reconocida Escuela Cusqueña, que tiene como representantes a pintores como Diego Quispe Tito, o el pintor Italiano Bernardo Bitti. Cabe resaltar que los trabajos de la Escuela Cusqueña en mayoría son obras de pintores originarios y mestizos. Obras sacras como las del Corpus Christi siglo XVII de autor anónimo o la obra Virgen del Carmen del siglo XVII, que por su composición se asocia a la representación de la Pachamama, son importantes como antecedente de la pintura actual peruana enfocada en lo tradicional y la ecología",5,"img/Mujer_5_Libro2.jpg","Revista de Ecología Política","https://www.grassrootsjpe.org/publications/visual-essay/identidad-tradicion-oral-y-cosmovision-basada-en-el-ecosistema-en-peru-reflexiones-esteticas-desde-el-surrealismo/?fbclid=IwAR2bXxfO7MwyYIIsEXr961FJz4A8cCgEhcZPoPRSHNzykUUBurOd9u-Okzw"),
	(24,"Lliqlla: El canto de la abuela","9786123270254","Cancionero","2020","Natalya Lizarraga apoya con sus hermosas ilustraciones a Gladys Conde en este cancionero para niños, los once cantos nos hacen contemplar la armonía cósmica que reina entre plantas y animales; entre el cielo y la tierra.",5,"img/Mujer_5_Libro3.jpg","Libreria Búho Azul","https://www.facebook.com/buhoazulcusco"),
	(25,"Usos del quechua en Layo, K´ana suyupi, Cusco","9789995415914","Libro de investigación","2014","Este libro explora la situación sociolingüística del uso del quechua en la comunidad de Taypitunga, Layo, Cusco. Los datos fueron recopilados a través del método etnográfico. Este método posibilitó conocer la versión directa de los hablantes, y en su propio contexto, acerca del proceso actual que el quechua presenta. Las entrevistas y las observaciones de las interacciones de uso del quechua contaron con la participación de jóvenes colegiales y por extensión a los hablantes de la comunidad en general. Los ámbitos que se tomaron como referencia fueron: el hogar, el colegio y la comunidad",6,"img/Mujer_6_Libro1.jpg","DocPlayer","https://docplayer.es/90780283-Usos-del-quechua-en-layo-k-ana-suyupi-cusco.html"),
	(26,"Oro hate emändoya Wachiperi : Diccionario Wachiperi Castellano / DDC-Cusco","9786124686528","Corrección de estilo","2014","(Antonieta realiza la corrección de estilo) El Ministerio de Cultura presentó el Diccionario Wachiperi: Oro Hate Emändoya. La lengua wachiperi, hablada en la provincia de Paucartambo, es una variedad del harakbut. Este diccionario recoge la sabiduría, los conocimientos y expresiones propias de la cosmovisión amazónica de las comunidades nativas de Santa Rosa de Huacaria y Queros Wachiperi; y adquiere una singular importancia para los wachiperi del siglo XXI, interesados en revertir el proceso de debilitamiento en que se encuentra su pueblo ante la disminución de la práctica de su lengua.",6,"img/Mujer_6_Libro6.jpg","Biblioteca Central DDC-Cusco","http://biblioteca.culturacusco.gob.pe/cgi-bin/koha/opac-detail.pl?biblionumber=3948"),
	(27,"Poesía (Quechua y Castellano). Antología de Ganadores de la Categoría “C” : Premio Regional de Cultura, 2015 / Dirección Desconcentrada de Cultura Cusco","DL 201603534","Corrección de estilo","2015","(Antonieta realiza la corrección de estilo en quechua ). Antología de poemas en quechua y castellano de los ganadores de la Categoría “C”. Entre los poetas de esta antología tenemos: Gladis Naty Valencia Rosell, Huchuy harawikunata; Rocío Cjuiro Mescco, Qaqarumicha. Poesía en castellano: Pável Ugarte Céspedes, Repatriación de las aves; Elvis David Quispe Altamirano, Visitame siempre en octubre; Martin Castillo Collado, Primera Dosis; Jhon Hansel Choque Condori, La Palabra no hace el amor, sino la ausencia",6,"img/Mujer_6_Libro5.jpg","Biblioteca Central DDC-Cusco","http://biblioteca.culturacusco.gob.pe/cgi-bin/koha/opac-detail.pl?biblionumber=8894"),
	(28,"Quechua, idioma que puede hacer retornar la vida de comunidad: Runasimiqa ayllumanmi kutichinman","9789568416461","Ensayo","2016","Este ensayo trata sobre la inserción tímida de este proceso reivindicativo y justiciero en el contexto y escenario histórico, simbólico, práctico, institucional, familiar, personal",6,"img/Mujer_6_Libro2.jpg","Ariadnaediciones","https://ariadnaediciones.cl/index.php?option=com_content&view=article&layout=edit&id=153"),
	(29,"Poesía Súper Contemporánea de Perú y Estados Unidos.","9789569853104","Traducción","2017","(Antonieta participa en el grupo de traductores de esta obra) Poesía súper contemporánea de Perú y Estados Unidos es un libro sensual y necesario. Entre sus páginas se encuentran las voces más destacadas del movimiento literario alt-lit de Estados Unidos con una intensa muestra de poesía peruana contemporánea: individual y colectiva, del campo y la ciudad, tradicional y de vanguardia al mismo tiempo.",6,"img/Mujer_6_Libro7.jpg","Libreria Búho Azul","https://www.facebook.com/buhoazulcusco"),
	(30,"Revista Saqsaywaman N°10",NULL,"Corrección de estilo","2018","(Antonieta realiza la corrección de estilo en quechua ) Nuevos aportes a la Arqueología del Periodo Formativo del Cusco en Marcavalle, Minaspata y Kullupata.",6,"img/Mujer_6_Libro4.jpg","Esta publicación no está disponible.",NULL),
	(31,"Balance preliminar en torno a avances, desafíos y oportunidades de la consulta previa en el Perú","9786124740831","Ensayo","2018","El trabajo de investigación ofrece una mirada panorámica de la consulta previa en cinco apartados. Los procesos vinculados a la consulta previa vislumbran el punto de quiebre que dio origen a los diferentes eventos, etapas, acuerdos y desacuerdos que sirvieron de preámbulo a la promulgación de la ley y su reglamento.",6,"img/Mujer_6_Libro3.jpg","Centro de Estudios Constitucionales (CEC) Colección  “Derecho y Sociedad” 2017","https://www.tc.gob.pe/wp-content/uploads/2018/10/Justicia-e-interculturalidad.pdf"),
	(32,"5to Festival Caravana de Poesía Cusco - Ayacucho","9786124770265","Poemario","2018","Antología de poemas en castellano y quechua.",6,"img/Mujer_6_Libro8.jpg","Esta publicación no está disponible.",NULL),
	(33,"Relato Puriy kutiy (El viaje del retorno)",NULL,"Cuento","2012","La autora nos comenta que este relato fue publicado en Noqanchis No. 5. revista bilingüe quechua-asháninka, 2012",6,"img/Mujer_6_Libro9.jpg","Esta publicación no está disponible.",NULL),
	(34,"Rojo","9786124788512","Novela","2018","En el año 1932, Matilde tiene 15 años y tras la muerte de su padre, es ofrecida en casamiento a Artemio Urbina, hombre adinerado que dedica su vida a viajes y fiestas. Rojo es la historia del mundo interior de Matilde, pero también de su encuentro con el diario de Lavinia Vigorou, primera esposa de Artemio e importante pianista de la época cuyos escritos revelan libertad y cultos esotéricos, fragmentos íntimos que abren las puertas a un paisaje sensorial y espiritual, que cogen la mano de la protagonista para intentar salvarla del vacío.",7,"img/Mujer_7_Libro1.jpg","Editorial Forjadestino","https://www.facebook.com/forjadestino/"),
	(35,"De los vientos o la muerte","9786124788574","Novela","2021","Mercedes tenía dieciséis años cuando un hombre vestido con un terno blanco fue a recogerla para llevarla por primera vez a la Amazonía. Al pasar los treinta, siente que jamás podrá acostumbrarse a vivir en aquel lodazal olvidado del mundo. Busca aferrarse a algo, a alguien, pero está sola. Rodeada de un interminable abismo.",7,"img/Mujer_7_Libro2.jpg","Editorial Forjadestino","https://www.facebook.com/forjadestino/"),
	(36,"Un trozo desprendido de la luna",NULL,"Relato","2021","Lucy Fernandez traza desde los hábitos y costumbres de Tomasa Amat y García Mancebo dama de la sociedad involucrada en la causa independentista y nieta de famosa Perricholi, el recorrido de San Martín desde su desembarcación en Paracas hasta la proclama de la independencia en Lima. (Parte de 21. Relatos sobre mujeres que lucharon por la Independencia del Perú)",7,"img/Mujer_7_Libro3.jpg","Petro Perú Gestión Cultural","https://cultura.petroperu.com.pe/biblioteca-cope/veintiun-relatos-volumen-dos/"),
	(37,"La cocina",NULL,"Relato Erótico","2016","Lucy Fernandez participa en la Antología de microrrelatos eróticos II titulado “69”, trabajo seleccionado por Carolina Cisneros para editorial Altázor. Una cuidadosa edición en formato pequeño que reúne a 69 escritoras que presentan 69 microrrelatos, en tono erótico, con la peculiaridad de estar escritos en 69 palabras.",7,"img/Mujer_7_Libro4.jpg","Esta publicación no está disponible.",NULL);

INSERT INTO site_web_ejerce(id,mujer_id,categoria) VALUES
	(1,1,"Il"),
	(2,1,"Es"),
	(3,1,"Co"),
	(4,2,"Po"),
	(5,2,"Es"),
	(6,3,"Hi"),
	(7,3,"Ed"),
	(8,4,"Po"),
	(9,5,"Il"),
	(10,6,"Es"),
	(11,6,"Ed"),
	(12,6,"Cr"),
	(13,6,"Tr"),
	(14,7,"Es");
