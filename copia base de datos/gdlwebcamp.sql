-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 14-05-2019 a las 05:55:38
-- Versión del servidor: 5.6.34-log
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gdlwebcamp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admins`
--

CREATE TABLE `admins` (
  `id_admin` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `password` varchar(60) NOT NULL,
  `editado` datetime NOT NULL,
  `nivel` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `admins`
--

INSERT INTO `admins` (`id_admin`, `usuario`, `nombre`, `password`, `editado`, `nivel`) VALUES
(1, 'admin', 'Jose Carlos', '$2y$12$Ex547bklZbo2y87WzxqJcezCGqnogEOAXGPUWX3tSK.NNyAYVqvPa', '0000-00-00 00:00:00', 1),
(2, 'admin2', 'Jose Carlos', '$2y$12$vwfRtRObLlZRLWHoTTn/4OHDovnIt8hCcdsa7TkBEPvww4UiZRtg.', '2019-05-06 22:24:19', 1),
(3, 'admin3', 'Jose Carlos', '$2y$12$SOFcyMfTBlOnn4OC/UHS4uHIdG6Ry2l75vCysXlnp8uA1g1716NG.', '2019-05-03 22:47:13', 1),
(4, 'admin4', 'Jose Carlos', '$2y$12$GNlgDb89E16ifXU2zUvC7urugNM0v3OpUL7gOd6tQZ7kdvEYdhX.C', '2019-05-03 22:45:28', 1),
(5, 'admin5', 'Jose Carlos', '$2y$12$yh.xGvhUMRctkKg.jOovJ.BUL/kBkpboGoq5Wn0k8gyOKW2HD5e2.', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_evento`
--

CREATE TABLE `categoria_evento` (
  `id_categoria` tinyint(10) NOT NULL,
  `cat_evento` varchar(50) NOT NULL,
  `icono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria_evento`
--

INSERT INTO `categoria_evento` (`id_categoria`, `cat_evento`, `icono`) VALUES
(1, 'Seminarios', 'fa-university'),
(2, 'Conferencias', 'fa-comment'),
(3, 'Talleres', 'fa-code');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `evento_id` tinyint(10) NOT NULL,
  `nombre_evento` varchar(60) NOT NULL,
  `fecha_evento` date NOT NULL,
  `hora_evento` time NOT NULL,
  `id_cat_evento` tinyint(10) NOT NULL,
  `id_inv` tinyint(4) NOT NULL,
  `clave` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`evento_id`, `nombre_evento`, `fecha_evento`, `hora_evento`, `id_cat_evento`, `id_inv`, `clave`) VALUES
(2, 'Responsive Web Design', '2016-12-09', '10:00:00', 3, 1, 'taller_01'),
(3, 'Flexbox', '2016-12-09', '12:00:00', 3, 2, 'taller_02'),
(4, 'HTML5 y CSS3', '2016-12-09', '14:00:00', 3, 3, 'taller_03'),
(5, 'Drupal', '2016-12-09', '17:00:00', 3, 4, 'taller_04'),
(6, 'WordPress', '2016-12-09', '19:00:00', 3, 5, 'taller_05'),
(7, 'Como ser freelancer', '2016-12-09', '10:00:00', 2, 6, 'conf_01'),
(8, 'Tecnologías del Futuro', '2016-12-09', '17:00:00', 2, 1, 'conf_02'),
(9, 'Seguridad en la Web', '2016-12-09', '19:00:00', 2, 2, 'conf_03'),
(10, 'Diseño UI y UX para móviles', '2016-12-09', '10:00:00', 1, 6, 'sem_01'),
(11, 'AngularJS', '2016-12-10', '10:00:00', 3, 1, 'taller_06'),
(12, 'PHP y MySQL', '2016-12-10', '12:00:00', 3, 2, 'taller_07'),
(13, 'JavaScript Avanzado', '2016-12-10', '14:00:00', 3, 3, 'taller_08'),
(14, 'SEO en Google', '2016-12-10', '17:00:00', 3, 4, 'taller_09'),
(15, 'De Photoshop a HTML5 y CSS3', '2016-12-10', '19:00:00', 3, 5, 'taller_10'),
(16, 'PHP Intermedio y Avanzado', '2016-12-10', '21:00:00', 3, 6, 'taller_11'),
(17, 'Como crear una tienda online que venda millones en pocos día', '2016-12-10', '10:00:00', 2, 6, 'conf_04'),
(18, 'Los mejores lugares para encontrar trabajo', '2016-12-10', '17:00:00', 2, 1, 'conf_05'),
(19, 'Pasos para crear un negocio rentable ', '2016-12-10', '19:00:00', 2, 2, 'conf_06'),
(20, 'Aprende a Programar en una mañana', '2016-12-10', '10:00:00', 1, 3, 'sem_02'),
(21, 'Diseño UI y UX para móviles', '2016-12-10', '17:00:00', 1, 5, 'sem_03'),
(22, 'Laravel', '2016-12-11', '10:00:00', 3, 1, 'taller_12'),
(23, 'Crea tu propia API', '2016-12-11', '12:00:00', 3, 2, 'taller_13'),
(24, 'JavaScript y jQuery', '2016-12-11', '14:00:00', 3, 3, 'taller_14'),
(25, 'Creando Plantillas para WordPress', '2016-12-11', '17:00:00', 3, 4, 'taller_15'),
(26, 'Tiendas Virtuales en Magento', '2016-12-11', '19:00:00', 3, 5, 'taller_16'),
(27, 'Como hacer Marketing en línea', '2016-12-11', '10:00:00', 2, 6, 'conf_07'),
(28, '¿Con que lenguaje debo empezar?', '2016-12-11', '17:00:00', 2, 2, 'conf_08'),
(29, 'Frameworks y librerias Open Source', '2016-12-11', '19:00:00', 2, 3, 'conf_09'),
(30, 'Creando una App en Android en una mañana', '2016-12-11', '10:00:00', 1, 4, 'sem_04'),
(31, 'Creando una App en iOS en una tarde', '2016-12-11', '17:00:00', 1, 1, 'sem_05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `invitados`
--

CREATE TABLE `invitados` (
  `invitado_id` tinyint(10) NOT NULL,
  `nombre_invitado` varchar(30) NOT NULL,
  `apellido_invitado` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `url_imagen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `invitados`
--

INSERT INTO `invitados` (`invitado_id`, `nombre_invitado`, `apellido_invitado`, `descripcion`, `url_imagen`) VALUES
(1, 'Rafael', 'Bautista', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe vero quae quisquam voluptas, aut voluptatem magnam aspernatur totam voluptatum molestiae ', 'invitado1.jpg'),
(2, 'Shari', 'Herrera', ' ipsam sit eaque magni deserunt laudantium! Aliquid, aliquam laborum?Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe vero quae quisquam voluptas, aut voluptatem magnam aspernatur totam voluptatum molestiae illo, ipsam sit eaque magni deserunt laudantium! Aliquid, aliquam laborum? ', 'invitado2.jpg'),
(3, 'Gregorio', 'Sanchez', 'Saepe vero quae quisquam voluptas, aut voluptatem magnam aspernatur totam voluptatum molestiae illo, ipsam sit eaque magni deserunt laudantium! Aliquid, aliquam laborum? ', 'invitado3.jpg'),
(4, 'Susana', 'Rivera', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe vero quae quisquam voluptas, aut voluptatem magnam aspernatur totam voluptatum molestiae illo, ipsam sit eaque magni deserunt laudantium! Aliquid, aliquam laborum?Lorem ipsum dolor sit amet consectetur ', 'invitado4.jpg'),
(5, 'Harold', 'Garcia', 'Aliquid, aliquam laborum?Lorem ipsum dolor sit amet consectetur adipisicing elit. Saepe vero quae quisquam voluptas, aut voluptatem magnam aspernatur totam voluptatum molestiae illo, ipsam sit eaque magni deserunt laudantium! Aliquid, aliquam laborum? ', 'invitado5.jpg'),
(6, 'Susan', 'Sanchez', 'Saepe vero quae quisquam voluptas, aut voluptatem magnam aspernatur totam voluptatum molestiae illo, ipsam sit eaque magni deserunt laudantium! Aliquid, aliquam laborum? ', 'invitado6.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regalos`
--

CREATE TABLE `regalos` (
  `ID_regalo` int(11) NOT NULL,
  `nombre_regalo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `regalos`
--

INSERT INTO `regalos` (`ID_regalo`, `nombre_regalo`) VALUES
(1, 'Pulsera'),
(2, 'Etiquetas'),
(3, 'Plumas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrados`
--

CREATE TABLE `registrados` (
  `ID_Registrado` bigint(20) UNSIGNED NOT NULL,
  `nombre_registrado` varchar(50) NOT NULL,
  `apellido_registrado` varchar(50) NOT NULL,
  `email_registrado` varchar(100) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `pases_articulos` longtext NOT NULL,
  `talleres_registrados` longtext NOT NULL,
  `regalo` int(11) NOT NULL,
  `total_pagado` varchar(50) NOT NULL,
  `pagado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `registrados`
--

INSERT INTO `registrados` (`ID_Registrado`, `nombre_registrado`, `apellido_registrado`, `email_registrado`, `fecha_registro`, `pases_articulos`, `talleres_registrados`, `regalo`, `total_pagado`, `pagado`) VALUES
(1, 'Jose Carlos', 'Garcia Torres', 'er__yo@hotmail.com', '2018-12-24 22:26:54', '{\"un_dia\":2,\"pase_completo\":1,\"camisas\":2,\"etiquetas\":4}', '{\"eventos\":[\"taller_01\",\"taller_02\",\"taller_03\",\"taller_04\",\"conf_04\",\"conf_05\",\"conf_06\",\"taller_12\",\"taller_13\",\"taller_14\"]}', 1, '136.6', 0),
(2, 'Jose ', 'Garcia Torres', 'er__yo@hotmail.com', '2018-12-25 22:09:05', '{\"un_dia\":1,\"camisas\":4,\"etiquetas\":1}', '{\"eventos\":[\"taller_01\",\"taller_02\",\"taller_03\",\"taller_04\",\"taller_05\"]}', 2, '69.2', 0),
(3, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-13 22:12:49', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '43.3', 0),
(4, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-13 22:13:04', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '43.3', 0),
(5, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-13 22:14:00', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '43.3', 0),
(6, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-13 22:15:03', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '43.3', 0),
(7, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-14 21:25:35', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '41.3', 0),
(8, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-14 21:32:32', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '41.3', 0),
(9, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-14 21:38:26', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '41.3', 0),
(10, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-15 21:25:51', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '41.3', 0),
(11, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-15 21:30:05', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '41.3', 0),
(12, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-15 21:35:17', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '43.3', 0),
(13, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-15 21:45:52', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '43.3', 0),
(14, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-15 21:59:02', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 2, '43.3', 0),
(15, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-17 19:27:29', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '43.3', 0),
(16, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-17 19:41:13', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '43.3', 0),
(17, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-17 19:45:31', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 3, '43.3', 1),
(18, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-19 22:48:21', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '41.3', 0),
(19, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-19 22:56:35', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '43.3', 0),
(20, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-19 22:56:37', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '43.3', 0),
(21, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-19 22:58:24', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":1}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 1, '41.3', 0),
(22, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-19 23:02:18', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\",\"taller_07\",\"conf_05\",\"sem_02\",\"taller_13\",\"conf_08\",\"sem_04\"]}', 2, '113.3', 0),
(23, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-19 23:05:35', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 2, '43.3', 0),
(24, 'Jose', 'Garcia Torres', 'er__yo@hotmail.com', '2019-03-19 23:07:15', '{\"un_dia\":1,\"pase_completo\":1,\"pase_2dias\":1,\"camisas\":1,\"etiquetas\":2}', '{\"eventos\":[\"taller_02\",\"conf_02\",\"sem_01\"]}', 2, '73.3', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `id_cat-evento` (`id_cat_evento`),
  ADD KEY `id_inv` (`id_inv`);

--
-- Indices de la tabla `invitados`
--
ALTER TABLE `invitados`
  ADD PRIMARY KEY (`invitado_id`);

--
-- Indices de la tabla `regalos`
--
ALTER TABLE `regalos`
  ADD PRIMARY KEY (`ID_regalo`);

--
-- Indices de la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD PRIMARY KEY (`ID_Registrado`),
  ADD KEY `regalo` (`regalo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `categoria_evento`
--
ALTER TABLE `categoria_evento`
  MODIFY `id_categoria` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `evento_id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `invitados`
--
ALTER TABLE `invitados`
  MODIFY `invitado_id` tinyint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `regalos`
--
ALTER TABLE `regalos`
  MODIFY `ID_regalo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `registrados`
--
ALTER TABLE `registrados`
  MODIFY `ID_Registrado` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `eventos_ibfk_1` FOREIGN KEY (`id_cat_evento`) REFERENCES `categoria_evento` (`id_categoria`),
  ADD CONSTRAINT `eventos_ibfk_2` FOREIGN KEY (`id_inv`) REFERENCES `invitados` (`invitado_id`);

--
-- Filtros para la tabla `registrados`
--
ALTER TABLE `registrados`
  ADD CONSTRAINT `registrados_ibfk_1` FOREIGN KEY (`regalo`) REFERENCES `regalos` (`ID_regalo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
