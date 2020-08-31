-- Pais --
insert into pais values (null, 1, 'Argentina');
insert into pais values (null, 1, 'Chile');
insert into pais values (null, 1, 'Brasil');
insert into pais values (null, 1, 'Uruguay');
insert into pais values (null, 1, 'Paraguay');
insert into pais values (null, 1, 'Bolivia');
insert into pais values (null, 1, 'EEUU');

-- Provincia --
insert into provincia values (null, 1, 'Córdoba', 1);
insert into provincia values (null, 1, 'Buenos Aires', 1);
insert into provincia values (null, 1, 'Santa Fe', 1);
insert into provincia values (null, 1, 'Tucuman', 1);
insert into provincia values (null, 1, 'Mendoza', 1);
insert into provincia values (null, 1, 'Entre Rios', 1);

-- Localidad --
insert into localidad values (null, 1, 'Córdoba',1);
insert into localidad values (null, 1, 'Rio Cuarto',1);
insert into localidad values (null, 1, 'San Francisco',1);
insert into localidad values (null, 1, 'Embalse',1);
insert into localidad values (null, 1, 'Calamuchita',1);
insert into localidad values (null, 1, 'Villa El Totoral',1);

-- Barrio --
insert into barrio values (null, 1, 'Centro', 1);
insert into barrio values (null, 1, 'Nueva Córdoba', 1);
insert into barrio values (null, 1, 'Cerro de las Rosas', 1);
insert into barrio values (null, 1, 'Jardin', 1);
insert into barrio values (null, 1, 'San Vicente', 1);
insert into barrio values (null, 1, 'Alberdi', 1);

-- Cantidad años pasante  --
insert into cantidad_años_pasante values (null, 'Primer año universitario', '1er año');
insert into cantidad_años_pasante values (null, 'Segundo año universitario', '2do año');
insert into cantidad_años_pasante values (null, 'Tercer año universitario', '3er año');
insert into cantidad_años_pasante values (null, 'Cuarto año universitario', '4to año');
insert into cantidad_años_pasante values (null, 'Quinto año universitario', '5to año');

-- Especialidad --
insert into especialidad values (null, 1, 'Ingeniería en Sistemas');
insert into especialidad values (null, 1, 'Ingeniería Química'); 
insert into especialidad values (null, 1, 'Ingeniería Mecánica');
insert into especialidad values (null, 1, 'Ingeniería Industrial');
insert into especialidad values (null, 1, 'Ingeniería Electrónica');
insert into especialidad values (null, 1, 'Ingeniería Civil');

-- Estado ARM --
insert into estado_arm values (null, 1, 'Generado');
insert into estado_arm values (null, 1, 'Finalizado');
insert into estado_arm values (null, 1, 'Cancelado');

-- Estado sucursal --
insert into estado_sucursal values (null, 1, 'Habilitada');
insert into estado_sucursal values (null, 1, 'Deshabilitada');

-- Genero --
insert into genero values (null, 1, 'Masculino');
insert into genero values (null, 1, 'Femenino');
insert into genero values (null, 1, 'Otro');

-- Tipo Empresa --
insert into tipo_empresa values (null, '', 'Software');
insert into tipo_empresa values (null, '', 'Automotriz');
insert into tipo_empresa values (null, '', 'Comercial');
insert into tipo_empresa values (null, '', 'Empresarial');
insert into tipo_empresa values (null, '', 'Salud');
insert into tipo_empresa values (null, '', 'Ambiental');

-- Empresa--
insert into empresa values (null, '3284595634', '', '', 'SRL', 1);
insert into empresa values (null, '3215741461', '', '', 'SA', 1);
insert into empresa values (null, '3748112889', '', '', 'SA', 1);
insert into empresa values (null, '7841216464', '', '', 'SRL', 2);
insert into empresa values (null, '3684842154', '', '', 'SRL', 2);
insert into empresa values (null, '3965114487', '', '', 'SRL', 4);

-- Sucursal x empresa --
insert into sucursal_x_empresa values (null, 'ESTUDIO GCG SRL', 300, 'estudio.gcg@gmail.com','2020/08/28', 'Desarrollo de Software', '', 45781296, 452963, 'Rivadavia', 1088, 1, 1, 1);
insert into sucursal_x_empresa values (null, 'CLARIPHY ARGENTINA SA', 250, 'clariphy@gmail.com','2020/08/28', 'Desarrollo de Software', 'www.clariphysa.com.ar', 58471263, null, 'Duarte Quiroz', 145, 2, 1, 1);
insert into sucursal_x_empresa values (null, 'PROMINENTE SA', 500, 'prominente.sa@gmail.com','2020/08/28', 'Desarrollo de Software', '', 56239645, 4784963, 'Justiniano Posse', 2541, 4, 3, 1);
insert into sucursal_x_empresa values (null, 'BUEN BYTE SAS', 100, 'buen.byte.sas@gmail.com','2020/08/28', 'Desarrollo de Software', 'www.buenbytesas.com', 41529673, null, 'San Lorenzo', 50, 2, 4, 1);
insert into sucursal_x_empresa values (null, 'DAYCO ARGENTINA SA', 750, 'dayco.arg.sa@gmail.com','2020/08/28', 'Automotriz', '', 55223674, 4142367, 'Marcelo T. de Alvear', 296, 1, 5, 1);
insert into sucursal_x_empresa values (null, 'INDUPAS S.R.L.', 400, 'indupas.srl@gmail.com','2020/08/28', 'Industrias Alimentarias', 'www.indupas.net', 53754819, 478451, 'Humberto Primo', 2563, 6, 6, 1);

-- Formulario ARM --
insert into formulario_arm_xempresa values(null, 5, 'ESTUDIANTE INGENIERIA ELECTRONICA O COMPUTACION', 'DRFJL7845', 'N/A', 12, 'sector.rrhh@clariphy.com', 1, 'NO EXCLUYENTE', '2020/08/28', '2020/09/30', '10:00', '14:00', 'Empresa del cliente', 'CONOCIMIENTOS SOBRE SISTEMAS DIGITALES DE COMUNICACIONES CAPACIDAD DE PROGRAMACION EN C, C++ Y PYTHON BUENA CAPACIDAD DE COMUNICACION ORAL Y ESCRITA', 'MANEJO DEL IDIOMA INGLES', 'FEC', 10000, 'PARTICIPAR DE PROYECTOS DE ALTO NIVEL TECNOLOGICO A NIVEL MUNDIAL. TUTORIAS CON EXPERTOS. EXCELENTE ESPACIO Y CONDICIONES DE TRABAJO. ', 3, 3, 1, 2);
insert into formulario_arm_xempresa values(null, 3, 'Pasantía en Calidad y Control de gestión', 'SFGRVFDG45151', 'N/A', 12, 'contactoRRHH@grupoprominente.com', 1, 'NO EXCLUYENTE', '2020/08/28', '2021/02/3', '10:00', '12:00', 'Empresa', 'Microsoft Office', 'Trabajo en equipo - Visión de proceseos - Análisis de información - Ganas de aprender', ' 	Pasante', 14698, 'Lic. trámite - Lic. día de Cumpleaños - Snack saludables - Coffe continuo - Club La Voz - Club Libertad  ', 3, 4, 1, 3);
insert into formulario_arm_xempresa values(null, 2, 'Desarrollo de Software', 'GRTHFBVFDV484', 'N/A', 6, 'selcba@gmail.com', 1, '2 años', '2020/08/28', '2020/11/1', '8:00', '12:00', 'Empresa del cliente', '- HTML5, javascript, jquery, CSS, PHP. - Desarrollo de sitios Web de alto tráfico. - MySQL, querys y PHP. - Symfony, Laravel, Codeingniter ', '- Manejar algún sistema de control de versión (GIT), Bootstrap. - Sólidos conocimientos en knockoutjs, Laravel. ', 'Desarrollador PHP', 16000, 'Participación en diversos proyectos y equipos multidisciplinarios y posibilidad de incorporación de forma efectiva una vez finalizada la pasantía. ', 3, 2, 1, 5);
insert into formulario_arm_xempresa values(null, 1, 'El foco de la posición es la atención telefónica de los clientes, como también la asistencia en sus inconvenientes o dudas técnicas', 'NGHBFV1815', 'N/A', 6, 'rrhh@buenbyte.com', 1, '1 año', '2020/08/28', '2020/10/15', '10:00', '14:00', 'Empresa del cliente', ' 	AUTOCAD ', ' 	PAQUETE OFFICE', 'Estudiantes avanzados Ing MECANICA ', 11000, 'PREPAGA COMEDOR EN PLANTA ', 3, 1, 1, 6);
