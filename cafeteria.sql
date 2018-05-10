-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-05-2018 a las 00:38:54
-- Versión del servidor: 5.6.38
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de datos: `cafeteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `idTipoUsuario` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `idTipoUsuario`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 3, 'Emiliano', 'emiliano@correo.com', '$2y$10$kxEHxdfcAxboShoKaMfsCuRq0pK/Wrc9WdQ4buPlL4et1KAD.iBDu', '6ivCLq90rmNLUESxUvIUS25RPciBAxrcxRJgualFB5H3jkylL1K9d3rEhZZw', '2018-03-01 06:36:30', '2018-05-10 06:42:41'),
(2, 1, NULL, 'nuevo@correo.com', '$2y$10$YU.Sa/wc7krfkfbrxA2uw.jn7WQDs4oZ0BSjWGhsJs/ut54wg/ANa', 'JfPMNoAGuhlEeetjHwi2rPlgHg9rmspNZiLCEPf8Br2dzEMO9i95RXTZyNzA', '2018-04-19 07:07:23', '2018-04-19 07:07:58'),
(3, 2, NULL, 'cliente@correo.com', '$2y$10$ZLF1Bt6/Wy.iGS4r2/EwQe0FF2LBTbT.oJX6RYq1gmrgqC0U4s56a', 'MNvCuACtjsCUq6c1TvEGukQAlQTawQyqjb92spQoJqr3nZ3mP2Uno9pzLtmF', '2018-04-19 07:15:10', '2018-05-10 06:43:17'),
(4, 2, NULL, 'usuario@correo.com', '$2y$10$MfhFvPRe76xiPOCLx9Hbh.jwaOU2rWBWhsoThD1YJLl9dYL/NVy3S', NULL, '2018-04-19 07:46:48', '2018-04-19 07:46:48'),
(5, 3, NULL, 'eduardoclz@hotmail.com', '$2y$10$dNmNzcPdf8I/cLMVV2VSO.50jJhTd.2LQRBv6PW/by.n6PA9fLi6K', NULL, '2018-05-10 06:13:28', '2018-05-10 06:13:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `idTipoUsuario` (`idTipoUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`idTipoUsuario`) REFERENCES `tipoUsuario` (`id`);