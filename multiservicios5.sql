-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-02-2024 a las 02:40:31
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `multiservicios5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_configuraciones`
--

CREATE TABLE `tbl_configuraciones` (
  `id` int(11) NOT NULL,
  `nombreconfiguracion` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_configuraciones`
--

INSERT INTO `tbl_configuraciones` (`id`, `nombreconfiguracion`, `valor`) VALUES
(4, 'bienvenida_principal', 'Bienvenid@ a Multiservicios a la Mano'),
(5, 'bienvenida_secundaria', '¡TODO EN UN SOLO LUGAR!'),
(6, 'boton_principal', 'EMPEZAR'),
(7, 'link_boton_principal', '#services'),
(8, 'titulo-servicios', 'SERVICIOS'),
(9, 'descripcion_servicios', '¿Cansado de buscar en todos lados el servicio perfecto para tus necesidades del hogar o negocio? ¡Tu búsqueda ha llegado a su fin! En MultiServicios a la Mano S.A, hemos reunido a los mejores expertos en plomería, jardinería, electricidad, pintura, albañi'),
(10, 'titulo_portafolio', 'PORTAFOLIO'),
(11, 'descripcion_portafolio', '🏡 ¿Necesitas un fontanero para arreglar esa molesta fuga? ¿Quieres transformar tu jardín en un oasis verde? ¿Buscas un electricista confiable para tus proyectos? ¡No busques más! Nuestra plataforma te conecta con profesionales altamente calificados.'),
(12, 'titulo_equipo', 'MULTISERVICIOS A LA MANO S.A.'),
(13, 'descripcion_equipo', 'Tejemos la Elegancia de tus Espacios con la Destreza de Nuestros Oficios'),
(14, 'titulo_contacto', 'CONTACTANOS'),
(15, 'descripcion_contacto', 'multiservicios a la mano siempre disponible'),
(16, 'link_twiter', 'http://twiter.com/multiservicios'),
(17, 'link_facebook', 'http://facebook.com/multiservicios'),
(18, 'link_linkedin', 'http://linkedin.com/multiservicios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_entrada`
--

CREATE TABLE `tbl_entrada` (
  `id` int(11) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_equipo`
--

CREATE TABLE `tbl_equipo` (
  `id` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `nombrecompleto` varchar(255) NOT NULL,
  `puesto` varchar(255) NOT NULL,
  `twiter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_equipo`
--

INSERT INTO `tbl_equipo` (`id`, `imagen`, `nombrecompleto`, `puesto`, `twiter`, `facebook`, `linkedin`) VALUES
(2, '1702345353_maritza.jpeg', 'MARITZA LONDOÑO GÓMEZ', 'CEO', 'twiter:maritza', 'facebook:maritza', 'linkedin:maritza'),
(3, '1702345473_fanner.jpg', 'FANNER MAURICIO BOHORQUEZ PAEZ', 'CEO', 'twiter:fanner', 'facebook:fanner', 'linkedin:fanner'),
(5, '1702401183_jorge.jpeg', 'JORGE ELIECER GONZÁLEZ SUÁREZ', 'CEO', 'twiter:jorge', 'facebook:jorge', 'linkedin:jorge'),
(6, '1702401072_santiago.jpeg', 'SANTIAGO LUIS QUINTERO HERRERA', 'CEO', 'twiter:santiago', 'facebook:santiago', 'linkedin:santiago'),
(8, '1702607751_Imagen1.jpg', 'Belia Sanabria', 'Psicologa', 'twiter:belia', 'facebook:belia', 'linkedin:belia'),
(12, '1707053975_12.jpg', 'luis herrera', 'director de ventas', 'twiter.luis', 'facebook:luis', 'linkedin:luis'),
(15, '', 'Belia Sanabria', 'Psicologa', 'twiter:belia', 'facebook:belia', 'linkedin:belia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_portafolio`
--

CREATE TABLE `tbl_portafolio` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `subtitulo` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_portafolio`
--

INSERT INTO `tbl_portafolio` (`id`, `titulo`, `subtitulo`, `imagen`, `descripcion`, `cliente`, `categoria`, `url`) VALUES
(7, 'Electricistas', 'Eléctrico Carlos', '1702322481_electrician-1080554_1280.jpg', 'Realizamos todo tipo de mantenimiento a sus redes eléctricas domiciliarias', 'Multiservicios ', 'Electricistas', 'http://multiservicios 5.0'),
(8, 'Jardineria', 'Jardinera maritza', '1702322230_jardin 2.jpeg', 'Realizamos todo tipo de mantenimiento a los jardines ', 'Multiservicios ', 'Jardineros', 'https://maritza.jardin.com'),
(9, 'Jardineria', 'Jardinero Luis', '1702322248_jardin1.jpeg', 'Realizamos todo tipo de poda de arboles en tu jardin', 'Multiservicios ', 'Jardineros', 'https://luis.poda.com'),
(10, 'Plomeros', 'Plomero jorge', '1702328234_pexels-photo-8961701.jpeg', 'Realizamos todo tipo de mantenimiento a los sistemas de agua en tu casa', 'Multiservicios ', 'Plomeros', 'http://multiservicios 5.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_servicios`
--

CREATE TABLE `tbl_servicios` (
  `id` int(11) NOT NULL,
  `icono` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_servicios`
--

INSERT INTO `tbl_servicios` (`id`, `icono`, `titulo`, `descripcion`) VALUES
(1, 'fa-id-card', 'Jardineros actualizado', 'Realizamos todo tipo de mantenimiento a los jardines actualizado'),
(3, 'fa-laptop', 'Electricistas', 'Realizamos todo tipo de mantenimiento a sus redes eléctricas domiciliarias'),
(5, 'fa-lock fa', 'Plomeros', 'Realizamos todo tipo de mantenimiento a los sistemas de agua en tu casa'),
(8, 'fa-shopping-cart', 'Electricistas', 'Realizamos todo tipo de mantenimiento a sus redes eléctricas domiciliarias'),
(15, 'fa-shopping-cart', 'Electricistas', 'Realizamos todo tipo de mantenimiento a sus redes eléctricas domiciliarias'),
(16, 'fa-shopping-cart', 'Electricistas', 'Realizamos todo tipo de mantenimiento a sus redes eléctricas domiciliarias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`id`, `usuario`, `password`, `correo`) VALUES
(2, 'Maritza', '123', 'maritza12@gmail.com'),
(3, 'Jorge', '123', 'jorgegonzalezjl26@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_configuraciones`
--
ALTER TABLE `tbl_configuraciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_entrada`
--
ALTER TABLE `tbl_entrada`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_equipo`
--
ALTER TABLE `tbl_equipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_portafolio`
--
ALTER TABLE `tbl_portafolio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_servicios`
--
ALTER TABLE `tbl_servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_configuraciones`
--
ALTER TABLE `tbl_configuraciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tbl_entrada`
--
ALTER TABLE `tbl_entrada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tbl_equipo`
--
ALTER TABLE `tbl_equipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `tbl_portafolio`
--
ALTER TABLE `tbl_portafolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_servicios`
--
ALTER TABLE `tbl_servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
