-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2017 a las 06:41:53
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dai`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion`
--

CREATE TABLE `atencion` (
  `id_atencion` int(11) NOT NULL,
  `fecha_atencion` date NOT NULL,
  `hora_atencion` date NOT NULL,
  `estado` varchar(40) NOT NULL,
  `usuario_rut_usuario` int(11) NOT NULL,
  `Medico_rut_medico` int(11) NOT NULL,
  `estado_id_estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id_especialidad` int(11) NOT NULL,
  `nombre_especialidad` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado`
--

CREATE TABLE `estado` (
  `id_estado` int(11) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estado`
--

INSERT INTO `estado` (`id_estado`, `descripcion`) VALUES
(1, 'Hora pedida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico`
--

CREATE TABLE `medico` (
  `rut_medico` int(11) NOT NULL,
  `nombre_medico` varchar(35) NOT NULL,
  `fecha_contratacion` date NOT NULL,
  `especialidad` varchar(40) NOT NULL,
  `valor_consulta` int(11) NOT NULL,
  `especialidad_id_especialidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(11) NOT NULL,
  `cargo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `cargo`) VALUES
(1, 'Director'),
(2, 'Administrador'),
(3, 'Secretaria'),
(4, 'Paciente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `rut_usuario` int(11) NOT NULL,
  `digito_verificador` varchar(5) NOT NULL,
  `nombre_completo` varchar(30) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` char(1) DEFAULT NULL,
  `direccion` varchar(40) NOT NULL,
  `telefono` int(11) NOT NULL,
  `contraseña` varchar(25) NOT NULL,
  `perfil_id_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`rut_usuario`, `digito_verificador`, `nombre_completo`, `fecha_nacimiento`, `sexo`, `direccion`, `telefono`, `contraseña`, `perfil_id_perfil`) VALUES
(18166247, '6', 'Oscar Plaza', '1992-04-15', 'H', 'Nocedal #7350', 51214050, '2dff4fc90e2973f5', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`id_atencion`),
  ADD KEY `Atencion_Medico_FK` (`Medico_rut_medico`),
  ADD KEY `Atencion_estado_FK` (`estado_id_estado`),
  ADD KEY `Atencion_usuario_FK` (`usuario_rut_usuario`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_especialidad`);

--
-- Indices de la tabla `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`rut_medico`),
  ADD KEY `Medico_especialidad_FK` (`especialidad_id_especialidad`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`rut_usuario`),
  ADD KEY `usuario_perfil_FK` (`perfil_id_perfil`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atencion`
--
ALTER TABLE `atencion`
  MODIFY `id_atencion` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD CONSTRAINT `Atencion_Medico_FK` FOREIGN KEY (`Medico_rut_medico`) REFERENCES `medico` (`rut_medico`),
  ADD CONSTRAINT `Atencion_estado_FK` FOREIGN KEY (`estado_id_estado`) REFERENCES `estado` (`id_estado`),
  ADD CONSTRAINT `Atencion_usuario_FK` FOREIGN KEY (`usuario_rut_usuario`) REFERENCES `usuario` (`rut_usuario`);

--
-- Filtros para la tabla `medico`
--
ALTER TABLE `medico`
  ADD CONSTRAINT `Medico_especialidad_FK` FOREIGN KEY (`especialidad_id_especialidad`) REFERENCES `especialidad` (`id_especialidad`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_perfil_FK` FOREIGN KEY (`perfil_id_perfil`) REFERENCES `perfil` (`id_perfil`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
