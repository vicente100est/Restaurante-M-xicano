-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 22-07-2019 a las 21:49:17
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `abidesco_sales`
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
(22, 'Segundos', '2019-07-22 14:09:18');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_categorie_expences`
--

CREATE TABLE `food_categorie_expences` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `note` text DEFAULT NULL,
  `amount` float NOT NULL,
  `attachment` varchar(200) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
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
(271, 1, '16:26', 60, 44, 8, 11);

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
  `options` text DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `description` mediumtext DEFAULT NULL,
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
  `options` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_products`
--

INSERT INTO `food_products` (`id`, `code`, `name`, `category`, `cost`, `tax`, `description`, `price`, `photo`, `photothumb`, `color`, `created_at`, `modified_at`, `type`, `alertqt`, `supplier`, `unit`, `taxmethod`, `h_stores`, `options`) VALUES
(155, '54232', 'Chaufa', 'Segundos', 0, '', '', 10, '1d3e279447aad36c3986ed86e2f25a76.jpg', '1d3e279447aad36c3986ed86e2f25a76_thumb.jpg', 'color03', '2019-07-22 14:10:07', '2019-07-22 14:10:07', 0, 5, 'Proveedor', '1', 0, NULL, '');

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
  `note` mediumtext DEFAULT NULL,
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
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cash_total` float DEFAULT NULL,
  `cash_sub` float DEFAULT NULL,
  `cc_total` float DEFAULT NULL,
  `cc_sub` float DEFAULT NULL,
  `cheque_total` float DEFAULT NULL,
  `cheque_sub` float DEFAULT NULL,
  `cash_inhand` float DEFAULT NULL,
  `note` text DEFAULT NULL,
  `closed_at` varchar(150) DEFAULT NULL,
  `closed_by` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL,
  `waiterscih` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `food_registers`
--

INSERT INTO `food_registers` (`id`, `date`, `status`, `user_id`, `cash_total`, `cash_sub`, `cc_total`, `cc_sub`, `cheque_total`, `cheque_sub`, `cash_inhand`, `note`, `closed_at`, `closed_by`, `store_id`, `waiterscih`) VALUES
(60, '2019-07-22 19:08:11', 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, 200, NULL, NULL, NULL, 1, '');

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
(41, 11, 'Jose Torres', '18%', '0.0', '10.0', 11.8, '2019-07-22', NULL, 0, 'admin 7abides', 1, '11.8', '0', 1.8, 0, 60, 11.8, 8);

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
(1029, 41, 155, 'Chaufa', 10, 1, '10', '2019-07-22');

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
  `receiptheader` text DEFAULT NULL,
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
(1, '7abides', 'bab853cc63a4093e3dab1e9e2a6c8b5b.png', '982714246', 'PEN', 0, '<p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\"><img style=\"width: 50%;\" src=\"data:image/png;base64,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\" data-filename=\"ticlogo.png\"><br></p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\"><span style=\"font-weight: 700;\">\"Food\"</span></p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\"><span style=\"font-size: 14px;\"></span></p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\"><span style=\"font-size: 12px;\">Avenida Estación Central</span></p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\"><span style=\"font-size: 12px;\">Teléfono: 965847591</span></p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\">Lima - Perú</p>', '<p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\">Gracias por tu compra.</p><p style=\"font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; font-size: 14px; font-family: Raleway-Medium;\">Vuelva pronto</p>', 'Light', '', '18%', 'America/Lima', 'spanish', 0, '', '', 1);

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
(60, 155, NULL, 1, NULL, 192, 10);

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
(1, 'Melchorita', 'melchorita@gmail.com', '+98574245', 'Villa Unión', 'Saludables por naturaleza', 'Lima', 'Perú', '2016-05-10 12:44:33', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `food_suppliers`
--

CREATE TABLE `food_suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `note` mediumtext DEFAULT NULL,
  `created_at` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
(44, 'Meza 01', 9, 1, '15:06', 1, '2019-07-22 14:20:18'),
(45, 'Meza 02', 9, NULL, NULL, 1, NULL),
(46, 'Meza 03', 9, NULL, NULL, 1, NULL),
(47, 'Meza 10', 10, NULL, NULL, 1, NULL),
(48, 'Meza 11', 10, NULL, NULL, 1, NULL),
(49, 'Meza 13', 10, 0, '', 1, NULL);

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
(1, 'admin', 'admin', '7abides', 'b2a04767e4f7f6208f45a510c1a99af2f9f886bfba6375a3298147960b0552195287016d9795a9274b1a1773a41beb450ece0ed31733fdd1176b1a0d2fd4b698', 'ingbeys@gmail.com', 'admin', '2019-07-22 16:26:15', '03dc77ed4087288cd5fcb32f171bf85e.png', '2019-07-22 13:30:33', 1),
(16, 'carlos', 'Carlos ', 'Arce', '3d62765256c7da6b60aea80a2f87e7e0d8eecfe4f9809e943450f67580cc0c50cf5da8cf144876609a69c4fa16b4324fb321678347d9e10ba16ee0d259873eeb', 'carlos@gmail.com', 'waiter', '2019-07-22 15:36:23', 'ca478dfeecec69145bfbaff6300f14bc.png', '2019-07-22 14:22:39', 1),
(17, 'juan', 'Juanto', 'Aldo', '46d0180338e7c3b41e737047023a32b97322bf8220c53de44d5087dfd1b60f872c8bf3dd3342810e2c4e2eb5624849b2de483f7773b36a0edbec43b2470734e5', 'juan@gmail.com', 'kitchen', NULL, 'd2670623e3d00d6e4c0320d581d4b182.jpg', '2019-07-22 15:57:10', 1),
(18, 'ana', 'Ana', 'Soledad', '7a0e35b8315a1b3e35bea2bd080d31adc1c6ca93662c5992994207d99ffe996a6566e59b40c029493331f98fed9bd7103ab9249f275575f07f39439d1f454d2c', 'ana@gmail.com', 'sales', NULL, '66aece98fb318ee94c85116ad250eab9.png', '2019-07-22 15:57:56', 1);

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
(8, 'Carlos Arce', '954781526', 'carlos@gmail.com', '2019-07-22 14:21:28', 1);

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
(9, 1, 'Modulo A'),
(10, 1, 'Modulo B');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `food_categorie_expences`
--
ALTER TABLE `food_categorie_expences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT de la tabla `food_payements`
--
ALTER TABLE `food_payements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `food_posales`
--
ALTER TABLE `food_posales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1550;

--
-- AUTO_INCREMENT de la tabla `food_products`
--
ALTER TABLE `food_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `food_sales`
--
ALTER TABLE `food_sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `food_sale_items`
--
ALTER TABLE `food_sale_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030;

--
-- AUTO_INCREMENT de la tabla `food_settings`
--
ALTER TABLE `food_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `food_stocks`
--
ALTER TABLE `food_stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `food_stores`
--
ALTER TABLE `food_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `food_suppliers`
--
ALTER TABLE `food_suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `food_tables`
--
ALTER TABLE `food_tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `food_users`
--
ALTER TABLE `food_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `food_waiters`
--
ALTER TABLE `food_waiters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `food_warehouses`
--
ALTER TABLE `food_warehouses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `food_zones`
--
ALTER TABLE `food_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
