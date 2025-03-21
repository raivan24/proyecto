-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-03-2025 a las 19:59:50
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
-- Base de datos: `bd_sl`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `Id_Cliente` int(4) NOT NULL,
  `Nombre_Cliente` varchar(25) NOT NULL,
  `Apellido_Cliente` varchar(25) NOT NULL,
  `Telef_Cliente` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

CREATE TABLE `detalle_pedido` (
  `Id_DetallePedido` int(10) NOT NULL,
  `Id_Productos_DetallePedido` int(10) NOT NULL,
  `Id_Pedido_DetallePedido` int(10) NOT NULL,
  `Cantidad_DetallePedido` int(2) NOT NULL,
  `Nota_DetallePedido` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE `entrada` (
  `entrada_id` int(10) NOT NULL,
  `entrada_producto_id` int(10) NOT NULL,
  `entrada_usuario_id` int(10) NOT NULL,
  `entrada_cantidad` int(10) NOT NULL,
  `entrada_precio` float(8,2) NOT NULL,
  `entrada_fecha` datetime NOT NULL,
  `entrada_proveedor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `entrada`
--

INSERT INTO `entrada` (`entrada_id`, `entrada_producto_id`, `entrada_usuario_id`, `entrada_cantidad`, `entrada_precio`, `entrada_fecha`, `entrada_proveedor_id`) VALUES
(4, 3, 1, 3, 3.00, '2024-07-22 19:36:23', 3),
(5, 3, 1, 10, 10.00, '2024-07-22 19:39:26', 1),
(6, 1, 1, 5, 5.00, '2024-07-22 19:54:20', 2),
(7, 6, 1, 20, 20.00, '2024-07-22 19:59:56', 4),
(8, 2, 1, 5, 5.00, '2024-07-22 20:03:58', 3),
(9, 2, 1, 4, 10.00, '2024-07-22 20:09:28', 1),
(10, 2, 1, 4, 10.00, '2024-07-22 20:12:10', 1),
(11, 2, 1, 2, 10.00, '2024-07-22 20:13:33', 1),
(12, 2, 1, 2, 10.00, '2024-07-22 20:15:07', 1),
(13, 2, 1, 5, 2.00, '2024-07-22 20:17:03', 1),
(14, 2, 1, 4, 2.00, '2024-07-22 20:20:00', 1),
(15, 7, 1, 3, 8.00, '2024-07-22 20:22:30', 1),
(16, 1, 5, 20, 3.00, '2024-07-22 23:33:57', 1),
(17, 4, 1, 20, 8.00, '2024-07-23 16:04:57', 5),
(18, 3, 1, 35, 3.00, '2024-07-23 16:06:10', 4),
(19, 5, 1, 50, 5.00, '2024-07-23 16:42:54', 6),
(20, 6, 1, 72, 32.00, '2024-07-23 17:14:33', 7),
(21, 4, 6, 5, 5.00, '2024-11-07 10:16:38', 7),
(22, 7, 6, 10, 2.00, '2024-11-07 10:21:26', 4),
(23, 7, 6, 5, 0.50, '2024-11-24 14:21:44', 1),
(24, 2, 6, 10, 0.00, '2024-11-24 14:36:59', 7),
(25, 8, 6, 10, 1.00, '2024-11-24 14:46:10', 1),
(26, 8, 6, 5, 0.00, '2024-11-24 15:03:21', 1),
(27, 1, 1, 5, 1.00, '2024-11-26 19:11:49', 7),
(28, 5, 1, 10, 10.00, '2024-11-26 21:55:14', 6),
(29, 8, 1, 3, 0.00, '2024-11-26 22:01:32', 1),
(30, 7, 1, 4, 0.00, '2024-11-26 23:06:51', 3),
(31, 1, 1, 3, 1.00, '2024-11-26 23:08:29', 7),
(32, 8, 1, 2, 0.00, '2024-11-26 23:38:11', 1),
(33, 8, 11, 2, 3.00, '2025-02-13 10:55:39', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `Id_Pedido` int(10) NOT NULL,
  `Id_Cliente_Pedido` int(10) NOT NULL,
  `Fecha_Pedido` datetime NOT NULL,
  `Status_Pago_Pedido` int(2) NOT NULL,
  `Id_Status_Pedido` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(10) NOT NULL,
  `producto_nombre` varchar(70) NOT NULL,
  `producto_descripcion` varchar(200) NOT NULL,
  `producto_min` int(10) NOT NULL,
  `producto_max` int(10) NOT NULL,
  `producto_fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_nombre`, `producto_descripcion`, `producto_min`, `producto_max`, `producto_fecha`) VALUES
(1, 'FLORES AZULES PEQUEÑAS', 'FLORES AZULES PEQUEÑAS PARA ARREGLOS', 5, 20, '2024-07-22 23:32:04'),
(2, 'CESTA TEJIDA', 'CESTA TEJIDA ', 2, 3, '2024-07-22 23:32:58'),
(3, 'GLOBOS ROJOS FORMA DE CORAZON', 'GLOBOS ROJOS FORMA DE CORAZON GRANDE', 3, 10, '2024-07-23 15:59:18'),
(4, 'CHOCOLATES RELLENOS DE FRESA', 'CHOCOLATES RELLENOS DE FRESA', 5, 20, '2024-07-23 16:01:45'),
(5, 'HOJAS BRILLANTES PLATEADAS', 'HOJAS BRILLANTES PLATEADAS', 3, 30, '2024-07-23 16:40:35'),
(6, 'ROSAS ROSADAS', 'ROSAS ROSADAS GRANDES', 5, 46, '2024-07-23 17:12:01'),
(7, 'GLOBOS TRANSPARENTES', 'GLOBOS TRANSPARENTES', 5, 3, '2024-11-07 10:20:27'),
(8, 'CHOCOLATE DE LECHE', 'CHOCOLATE DE LECHE RELLENO', 2, 5, '2024-11-24 14:44:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Id_Productos` int(10) NOT NULL,
  `Nombre_Productos` varchar(35) NOT NULL,
  `Precio_Productos` double NOT NULL,
  `Status_Productos` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `proveedor_id` int(10) NOT NULL,
  `proveedor_nombre` varchar(80) NOT NULL,
  `proveedor_email` varchar(300) NOT NULL,
  `proveedor_telf` varchar(50) NOT NULL,
  `proveedor_dir` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`proveedor_id`, `proveedor_nombre`, `proveedor_email`, `proveedor_telf`, `proveedor_dir`) VALUES
(1, 'DISTRIBUIDORA EL REGALO', 'ELREGALO@XYN.COM', '01234-3456600', 'CARACAS'),
(2, 'EL ENCANTO', 'ELENCANTO@XVD.COM', '04233456789', 'EJIDO'),
(3, 'JUGUETERO', 'JUGUETERO@NBM.COM', '09876753456', 'VALENCIA'),
(4, 'PAPELERIA HOJAS DE PIEL', 'PPIEL@CVD.COM', '0000-3456734', 'EL CAMINO CALLE 3'),
(5, 'JUGUETERIA EL MAYOR', 'JUGUETEM@NBM.COM', '04241234567', 'EJIDO CALLE 2'),
(6, 'LIBRERA PLAS', 'LIBRERIAPLAS@HJKN.COM', '02742213456', 'CARACAS '),
(7, 'FLORISTERIA ANA', 'FLORANA@FGH.COM', '0123456789', 'MERIDA AV 18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salida`
--

CREATE TABLE `salida` (
  `salida_id` int(10) NOT NULL,
  `salida_producto_id` int(10) NOT NULL,
  `salida_usuario_id` int(10) NOT NULL,
  `salida_cantidad` int(10) NOT NULL,
  `salida_fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `salida`
--

INSERT INTO `salida` (`salida_id`, `salida_producto_id`, `salida_usuario_id`, `salida_cantidad`, `salida_fecha`) VALUES
(1, 1, 1, 4, '2024-11-28 01:56:05'),
(2, 1, 11, 3, '2024-12-09 11:09:56'),
(3, 1, 1, 1, '2025-02-02 14:30:34'),
(4, 2, 1, 11, '2025-02-02 14:30:54'),
(5, 3, 11, 3, '2025-02-13 10:42:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `status_pedido`
--

CREATE TABLE `status_pedido` (
  `Id_StatusPedido` int(2) NOT NULL,
  `Nombre_StatusPedido` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(10) NOT NULL,
  `stock_producto_id` int(10) NOT NULL,
  `stock_actual` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`stock_id`, `stock_producto_id`, `stock_actual`) VALUES
(1, 1, 2),
(2, 2, -1),
(3, 3, 32),
(4, 4, 25),
(5, 5, 60),
(6, 6, 72),
(7, 7, 19),
(8, 8, 22),
(9, 9, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(10) NOT NULL,
  `usuario_nombre` varchar(70) NOT NULL,
  `usuario_email` varchar(100) NOT NULL,
  `usuario_usuario` varchar(30) NOT NULL,
  `usuario_clave` varchar(300) NOT NULL,
  `usuario_tipo` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_email`, `usuario_usuario`, `usuario_clave`, `usuario_tipo`) VALUES
(1, 'RAY', 'RAID@FHG.COM', 'RAYDS', '1234', 1),
(2, 'COTUFA', 'COTU@GMAIL.COM', 'COTUFARD', 'Cotu@1234', 3),
(3, 'CARLOS RAMIREZ', 'CARLOSR@HGF.COM', 'CARLOSR', 'Carlos24$', 3),
(4, 'MARIA QUINTERO', 'MARIAQ@SD.COM', 'MARIAQ', 'MARIAQ', 2),
(5, 'PEDRO GONZALEZ', 'PEDRO@XYZ.COM', 'PEDROG', '12345', 2),
(6, 'LUIS SOLIS', 'LUIS@WERD.COM', 'LUISS', '12345', 2),
(7, 'RAMON SALCEDO', 'RAMON@GMAIL.COM', 'RAMONG', '123', 2),
(8, 'CARLOS MENDEZ', 'CARLOS@GSM.COM', 'CARLOSM', '3456', 2),
(9, 'LUIS CARRERO LOPEZ', 'LUISCL@HYT.COM', 'LUISC', '2345', 3),
(10, 'PEDRO LOPEZ', 'PEDROL@MVN.COM', 'PEDROL', '12345', 3),
(11, 'ANA ARAQUE', 'ANA@GMAIL.COM', 'ANAR', 'Ana!1234', 1),
(12, 'JOSE MOLINA', 'JOSE@MBN.COM', 'JOSEM', '123JOSEM%', 2),
(13, 'MARIA PEREZ', 'MARIAPEREZ@SSI.COM', 'MARIAP', 'MARIAP+12', 2),
(14, 'JOSE  U', 'JOSEU@GMAIL.COM', 'JOSEU', 'Jose!12345', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`Id_Cliente`);

--
-- Indices de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD PRIMARY KEY (`Id_DetallePedido`);

--
-- Indices de la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`entrada_id`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Id_Pedido`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id_Productos`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`proveedor_id`);

--
-- Indices de la tabla `salida`
--
ALTER TABLE `salida`
  ADD PRIMARY KEY (`salida_id`);

--
-- Indices de la tabla `status_pedido`
--
ALTER TABLE `status_pedido`
  ADD PRIMARY KEY (`Id_StatusPedido`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `Id_Cliente` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  MODIFY `Id_DetallePedido` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `entrada`
--
ALTER TABLE `entrada`
  MODIFY `entrada_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `Id_Pedido` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Id_Productos` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `proveedor_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `salida`
--
ALTER TABLE `salida`
  MODIFY `salida_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `status_pedido`
--
ALTER TABLE `status_pedido`
  MODIFY `Id_StatusPedido` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
