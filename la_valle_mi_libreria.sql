-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-08-2021 a las 03:32:46
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `la_valle_mi_libreria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_comentario` int(5) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `nombre`, `email`, `comentario`) VALUES
(1, 'Blas', 'blaslv@gmail.com', 'Comentario de Blas'),
(2, 'Onna', 'onnalv@gmail.com', 'Comentario de Onna'),
(3, 'Guren', 'gurenlv@gmail.com', 'Comentario de Guren'),
(4, 'Arovi', 'arovilv@gmail.com', 'Comentario de Arovi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id_contacto` int(5) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `mensaje` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id_contacto`, `nombre`, `apellido`, `email`, `telefono`, `mensaje`) VALUES
(1, 'Valentina', 'Diaz', 'valentina@gmail.com', '5503582', 'Contacto de Valentina'),
(2, 'Vilma', 'Guillem', 'vilmag@gmail.com', '5503582', 'Contacto de Vilma'),
(3, 'Arovi', 'La Valle', 'arovilv@gmail.com', '5503582', 'Comentario de Arovi');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(5) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `img_portada` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

CREATE TABLE `novedades` (
  `id_novedad` int(10) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id_novedad`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'Llegan primeras y segundas dosis de Sputnik V a Neuquén', 'Se trata 15.750 entre el componente uno y el dos. Lo confirmó el gobernador Omar Gutiérrez en las últimas horas', 'Este martes llegarán a Neuquén 15.750 dosis de la vacuna contra el coronavirus Spuntnik V. Serán 13.500 dosis del primer componente y 2.250 del segundo para completar esquemas de los vecinas y vecinos que habían recibido ya una dosis de esta marca.\r\n\r\nLa noticia la brindó el propio gobernador, Omar Gutiérrez, desde su cuenta de Twitter donde convocó a sumarse a esta “vacunación histórica”'),
(2, 'Cerraron Pino Hachado y piden máxima precaución en las rutas', 'Por la presencia de nieve y viento en la región, piden extremar los cuidados a la hora de transitar por la ruta 13', 'La Dirección Provincial de Vialidad de Neuquén pidió extrema precaución al transitar por la ruta provincial 13, en el tramo Primeros Pinos – Litrán, por la presencia de sectores poceados, barro y hielo. En ese sector, se exige la portación obligatoria de cadenas a quienes circulen por allí.\r\n\r\nDada las condiciones de inestabilidad del tiempo, que fluctúa entre lluvias, neviscas y agua nieve, la traza se habilitó a partir de las 8 este lunes por la mañana. El cierre de barrera dependerá del estado de transitabilidad de la misma en el transcurso de este martes.'),
(3, 'Corte de internet: cómo hacer el reclamo para el descuento de las horas sin servicio', 'Durante más de ocho horas, una falla dejó sin conexión a miles de usuarios en el Valle. Cómo hacer el trámite para que las empresas se hagan cargo del error en la factura.', 'Desde las 2.28 de la madrugada de este lunes feriado y hasta las 10.40 el servicio de internet y televisión digital de Fibertel estuvo sin conexión y dejó a miles de usuarios en el Alto Valle de Río Negro y Neuquén sin prestación.\r\n\r\nA pesar de las miles de consultas de los damnificados, la empresa dio pocas respuestas y según pudo saber LM Neuquén se trató de una falla entre Río Colorado y la provincia de Buenos Aires que afectó a toda la región.'),
(4, 'Los Riscos Bayos, una maravilla de Loncopué, en clave gastronómica y lúdica', 'El establecimiento Los Riscos creó una original propuesta de agroturismo que incluye una caminata por la peculiar formación rocosa.', 'Aunque todos quedan maravillados al verlos, la mayoría sigue de largo. Algunos paran para sacarse una foto, pero como tienen un destino al cual llegar no se detienen a descubrir unos de los tesoros neuquinos que pocos conocen de cerca y que solo es comparable con dos lugares en el mundo. Se trata de Los Riscos Bayos, las extraordinarias formaciones rocosas que irrumpen en el kilómetro 18 de la ruta provincial 26 -que une Loncopué con Caviahue y Copahue-, en el valle llamado Cajón de Hualcupén.\r\n\r\nA dos kilómetros y medio de allí, el Establecimiento Los Riscos inauguró hace años una particular tradición de banquetes para acompañar las caminatas y expediciones a los misteriosos macizos de ceniza volcánica tallados por el viento que se encuentran dentro del predio privado.'),
(5, 'Finde largo: 20 mil personas hicieron turismo en Neuquén', 'Los datos surgen de los permisos para viajar. San Martín de los Andes fue la ciudad más elegida, con 7778 visitantes.', 'Los destinos turísticos de la provincia alcanzaron un muy nivel de ocupación este fin de semana largo, que se vio reflejado en que 19.728 visitantes solicitaron los certificados para viajar, a través de la aplicación Cuidar, según informó el Ministerio de Turismo neuquino.\r\n\r\nLa mayor cantidad de turistas eligió, como es habitual, San Martín de los Andes, que registró 7778 permisos, seguido por Villa La Angostura (3.941), Neuquén capital y Villa Pehuenia (ambos con 2639), Junín de los Andes 1216 y Caviahue 949. El resto, se repartió entre otros destinos, como Traful y el norte de la provincia.'),
(6, 'Dramático rescate de una mujer de Centenario en el Parque Nacional Lanín', 'Realizaba el ascenso al Cerro Colorado cuando \"pisó mal\" y se fracturó el pie. Intervinieron quince personas y el operativo duró cuatro horas.', 'Una mujer de 47 años, oriunda de Centenario, se fracturó el pie al subir Cerro Colorado y debió ser rescatada este domingo por al menos quince personas. Está fuera de peligro y recuperándose en el hospital de San Martín de los Andes, pero \"podría haber sido una desgracia\".\r\n\r\nAproximadamente a las dos de la tarde, el Parque Nacional Lanín recibió el aviso de rescate. El guía habilitado con el que estaba haciendo el ascenso la mujer solicitó la asistencia inmediata. \"El ascenso al Cerro en particular es dentro de todo sencillo. No necesitás mucha preparación física porque no es tan exigente, pero siempre pueden pasar accidentes\", aseguraron a LMN fuentes del Parque Nacional.'),
(7, 'Afganistán: dramáticos videos del ataque de los talibanes al aeropuerto de Kabul', 'Caos y desesperación en el país de Ashraf Ghani. Los uniformados tomaron la terminal de aviones donde se encontraban refugiados ministros y civiles que huían del ataque. Hubo víctimas fatales.', 'Caos político en Afganistán. Los talibanes entraron el domingo a Kabul, el presidente Ashraf Ghani dejó Afganistán y la embajada de Estados Unidos dijo que el aeropuerto de la capital afgana, hacia donde huyeron diplomáticos, funcionarios y otros afganos, estaba siendo atacado.'),
(9, 'Nevó y San Martín se ilusiona con otro pico de turismo para septiembre', 'Los que no pudieron esquiar durante el receso escolar de invierno reprogramaron sus viajes y aguardan por más nevadas.', 'La pandemia y el clima parecen haber complotado contra la reactivación turística en la cordillera neuquina. En 2020, cuando se registraron nevadas históricas, San Martín de los Andes estuvo cerrada al turismo en el marco de las restricciones por el coronavirus. Este año, con permisos más flexibles, muchos turistas decidieron no visitar la localidad por la falta de nieve. Sin embargo, esta semana se registraron nevadas copiosas y desde el área de Turismo se ilusionan con tener un pico de visitantes en las primeras semanas de septiembre.\r\n\r\nEl fin de semana largo del 17 de agosto marcó un importante movimiento en este destino neuquino. Se registró una ocupación del 72% de las plazas hoteleras, lo que representa una buena noticia si se comparan los datos con los números de 2020, cuando todas las actividades estaban restringidas. Si bien en años previos a la pandemia este feriado generaba un 100% de ocupación, desde el gobierno local destacaron el buen desempeño turístico en un contexto de condiciones climáticas adversas, donde la nieve estuvo prácticamente ausente.'),
(10, 'Neuquén tendrá su primer evento para diseñar videojuegos de dinosaurios', 'Es el primer game jam que se organiza en Neuquén y busca inspirar a más personas a dedicarse a la industria.', 'Entre el 27 y el 29 de agosto próximo, una plataforma virtual será el escenario para el primer game jam organizado por la comunidad neuquina de diseñadores de videojuegos. Se trata de un evento que propone elaborar un videjuego en apenas 3 días con el objetivo de fomentar el gusto por esta disciplina y fortalecer la comunidad de programadores y artistas que intervienen en estas piezas lúdicas.\r\n\r\nAgustín Rojas, uno de los diseñadores de videojuegos más establecidos de Neuquén, explicó que en la región se creó una comunidad con un alto nivel y en la que participan activamente unas 70 personas. A contrario de lo que se cree, no son todos programadores o estudiantes de informática, sino que en el armado de los juegos también participan dibujantes, diseñadores 2D y 3D y músicos o especialistas en sonido.\"\"'),
(11, 'Organizaciones levantaron los cortes y mañana cumplirán su tercera jornada', 'Las medidas se extendieron por siete horas y causaron numerosos problemas en el tránsito. Este jueves se movilizarán hacia Casa de Gobierno, además de mantener los cortes.', 'Poco después de las 17, organizaciones sociales finalizaron la segunda jornada de protesta sobre los puentes carreteros que unen Cipolletti y Neuquén, el tercer puente y sobre las rutas a la altura de Senillosa, Zapala y Chos Malal como forma del plan de lucha iniciado en julio en reclamo al gobierno provincial por puestos de trabajo en la obra pública. Este jueves desde las 10 retomaron los piquetes, que además sumaría una movilización a Casa de Gobierno.\r\n\r\nLas organizaciones anunciaron 72 horas de piquetes en el tránsito, en caso de no recibir una convocatoria de parte del Gobierno para responder al reclamo de trabajo genuino y activación de la obra pública, llamado que hasta el momento no ocurrió'),
(13, 'Domingo frío y ventoso en la región: de cuánto serán las ráfagas', 'El cielo estará despejado durante la jornada. No se pronosticaron lluvias, pero las ráfagas podrían llegar a los 74 kilómetros por hora.', 'El pronóstico para este domingo indica que el tiempo estará frío y ventoso. Si bien el cielo estará mayormente despejado durante gran parte de la jornada se espera un notable descenso de la temperatura que se intensificará en el inicio de la próxima semana.\r\n\r\nSegún la Autoridad Interjurisdiccional de las Cuencas (AIC), por la mañana habrá una mínima de 3 grados y una máxima de 11 grados. Por la tarde estará entre los 12 y los 5 grados; y hacia la noche descenderá primero a 8 grados y luego a -2.'),
(14, 'Neuquén sumó 122 contagios y tres muertos por COVID', 'En las últimas 24 horas se reportó que hay 1933 casos activos en toda la provincial. En tanto, la ocupación de camas en terapia intensiva superó el 77%.', 'La provincia de Neuquén reportó este sábado tres muertes por COVID y122 nuevos contagios, de acuerdo al parte sanitario del Ministerio de Salud de la provincia.\r\n\r\nSegún el informe, también hubo 175 personas que recibieron el alta médica de la enfermedad. En esta oportunidad las personas curadas superaron a quienes contrajeron el virus'),
(15, 'La pandemia aceleró el salto digital para pymes y emprendedores', 'Muchos empresarios que postergaban la adaptación al mundo digital buscaron capacitarse en ecommerce, redes sociales, trabajo remoto y otros temas a través del Centro Pyme Adeneu.', 'La aceleración de los avances tecnológicos y los nuevos hábitos y costumbres que ellos generan ya habían marcado el primer surco de un cambio necesario que debían afrontar los emprendedores y pequeños empresarios de Neuquén. Aunque muchos de ellos postergaban el inminente salto hacia el mundo digital, la pandemia de coronavirus, el encierro obligado y la crisis económica posterior terminaron por anticipar estas necesidades y empujarlos a hacer un cambio radical y necesario para incorporar sus proyectos al mundo virtual.\r\n\r\nSi bien algunos emprendedores neuquinos ya habían dado sus primeros pasos en redes y en ecommerce antes de la pandemia, la llegada del coronavirus encontró a muchos en fojas cero. Así, el primer interrogante que tuvieron que enfrentar fue la pregunta \"¿Por dónde empiezo?\".'),
(17, 'Salarios privados corren desde atrás a la inflación en Neuquén', 'Los precios de bienes y servicios van más rápido que las paritarias. En un año y medio de pandemia, los precios subieron un 72 por ciento. Muy pocos empataron ese salto.', 'En pandemia, los gremios de la actividad privada van por detrás de la inflación que se mide en Neuquén. Entre 2020 y lo que va de 2021, los precios subieron un 72 por ciento en la provincia. Pocos sindicatos, como la UTA, lograron empatar ese salto. Petroleros, Uocra y Comercio obtuvieron incrementos altos, pero recién los terminarán de cobrar en 2022. Luz y Fuerza quedó entre los que todavía tratan de acortar la distancia.\r\n\r\nEl año pasado, el Índice de Precios al Consumidor (IPC) se elevó un 35,66 por ciento en Neuquén. Luego, entre enero y julio de 2021, la inflación trepó otro 27,11 por ciento, según las mediciones que hace la dirección provincial de Estadísticas. Eso arroja un salto acumulado del 72 por ciento en poco más de un año y medio.'),
(18, '\"¡Mirá hasta dónde llega la nieve!\": 8 horas a caballo del puesto a Varvarco en el norte neuquino (con video)', 'Con casi dos metros de nieve, el viernes 20 Samuel de la Vega salió a las 11.20 del campo que cuida y llegó a Varvarco a las 19.50. Acá cuenta la aventura y comparte un impresionante video.', 'Samuel de la Vega había escuchado el pronóstico de temporal en Radio Nacional Chos Malal y entonces el jueves 19 arreó las vacas y la tropilla a orillas del arroyo Ailinco, donde sabía se acumularía menos nieve y podrían resguardarse. El viernes 20 por la mañana partió con dos caballos de la estancia que cuida en Rincón de las Papas en el norte neuquino rumbo a Varvarco, a 45 km, donde está su casa. Con 36 años, criado en las cabañas del Instituto de Seguridad Social del Neuquén (ISSN) en Aguas Calientes que manejó su padre Valentín, en las que llegaron a estar encerrados un mes y 13 días por la nieve que los rodeaba, sabía que con ese panorama lo mejor era volver al pueblo.\r\nEran las 11.20 cuando partió con dos caballos. Espiri, el que montaba, que le cuida a unas amigas y Mosca, el suyo. “Los dos muy bien alimentados, herrados y cuidados en un galpón. Lo aclaro porque gente que no conoce la vida de campo dijo que uno los maltrata cuando vieron el video. Y no es así. Ellos pueden hacer lo que hicieron”.\r\nY lo que hicieron fue una travesía de ocho horas y media, que suele ser de cinco horas y media en condiciones normales. Eso fue lo que tardó en los dos regresos que hizo hasta ahora para buscar provisiones desde el 5 de mayo, cuando se instaló en la estancia.\r\n\"Estamos en una zona muy alta, pegados a la cordillera y al volcán Domuyo. Cuando salimos había mucha nieve, hasta la montura llegaba. Fácil un metro y medio o más, le diría dos, ni se veían los alambrados\", describe Samuel.\r\n\"Y en los reparos el viento juntaba más nieve todavía. Así que había que fijarse bien por dónde ir. Y como uno es criado acá sabe. Por eso le encaré por la orilla del camino el primer tramo, bien pegado a la derecha, hasta llegar al río y desde ahí costear hasta Varvarco. En la orilla había mucho menos nieve, unos 30 centímetros. Así que desde ahí llegamos sin problemas al pueblo\", agrega. Allí lo esperaba su familia. Así son las cosas en el norte neuquino. Y ahí está su video para mostrarlo: \"¡Mirá hasta dónde llega la nieve. 11 y 20, vamos rumbeando para el pueblo...\" \r\n<a href=https://youtu.be/20NuCjSk9Cc\"><strong><i>Aquí</i></strong></a> el video\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `usuario`, `password`) VALUES
(1, 'arovi', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'blas', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentario`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`);

--
-- Indices de la tabla `novedades`
--
ALTER TABLE `novedades`
  ADD PRIMARY KEY (`id_novedad`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_contacto` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `novedades`
--
ALTER TABLE `novedades`
  MODIFY `id_novedad` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
