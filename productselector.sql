-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-01-2026 a las 22:01:33
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
-- Base de datos: `productselector`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `usuario`, `contrasena`) VALUES
(1, 'admin', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`id`, `nombre`, `slug`) VALUES
(33, 'Ingeniería de Sistemas', 'ingenieria-sistemas'),
(34, 'Ingeniería de Minas', 'ingenieria-minas'),
(35, 'Ingeniería Mecánica', 'ingenieria-mecanica'),
(36, 'Ingeniería Industrial', 'ingenieria-industrial'),
(37, 'Ingeniería Civil', 'ingenieria-civil'),
(38, 'Ingeniería de Software', 'ingenieria-software'),
(39, 'Ingeniería Ambiental', 'ingenieria-ambiental'),
(40, 'Ingeniería Eléctrica', 'ingenieria-electrica'),
(41, 'Medicina Humana', 'medicina-humana'),
(42, 'Medicina Neurología', 'medicina-neurologia'),
(43, 'Medicina Psicología', 'medicina-psicologia'),
(44, 'Medicina Enfermería', 'medicina-enfermeria'),
(45, 'Medicina Odontología', 'medicina-odontologia'),
(46, 'Técnica en Farmacia', 'tecnica-farmacia'),
(47, 'Medicina Cirugía', 'medicina-cirugia'),
(48, 'Derecho Abogado', 'derecho-abogado'),
(49, 'Derecho Notaría', 'derecho-notaria'),
(50, 'Derecho Penal', 'derecho-penal'),
(51, 'Administración de Empresas', 'administracion-empresa'),
(52, 'Administración de Recursos Humanos', 'administracion-recursos-humanos'),
(53, 'Administración Contabilidad', 'administracion-contabilidad'),
(54, 'Administración Economía', 'administracion-economia'),
(55, 'Administración Marketing', 'administracion-marketing'),
(56, 'Arquitectura', 'arquitectura'),
(57, 'Diseño Gráfico', 'diseno-grafico'),
(58, 'Diseño de Interiores', 'diseno-interiores'),
(59, 'Periodismo', 'periodismo'),
(60, 'Publicidad', 'publicidad'),
(61, 'Música', 'musica'),
(62, 'Policía', 'policia'),
(63, 'Militar', 'militar'),
(64, 'Educación', 'educacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Procesadores'),
(2, 'Memoria RAM'),
(3, 'Placa Base'),
(4, 'Almacenamiento'),
(5, 'Tarjeta Gráfica'),
(6, 'Fuente de Poder'),
(7, 'Mouse'),
(8, 'Teclado'),
(9, 'Monitor'),
(10, 'Refrigeración'),
(11, 'Accesorios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `id` int(11) NOT NULL,
  `laptop_id` int(11) NOT NULL,
  `marca` varchar(100) DEFAULT NULL,
  `ram` varchar(50) DEFAULT NULL,
  `almacenamiento` varchar(100) DEFAULT NULL,
  `pantalla` varchar(100) DEFAULT NULL,
  `sistema_operativo` varchar(100) DEFAULT NULL,
  `bateria` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`id`, `laptop_id`, `marca`, `ram`, `almacenamiento`, `pantalla`, `sistema_operativo`, `bateria`, `descripcion`) VALUES
(56, 34, 'Apple', '16GB', '512GB SSD', '14 pulgadas.', 'macOS', '10 celdas 37Wh', 'MacBook Pro MW2U3LL/A 14 M4 chip 512GB SSD 16GB Negro Equipo de la marca Apple que trae estas espectaculares características: - 512GB de Memoria Interna. - 16GB de RAM. - Pantalla 14 pulgadas. - Disco: SSD. - Procesador: M4 chip. - Sistema Operativo: macOS. - Marca: Apple. - Modelo: MacBook Pro MW2U3LL/A. - GPU: 10 núcleos. - Características: . Excelente opción de compra para mantenerte siempre conectado con las mejores funciones del mercado. Laptop completamente funcional que tiene todo lo que necesitas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laptops`
--

CREATE TABLE `laptops` (
  `id` int(11) NOT NULL,
  `serie` varchar(100) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `tipo` varchar(50) DEFAULT 'laptop',
  `procesador_id` int(11) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(100) DEFAULT 'laptop.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `laptops`
--

INSERT INTO `laptops` (`id`, `serie`, `nombre`, `tipo`, `procesador_id`, `precio`, `imagen`) VALUES
(34, 'MW2U3LL/A', 'MacBook Pro  14 M4 chip  Negro', 'laptop', 3, 7257.00, '1763226862_principal.png');

--
-- Disparadores `laptops`
--
DELIMITER $$
CREATE TRIGGER `trg_after_insert_laptop` AFTER INSERT ON `laptops` FOR EACH ROW BEGIN
  INSERT INTO detalles (laptop_id) VALUES (NEW.id);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laptop_carreras`
--

CREATE TABLE `laptop_carreras` (
  `laptop_id` int(11) NOT NULL,
  `carrera_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `laptop_carreras`
--

INSERT INTO `laptop_carreras` (`laptop_id`, `carrera_id`) VALUES
(34, 37),
(34, 42),
(34, 47),
(34, 48),
(34, 53),
(34, 54),
(34, 57);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laptop_imagenes`
--

CREATE TABLE `laptop_imagenes` (
  `id` int(11) NOT NULL,
  `laptop_id` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `tipo` enum('abierta','cerrada','interna') DEFAULT 'abierta'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `laptop_imagenes`
--

INSERT INTO `laptop_imagenes` (`id`, `laptop_id`, `imagen`, `tipo`) VALUES
(36, 34, '1763226862_abierta.png', 'abierta'),
(37, 34, '1763226862_muestra.png', 'cerrada'),
(38, 34, '1763226862_cerrada.png', 'interna');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laptop_programa`
--

CREATE TABLE `laptop_programa` (
  `id` int(11) NOT NULL,
  `laptop_id` int(11) NOT NULL,
  `programa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `laptop_programa`
--

INSERT INTO `laptop_programa` (`id`, `laptop_id`, `programa_id`) VALUES
(303, 34, 10),
(304, 34, 13),
(305, 34, 16),
(306, 34, 20),
(307, 34, 24),
(308, 34, 27),
(309, 34, 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`) VALUES
(1, 'Intel'),
(2, 'AMD'),
(3, 'Corsair'),
(4, 'Kingston'),
(5, 'Gigabyte'),
(6, 'ASUS'),
(7, 'MSI'),
(8, 'Western Digital'),
(9, 'Seagate'),
(10, 'Logitech'),
(11, 'Redragon'),
(12, 'Razer'),
(13, 'Antryx'),
(14, 'Cooler Master');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesadores`
--

CREATE TABLE `procesadores` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `procesadores`
--

INSERT INTO `procesadores` (`id`, `nombre`) VALUES
(1, 'Intel Celeron'),
(2, 'Intel Core i3'),
(3, 'Intel Core i5'),
(4, 'Intel Core i7'),
(5, 'Intel Core i9'),
(6, 'AMD Ryzen 3'),
(7, 'AMD Ryzen 5'),
(8, 'AMD Ryzen 7'),
(9, 'AMD Ryzen 9'),
(10, 'AMD Athlon Silver');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `tipo` enum('pc','laptop') DEFAULT 'pc',
  `subcategoria_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `imagen`, `categoria_id`, `marca`, `marca_id`, `tipo`, `subcategoria_id`) VALUES
(38, 'Logitech G203 Lightsync', 'Mouse gamer con sensor de 8000 DPI, iluminación RGB Lightsync y 6 botones programables. Ideal para trabajo y juegos.', 89.90, '1763348018_nmouspl.png', 7, NULL, NULL, 'pc', 21),
(39, 'Logitech G203', 'kil', 50.00, '1763483632_ec1edfce625045155e9386474c9b324c.jpg', 9, NULL, NULL, 'pc', 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE `programas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `icono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `programas`
--

INSERT INTO `programas` (`id`, `nombre`, `icono`) VALUES
(10, '3dsmax', '3dsmax.png'),
(11, 'Acrobat', 'acrobat.png'),
(12, 'Adobe', 'adobe.png'),
(13, 'AfterEffects', 'aftereffects.png'),
(14, 'AutoCAD', 'autocad.png'),
(15, 'AutoCAD_2D', 'autocad_2d.png'),
(16, 'Blender', 'blender.png'),
(17, 'Canva', 'canva.png'),
(18, 'Chrome', 'chrome.png'),
(19, 'Excel', 'excel.png'),
(20, 'Illustrator', 'illustrator.png'),
(21, 'InDesign', 'indesign.png'),
(22, 'IntelliJ', 'intellij.png'),
(24, 'Lumion', 'lumion.png'),
(25, 'Matlab', 'matlab.png'),
(26, 'Maya', 'maya.png'),
(27, 'Minitab', 'minitab.png'),
(28, 'MySQL', 'mysql.png'),
(30, 'Office', 'office.png'),
(31, 'Outlook', 'outlook.png'),
(32, 'Photoshop', 'photoshop.png'),
(33, 'PowerBI', 'powerbi.png'),
(34, 'PowerPoint', 'powerpoint.png'),
(35, 'Python', 'python.png'),
(36, 'Revit', 'revit.png'),
(37, 'RStudio', 'rstudio.png'),
(38, 'SketchUp', 'sketchup.png'),
(39, 'SolidWorks', 'solidworks.png'),
(40, 'SPSS', 'spss.png'),
(41, 'Teams', 'teams.png'),
(42, 'Trello', 'trello.png'),
(43, 'Unity', 'unity.png'),
(44, 'Unreal', 'unreal.png'),
(45, 'Visual Studio', 'visual-studio.png'),
(46, 'V-Ray', 'vray.png'),
(47, 'VSCode', 'vscode.png'),
(48, 'Word', 'word.png'),
(49, 'Zoom', 'zoom.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `categoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `nombre`, `categoria_id`) VALUES
(1, 'Intel', 1),
(2, 'AMD', 1),
(3, '8GB', 2),
(4, '16GB', 2),
(5, '32GB', 2),
(6, 'AMD', 3),
(7, 'Intel', 3),
(8, 'SSD', 4),
(9, 'HDD', 4),
(10, 'RTX Serie 40', 5),
(11, 'RTX Serie 30', 5),
(12, 'Radeon RX', 5),
(13, 'Económicas', 5),
(14, 'Básicas', 6),
(15, 'Modulares', 6),
(16, 'Full HD', 9),
(17, '4K', 9),
(18, 'Curvo', 9),
(19, 'Refrigeración por aire', 10),
(20, 'Refrigeración líquida', 10),
(21, 'Alámbrico', 7),
(22, 'Ergonómico', 7),
(23, 'Mecánico', 8),
(24, 'Semi Mecánico', 8),
(25, 'Oficina', 8),
(26, 'Audífonos', 11),
(27, 'Webcams', 11),
(28, 'Micrófonos', 11),
(29, 'Cables y Adaptadores', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `laptop_id` int(11) NOT NULL,
  `enero` int(11) DEFAULT 0,
  `febrero` int(11) DEFAULT 0,
  `marzo` int(11) DEFAULT 0,
  `abril` int(11) DEFAULT 0,
  `mayo` int(11) DEFAULT 0,
  `junio` int(11) DEFAULT 0,
  `julio` int(11) DEFAULT 0,
  `agosto` int(11) DEFAULT 0,
  `septiembre` int(11) DEFAULT 0,
  `octubre` int(11) DEFAULT 0,
  `noviembre` int(11) DEFAULT 0,
  `diciembre` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `laptop_id`, `enero`, `febrero`, `marzo`, `abril`, `mayo`, `junio`, `julio`, `agosto`, `septiembre`, `octubre`, `noviembre`, `diciembre`) VALUES
(5, 34, 15, 20, 25, 30, 35, 34, 50, 60, 80, 70, 90, 50);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laptop_id` (`laptop_id`);

--
-- Indices de la tabla `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `serie` (`serie`),
  ADD KEY `procesador_id` (`procesador_id`);

--
-- Indices de la tabla `laptop_carreras`
--
ALTER TABLE `laptop_carreras`
  ADD PRIMARY KEY (`laptop_id`,`carrera_id`),
  ADD KEY `carrera_id` (`carrera_id`);

--
-- Indices de la tabla `laptop_imagenes`
--
ALTER TABLE `laptop_imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laptop_id` (`laptop_id`);

--
-- Indices de la tabla `laptop_programa`
--
ALTER TABLE `laptop_programa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laptop_id` (`laptop_id`),
  ADD KEY `programa_id` (`programa_id`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `procesadores`
--
ALTER TABLE `procesadores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`),
  ADD KEY `marca_id` (`marca_id`),
  ADD KEY `subcategoria_id` (`subcategoria_id`);

--
-- Indices de la tabla `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laptop_id` (`laptop_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `detalles`
--
ALTER TABLE `detalles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `laptops`
--
ALTER TABLE `laptops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `laptop_imagenes`
--
ALTER TABLE `laptop_imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `laptop_programa`
--
ALTER TABLE `laptop_programa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `procesadores`
--
ALTER TABLE `procesadores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `programas`
--
ALTER TABLE `programas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `detalles_ibfk_1` FOREIGN KEY (`laptop_id`) REFERENCES `laptops` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_detalle_laptop` FOREIGN KEY (`laptop_id`) REFERENCES `laptops` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `laptops`
--
ALTER TABLE `laptops`
  ADD CONSTRAINT `laptops_ibfk_1` FOREIGN KEY (`procesador_id`) REFERENCES `procesadores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `laptop_carreras`
--
ALTER TABLE `laptop_carreras`
  ADD CONSTRAINT `laptop_carreras_ibfk_1` FOREIGN KEY (`laptop_id`) REFERENCES `laptops` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laptop_carreras_ibfk_2` FOREIGN KEY (`carrera_id`) REFERENCES `carreras` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `laptop_imagenes`
--
ALTER TABLE `laptop_imagenes`
  ADD CONSTRAINT `laptop_imagenes_ibfk_1` FOREIGN KEY (`laptop_id`) REFERENCES `laptops` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `laptop_programa`
--
ALTER TABLE `laptop_programa`
  ADD CONSTRAINT `laptop_programa_ibfk_1` FOREIGN KEY (`laptop_id`) REFERENCES `laptops` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `laptop_programa_ibfk_2` FOREIGN KEY (`programa_id`) REFERENCES `programas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`),
  ADD CONSTRAINT `productos_ibfk_3` FOREIGN KEY (`subcategoria_id`) REFERENCES `subcategorias` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD CONSTRAINT `subcategorias_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`laptop_id`) REFERENCES `laptops` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
