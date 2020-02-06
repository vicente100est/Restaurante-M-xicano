-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-02-2020 a las 13:59:55
-- Versión del servidor: 5.7.28-0ubuntu0.19.04.2
-- Versión de PHP: 7.2.27-1+ubuntu19.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `food3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_categories`
--

CREATE TABLE `food_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_categories`
--

INSERT INTO `food_categories` (`id`, `name`, `created_at`) VALUES
(25, 'Sopas y caldos', '2020-02-01 09:36:16'),
(24, 'Entradas', '2020-02-01 09:36:06'),
(26, 'Postres', '2020-02-01 09:36:21'),
(27, 'Bebidas', '2020-02-01 09:36:27'),
(28, 'Parrilladas y cortes', '2020-02-01 09:36:39'),
(29, 'Tequila', '2020-02-01 11:13:12'),
(30, 'Vodka', '2020-02-01 11:13:22'),
(31, 'Smirnoff', '2020-02-01 11:13:32'),
(32, 'Brandy', '2020-02-01 11:13:45'),
(33, 'Whisky', '2020-02-01 11:13:53'),
(34, 'Bebidas preparadas', '2020-02-01 11:14:13'),
(35, 'Promoción', '2020-02-01 11:14:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_categorie_expences`
--

CREATE TABLE `food_categorie_expences` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_categorie_expences`
--

INSERT INTO `food_categorie_expences` (`id`, `name`, `created_date`) VALUES
(4, 'muebles', '2019-09-21 18:03:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_combo_items`
--

CREATE TABLE `food_combo_items` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_customers`
--

CREATE TABLE `food_customers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_customers`
--

INSERT INTO `food_customers` (`id`, `name`, `phone`, `email`, `discount`, `created_at`) VALUES
(11, 'Jose Torres', '9524568', 'jose@gmail.com', '', '2019-07-22 14:20:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_expences`
--

CREATE TABLE `food_expences` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(150) NOT NULL,
  `note` text,
  `amount` float NOT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_expences`
--

INSERT INTO `food_expences` (`id`, `date`, `reference`, `note`, `amount`, `attachment`, `created_date`, `category_id`, `store_id`, `created_by`) VALUES
(16, '2019-07-22', 'Gas', '', 50, '', '2019-07-22 18:57:41', 0, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_holds`
--

CREATE TABLE `food_holds` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `time` varchar(10) NOT NULL,
  `register_id` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_holds`
--

INSERT INTO `food_holds` (`id`, `number`, `time`, `register_id`, `table_id`, `waiter_id`, `customer_id`) VALUES
(293, 1, '13:38', 91, 50, 0, 0),
(284, 1, '14:41', 0, 50, NULL, NULL),
(294, 1, '13:38', 92, 44, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_payements`
--

CREATE TABLE `food_payements` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `paid` float NOT NULL,
  `paidmethod` varchar(300) NOT NULL,
  `created_by` varchar(60) NOT NULL,
  `register_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `waiter_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_posales`
--

CREATE TABLE `food_posales` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `table_id` int(11) DEFAULT NULL,
  `options` text,
  `time` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_posales`
--

INSERT INTO `food_posales` (`id`, `product_id`, `name`, `price`, `qt`, `status`, `register_id`, `number`, `table_id`, `options`, `time`) VALUES
(1586, 158, 'salchicha ahumada', 20, 1, 1, 92, 1, 44, NULL, '2020-01-31 13:38:07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_products`
--

CREATE TABLE `food_products` (
  `id` int(11) NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `category` varchar(20) NOT NULL,
  `cost` float NOT NULL,
  `tax` varchar(11) DEFAULT NULL,
  `description` mediumtext,
  `price` float NOT NULL,
  `photo` varchar(200) NOT NULL,
  `photothumb` varchar(500) DEFAULT NULL,
  `color` varchar(10) NOT NULL,
  `created_at` varchar(30) DEFAULT NULL,
  `modified_at` varchar(30) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `alertqt` int(10) DEFAULT NULL,
  `supplier` varchar(200) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `taxmethod` tinyint(4) DEFAULT NULL,
  `h_stores` varchar(300) DEFAULT NULL,
  `options` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_products`
--

INSERT INTO `food_products` (`id`, `code`, `name`, `category`, `cost`, `tax`, `description`, `price`, `photo`, `photothumb`, `color`, `created_at`, `modified_at`, `type`, `alertqt`, `supplier`, `unit`, `taxmethod`, `h_stores`, `options`) VALUES
(159, '75010201', 'Guacamole', 'Entradas', 60, '16', '', 60, 'e3a14140a6aca10d85710da8c98fbe28.jpeg', 'e3a14140a6aca10d85710da8c98fbe28_thumb.jpeg', 'color01', '2020-02-01 09:39:29', '2020-02-01 09:39:28', 0, 999, 'Proveedor', '100000', 0, NULL, ''),
(160, '75010202', 'Queso fundido natural', 'Entradas', 60, '16', '', 60, 'b54db90cfaa00ea4a50a1460e1519d57.jpeg', 'b54db90cfaa00ea4a50a1460e1519d57_thumb.jpeg', 'color01', '2020-02-01 09:41:46', '2020-02-01 09:41:46', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(161, '75010203', 'Queso fundido chorizo', 'Entradas', 70, '16', '', 60, '9e7f695f447abe11e7bfdb4015ec91e0.jpeg', '9e7f695f447abe11e7bfdb4015ec91e0_thumb.jpeg', 'color01', '2020-02-01 09:42:43', '2020-02-01 09:42:43', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(162, '75010204', 'Queso fundido tocino', 'Entradas', 70, '16', '', 70, '44eed5de4cb936d74d83b0ec3b01036d.jpeg', '44eed5de4cb936d74d83b0ec3b01036d_thumb.jpeg', 'color01', '2020-02-01 09:43:27', '2020-02-01 09:43:27', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(163, '75010205', 'chistorra', 'Entradas', 85, '16', '', 85, 'ad80bdc582b95ca35155d4a4857f3653.jpeg', 'ad80bdc582b95ca35155d4a4857f3653_thumb.jpeg', 'color01', '2020-02-01 09:44:35', '2020-02-01 09:44:35', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(164, '75010206', 'Caldo tlalpeño', 'Sopas y caldos', 33, '16', '', 35, 'b06f6e9bccc3f61d7dc784ff5725cdea.jpeg', 'b06f6e9bccc3f61d7dc784ff5725cdea_thumb.jpeg', 'color02', '2020-02-01 09:45:49', '2020-02-01 09:45:49', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(165, '75010207', 'Sopa azteca', 'Sopas y caldos', 35, '16', '', 35, 'fdc869e25b90e86a14dc5b5907701ec6.jpeg', 'fdc869e25b90e86a14dc5b5907701ec6_thumb.jpeg', 'color02', '2020-02-01 09:46:43', '2020-02-01 09:46:43', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(166, '75010208', 'Frijoles charros', 'Sopas y caldos', 35, '16', '', 35, '718bbb6ad26673d8b94db877dd7703cc.jpeg', '718bbb6ad26673d8b94db877dd7703cc_thumb.jpeg', 'color02', '2020-02-01 09:48:02', '2020-02-01 09:48:02', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(167, '75010209', 'Flan napolitano', 'Postres', 60, '16', '', 60, '967e5e5a4fab5df0999ca411098e72b6.jpeg', '967e5e5a4fab5df0999ca411098e72b6_thumb.jpeg', 'color03', '2020-02-01 09:49:07', '2020-02-01 09:49:07', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(168, '75010210', 'Pastel 3 leches', 'Postres', 60, '16', '', 60, '7de7704d3e7934ea5bd286897d7fd5c3.jpeg', '7de7704d3e7934ea5bd286897d7fd5c3_thumb.jpeg', 'color03', '2020-02-01 09:49:57', '2020-02-01 09:49:57', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(169, '75010211', 'Refrescos', 'Bebidas', 25, '16', '', 25, '71d8a8e76460b580914be9feba6d9fc7.jpeg', '71d8a8e76460b580914be9feba6d9fc7_thumb.jpeg', 'color04', '2020-02-01 09:50:59', '2020-02-01 09:50:59', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(170, '75010212', 'Cerveza corona', 'Bebidas', 30, '16', '', 30, 'a6117fe8889d5de459c88f8dc65a3d39.jpeg', 'a6117fe8889d5de459c88f8dc65a3d39_thumb.jpeg', 'color04', '2020-02-01 09:51:55', '2020-02-01 09:51:55', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(171, '75010213', 'Cerveza victoria', 'Bebidas', 30, '16', '', 30, '01a7bba9a88c702deb64b328462b7375.jpeg', '01a7bba9a88c702deb64b328462b7375_thumb.jpeg', 'color04', '2020-02-01 09:52:51', '2020-02-01 09:52:51', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(172, '75010214', 'Modelo cristal', 'Bebidas', 35, '16', '', 35, '8bd614b0b2ff28413f6fa41e4a5cb009.jpeg', '8bd614b0b2ff28413f6fa41e4a5cb009_thumb.jpeg', 'color04', '2020-02-01 09:53:52', '2020-02-01 09:53:52', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(173, '75010215', 'Negra modelo', 'Bebidas', 35, '16', '', 35, '18054000b7a394753a493b1677bc91b3.jpeg', '18054000b7a394753a493b1677bc91b3_thumb.jpeg', 'color04', '2020-02-01 09:54:32', '2020-02-01 09:54:32', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(174, '75010216', 'Modelo de lata', 'Bebidas', 35, '16', '', 35, 'b3eecad3fa3b410997ad424092eda75b.jpeg', 'b3eecad3fa3b410997ad424092eda75b_thumb.jpeg', 'color04', '2020-02-01 09:55:16', '2020-02-01 09:55:16', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(175, '75010217', 'Limonada', 'Bebidas', 30, '16', '', 30, '6004ba991a49f33f1f31f871ef195589.jpeg', '6004ba991a49f33f1f31f871ef195589_thumb.jpeg', 'color04', '2020-02-01 09:56:12', '2020-02-01 09:56:12', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(176, '75010218', 'Naranjada', 'Bebidas', 30, '16', '', 30, 'b95e57680def7081ec0ac0f230f40404.jpeg', 'b95e57680def7081ec0ac0f230f40404_thumb.jpeg', 'color04', '2020-02-01 09:56:57', '2020-02-01 09:56:57', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(177, '75010219', 'Jarra de agua', 'Bebidas', 70, '16', '', 69, '2f32d5842a4092bd11c9e15a28bb4938.jpeg', '2f32d5842a4092bd11c9e15a28bb4938_thumb.jpeg', 'color04', '2020-02-01 09:57:36', '2020-02-01 09:57:36', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(178, '75010220', 'Michelada chica', 'Bebidas', 35, '16', '', 35, 'c381b3bd823b84eab25b31041d95e632.jpeg', 'c381b3bd823b84eab25b31041d95e632_thumb.jpeg', 'color04', '2020-02-01 09:58:58', '2020-02-01 09:58:58', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(179, '75010221', 'Michelada grande', 'Bebidas', 35, '16', '', 35, '1487a926fd3f24ecb5a7e844432bd87e.jpeg', '1487a926fd3f24ecb5a7e844432bd87e_thumb.jpeg', 'color04', '2020-02-01 09:59:36', '2020-02-01 09:59:36', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(180, '75010222', 'Arrachera para 2 personas', 'Parrilladas y cortes', 200, '16', '', 200, '8117df26d6e9ac79f0240cde81b780ab.jpeg', '8117df26d6e9ac79f0240cde81b780ab_thumb.jpeg', 'color01', '2020-02-01 10:00:44', '2020-02-01 10:00:44', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(181, '75010223', 'Arrachera para 4 personas', 'Parrilladas y cortes', 380, '16', '', 380, '788fa50754fc2e9791604122e8dfd534.jpeg', '788fa50754fc2e9791604122e8dfd534_thumb.jpeg', 'color05', '2020-02-01 10:01:31', '2020-02-01 10:01:31', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(182, '75010224', 'T-bone', 'Parrilladas y cortes', 220, '16', '', 220, '31ecc552b40b60449551dba3c385281e.jpeg', '31ecc552b40b60449551dba3c385281e_thumb.jpeg', 'color05', '2020-02-01 10:02:13', '2020-02-01 10:02:12', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(183, '75010225', 'T-bone', 'Parrilladas y cortes', 220, '16', '', 220, '02b7ee3e3cf03db223673a2bdfda6d16.jpeg', '02b7ee3e3cf03db223673a2bdfda6d16_thumb.jpeg', 'color01', '2020-02-01 10:06:15', '2020-02-01 10:06:15', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(184, '75010226', 'Rib eye', 'Parrilladas y cortes', 250, '16', '', 248, '3dd5dc667a83e741c120712a087f09c2.jpeg', '3dd5dc667a83e741c120712a087f09c2_thumb.jpeg', 'color05', '2020-02-01 10:07:01', '2020-02-01 10:07:01', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(185, '75010227', 'Sirlon', 'Parrilladas y cortes', 200, '16', '', 200, '155049ad386a81aa1d8f48d49d6410fc.jpeg', '155049ad386a81aa1d8f48d49d6410fc_thumb.jpeg', 'color05', '2020-02-01 10:07:56', '2020-02-01 10:07:56', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(186, '75010228', 'Cafe', 'Postres', 30, '16', '', 30, '', '', 'color03', '2020-02-01 12:08:59', '2020-02-01 12:08:59', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(187, '75010229', 'Agua', 'Postres', 15, '16', '', 15, '0a18ef9737f249a4042144b9019d935b.jpeg', '0a18ef9737f249a4042144b9019d935b_thumb.jpeg', 'color03', '2020-02-01 11:12:10', '2020-02-01 11:12:10', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(192, '75010231', 'Copa tradicional', 'Tequila', 45, '16', '', 45, 'c585262e6a6ab42908accc49be757db7.jpeg', 'c585262e6a6ab42908accc49be757db7_thumb.jpeg', 'color06', '2020-02-01 11:26:10', '2020-02-01 11:26:10', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(191, '75010230', 'Copa-jimador', 'Tequila', 40, '16', '', 40, 'c4c0e5974bcbe3a5aeef13489a08122e.jpeg', 'c4c0e5974bcbe3a5aeef13489a08122e_thumb.jpeg', 'color06', '2020-02-01 11:25:41', '2020-02-01 11:25:41', 1, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(193, '75010232', 'Copa hacienda', 'Tequila', 40, '16', '', 40, 'a257cc571083c32db7d9aa01b5eea30e.jpeg', 'a257cc571083c32db7d9aa01b5eea30e_thumb.jpeg', 'color06', '2020-02-01 11:27:27', '2020-02-01 11:27:27', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(194, '75010233', 'Copa cabrito', 'Tequila', 35, '16', '', 35, '41c07ea31af2da4d27ee97c2f55c8a4a.jpeg', '41c07ea31af2da4d27ee97c2f55c8a4a_thumb.jpeg', 'color06', '2020-02-01 11:28:31', '2020-02-01 11:28:31', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(195, '75010234', 'Copa cuervo especial', 'Tequila', 35, '16', '', 35, '', '', 'color06', '2020-02-01 11:29:10', '2020-02-01 11:29:10', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(196, '75010235', 'Servicio jimador', 'Tequila', 600, '16', '', 600, '5d3e8f0cffa54054b5ef5f6ece626a3a.jpeg', '5d3e8f0cffa54054b5ef5f6ece626a3a_thumb.jpeg', 'color06', '2020-02-01 11:29:59', '2020-02-01 11:29:59', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(197, '75010236', 'Servicio tradicional', 'Tequila', 750, '16', '', 750, '28b73d9717fe7938e9b5570cb259c413.jpeg', '28b73d9717fe7938e9b5570cb259c413_thumb.jpeg', 'color06', '2020-02-01 11:30:58', '2020-02-01 11:30:58', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(198, '75010237', 'Servicio cuervo especial', 'Tequila', 600, '16', '', 600, '', '', 'color06', '2020-02-01 11:31:47', '2020-02-01 11:31:47', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(199, '75010238', 'Copa Smirnoff', 'Vodka', 45, '16', '', 45, '8f1301dbdae548640c7de535c7525c14.jpeg', '8f1301dbdae548640c7de535c7525c14_thumb.jpeg', 'color06', '2020-02-01 11:32:57', '2020-02-01 11:32:57', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(200, '75010239', 'Copa absolut', 'Vodka', 60, '16', '', 60, '99a3f739e1c2ba9e8d2ff2c3f1584364.jpeg', '99a3f739e1c2ba9e8d2ff2c3f1584364_thumb.jpeg', 'color06', '2020-02-01 11:33:44', '2020-02-01 11:33:44', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(201, '75010240', 'Baylis', 'Smirnoff', 45, '16', '', 45, 'ea63c96ca4b9127f9e883bb1efdf2030.jpeg', 'ea63c96ca4b9127f9e883bb1efdf2030_thumb.jpeg', 'color06', '2020-02-01 11:34:51', '2020-02-01 11:34:51', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(202, '75010241', 'Malibu', 'Smirnoff', 60, '16', '', 60, '673cf0bf57d3c9eab0ea9d9cb2455dc4.jpeg', '673cf0bf57d3c9eab0ea9d9cb2455dc4_thumb.jpeg', 'color06', '2020-02-01 11:35:38', '2020-02-01 11:35:38', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(203, '75010242', 'copa torres 5', 'Promoción', 40, '16', '', 40, 'f90d34f9b20c28bc2f64cd8949fb3af5.jpeg', 'f90d34f9b20c28bc2f64cd8949fb3af5_thumb.jpeg', 'color07', '2020-02-01 11:36:47', '2020-02-01 11:36:47', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(204, '75010243', 'copa torres 10', 'Brandy', 50, '16', '', 50, '37afebd33cd0a4cfcef86c32f7c3cd70.jpeg', '37afebd33cd0a4cfcef86c32f7c3cd70_thumb.jpeg', 'color07', '2020-02-01 11:37:43', '2020-02-01 11:37:43', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(205, '75010244', 'copa azteca', 'Brandy', 40, '16', '', 40, '', '', 'color07', '2020-02-01 11:38:32', '2020-02-01 11:38:32', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(206, '75010245', 'servicio torres 5', 'Brandy', 600, '16', '', 600, '045d5ce9d5dc1dc6eb9b345af31cf931.jpeg', '045d5ce9d5dc1dc6eb9b345af31cf931_thumb.jpeg', 'color07', '2020-02-01 11:39:23', '2020-02-01 11:39:23', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(207, '75010246', 'servicio torres 10', 'Brandy', 750, '16', '', 750, '0b3330718b223fa015a048586684b05d.jpeg', '0b3330718b223fa015a048586684b05d_thumb.jpeg', 'color07', '2020-02-01 11:40:10', '2020-02-01 11:40:10', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(208, '75010247', 'servicio tazteca', 'Brandy', 600, '16', '', 600, '', '', 'color07', '2020-02-01 11:42:17', '2020-02-01 11:42:17', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(209, '75010248', 'Copa etiqueta roja', 'Whisky', 60, '16', '', 60, '49e9864852e7d09b71fcad62105efad0.jpeg', '49e9864852e7d09b71fcad62105efad0_thumb.jpeg', 'color01', '2020-02-01 11:43:26', '2020-02-01 11:43:26', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(210, '75010249', 'Copa William Lawson', 'Whisky', 45, '16', '', 45, '9b460583243d2a0d7004e44be6bcbc90.jpeg', '9b460583243d2a0d7004e44be6bcbc90_thumb.jpeg', 'color01', '2020-02-01 11:44:51', '2020-02-01 11:44:51', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(211, '75010250', 'Copa Buchanan\'s', 'Whisky', 90, '16', '', 90, '89127223bf2f50ed9909012042786ece.jpeg', '89127223bf2f50ed9909012042786ece_thumb.jpeg', 'color01', '2020-02-01 11:45:38', '2020-02-01 11:45:38', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(212, '75010251', 'servicio etiqueta roja', 'Whisky', 800, '16', '', 800, '53266ffd652b3386281a9a924594c415.jpeg', '53266ffd652b3386281a9a924594c415_thumb.jpeg', 'color01', '2020-02-01 11:48:24', '2020-02-01 11:48:24', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(213, '75010252', 'servicio William lawson', 'Whisky', 600, '16', '', 600, '592e2270c239ab36ce05e45e899a7500.jpeg', '592e2270c239ab36ce05e45e899a7500_thumb.jpeg', 'color01', '2020-02-01 11:49:12', '2020-02-01 11:49:11', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(214, '75010253', 'servicio Buchanan\'s', 'Whisky', 1200, '16', '', 1200, '3950bb1bd7c791c132c5c4a22e1054c5.jpeg', '3950bb1bd7c791c132c5c4a22e1054c5_thumb.jpeg', 'color01', '2020-02-01 11:50:09', '2020-02-01 11:50:09', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(215, '75010254', 'Bebida energetica', 'Whisky', 40, '16', '', 40, 'f2273cbe7504f132944cad758e622510.jpeg', 'f2273cbe7504f132944cad758e622510_thumb.jpeg', 'color01', '2020-02-01 11:52:05', '2020-02-01 11:52:05', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(216, '75010255', 'Piña colada', 'Bebidas preparadas', 45, '16', '', 45, '', '', 'color02', '2020-02-01 11:53:44', '2020-02-01 11:53:43', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(217, '75010256', 'Medias con seda', 'Bebidas preparadas', 45, '16', '', 45, '838bf56942eea04e49ac33ca9c1c94c1.jpeg', '838bf56942eea04e49ac33ca9c1c94c1_thumb.jpeg', 'color02', '2020-02-01 11:54:30', '2020-02-01 11:54:30', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(218, '75010257', 'Parrillada personal', 'Parrilladas y cortes', 120, '16', '', 120, '25f36e897bfb98cdc690b11337958a43.jpeg', '25f36e897bfb98cdc690b11337958a43_thumb.jpeg', 'color05', '2020-02-01 11:55:58', '2020-02-01 11:55:58', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(219, '75010258', 'buffet adulto', 'Parrilladas y cortes', 120, '16', '', 120, '667759529cc9b0be7539a1e07c59ee3a.jpeg', '667759529cc9b0be7539a1e07c59ee3a_thumb.jpeg', 'color05', '2020-02-01 11:57:01', '2020-02-01 11:57:01', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(220, '75010259', 'buffet niño', 'Parrilladas y cortes', 80, '16', '', 80, '1ccd8451d4dafa7eb1620a7c816054ba.jpeg', '1ccd8451d4dafa7eb1620a7c816054ba_thumb.jpeg', 'color01', '2020-02-01 11:57:52', '2020-02-01 11:57:52', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(221, '75010260', 'cubeta de cerveza', 'Bebidas', 250, '16', '', 250, '45b8a46d6dcfff720a035bf31cfe71e3.jpeg', '45b8a46d6dcfff720a035bf31cfe71e3_thumb.jpeg', 'color04', '2020-02-01 11:58:45', '2020-02-01 11:58:45', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(222, '75010261', 'six botanero', 'Bebidas', 250, '16', '', 250, '07ae976fdc98c25939e13826dfe2b040.jpeg', '07ae976fdc98c25939e13826dfe2b040_thumb.jpeg', 'color04', '2020-02-01 11:59:49', '2020-02-01 11:59:49', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(223, '75010262', 'provi', 'Bebidas', 40, '16', '', 40, 'e39b2bde6c2af36e86b0ee2991bb4f28.jpeg', 'e39b2bde6c2af36e86b0ee2991bb4f28_thumb.jpeg', 'color04', '2020-02-01 12:00:58', '2020-02-01 12:00:58', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(224, '75010263', 'Gringa', 'Promoción', 20, '16', '', 20, 'd4aa64e0599a3d492843a8b1a58e502e.jpeg', 'd4aa64e0599a3d492843a8b1a58e502e_thumb.jpeg', 'color03', '2020-02-01 12:01:43', '2020-02-01 12:01:43', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(225, '75010264', 'torta', 'Promoción', 20, '16', '', 20, 'c482f765d04275b24e073f8bac2caffb.jpeg', 'c482f765d04275b24e073f8bac2caffb_thumb.jpeg', 'color01', '2020-02-01 12:02:17', '2020-02-01 12:02:17', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(226, '75010265', 'nachos', 'Promoción', 20, '16', '', 20, 'beff29013c74f8eb6e317378043de8c3.jpeg', 'beff29013c74f8eb6e317378043de8c3_thumb.jpeg', 'color03', '2020-02-01 12:04:17', '2020-02-01 12:04:17', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(227, '75010266', 'tacos', 'Promoción', 20, '16', '', 20, '77dfefac5f2c7e77d54f8aa47ad7adf1.jpeg', '77dfefac5f2c7e77d54f8aa47ad7adf1_thumb.jpeg', 'color03', '2020-02-01 12:05:11', '2020-02-01 12:05:11', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(228, '75010267', 'papas a la francesa', 'Parrilladas y cortes', 45, '16', '', 45, 'ccd60b1e358470d26e046a0cd3802596.jpeg', 'ccd60b1e358470d26e046a0cd3802596_thumb.jpeg', 'color05', '2020-02-01 12:06:04', '2020-02-01 12:06:04', 0, 1000, 'Proveedor', '1000000', 0, NULL, ''),
(229, '75010268', 'nachos a la arrachera', 'Parrilladas y cortes', 120, '16', '', 120, 'bd70db29cacf35cf1512db86298b1f1e.jpeg', 'bd70db29cacf35cf1512db86298b1f1e_thumb.jpeg', 'color05', '2020-02-01 12:06:56', '2020-02-01 12:06:56', 0, 1000, 'Proveedor', '1000000', 0, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_purchases`
--

CREATE TABLE `food_purchases` (
  `id` int(11) NOT NULL,
  `ref` varchar(11) NOT NULL,
  `date` date NOT NULL,
  `total` float DEFAULT NULL,
  `attachement` varchar(200) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `note` mediumtext,
  `modified_at` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_purchase_items`
--

CREATE TABLE `food_purchase_items` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qt` int(10) NOT NULL,
  `cost` float NOT NULL,
  `subtot` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_registers`
--

CREATE TABLE `food_registers` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_total` float DEFAULT NULL,
  `cash_sub` float DEFAULT NULL,
  `cc_total` float DEFAULT NULL,
  `cc_sub` float DEFAULT NULL,
  `cheque_total` float DEFAULT NULL,
  `cheque_sub` float DEFAULT NULL,
  `cash_inhand` float DEFAULT NULL,
  `note` text,
  `closed_at` varchar(150) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `waiterscih` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_registers`
--

INSERT INTO `food_registers` (`id`, `date`, `status`, `user_id`, `cash_total`, `cash_sub`, `cc_total`, `cc_sub`, `cheque_total`, `cheque_sub`, `cash_inhand`, `note`, `closed_at`, `closed_by`, `store_id`, `waiterscih`) VALUES
(60, '2019-07-22 19:08:11', 0, 1, 3333.6, 3333.6, 42.2, 42.2, 0, 0, 200, '', '2020-01-14 14:07:15', 1, 1, ''),
(61, '2019-10-07 14:43:17', 0, 1, 0, 0, 0, 0, 0, 0, 2000, '', '2020-01-13 09:55:44', 1, 5, NULL),
(62, '2019-10-07 14:44:37', 0, 1, 0, 0, 0, 0, 0, 0, 2000, '', '2020-01-13 10:04:55', 1, 5, NULL),
(63, '2020-01-13 15:55:52', 0, 1, 0, 0, 0, 0, 0, 0, 200, '', '2020-01-13 10:06:50', 1, 5, NULL),
(64, '2020-01-13 15:57:19', 0, 1, 0, 0, 0, 0, 0, 0, 200, '', '2020-01-13 10:12:01', 1, 5, NULL),
(65, '2020-01-13 16:00:17', 0, 1, 0, 0, 0, 0, 0, 0, 200, '', '2020-01-13 10:21:11', 1, 5, NULL),
(66, '2020-01-13 16:04:17', 0, 1, 0, 0, 0, 0, 0, 0, 200, '', '2020-01-14 14:06:18', 1, 5, NULL),
(67, '2020-01-13 16:05:03', 0, 1, 0, 0, 0, 0, 0, 0, 200, '', '2020-01-14 14:06:58', 1, 5, NULL),
(68, '2020-01-13 16:05:11', 0, 1, 243.1, 243.1, 0, 0, 0, 0, 200, '', '2020-01-14 14:13:06', 1, 5, NULL),
(69, '2020-01-13 16:05:20', 0, 1, 0, 0, 0, 0, 0, 0, 200, '', '2020-01-14 14:20:35', 1, 5, NULL),
(70, '2020-01-13 16:05:40', 0, 1, 0, 0, 0, 0, 0, 0, 200, '', '2020-01-14 14:22:05', 1, 5, NULL),
(71, '2020-01-13 16:07:49', 0, 1, 0, 0, 0, 0, 0, 0, 2000, '', '2020-01-14 14:31:15', 1, 5, NULL),
(72, '2020-01-13 16:20:03', 0, 1, 0, 0, 0, 0, 0, 0, 200, '', '2020-01-14 14:54:50', 1, 5, NULL),
(73, '2020-01-13 16:21:24', 0, 1, 0, 0, 0, 0, 0, 0, 200, '', '2020-01-14 15:14:14', 1, 5, NULL),
(74, '2020-01-14 20:06:25', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1000, NULL, NULL, NULL, 5, NULL),
(75, '2020-01-14 20:07:34', 0, 1, 0, 0, 0, 0, 0, 0, 2000, '', '2020-01-14 14:08:04', 1, 1, NULL),
(76, '2020-01-14 20:08:20', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 300, NULL, NULL, NULL, 5, NULL),
(77, '2020-01-14 20:18:11', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 5, NULL),
(78, '2020-01-14 20:21:02', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 5, NULL),
(79, '2020-01-14 20:21:12', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 5, NULL),
(80, '2020-01-14 20:22:13', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 5, NULL),
(81, '2020-01-14 20:31:24', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 5, NULL),
(82, '2020-01-14 20:45:05', 0, 1, 0, 0, 0, 0, 0, 0, 100, '', '2020-01-14 14:52:08', 1, 1, NULL),
(83, '2020-01-14 20:52:25', 0, 1, 0, 0, 0, 0, 0, 0, 300, '', '2020-01-14 15:14:28', 1, 1, '8,120,9,123,'),
(84, '2020-01-14 20:55:10', 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, 5, ''),
(85, '2020-01-14 21:15:25', 0, 1, 0, 0, 0, 0, 0, 0, 150, '', '2020-01-14 15:16:31', 1, 5, ''),
(86, '2020-01-14 21:37:01', 0, 1, 0, 0, 0, 0, 0, 0, 200, '', '2020-01-14 15:37:34', 1, 5, ''),
(87, '2020-01-14 21:38:00', 0, 1, 0, 0, 0, 0, 0, 0, 100, '', '2020-01-14 15:38:14', 1, 5, ''),
(88, '2020-01-14 21:38:39', 0, 1, 253.1, 253.1, 0, 0, 0, 0, 800, '', '2020-01-16 11:13:46', 19, 5, ''),
(89, '2020-01-16 17:15:32', 0, 19, 411.9, 411.9, 0, 0, 0, 0, 2000, '', '2020-01-16 11:23:15', 19, 5, '10,500,'),
(90, '2020-01-16 17:24:47', 0, 19, 479, 479, 0, 0, 0, 0, 2000, '', '2020-01-16 11:28:36', 19, 5, '10,100,'),
(91, '2020-01-30 20:37:08', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 10000, NULL, NULL, NULL, 5, '10,200,'),
(92, '2020-01-30 20:40:00', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1000, NULL, NULL, NULL, 1, '8,255,9,75,');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_sales`
--

CREATE TABLE `food_sales` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `clientname` varchar(50) NOT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `discount` varchar(10) DEFAULT NULL,
  `subtotal` varchar(15) NOT NULL,
  `total` float NOT NULL,
  `created_at` date NOT NULL,
  `modified_at` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `totalitems` int(20) NOT NULL,
  `paid` varchar(15) DEFAULT NULL,
  `paidmethod` varchar(700) DEFAULT NULL,
  `taxamount` float DEFAULT NULL,
  `discountamount` float DEFAULT NULL,
  `register_id` int(11) DEFAULT NULL,
  `firstpayement` float DEFAULT NULL,
  `waiter_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_sales`
--

INSERT INTO `food_sales` (`id`, `client_id`, `clientname`, `tax`, `discount`, `subtotal`, `total`, `created_at`, `modified_at`, `status`, `created_by`, `totalitems`, `paid`, `paidmethod`, `taxamount`, `discountamount`, `register_id`, `firstpayement`, `waiter_id`) VALUES
(35, 0, 'Cliente sin Registrar', '18%', '', '10.0', 11.8, '2019-07-22', NULL, 0, 'admin 7abides', 1, '11.8', '0', 1.8, 0, 60, 11.8, 0),
(36, 11, 'Jose Torres', '18%', '0.0', '20.0', 23.6, '2019-07-22', NULL, 0, 'admin 7abides', 2, '23.6', '0', 3.6, 0, 60, 23.6, 8),
(37, 0, 'Cliente sin Registrar', '18%', '', '10.0', 11.8, '2019-07-22', NULL, 0, 'admin 7abides', 1, '11.8', '0', 1.8, 0, 60, 11.8, 0),
(38, 11, 'Jose Torres', '18%', '0.0', '10.0', 11.8, '2019-07-22', NULL, 0, 'admin 7abides', 1, '11.8', '0', 1.8, 0, 60, 11.8, 8),
(39, 11, 'Jose Torres', '18%', '0.0', '10.0', 11.8, '2019-07-22', NULL, 0, 'admin 7abides', 1, '11.8', '0', 1.8, 0, 60, 11.8, 8),
(40, 11, 'Jose Torres', '18%', '0.0', '10.0', 11.8, '2019-07-22', NULL, 0, 'admin 7abides', 1, '11.8', '1~4338940622129692~Benavidez Yzquierdo', 1.8, 0, 60, 11.8, 8),
(41, 11, 'Jose Torres', '18%', '0.0', '10.0', 11.8, '2019-07-22', NULL, 0, 'admin 7abides', 1, '11.8', '0', 1.8, 0, 60, 11.8, 8),
(42, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n10.0', 11.8, '2019-09-21', NULL, 0, 'admin 7abides', 1, '11.8', '0', 1.8, 0, 60, 11.8, 0),
(43, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n2549.3', 3008.2, '2019-09-21', NULL, 0, 'admin 7abides', 99, '3008.2', '0', 458.9, 0, 60, 3008.2, 0),
(44, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n13.4', 15.8, '2019-09-21', NULL, 0, 'admin 7abides', 1, '15.8', '0', 2.4, 0, 60, 15.8, 0),
(45, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n13.4', 15.8, '2019-09-24', NULL, 0, 'admin 7abides', 1, '15.8', '0', 2.4, 0, 60, 15.8, 0),
(46, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n77.3', 91.2, '2019-09-24', NULL, 0, 'admin 7abides', 3, '91.2', '0', 13.9, 0, 60, 91.2, 0),
(47, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n25.8', 30.4, '2019-09-24', NULL, 0, 'admin 7abides', 1, '30.4', '0', 4.6, 0, 60, 30.4, 0),
(48, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n25.8', 30.4, '2019-09-24', NULL, 0, 'admin 7abides', 1, '30.4', '1~23434324234234324234~', 4.6, 0, 60, 30.4, 0),
(49, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n13.4', 15.8, '2019-09-24', NULL, 0, 'admin 7abides', 1, '15.8', '0', 2.4, 0, 60, 15.8, 0),
(50, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n25.8', 30.4, '2019-09-24', NULL, 0, 'admin 7abides', 1, '30.4', '0', 4.6, 0, 60, 30.4, 0),
(51, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n13.4', 15.8, '2019-09-24', NULL, 0, 'admin 7abides', 1, '15.8', '0', 2.4, 0, 60, 15.8, 0),
(52, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n13.4', 15.8, '2019-10-10', NULL, 0, 'admin 7abides', 1, '15.8', '0', 2.4, 0, 60, 15.8, 0),
(53, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n206.0', 243.1, '2020-01-14', NULL, 0, 'admin 7abides', 4, '243.1', '0', 37.1, 0, 68, 243.1, 0),
(54, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n143.0', 168.7, '2020-01-15', NULL, 0, 'admin 7abides', 4, '200', '0', 25.7, 0, 88, 168.7, 0),
(55, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n71.5', 84.4, '2020-01-16', NULL, 0, 'beto3 gonzalez', 2, '200', '0', 12.9, 0, 88, 84.4, 0),
(56, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n71.5', 84.4, '2020-01-16', NULL, 0, 'sergio  pozos moran', 2, '200', '0', 12.9, 0, 89, 84.4, 0),
(57, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n174.5', 205.9, '2020-01-16', NULL, 0, 'sergio  pozos moran', 4, '300', '0', 31.4, 0, 89, 205.9, 0),
(58, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n51.5', 60.8, '2020-01-16', NULL, 0, 'beto3 gonzalez', 1, '100', '0', 9.3, 0, 89, 60.8, 0),
(59, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n51.5', 60.8, '2020-01-16', NULL, 0, 'beto3 gonzalez', 1, '60.8', '0', 9.3, 0, 89, 60.8, 10),
(60, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n163.0', 192.3, '2020-01-16', NULL, 0, 'beto3 gonzalez', 5, '500', '0', 29.3, 0, 90, 192.3, 10),
(61, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n243.0', 286.7, '2020-01-16', NULL, 0, 'beto3 gonzalez', 9, '500', '0', 43.7, 0, 90, 286.7, 0),
(62, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n40.0', 47.2, '2020-01-30', NULL, 0, 'admin 7abides', 2, '100', '0', 7.2, 0, 91, 47.2, 0),
(63, 0, 'Cliente sin Registrar', '18%', '', '\n\n\n51.5', 60.8, '2020-01-30', NULL, 0, 'admin 7abides', 1, '100', '0', 9.3, 0, 91, 60.8, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_sale_items`
--

CREATE TABLE `food_sale_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `qt` int(6) NOT NULL,
  `subtotal` varchar(20) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_sale_items`
--

INSERT INTO `food_sale_items` (`id`, `sale_id`, `product_id`, `name`, `price`, `qt`, `subtotal`, `date`) VALUES
(1023, 35, 155, 'Chaufa', 10, 1, '10', '2019-07-22'),
(1024, 36, 155, 'Chaufa', 10, 2, '20', '2019-07-22'),
(1025, 37, 155, 'Chaufa', 10, 1, '10', '2019-07-22'),
(1026, 38, 155, 'Chaufa', 10, 1, '10', '2019-07-22'),
(1027, 39, 155, 'Chaufa', 10, 1, '10', '2019-07-22'),
(1028, 40, 155, 'Chaufa', 10, 1, '10', '2019-07-22'),
(1029, 41, 155, 'Chaufa', 10, 1, '10', '2019-07-22'),
(1030, 42, 155, 'Chaufa', 10, 1, '10', '2019-09-21'),
(1031, 43, 157, 'pulpo', 25.75, 99, '2549.25', '2019-09-21'),
(1032, 44, 156, 'jamon', 13.39, 1, '13.39', '2019-09-21'),
(1033, 45, 156, 'jamon', 13.39, 1, '13.39', '2019-09-24'),
(1034, 46, 157, 'pulpo', 25.75, 3, '77.25', '2019-09-24'),
(1035, 47, 157, 'pulpo', 25.75, 1, '25.75', '2019-09-24'),
(1036, 48, 157, 'pulpo', 25.75, 1, '25.75', '2019-09-24'),
(1037, 49, 156, 'jamon', 13.39, 1, '13.39', '2019-09-24'),
(1038, 50, 157, 'pulpo', 25.75, 1, '25.75', '2019-09-24'),
(1039, 51, 156, 'jamon', 13.39, 1, '13.39', '2019-09-24'),
(1040, 52, 156, 'jamon', 13.39, 1, '13.39', '2019-10-10'),
(1041, 53, 157, 'pulpo', 51.5, 4, '206', '2020-01-14'),
(1042, 54, 157, 'pulpo', 51.5, 2, '103', '2020-01-15'),
(1043, 54, 158, 'salchicha ahumada', 20, 2, '40', '2020-01-15'),
(1044, 55, 157, 'pulpo', 51.5, 1, '51.5', '2020-01-16'),
(1045, 55, 158, 'salchicha ahumada', 20, 1, '20', '2020-01-16'),
(1046, 56, 158, 'salchicha ahumada', 20, 1, '20', '2020-01-16'),
(1047, 56, 157, 'pulpo', 51.5, 1, '51.5', '2020-01-16'),
(1048, 57, 158, 'salchicha ahumada', 20, 1, '20', '2020-01-16'),
(1049, 57, 157, 'pulpo', 51.5, 3, '154.5', '2020-01-16'),
(1050, 58, 157, 'pulpo', 51.5, 1, '51.5', '2020-01-16'),
(1051, 59, 157, 'pulpo', 51.5, 1, '51.5', '2020-01-16'),
(1052, 60, 158, 'salchicha ahumada', 20, 3, '60', '2020-01-16'),
(1053, 60, 157, 'pulpo', 51.5, 2, '103', '2020-01-16'),
(1054, 61, 157, 'pulpo', 51.5, 2, '103', '2020-01-16'),
(1055, 61, 158, 'salchicha ahumada', 20, 7, '140', '2020-01-16'),
(1056, 62, 158, 'salchicha ahumada', 20, 2, '40', '2020-01-30'),
(1057, 63, 157, 'pulpo', 51.5, 1, '51.5', '2020-01-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_settings`
--

CREATE TABLE `food_settings` (
  `id` int(11) NOT NULL,
  `companyname` varchar(100) NOT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `currency` varchar(10) DEFAULT NULL,
  `keyboard` tinyint(1) NOT NULL,
  `receiptheader` text,
  `receiptfooter` text NOT NULL,
  `theme` varchar(20) NOT NULL,
  `discount` varchar(5) DEFAULT NULL,
  `tax` varchar(5) DEFAULT NULL,
  `timezone` varchar(400) DEFAULT NULL,
  `language` varchar(30) DEFAULT NULL,
  `stripe` tinyint(4) DEFAULT NULL,
  `stripe_secret_key` varchar(150) DEFAULT NULL,
  `stripe_publishable_key` varchar(150) DEFAULT NULL,
  `decimals` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_settings`
--

INSERT INTO `food_settings` (`id`, `companyname`, `logo`, `phone`, `currency`, `keyboard`, `receiptheader`, `receiptfooter`, `theme`, `discount`, `tax`, `timezone`, `language`, `stripe`, `stripe_secret_key`, `stripe_publishable_key`, `decimals`) VALUES
(1, 'LOS REYES', 'bab853cc63a4093e3dab1e9e2a6c8b5b.png', '444', 'Pesos', 0, '<ol><li style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\"><span style=\"font-weight: 700;\">\"LOS REYES\"</span></li></ol><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\"><br></p>', '<p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\">Gracias por tu compra.</p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\">Vuelva pronto</p>', 'Light', '', '16', 'America/Mexico_City', 'spanish', 0, '', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_stocks`
--

CREATE TABLE `food_stocks` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `warehouse_id` int(11) DEFAULT NULL,
  `quantity` int(10) DEFAULT NULL,
  `price` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_stocks`
--

INSERT INTO `food_stocks` (`id`, `product_id`, `type`, `store_id`, `warehouse_id`, `quantity`, `price`) VALUES
(67, 160, NULL, 1, NULL, 1000000, 60),
(69, 162, NULL, 1, NULL, 1000000, 70),
(68, 161, NULL, 1, NULL, 1000000, 70),
(66, 159, NULL, 1, NULL, 100000, 60),
(70, 163, NULL, 1, NULL, 1000000, 85),
(71, 164, NULL, 1, NULL, 1000000, 35),
(72, 165, NULL, 1, NULL, 1000000, 35),
(73, 166, NULL, 1, NULL, 1000000, 35),
(74, 167, NULL, 1, NULL, 1000000, 60),
(75, 168, NULL, 1, NULL, 1000000, 60),
(76, 169, NULL, 1, NULL, 1000000, 25),
(77, 170, NULL, 1, NULL, 1000000, 30),
(78, 171, NULL, 1, NULL, 1000000, 30),
(79, 172, NULL, 1, NULL, 1000000, 35),
(80, 173, NULL, 1, NULL, 1000000, 35),
(81, 174, NULL, 1, NULL, 1000000, 35),
(82, 175, NULL, 1, NULL, 1000000, 30),
(83, 176, NULL, 1, NULL, 1000000, 30),
(84, 177, NULL, 1, NULL, 1000000, 70),
(85, 178, NULL, 1, NULL, 1000000, 35),
(86, 179, NULL, 1, NULL, 1000000, 60),
(87, 180, NULL, 1, NULL, 1000000, 200),
(88, 181, NULL, 1, NULL, 1000000, 380),
(89, 182, NULL, 1, NULL, 1000000, 220),
(90, 184, NULL, 1, NULL, 1000000, 250),
(91, 185, NULL, 1, NULL, 1000000, 200),
(92, 186, NULL, 1, NULL, 1000000, 30),
(93, 187, NULL, 1, NULL, 1000000, 15),
(94, 0, NULL, 1, NULL, 1000000, 120),
(95, 192, NULL, 1, NULL, 1000000, 45),
(96, 193, NULL, 1, NULL, 1000000, 40),
(97, 194, NULL, 1, NULL, 1000000, 35),
(98, 195, NULL, 1, NULL, 1000000, 35),
(99, 196, NULL, 1, NULL, 1000000, 600),
(100, 197, NULL, 1, NULL, 1000000, 750),
(101, 198, NULL, 1, NULL, 1000000, 600),
(102, 199, NULL, 1, NULL, 1000000, 45),
(103, 200, NULL, 1, NULL, 1000000, 60),
(104, 201, NULL, 1, NULL, 1000000, 45),
(105, 202, NULL, 1, NULL, 1000000, 60),
(106, 203, NULL, 1, NULL, 1000000, 40),
(107, 205, NULL, 1, NULL, 1000000, 40),
(108, 206, NULL, 1, NULL, 1000000, 600),
(109, 207, NULL, 1, NULL, 1000000, 750),
(110, 208, NULL, 1, NULL, 1000000, 600),
(111, 209, NULL, 1, NULL, 1000000, 60),
(112, 210, NULL, 1, NULL, 1000000, 45),
(113, 211, NULL, 1, NULL, 1000000, 90),
(114, 212, NULL, 1, NULL, 1000000, 800),
(115, 213, NULL, 1, NULL, 1000000, 800),
(116, 214, NULL, 1, NULL, 1000000, 1200),
(117, 215, NULL, 1, NULL, 1000000, 40),
(118, 216, NULL, 1, NULL, 1000000, 45),
(119, 217, NULL, 1, NULL, 1000000, 45),
(120, 218, NULL, 1, NULL, 1000000, 120),
(121, 219, NULL, 1, NULL, 1000000, 120),
(122, 220, NULL, 1, NULL, 1000000, 80),
(123, 221, NULL, 1, NULL, 1000000, 250),
(124, 222, NULL, 1, NULL, 1000000, 250),
(125, 223, NULL, 1, NULL, 1000000, 40),
(126, 224, NULL, 1, NULL, 1000000, 20),
(127, 225, NULL, 1, NULL, 1000000, 20),
(128, 227, NULL, 1, NULL, 1000000, 20),
(129, 228, NULL, 1, NULL, 1000000, 45);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_stores`
--

CREATE TABLE `food_stores` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `footer_text` varchar(400) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_stores`
--

INSERT INTO `food_stores` (`id`, `name`, `email`, `phone`, `adresse`, `footer_text`, `city`, `country`, `created_at`, `status`) VALUES
(1, 'LOS REYES', 'lreyes@gmail.com', '444', 's', 'Regrese pronto', 'San Luis', 'Mexico', '2016-05-10 12:44:33', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_suppliers`
--

CREATE TABLE `food_suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `note` mediumtext,
  `created_at` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_suppliers`
--

INSERT INTO `food_suppliers` (`id`, `name`, `phone`, `email`, `note`, `created_at`) VALUES
(4, 'jaime moreno puentes', '4811164203', 'jaime@moreno.puentes', '', '2019-09-21 11:26:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_tables`
--

CREATE TABLE `food_tables` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `checked` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_tables`
--

INSERT INTO `food_tables` (`id`, `name`, `zone_id`, `status`, `time`, `store_id`, `checked`) VALUES
(52, 'mesa 1', 12, NULL, NULL, 1, NULL),
(53, 'mesa 2', 12, NULL, NULL, 1, NULL),
(54, 'mesa 3', 12, NULL, NULL, 1, NULL),
(55, 'mesa 4', 12, NULL, NULL, 1, NULL),
(56, 'mesa 1', 13, NULL, NULL, 1, NULL),
(57, 'mesa 2', 13, NULL, NULL, 1, NULL),
(58, 'mesa 3', 13, NULL, NULL, 1, NULL),
(50, '1', 11, 1, '14:42', 5, '2020-01-16 11:25:36'),
(51, '2', 11, 0, '', 5, '2020-01-16 11:26:39'),
(59, 'mesa 4', 13, NULL, NULL, 1, NULL),
(60, 'mesa 5', 13, NULL, NULL, 1, NULL),
(61, 'mesa 5', 12, NULL, NULL, 1, NULL),
(62, 'mesa 1', 14, NULL, NULL, 1, NULL),
(63, 'mesa 2', 14, NULL, NULL, 1, NULL),
(64, 'mesa 3', 14, NULL, NULL, 1, NULL),
(65, 'mesa 4', 14, NULL, NULL, 1, NULL),
(66, 'mesa 5', 14, NULL, NULL, 1, NULL),
(67, 'mesa 1', 15, NULL, NULL, 1, NULL),
(68, 'mesa 2', 15, NULL, NULL, 1, NULL),
(69, 'mesa 3', 15, NULL, NULL, 1, NULL),
(70, 'mesa 4', 15, NULL, NULL, 1, NULL),
(71, 'mesa 5', 15, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_users`
--

CREATE TABLE `food_users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `hashed_password` varchar(128) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `role` varchar(20) NOT NULL,
  `last_active` varchar(50) DEFAULT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `created_at` varchar(300) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_users`
--

INSERT INTO `food_users` (`id`, `username`, `firstname`, `lastname`, `hashed_password`, `email`, `role`, `last_active`, `avatar`, `created_at`, `store_id`) VALUES
(1, 'admin', 'admin', '7abides', 'b2a04767e4f7f6208f45a510c1a99af2f9f886bfba6375a3298147960b0552195287016d9795a9274b1a1773a41beb450ece0ed31733fdd1176b1a0d2fd4b698', 'ingbeys@gmail.com', 'admin', '2020-01-16 10:53:09', '03dc77ed4087288cd5fcb32f171bf85e.png', '2019-07-22 13:30:33', 1),
(29, 'cocinero3', 'cocinero3', '', '594cdf67066772c3dfbe82f89819a8a8ef4328bdc58e97f1813b4b7d74dd7186e529d41870a94326e0bd286d97486833b79be2b8774dfbd3a3f7b96117e985f5', '', 'kitchen', NULL, NULL, '2020-02-01 12:17:36', 1),
(28, 'cocinero2', 'cocinero2', '', 'f3b36a5fa73832e111a45b7115f45dea8c8ced5c7ab63d67e3464bc5026baca345eb275eb5cc8e5822b7cb2639de0afc99f01b3db9f4049cf3425f11aa7a1d04', '', 'kitchen', NULL, NULL, '2020-02-01 12:17:12', 1),
(27, 'cocinero1', 'cocinero1', '', 'b400ee4b4599be10ab3da8ea03e551146e0278bf8674814cbe8941222d80e0304d09cb244eb0c0c73daab9bbd3864623e11b2d41c891a734504325c42c2011a1', '', 'kitchen', NULL, NULL, '2020-02-01 12:16:46', 1),
(26, 'mesero4', 'mesero4', '', '08bbf1ca662c766ead9ccb625ba9bacabc780cb6dd9c04fade2020d60e570c658eb408e366ca50b6218704b6ac6f0e22d8b813801f3fa55bd80853a8f0846b18', '', 'waiter', NULL, NULL, '2020-02-01 12:16:07', 1),
(24, 'mesero2', 'mesero2', '', 'e41296ecaa7ceeb97e872ac16738c9b4f389dc75cf2e1b110715e8e8b739aca6567ea851d2f922564abc1ae8178f251d56c7e680306185de888f37c7199a8dc0', '', 'waiter', NULL, NULL, '2020-02-01 12:15:21', 1),
(25, 'mesero3', 'mesero3', '', '6a9e851bb510609dd2c2beb132e165e6b571d202f2ebf1fe052c82d46fdbe03840e93e674ae158086749fcf02b5ee32b249ab478a1a6c7e7087e2df1ba69ca15', '', 'waiter', NULL, NULL, '2020-02-01 12:15:42', 1),
(23, 'mesero1', 'mesero1', 'mesero1', '92f0aa19f96ced54359f15cefc37e67d72808ee56180f6a4cf9a8f598bc7438d94c1a9dd5efd74ceb66a9a06b2a9234b765b6d2eac3fe1bd4f56e38b4629c22d', 'Mesero1@gmail.com', 'waiter', NULL, NULL, '2020-02-01 12:14:51', 1),
(30, 'cocinero4', 'cicinero4', '', '6aa077fd10303e0784fab178ff2c261588ec9aed9c517684c130cf3e689d70b9c0417042ef942b9ad62c61d29306dc80b316ea29c9d77debc0eb974d2d40c6cf', '', 'kitchen', NULL, NULL, '2020-02-01 12:17:58', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_variations`
--

CREATE TABLE `food_variations` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_waiters`
--

CREATE TABLE `food_waiters` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` varchar(150) DEFAULT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_waiters`
--

INSERT INTO `food_waiters` (`id`, `name`, `phone`, `email`, `created_at`, `store_id`) VALUES
(11, 'Mesero 1', '4444', 'm@gmail.com', '2020-02-01 12:11:01', 1),
(12, 'Mesero 2', '444', 'Mesero2@gmail.com', '2020-02-01 12:11:41', 1),
(13, 'Mesero 3', '444', 'Mesero3@gmail.com', '2020-02-01 12:12:30', 1),
(14, 'Mesero 4', '444', 'Mesero4@gmail.com', '2020-02-01 12:12:52', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_warehouses`
--

CREATE TABLE `food_warehouses` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `adresse` varchar(400) DEFAULT NULL,
  `created_at` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_zones`
--

CREATE TABLE `food_zones` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_zones`
--

INSERT INTO `food_zones` (`id`, `store_id`, `name`) VALUES
(12, 1, 'Sección 1'),
(11, 5, 'zona 1'),
(13, 1, 'Sección 2'),
(14, 1, 'Seccion 3'),
(15, 1, 'Seccion 4');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `food_categories`
--
ALTER TABLE `food_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_categorie_expences`
--
ALTER TABLE `food_categorie_expences`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_combo_items`
--
ALTER TABLE `food_combo_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_customers`
--
ALTER TABLE `food_customers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_expences`
--
ALTER TABLE `food_expences`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_holds`
--
ALTER TABLE `food_holds`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_payements`
--
ALTER TABLE `food_payements`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_posales`
--
ALTER TABLE `food_posales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_products`
--
ALTER TABLE `food_products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_purchases`
--
ALTER TABLE `food_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_purchase_items`
--
ALTER TABLE `food_purchase_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_registers`
--
ALTER TABLE `food_registers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_sales`
--
ALTER TABLE `food_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_sale_items`
--
ALTER TABLE `food_sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_settings`
--
ALTER TABLE `food_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_stocks`
--
ALTER TABLE `food_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_stores`
--
ALTER TABLE `food_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_suppliers`
--
ALTER TABLE `food_suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_tables`
--
ALTER TABLE `food_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_users`
--
ALTER TABLE `food_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_waiters`
--
ALTER TABLE `food_waiters`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_warehouses`
--
ALTER TABLE `food_warehouses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `food_zones`
--
ALTER TABLE `food_zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `food_categories`
--
ALTER TABLE `food_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `food_categorie_expences`
--
ALTER TABLE `food_categorie_expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `food_combo_items`
--
ALTER TABLE `food_combo_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `food_customers`
--
ALTER TABLE `food_customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `food_expences`
--
ALTER TABLE `food_expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `food_holds`
--
ALTER TABLE `food_holds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT de la tabla `food_payements`
--
ALTER TABLE `food_payements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `food_posales`
--
ALTER TABLE `food_posales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1587;
--
-- AUTO_INCREMENT de la tabla `food_products`
--
ALTER TABLE `food_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT de la tabla `food_purchases`
--
ALTER TABLE `food_purchases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `food_purchase_items`
--
ALTER TABLE `food_purchase_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `food_registers`
--
ALTER TABLE `food_registers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT de la tabla `food_sales`
--
ALTER TABLE `food_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT de la tabla `food_sale_items`
--
ALTER TABLE `food_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1058;
--
-- AUTO_INCREMENT de la tabla `food_settings`
--
ALTER TABLE `food_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `food_stocks`
--
ALTER TABLE `food_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT de la tabla `food_stores`
--
ALTER TABLE `food_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `food_suppliers`
--
ALTER TABLE `food_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `food_tables`
--
ALTER TABLE `food_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT de la tabla `food_users`
--
ALTER TABLE `food_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `food_waiters`
--
ALTER TABLE `food_waiters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `food_warehouses`
--
ALTER TABLE `food_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `food_zones`
--
ALTER TABLE `food_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
