-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 03:59 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comidaccesible`
--

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `IdCategoria` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Descripcion` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`IdCategoria`, `Nombre`, `Descripcion`) VALUES
(1, '30 minutos o menos', '¿Tienes poco tiempo? No renuncies a comer algo rico y sano. Encuentra aquí recetas de cocina rápidas, cenas rápidas, postres fáciles… y en general, recetas fáciles y sanas para cualquier momento del día, especialmente para la cena.'),
(2, 'Arroces', 'Lo sabes, ¡te encanta el arroz! Encuentra aquí nuestra mejor selección de recetas con arroz: combinaciones de arroz con pollo, arroz con verduras, arroz con legumbres, recetas de risotto, incluso nuestra receta para el perfecto arroz blanco.');

-- --------------------------------------------------------

--
-- Table structure for table `ingrediente`
--

CREATE TABLE `ingrediente` (
  `IdIngrediente` int(11) NOT NULL,
  `Nombre` int(100) NOT NULL,
  `Foto` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paso`
--

CREATE TABLE `paso` (
  `IdPaso` int(11) NOT NULL,
  `Descripcion` mediumtext NOT NULL,
  `IdPlato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `plato`
--

CREATE TABLE `plato` (
  `IdPlato` int(11) NOT NULL,
  `NombrePlato` varchar(50) NOT NULL,
  `Descripción` text NOT NULL,
  `Duracion` int(11) NOT NULL,
  `Dificultad` varchar(20) NOT NULL,
  `Foto` varchar(600) NOT NULL,
  `IdCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plato`
--

INSERT INTO `plato` (`IdPlato`, `NombrePlato`, `Descripción`, `Duracion`, `Dificultad`, `Foto`, `IdCategoria`) VALUES
(1, 'Ceviche', 'El ceviche es el plato estrella de la gastronomía peruana. ... Se trata de un plato de mariscos que se presenta con diversos acompañamientos.', 40, 'intermedio', 'receta/ceviche-de-pescado_700x465-700x465.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `platoingrediente`
--

CREATE TABLE `platoingrediente` (
  `Cantidad` double NOT NULL,
  `IdPlato` int(11) NOT NULL,
  `IdIngrediente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`IdCategoria`);

--
-- Indexes for table `ingrediente`
--
ALTER TABLE `ingrediente`
  ADD PRIMARY KEY (`IdIngrediente`);

--
-- Indexes for table `paso`
--
ALTER TABLE `paso`
  ADD PRIMARY KEY (`IdPaso`);

--
-- Indexes for table `plato`
--
ALTER TABLE `plato`
  ADD PRIMARY KEY (`IdPlato`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `IdCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ingrediente`
--
ALTER TABLE `ingrediente`
  MODIFY `IdIngrediente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paso`
--
ALTER TABLE `paso`
  MODIFY `IdPaso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plato`
--
ALTER TABLE `plato`
  MODIFY `IdPlato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
