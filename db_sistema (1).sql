-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2023 a las 01:30:54
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `db_sistema`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_user_login` (IN `id` INT(11))   SELECT * FROM tb_usuario WHERE us_id = id$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_docente`
--

CREATE TABLE `tb_docente` (
  `do_id` int(11) NOT NULL,
  `do_nombre` varchar(25) NOT NULL,
  `do_apellido` varchar(25) NOT NULL,
  `do_dni` varchar(8) NOT NULL,
  `do_fecha_nac` text NOT NULL,
  `do_domicilio` text NOT NULL,
  `do_genero` varchar(15) NOT NULL,
  `do_fecha_contrat` text NOT NULL,
  `do_fech_fin_contrat` text NOT NULL,
  `do_especialidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;



--
-- Volcado de datos para la tabla `tb_docente`
--

INSERT INTO `tb_docente` (`do_id`, `do_nombre`, `do_apellido`, `do_dni`, `do_fecha_nac`, `do_domicilio`, `do_genero`, `do_fecha_contrat`, `do_fech_fin_contrat`, `do_especialidad`) VALUES
(1, 'docente nombre', 'docente apellido', '71568899', '25/11/2000', 'Av. Mayta N° 267', 'masculino', '25/11/2023', '25/11/2024', 'MATEMÁTICA'),
(2, 'docente 2', 'docente 21', '44444444', '11/07/1995', 'Jr. Allanares N 87', 'MASCULINO', '25/11/2020', '26/11/2022', 'COMUNICACION');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `us_id` int(11) NOT NULL,
  `us_usuario` varchar(20) NOT NULL,
  `us_contra` text NOT NULL,
  `us_nombre` varchar(50) NOT NULL,
  `us_telf` int(9) NOT NULL,
  `us_privilegio` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `tb_usuario`
--

INSERT INTO `tb_usuario` (`us_id`, `us_usuario`, `us_contra`, `us_nombre`, `us_telf`, `us_privilegio`) VALUES
(1, 'admin', '123', 'Carlos Jhonatan Lavado Ayala', 952118772, 1),
(24, 'q', 'q', 'prueba 2', 999999999, 2),
(25, 'w', 'w', 'prueba 3', 88888888, 1),
(26, 'w', 'w', 'w', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_docente`
--
ALTER TABLE `tb_docente`
  ADD PRIMARY KEY (`do_id`);

--
-- Indices de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`us_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_docente`
--
ALTER TABLE `tb_docente`
  MODIFY `do_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `us_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;
