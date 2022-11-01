-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-11-2022 a las 00:35:57
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `alumn22543`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `dni` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `dni`, `fecha`) VALUES
(1, 'Santiago', 'Juarez', 23333222, '2022-11-01 23:26:41'),
(2, 'Juan', 'Juarez', 22555444, '2022-11-01 23:26:41'),
(4, 'Tyler', 'Sanche', 24555666, '2022-11-01 23:26:41'),
(5, 'Kevin', 'Rodriguez', 22333666, '2022-11-01 23:26:41'),
(6, 'Yenifer', 'Sanchez', 25666332, '2022-11-01 23:26:41'),
(7, 'Saul', 'Salinas', 25666333, '2022-11-01 23:26:41'),
(8, 'Laura', 'Rodriguez', 25444895, '2022-11-01 23:26:41'),
(9, 'Tatiana', 'Pallares', 23555486, '2022-11-01 23:27:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnosmaterias`
--

CREATE TABLE `alumnosmaterias` (
  `idAlumno` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `alumnosmaterias`
--

INSERT INTO `alumnosmaterias` (`idAlumno`, `idMateria`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 3),
(2, 4),
(4, 1),
(5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(80) DEFAULT NULL,
  `idProfesor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `descripcion`, `idProfesor`) VALUES
(1, 'Matemáticas', 'Matemáticas 1', 2),
(2, 'Química', 'x 1', 1),
(3, 'Física', 'xx 1', 3),
(4, 'Literatura', 'Literatura Española', 2),
(5, 'Artes plásticas', 'xx 1', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE `profesores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `dni` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `nombre`, `apellido`, `dni`) VALUES
(1, 'Juan', 'Perez ', 223331112),
(2, 'Lorena', 'Perez ', 223333111),
(3, 'Tomás', 'Robledo', 223433111),
(4, 'Florian', 'Lorenz', 223353111),
(5, 'Roxana', 'Washington', 223363111);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dni_2` (`dni`),
  ADD KEY `dni` (`dni`),
  ADD KEY `apellido` (`apellido`);

--
-- Indices de la tabla `alumnosmaterias`
--
ALTER TABLE `alumnosmaterias`
  ADD PRIMARY KEY (`idAlumno`,`idMateria`),
  ADD KEY `idMateria` (`idMateria`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProfesor` (`idProfesor`);

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idxProfeDNi` (`dni`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumnosmaterias`
--
ALTER TABLE `alumnosmaterias`
  ADD CONSTRAINT `alumnosmaterias_ibfk_1` FOREIGN KEY (`idMateria`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `alumnosmaterias_ibfk_2` FOREIGN KEY (`idAlumno`) REFERENCES `alumnos` (`id`);

--
-- Filtros para la tabla `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`idProfesor`) REFERENCES `profesores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
