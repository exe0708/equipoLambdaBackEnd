-- Pais --
insert into pais values (1, 1, 'Argentina');
insert into pais values (2, 1, 'Chile');
insert into pais values (3, 1, 'Brasil');
insert into pais values (4, 1, 'Uruguay');
insert into pais values (5, 1, 'Paraguay');
insert into pais values (6, 1, 'Bolivia');
insert into pais values (7, 1, 'EEUU');

-- Provincia --
insert into provincia values (1, 1, 'Córdoba', 1);
insert into provincia values (2, 1, 'Buenos Aires', 1);
insert into provincia values (3, 1, 'Santa Fe', 1);
insert into provincia values (4, 1, 'Tucuman', 1);
insert into provincia values (5, 1, 'Mendoza', 1);
insert into provincia values (6, 1, 'Entre Rios', 1);

-- Localidad --
insert into localidad values (1, 1, 'Córdoba',1);
insert into localidad values (2, 1, 'Rio Cuarto',1);
insert into localidad values (3, 1, 'San Francisco',1);
insert into localidad values (4, 1, 'Embalse',1);
insert into localidad values (5, 1, 'Calamuchita',1);
insert into localidad values (6, 1, 'Villa El Totoral',1);

-- Barrio --
insert into barrio values (1, 1, 'Centro', 1);
insert into barrio values (2, 1, 'Nueva Córdoba', 1);
insert into barrio values (3, 1, 'Cerro de las Rosas', 1);
insert into barrio values (4, 1, 'Jardin', 1);
insert into barrio values (5, 1, 'San Vicente', 1);
insert into barrio values (6, 1, 'Alberdi', 1);

-- Cantidad años pasante  --
insert into cantidadañospasante values (1, 'Primer año universitario', '1er año');
insert into cantidadañospasante values (2, 'Segundo año universitario', '2do año');
insert into cantidadañospasante values (3, 'Tercer año universitario', '3er año');
insert into cantidadañospasante values (4, 'Cuarto año universitario', '4to año');
insert into cantidadañospasante values (5, 'Quinto año universitario', '5to año');

-- Especialidad --
insert into especialidad values (1, 1, 'Ingeniería en Sistemas');
insert into especialidad values (2, 1, 'Ingeniería Química'); 
insert into especialidad values (3, 1, 'Ingeniería Mecánica');
insert into especialidad values (4, 1, 'Ingeniería Industrial');
insert into especialidad values (5, 1, 'Ingeniería Electrónica');
insert into especialidad values (6, 1, 'Ingeniería Civil');

-- Estado ARM --
insert into estadoarm values (1, 1, 'Generado');
insert into estadoarm values (2, 1, 'Finalizado');
insert into estadoarm values (3, 1, 'Cancelado');

-- Estado sucursal --
insert into estadosucursal values (1, 1, 'Habilitada');
insert into estadosucursal values (2, 1, 'Deshabilitada');

-- Genero --
insert into genero values (1, 1, 'Masculino');
insert into genero values (2, 1, 'Femenino');
insert into genero values (3, 1, 'Otro');

-- Tipo Empresa --
insert into tipoempresa values (1, '', 'Software');
insert into tipoempresa values (2, '', 'Automotriz');
insert into tipoempresa values (3, '', 'Comercial');
insert into tipoempresa values (4, '', 'Empresarial');
insert into tipoempresa values (5, '', 'Salud');
insert into tipoempresa values (6, '', 'Ambiental');

-- Empresa--
insert into empresa values (1, '3284595634', '', '', 'SRL', 1);
insert into empresa values (2, '3215741461', '', '', 'SA', 1);
insert into empresa values (3, '3748112889', '', '', 'SA', 1);
insert into empresa values (4, '7841216464', '', '', 'SRL', 2);
insert into empresa values (5, '3684842154', '', '', 'SRL', 2);
insert into empresa values (6, '3965114487', '', '', 'SRL', 4);

-- Sucursal x empresa --
insert into sucursalesxempresa values (1, 'ESTUDIO GCG SRL', 300, 'estudio.gcg@gmail.com','2020/08/28', 'Desarrollo de Software', '', 45781296, 452963, 'Rivadavia', 1088, 1, 1, 1);
insert into sucursalesxempresa values (2, 'CLARIPHY ARGENTINA SA', 250, 'clariphy@gmail.com','2020/08/28', 'Desarrollo de Software', 'www.clariphysa.com.ar', 58471263, null, 'Duarte Quiroz', 145, 2, 1, 1);
insert into sucursalesxempresa values (3, 'PROMINENTE SA', 500, 'prominente.sa@gmail.com','2020/08/28', 'Desarrollo de Software', '', 56239645, 4784963, 'Justiniano Posse', 2541, 4, 3, 1);
insert into sucursalesxempresa values (4, 'BUEN BYTE SAS', 100, 'buen.byte.sas@gmail.com','2020/08/28', 'Desarrollo de Software', 'www.buenbytesas.com', 41529673, null, 'San Lorenzo', 50, 2, 4, 1);
insert into sucursalesxempresa values (5, 'DAYCO ARGENTINA SA', 750, 'dayco.arg.sa@gmail.com','2020/08/28', 'Automotriz', '', 55223674, 4142367, 'Marcelo T. de Alvear', 296, 1, 5, 1);
insert into sucursalesxempresa values (6, 'INDUPAS S.R.L.', 400, 'indupas.srl@gmail.com','2020/08/28', 'Industrias Alimentarias', 'www.indupas.net', 53754819, 478451, 'Humberto Primo', 2563, 6, 6, 1);

-- Formulario ARM --
insert into formularioarm values(1, 5, 'ESTUDIANTE INGENIERIA ELECTRONICA O COMPUTACION', 'DRFJL7845', 'N/A', 12, 'sector.rrhh@clariphy.com', 1, 'NO EXCLUYENTE', '2020/08/28', '2020/09/30', '10:00', '14:00', 'Empresa del cliente', 'CONOCIMIENTOS SOBRE SISTEMAS DIGITALES DE COMUNICACIONES CAPACIDAD DE PROGRAMACION EN C, C++ Y PYTHON BUENA CAPACIDAD DE COMUNICACION ORAL Y ESCRITA', 'MANEJO DEL IDIOMA INGLES', 'FEC', 10000, 'PARTICIPAR DE PROYECTOS DE ALTO NIVEL TECNOLOGICO A NIVEL MUNDIAL. TUTORIAS CON EXPERTOS. EXCELENTE ESPACIO Y CONDICIONES DE TRABAJO. ', 3, 3, 1, 2);
insert into formularioarm values(2, 3, 'Pasantía en Calidad y Control de gestión', 'SFGRVFDG45151', 'N/A', 12, 'contactoRRHH@grupoprominente.com', 1, 'NO EXCLUYENTE', '2020/08/28', '2021/02/3', '10:00', '12:00', 'Empresa', 'Microsoft Office', 'Trabajo en equipo - Visión de proceseos - Análisis de información - Ganas de aprender', ' 	Pasante', 14698, 'Lic. trámite - Lic. día de Cumpleaños - Snack saludables - Coffe continuo - Club La Voz - Club Libertad  ', 3, 4, 1, 3);
insert into formularioarm values(3, 2, 'Desarrollo de Software', 'GRTHFBVFDV484', 'N/A', 6, 'selcba@gmail.com', 1, '2 años', '2020/08/28', '2020/11/1', '8:00', '12:00', 'Empresa del cliente', '- HTML5, javascript, jquery, CSS, PHP. - Desarrollo de sitios Web de alto tráfico. - MySQL, querys y PHP. - Symfony, Laravel, Codeingniter ', '- Manejar algún sistema de control de versión (GIT), Bootstrap. - Sólidos conocimientos en knockoutjs, Laravel. ', 'Desarrollador PHP', 16000, 'Participación en diversos proyectos y equipos multidisciplinarios y posibilidad de incorporación de forma efectiva una vez finalizada la pasantía. ', 3, 2, 1, 5);
insert into formularioarm values(4, 1, 'El foco de la posición es la atención telefónica de los clientes, como también la asistencia en sus inconvenientes o dudas técnicas', 'NGHBFV1815', 'N/A', 6, 'rrhh@buenbyte.com', 1, '1 año', '2020/08/28', '2020/10/15', '10:00', '14:00', 'Empresa del cliente', ' 	AUTOCAD ', ' 	PAQUETE OFFICE', 'Estudiantes avanzados Ing MECANICA ', 11000, 'PREPAGA COMEDOR EN PLANTA ', 3, 1, 1, 6);

-- especialidadxarm --
insert into especialidadxarm values(1,1,1,2);
insert into especialidadxarm values(2,1,1,3);
insert into especialidadxarm values(3,1,2,4);
insert into especialidadxarm values(4,1,3,5);