-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2023 a las 22:03:05
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hospital`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `areas_hospital`
--

CREATE TABLE `areas_hospital` (
  `ID_Area` int(11) NOT NULL,
  `Nombre_Area` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `areas_hospital`
--

INSERT INTO `areas_hospital` (`ID_Area`, `Nombre_Area`, `Descripcion`) VALUES
(1, 'Urgencias', 'Atención de emergencias médicas'),
(2, 'Cirugía', 'Área de cirugía general'),
(3, 'Pediatría', 'Atención médica para niños y adolescentes'),
(4, 'Unidad de Terapia Intensiva', 'Área especializada para el cuidado intensivo de pacientes críticos.'),
(5, 'Sala de Recuperación de Pacientes', 'Área donde los pacientes se recuperan después de las cirugías y tratamientos.'),
(6, 'Sala de Descanso para Personal', 'Área donde el personal médico y de enfermería puede descansar entre turnos.'),
(7, 'Sala de Estar para Pacientes', 'Área de confort donde los pacientes y sus familiares pueden relajarse y esperar.'),
(8, 'Neurología', 'Especialidad en trastornos neurológicos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctores`
--

CREATE TABLE `doctores` (
  `ID_Doctor` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Especialidad` varchar(50) DEFAULT NULL,
  `Numero_Colegiatura` varchar(20) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Correo_Electronico` varchar(100) DEFAULT NULL,
  `ID_Area` int(11) DEFAULT NULL,
  `ID_Paciente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `doctores`
--

INSERT INTO `doctores` (`ID_Doctor`, `Nombre`, `Apellido`, `Especialidad`, `Numero_Colegiatura`, `Telefono`, `Correo_Electronico`, `ID_Area`, `ID_Paciente`) VALUES
(1, 'Dr. Carlos', 'Martínez', 'Neurología', '12345', '111-222-3333', 'carlos@example.com', 8, NULL),
(2, 'Dra. Laura', 'Gómez', 'Pediatría', '54321', '555-666-7777', 'laura@example.com', 3, NULL),
(3, 'Dr. Patricia', 'Mendoza', 'Neurología', '45678', '555-111-2222', 'patricia@example.com', 8, NULL),
(4, 'Dra. Luis', 'Martínez', 'Oncología', '56789', '555-222-3333', 'luis@example.com', 7, NULL),
(5, 'Dr. Carolina', 'Hernández', 'Urología', '67890', '555-333-4444', 'carolina@example.com', 8, NULL),
(6, 'Dra. Roberto', 'Gómez', 'Ginecología', '78901', '555-444-5555', 'roberto@example.com', 5, NULL),
(7, 'Dr. Ana', 'Santos', 'Cardiología', '89012', '555-555-6666', 'ana@example.com', 4, NULL),
(8, 'Dra. Juan', 'Fernández', 'Pediatría', '90123', '555-666-7777', 'juan@example.com', 3, NULL),
(9, 'Dr. Laura', 'Vargas', 'Cirugía Plástica', '12345', '555-777-8888', 'laura@example.com', 2, NULL),
(10, 'Dra. Andrés', 'Torres', 'Dermatología', '23456', '555-888-9999', 'andres@example.com', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermeros`
--

CREATE TABLE `enfermeros` (
  `ID_Enfermero` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Especialidad` varchar(50) DEFAULT NULL,
  `Numero_Licencia` varchar(20) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Correo_Electronico` varchar(100) DEFAULT NULL,
  `ID_Paciente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `enfermeros`
--

INSERT INTO `enfermeros` (`ID_Enfermero`, `Nombre`, `Apellido`, `Especialidad`, `Numero_Licencia`, `Telefono`, `Correo_Electronico`, `ID_Paciente`) VALUES
(1, 'María', 'Rodríguez', 'Enfermería Pediátrica', 'E12345', '777-888-9999', 'maria@example.com', NULL),
(2, 'Pedro', 'Sánchez', 'Enfermería de Cirugía', 'E54321', '666-777-8888', 'pedro@example.com', NULL),
(3, 'María', 'González', 'Enfermería Pediátrica', 'E23456', '555-111-2222', 'maria@example.com', NULL),
(4, 'Pedro', 'Sánchez', 'Enfermería de Cirugía', 'E34567', '555-222-3333', 'pedro@example.com', NULL),
(5, 'Laura', 'Martínez', 'Enfermería de Urgencias', 'E45678', '555-333-4444', 'laura@example.com', NULL),
(6, 'Javier', 'López', 'Enfermería de Oncología', 'E56789', '555-444-5555', 'javier@example.com', NULL),
(7, 'Carolina', 'Ramírez', 'Enfermería de Cardiología', 'E67890', '555-555-6666', 'carolina@example.com', NULL),
(8, 'Roberto', 'Gómez', 'Enfermería de Cuidados Intensivos', 'E78901', '555-666-7777', 'roberto@example.com', NULL),
(9, 'Ana', 'Santos', 'Enfermería Geriátrica', 'E89012', '555-777-8888', 'ana@example.com', NULL),
(10, 'Luis', 'Fernández', 'Enfermería de Rehabilitación', 'E90123', '555-888-9999', 'luis@example.com', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `ID_Paciente` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Fecha_Nacimiento` date DEFAULT NULL,
  `Genero` enum('Masculino','Femenino','Otro') DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Info_Medica` text DEFAULT NULL,
  `ID_Doctor` int(11) DEFAULT NULL,
  `ID_Evento` int(11) DEFAULT NULL,
  `DNI` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`ID_Paciente`, `Nombre`, `Apellido`, `Fecha_Nacimiento`, `Genero`, `Direccion`, `Telefono`, `Info_Medica`, `ID_Doctor`, `ID_Evento`, `DNI`) VALUES
(7, 'Juan', 'Pérez', '1990-05-15', 'Masculino', '123 Calle Principal', '123-456-7890', 'Historial médico de Juan', 1, NULL, '78901234'),
(8, 'Ana', 'González', '1985-08-20', 'Femenino', '456 Calle Secundaria', '987-654-3210', 'Historial médico de Ana', 2, NULL, '89012345'),
(9, 'Carlos', 'López', '1978-03-10', 'Masculino', '789 Calle Terciaria', '555-111-2222', 'Historial médico de Carlos', 3, NULL, NULL),
(10, 'Mariana', 'Díaz', '1993-04-17', 'Femenino', '123 Calle Nueva', '555-777-8888', 'Historial médico de Mariana', 17, NULL, NULL),
(11, 'Hugo', 'García', '1978-11-05', 'Masculino', '456 Calle Tranquila', '555-111-2222', 'Historial médico de Hugo', 18, NULL, NULL),
(12, 'Paula', 'Torres', '1985-09-28', 'Femenino', '789 Calle Serena', '555-222-3333', 'Historial médico de Paula', 19, NULL, NULL),
(13, 'Alejandro', 'Luna', '2001-02-12', 'Masculino', '234 Calle Alegre', '555-333-4444', 'Historial médico de Alejandro', 20, NULL, NULL),
(14, 'Victoria', 'Mendoza', '1982-07-03', 'Femenino', '567 Calle Feliz', '555-444-5555', 'Historial médico de Victoria', 21, NULL, NULL),
(15, 'Javier', 'Ortega', '1999-08-19', 'Masculino', '678 Calle Radiante', '555-555-6666', 'Historial médico de Javier', 22, NULL, NULL),
(16, 'Camila', 'Silva', '1976-01-30', 'Femenino', '890 Calle Brillante', '555-666-7777', 'Historial médico de Camila', 23, NULL, NULL),
(17, 'Daniel', 'Rodríguez', '1990-06-14', 'Masculino', '321 Calle Tranquila', '555-888-9999', 'Historial médico de Daniel', 24, NULL, NULL),
(259, 'Ivan', 'Falcon', '2023-09-06', 'Masculino', NULL, '3794136245', 'Info Medica de Ivan', 2, NULL, '46458830');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_eventos`
--

CREATE TABLE `registro_eventos` (
  `ID_Evento` int(11) NOT NULL,
  `Tipo_Evento` varchar(200) NOT NULL,
  `Fecha_Hora_Evento` date NOT NULL,
  `ID_Paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `registro_eventos`
--

INSERT INTO `registro_eventos` (`ID_Evento`, `Tipo_Evento`, `Fecha_Hora_Evento`, `ID_Paciente`) VALUES
(3, 'Codigo Azul', '2023-09-24', 7),
(10, 'Codigo Azul', '2023-09-24', 8),
(11, 'Codigo Azul', '2023-09-24', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'admin', '$2y$10$oVzaUCqroAQlN8Ss3usLb.4MmOZXzvKOatltGvMt3NC9wbD6riNFO'),
(6, 'USUARIONUEVO', '$2y$10$eF5u5TX976AxN.FuZZqAhebd5tnfaokTrkvoxcM5N.9eZ4/xG2VT6'),
(7, 'ivan', '$2y$10$ZiFTPIyvJNxiZYd4Jw.avuPhc7.jSsh0YBLopq2PANozu5sLmG/96');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre_Usuario` varchar(50) DEFAULT NULL,
  `Contraseña` varchar(100) DEFAULT NULL,
  `Tipo_Usuario` enum('Paciente','Doctor','Enfermero','Administrador') DEFAULT NULL,
  `ID_Paciente` int(11) DEFAULT NULL,
  `ID_Doctor` int(11) DEFAULT NULL,
  `ID_Enfermero` int(11) DEFAULT NULL,
  `ID_Evento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `Nombre_Usuario`, `Contraseña`, `Tipo_Usuario`, `ID_Paciente`, `ID_Doctor`, `ID_Enfermero`, `ID_Evento`) VALUES
(1, 'usuario1', 'contrasena1', 'Paciente', 1, NULL, NULL, NULL),
(2, 'admin', 'admin', 'Administrador', NULL, 1, NULL, NULL),
(3, 'Enfermero', 'Enfermero', 'Enfermero', NULL, NULL, 1, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `areas_hospital`
--
ALTER TABLE `areas_hospital`
  ADD PRIMARY KEY (`ID_Area`);

--
-- Indices de la tabla `doctores`
--
ALTER TABLE `doctores`
  ADD PRIMARY KEY (`ID_Doctor`),
  ADD KEY `ID_Area` (`ID_Area`),
  ADD KEY `ID_Paciente` (`ID_Paciente`);

--
-- Indices de la tabla `enfermeros`
--
ALTER TABLE `enfermeros`
  ADD PRIMARY KEY (`ID_Enfermero`),
  ADD KEY `ID_Paciente` (`ID_Paciente`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`ID_Paciente`),
  ADD KEY `ID_Doctor` (`ID_Doctor`),
  ADD KEY `ID_Evento` (`ID_Evento`);

--
-- Indices de la tabla `registro_eventos`
--
ALTER TABLE `registro_eventos`
  ADD PRIMARY KEY (`ID_Evento`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`),
  ADD KEY `ID_Paciente` (`ID_Paciente`),
  ADD KEY `ID_Doctor` (`ID_Doctor`),
  ADD KEY `ID_Enfermero` (`ID_Enfermero`),
  ADD KEY `ID_Evento` (`ID_Evento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `areas_hospital`
--
ALTER TABLE `areas_hospital`
  MODIFY `ID_Area` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `doctores`
--
ALTER TABLE `doctores`
  MODIFY `ID_Doctor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `enfermeros`
--
ALTER TABLE `enfermeros`
  MODIFY `ID_Enfermero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `ID_Paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT de la tabla `registro_eventos`
--
ALTER TABLE `registro_eventos`
  MODIFY `ID_Evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `doctores`
--
ALTER TABLE `doctores`
  ADD CONSTRAINT `doctores_ibfk_1` FOREIGN KEY (`ID_Area`) REFERENCES `areas_hospital` (`ID_Area`),
  ADD CONSTRAINT `doctores_ibfk_2` FOREIGN KEY (`ID_Paciente`) REFERENCES `pacientes` (`ID_Paciente`);

--
-- Filtros para la tabla `enfermeros`
--
ALTER TABLE `enfermeros`
  ADD CONSTRAINT `enfermeros_ibfk_1` FOREIGN KEY (`ID_Paciente`) REFERENCES `pacientes` (`ID_Paciente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
