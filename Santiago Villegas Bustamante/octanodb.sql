-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2018 a las 03:16:04
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `octanodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chevrolet`
--

CREATE TABLE `chevrolet` (
  `ID_Chevrolet` int(11) NOT NULL,
  `Referencia` varchar(30) NOT NULL,
  `Modelo` int(11) NOT NULL,
  `Kilometraje` bigint(20) NOT NULL,
  `Precio` bigint(20) NOT NULL,
  `Ubicacion` varchar(100) NOT NULL,
  `Caja` varchar(30) NOT NULL,
  `Traccion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `chevrolet`
--

INSERT INTO `chevrolet` (`ID_Chevrolet`, `Referencia`, `Modelo`, `Kilometraje`, `Precio`, `Ubicacion`, `Caja`, `Traccion`) VALUES
(1, 'Sonic', 2013, 62000, 29000000, 'Medellín - Antioquia', 'Mecánica', 'FWD'),
(2, 'Sail', 2015, 62000, 24200000, 'Medellín - Antioquia', 'Mecánica', 'FWD'),
(3, 'Tahoe', 2016, 7074, 200000000, 'Bogotá D.C', 'Automática', 'AWD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `ID` int(11) NOT NULL,
  `Marca` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`ID`, `Marca`) VALUES
(1, 'Chevrolet'),
(2, 'Mazda'),
(3, 'Audi');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chevrolet`
--
ALTER TABLE `chevrolet`
  ADD PRIMARY KEY (`ID_Chevrolet`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chevrolet`
--
ALTER TABLE `chevrolet`
  MODIFY `ID_Chevrolet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
