-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2022 a las 17:54:55
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'Colchones'),
(2, 'Bases'),
(3, 'Almohadas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `composicion` varchar(500) NOT NULL,
  `medidas` varchar(500) NOT NULL,
  `precio_normal` decimal(10,2) NOT NULL,
  `descuento` int(2) NOT NULL,
  `precio_rebajado` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `composicion`, `medidas`, `precio_normal`, `descuento`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(1, 'Colchón Essential Confort\r\n', 'El colchón de muelles Flex® Essential Confort está especialmente indicado para los que buscan un colchón confortable. \r\nEl nucleo de muelles ensacados Pocket Premium no solo te ayudará a lograr el confort deseado si no que además te proporcionará independencia de lechos, ideal para los que duermen en pareja.\r\n', 'Capas interiores de Colchón Essential Confort:\r\n                                                        \r\n    1. Tejido Stretch con Comportamiento Optigrade®\r\n    2. Poliéter Reciclable\r\n    3. Fibras Hipoalergénicas\r\n    4. Textil TNT\r\n    5. Fieltro\r\n    6. Muelle Ensacado Pocket Premium® (15 cm)\r\n    7. Encapsulado\r\n\r\n', 'Medidas:\r\n90x190 Antes:640€ 	Ahora: 255€\r\n135x190 Antes:875€ 	Ahora: 349€\r\n150x190 Antes:1050€ 	Ahora: 420€\r\n\r\n', '640.00', 60, '255.00', 5, 'essential-confort.jpg', 1),
(2, 'Almohada Visco Plata', 'La almohada Visco Plata es ergonómica y ayuda a combatir el estrés y la electricidad estática corporal. Su bloque viscoelástico proporciona la máxima ergonomía, ya que permite mantener la columna vertebral en posición neutra. Al ser sensible a la temperatura corporal, se adapta a la forma de cuello y nuca evitando así dolores posturales logrando un alto nivel de confort en acogida.\r\n\r\nEl tejido con hilo de plata ayuda a mejorar el descanso, gracias a sus propiedades antiestrés además de contar con propiedades antimicrobianas.\r\n\r\nRecomendada para personas que duermen de lado. ', 'Composición:\r\n\r\nFunda exterior: 100% Stretch con hilo de plata.\r\n\r\nFunda interior: 100% Punto poliéster.\r\n\r\nRelleno: Bloque viscoelástico. ', 'Cuidados:\r\nLavable a 30ºC. No usar lejía. No usar suavizante. No usar secadora. Planchado suave. No lavable en seco. Bloque no lavable.', '76.00', 10, '69.40', 10, 'almohada visco plata.jpg', 3),
(3, 'Colchón Nube Visco Junior A', 'Nuestro colchón de muelles ensacados Flex® Nube Junior Visco A está diseñado para ofrecer a los más pequeños de la casa una firmeza progresiva gracias al núcleo de muelles Ensacados Pocket Premium ® Mini, y el máximo confort al combinar una capa viscoelástica con fibras hipoalergénicas en su acolchado. Con este colchón un buen descanso está más que asegurado.\r\n\r\nCapas interiores de Colchón Nube Junior Visco A\r\n\r\n    1. Tejido Stretch\r\n    2. Viscoelástica\r\n    3. Fibras Hipoalergénicas\r\n    4. P', '', '', '630.00', 30, '441.00', 2, 'nube-visco-junior-a.jpg', 1),
(4, 'Colchón Nube Junior B', 'El modelo Flex® Nube Junior B es un colchón de muelles ensacados que se considera el complemento perfecto para camas nido. Este colchón ha sido diseñado para aportar a tus hijos una firmeza progresiva y una gran acogida gracias a su núcleo de muelles ensacados Pocket Premium ® Mini y su acolchado con fibras hipoalergénicas.\r\n\r\nCapas interiores de Colchón Nube Junior B\r\n\r\n    1. Tejido Stretch\r\n    2. Poliéter Reciclable\r\n    3. Fibras Hipoalergénicas\r\n    4. Polieter Reciclable\r\n    5. Textil TN', '', '', '500.00', 30, '350.00', 3, 'nube junio b.jpg', 1),
(5, 'Colchón Ipanema', 'El colchón de muelles Flex® Ipanema incluye un núcleo de muelles ensacado Pocket Premium® que están diseñado para personas que duermen en pareja y que buscan un colchón con firmeza progresiva. Este modelo aporta independencia de lechos y una perfecta adaptación al cuerpo gracias a su núcleo de muelles ensacados Pocket Premium ® y a su acolchado con viscoelástica con gel. Además, cuenta con el Sistema Commodo+® que ayuda a reducir los puntos de presión ejercidos por el cuerpo. Su tejido Stretch i', '', '', '900.00', 50, '450.00', 1, 'ipanema.jpg', 1),
(6, 'Colchón Flex Multi 110', 'Nuestro colchón de muelles Flex® Multi 110 es considerado uno de los modelos más firmes de la Edición Limitada 110 Aniversario, gracias a que incorpora en su interior la exclusiva tecnología de muelles continuos Multielastic®. Gracias a sus rellenos conseguimos reducir los puntos de presión ejercidos por el cuerpo mejorando tu descanso. La confección de este modelo se culmina con un acabado moderno y vanguardista que cuenta con hilo de cobre.\r\n\r\nCapas interiores de Colchón Flex® Multi 110\r\n\r\n   ', '', '', '840.00', 60, '336.00', 3, 'flex-multi-110.jpg', 1),
(7, 'Flex Pocket 110', 'El colchón de muelles Flex® Pocket 110 es un colchón de muelles ensacados Pocket Premium® el cual ofrece una firmeza progresiva e independencia de lechos para aquellos que duermen en pareja, evitando así que se traspase el movimiento de un lecho a otro. Además, aporta un efecto envolvente al incorporar una capa de espuma suave en su acolchado que también mejora la acogida en tumbada inicial. Cuenta con un acabado similar al modelo Flex® Multi 110 moderno y actual con hilo de cobre.\r\n\r\nCapas inte', '', '', '840.00', 60, '226.00', 2, 'flex pocket 110.jpg', 1),
(8, 'Big&Strong', 'El colchón de muelles Flex® Big & Strong está diseñado para personas que buscan un colchón muy firme y que posean un índice de masa corporal superior a 25.\r\n Incorpora un núcleo de muelles continuos Multielástic ®Strong Support con refuerzos en las zonas lumbar y dorsal con dos densidades diferentes logrando así 3 niveles de firmeza diferenciada.\r\nEn su acolchado hemos incluido una capa de viscoelástica junto con una capa de fibra shipoalergénicas para mejorar su confort y acogida en tumbada ini', '', '', '1380.00', 0, '828.00', 5, 'Big&Strong.jpg', 1),
(9, 'Tapiflex', 'Si hay una estrella en nuestro catálogo de bases, ese es nuestro Tapiflex. Su calidad-precio la convierte en una base tapizada referencia en el mercado. Además, su estética actual, gran resistencia y su amplia variedad de colores y acabados hacen de Tapiflex una opción infalible.', '', '', '260.00', 40, '156.00', 3, 'tapiflex.jpg', 2),
(10, 'Somier SomiFlex F5', '¿Buscas un somier clásico?. Con nuestro Somiflex F5 no vas a fallar. Además, si tu espalda anda resentida, tiene refuerzo lumbar con filas de lamas dobles reforzadas junto con reguladores de firmeza individuales. ṡEl resultado?,un somier de alta elasticidad y total adaptabilidad para cualquier colchón Flex.', '', '', '280.00', 40, '168.00', 3, 'somier.jpg', 2),
(11, 'Canape Firmeza', 'Diseño, resistencia y durabilidad. Con nuestro Canapé Firmeza no renuncias a nada. Además, su tejido chenilla, aporta un tacto suave y a la vez resistente, proporcionando un acabado de alta calidad. Disponible en dos colores: Gris y Lino.', '', '', '530.00', 40, '318.00', 3, 'canape firmeza.jpg', 2),
(12, 'Abatible Madera 25', 'Elegancia, resistencia y robustez. El Abatible Madera 25 incorpora madera de gran calidad y es la solución ideal para que tu dormitorio luzca impresionante. Disponible en siete colores: Natural, Blanco, Wengué, Cerezo, Gris, Blanco Veta y Nogal.', '', '', '825.00', 40, '495.00', 6, 'abatible.jpg', 2),
(13, 'Abatible Zapatero', '¿No sabes dónde meter tantos zapatos?, ¿necesitas poner orden?. Tu solución es el Canapé Arcón Abatible Madera 25 con Zapatero, una base elegante en madera de alta calidad compartimentada para tus zapatos y lo que tú quieras. Una perfecta combinación entre funcionalidad y confort. Disponible en cinco colores: Blanco, Natural, Gris, Blanco Veta y Nogal.', '', '', '985.00', 40, '591.00', 2, 'abatible zapatero.jpg', 2),
(14, 'Somier Articulado', 'Con nuestra base articulada Calvin no renuncias a nada. Incluye conteras SBS, lamas inteligentes, recubrimiento decorativo bi-tono y un arquillo en el piecero para evitar el desplazamiento del colchón entre otras cosas. Si vas un paso más allá, esta es la tuya.\r\n', '', '', '1040.00', 40, '624.00', 4, 'articulado.jpg', 2),
(15, 'Almohada Natur', 'La almohada de fibra hueca siliconada reciclada Flex® Natur facilita la circulación de aire y la transpirabilidad de la almohada gracias a su canal de aireación en cada filamento de fibra. La fibra utilizada en esta almohada es 100% reciclada, fabricada a partir de plásticos, creando una fibra de alta calidad, con las mismas características que la fibra virgen.\r\n\r\nGracias a sus propiedades naturales cuenta con una capacidad de aborción de la humedad muy elevada. El bambú ayuda a conseguir un plus de brillo y suavidad al tacto\r\n\r\nRecomendada para personas que duermen de lado.\r\n\r\n\r\n\r\n\r\n\r\n', 'Composición:\r\n\r\nFunda exterior: 50% Algodón, 50% bambú.\r\n\r\nFunda interior: 50% Algodón, 50% poliéster.\r\n\r\nRelleno: 100% Fibra hueca siliconada reciclada.', 'Cuidados:\r\nLavable a 40ºC. No usar lejía. No usar suavizante. Secadora a temperatura suave. No planchar. Lavable en seco. ', '51.00', 30, '35.70', 5, 'almohada natur.jpg', 3),
(16, 'Almohada Thai', 'La almohada Thai cuenta con un relleno exclusivo de microfibra con tacto gel, dotando a la almohada de un efecto plumón muy confortable y con una alta capacidad de recuperación. Su relleno y tejido ayudan a facilitar los movimientos durante la noche.\r\n\r\nEl tejido de microfibra ayuda a lograr una acogida muy suave y placentera. Contarás con una almohada muy cómoda y mullida noche tras noche.\r\n\r\nRecomendada para personas que duermen de lado o boca arriba.\r\n\r\n\r\n\r\n\r\n\r\n', 'Composición:\r\n\r\nFunda: 100% Algodón.\r\n\r\nRelleno: Microfibra con tacto gel.', 'Cuidados:\r\nLavable a 40ºC. No usar lejía. No usar suavizante. Secadora a temperatura suave. No planchar. Lavable en seco', '58.00', 10, '52.20', 6, 'almohada thai.jpg', 3),
(17, 'Almohada Visco Tencel', 'La almohada Visco Tencel es ergonómica y gracias a su tejido Tencel® termorregulador, ayuda a mantener el equilibrio térmico, además, absorbe la humedad evitando cambios de temperatura. Cuenta con un bloque viscoelástico que proporciona la máxima ergonomía, ya que permite mantener la columna vertebral en posición neutra. Al ser un bloque sensible a la temperatura corporal se adapta a la forma de cuello y nuca evitando así dolores posturales.\r\n\r\nEl tejido Tencel® es de origen botánico, natural y con un tacto muy agradable y sedoso. Su composición natural dota a la almohada de una protección natural antibacteriana, siendo un producto ideal para pieles sensibles.\r\n\r\nRecomendada para personas que duermen de lado o boca arriba.\r\n\r\n\r\n\r\n', 'Funda exterior: Stretch 60% poliéster, 40% Tencel®.\r\n\r\nFunda interior: 100% Punto poliéster.\r\n\r\nRelleno: Bloque viscoelástico perforado', 'Cuidados:\r\nLavable a 30ºC. No usar lejía. No usar suavizante. No usar secadora. Planchado suave. No lavable en seco. Bloque no lavable.', '88.00', 5, '83.60', 3, 'almohada visco tencel.jpg', 3),
(18, 'Almohada WBx Airvex', 'La almohada WBx AirVex® es un modelo suave y adaptable gracias al diseño y densidad de su bloque AirVex®. Esta almohada tiene una funda exterior confeccionada con tejido WBx BioCeramics®, el cual ayudará a recuperarte más rápidamente, ya que genera un aumento del flujo sanguíneo y de la vasodilatación local.\r\n\r\nTambién ayudará a cuidarte la piel, potenciando la actividad celular y la creación de colágeno, ayudando así a la regeneración de la piel consiguiendo una mayor flexibilidad y luminosidad. La almohada es hipoalergénica y antibacteriana favoreciendo un entorno higiénico y libre de malos olores.\r\n\r\nRecomendada para personas que duermen de lado o boca arriba. ', 'Composición:\r\n\r\nFunda exterior: 60% Poliéster, 20% poliéster BioCeramics®, 20% algodón BioCeramics®.\r\n\r\nFunda interior: 50% Algodón, 50% poliéster.\r\n\r\nRelleno: Bloque AirVex® ', 'Cuidados:\r\nLavable a 40ºC. No usar lejía. No usar suavizante. No usar secadora. Planchado suave. No lavable en seco. Bloque no lavable. ', '129.00', 20, '103.20', 4, 'almohada wbx airvex.jpg', 3),
(19, 'Almohada Brasilia', 'La almohada de látex Brasilia te proporcionará una suave adaptabilidad y un alto grado de ventilación y circulación de aire para evitar cambios de temperatura a lo largo de la noche. Gracias a su bloque de alta precisión se amolda inmediatamente a la anatomía de tu cuello y nuca aportando un soporte óptimo toda la noche.\r\n\r\nEl látex es considerado uno de los materiales más confortables, ya que aporta una suave adaptabilidad. Además, gracias a su estructura perforada favorece una mejor posición cervical durante el descanso y ofrece una gran comodidad ya que se amolda a la anatomía del cuello y de la nuca.\r\n\r\nRecomendada para personas que duermen de lado.  ', 'Composición:\r\n\r\nFunda exterior: 100% Algodón.\r\n\r\nFunda interior: 50% Algodón, 50% poliéster.\r\n\r\nRelleno: Bloque látex.', 'Cuidados:\r\nLavable a 40ºC. No usar lejía. No usar suavizante. Secadora a temperatura suave. No planchar. No lavable en seco. Bloque lavable', '108.00', 20, '88.00', 4, 'almohada brasilia.jpg', 3),
(20, 'Colchón WBx 300 Visco', 'El colchón de muelles Flex® WBx 300 Visco, está enfocado para mejorar la salud y el rendimiento deportivo, gracias a que incluye nuestro innovador Tejido Stretch BioCeramics® el cual emite ondas infrarrojas FIR que, científicamente comprobado, aportan varios beneficios al cuerpo humano. Es considerado un colchón firme, ya que incorpora un núcleo de muelles continuos Multielástic ® NxT, y a su vez posee acolchados enfocados a mejorar el confort para logar un descanso reparador. ', 'Capas interiores de Colchón WBx 300 Visco\r\n\r\n    1. Tejido Stretch BioCeramics®\r\n    2. Fibras Hipoalergénicas\r\n    3. Viscoelástica con gel\r\n    4. Sistema Commodo+®\r\n    5. Textil TNT\r\n    6. Confort System+®\r\n    7. Fieltro\r\n    8. Muelle Continuo Multielástic® (16 cm)\r\n    9. Encapsulado\r\n\r\n+/- 32 cm\r\nMismas capas en ambos lados del colchón\r\n', '', '1360.00', 30, '952.00', 1, 'wbx-300-visco.jpg', 1),
(21, 'Colchón Bodycare Pocket', 'El colchón de muelles Flex® Bodycare Pocket proporciona una gran independencia de lechos y una firmeza progresiva gracias a su carcasa de muelles ensacados Pocket Premium®. Este colchón cuenta con la innovadora tecnología HeiQ Viroblock incorporada en el tejido. Esta tecnología consiste en un tratamiento con un biocida a base de sal de plata que protege de los microbios y gérmenes, creando un ambiente limpio e hipoalergénico. ', 'Capas interiores de Colchón Bodycare Pocket\r\n\r\n    1. Tejido Drapeado Stretch con Tecnología HEIQ VIROBLOCK\r\n    2. Fibras Hipoalergénicas\r\n    3. Sistema Super Soft Sense (SSS)\r\n    4. Sistema Super Soft Sense (SSS)\r\n    5. Textil TNT\r\n    6. Confort System +®\r\n    7. Muelle Ensacado Pocket Premium® (15 cm)\r\n    8. Encapsulado\r\n\r\n+/- 32 cm\r\nMismas capas en ambos lados del colchón\r\n', '', '1070.00', 60, '428.00', 3, '20221124150658.jpg', 1),
(22, 'Colchón Borneo', 'El colchón de muelles Flex® Borneo es la joya de la corona. Un colchón ideal para aquellos que busquen independencia de lechos y un alto grado de confort. Combinamos un bloque de muelles ensacados Pocket Premium ® PRO y un topper de 4 cm de viscoelástica con gel, en su cara superior, para lograr la máxima adaptabilidad del colchón a tus contornos del cuerpo. Su tapicería de tejido damasco, fusiona elasticidad y resistencia gracias a su alta concentración en viscosa. Las fibras naturales que componen este tejido utilizan hilados celulósicos altamente transpirables y con buena absorción de la humedad. Además, aportan un brillo natural junto con un tacto suave y sedoso haciendo el colchón aún más lujoso. ', 'Capas interiores de Colchón Borneo/b>\r\n\r\n    1. Tejido Woodtex\r\n    2. Fibras Hipoalergénicas\r\n    3. Bloque Viscoelástico con Gel (3 cm)\r\n    4. Sistema Commodo +®\r\n    5. Sistema Commodo +®\r\n    6. Textil TNT\r\n    7. Confort System +®\r\n    8. Muelle Ensacado Pocket Premium® Pro (18 cm)\r\n    9. Encapsulado\r\n\r\n+/- 34 cm\r\nColchón de una sola cara\r\n', '', '1775.00', 60, '710.00', 2, 'borneo.jpg', 1),
(23, 'Colchón WBx 500 Visco', 'El colchón de muelles Flex® WBx 500 gracias a su tapicería Wellness BioCeramics (r), te ayuda a recuperarte y cuidarte durante las horas de sueño. Su núcleo formado por muelles ensacados Pocket Premium(r) Pro, está indicado para aquellos que buscan una firmeza progresiva superior. Además, su acolchado te proporcionará una sensación de acogida suave y adaptable y una gran sensación de confort, gracias a la combinación de viscoelástica con gel y fibras hipoalergénicas.', 'Capas interiores de Colchón WBx 500 Visco\r\n\r\n    1. Tejido Stretch BioCeramics®\r\n    2. Fibras Hipoalergénicas\r\n    3. Viscoelástica con gel\r\n    4. Sistema Commodo+®\r\n    5. Textil TNT\r\n    6. Confort System+®\r\n    7. Muelle Ensacado Pocket Premium® Pro(18 cm)\r\n    8. Encapsulado\r\n\r\n+/- 33 cm\r\nMismas capas en ambos lados del colchón\r\n', '', '1360.00', 30, '952.00', 2, 'wbx-500-visco.jpg', 1),
(24, 'Colchón WBx Nube Visco', 'El colchón de muelles Flex® WBx Nube Visco está indicado aquellos que buscan un sueño reparador. Esto es posible gracias al innovador tejido Wellness Bioceramics el cual transforma tu energía en descanso. Se compone de un núcleo formado por muelles ensacados Pocket Premium (r) y un acolchado con viscoelástica con gel y fibras hipoalergénicas, para lograr un alto grado de confort. ', 'Capas interiores de Colchón WBx Nube Visco\r\n\r\n    1. Tejido Stretch BioCeramics®\r\n    2. Fibras Hipoalergénicas\r\n    3. Viscoelástica\r\n    4. Sistema Commodo+®\r\n    5. Textil TNT\r\n    6. Confort System+®\r\n    7. Muelle Ensacado Pocket Premium® (15 cm)\r\n    8. Encapsulado\r\n\r\n+/- 31 cm\r\nMismas capas en ambos lados del colchón\r\n', '', '1000.00', 30, '700.00', 2, 'wbx-nube-visco.jpg', 1),
(25, 'Colchón Copacabana', 'El colchón de muelles Flex® Copacabana está indicado para los que buscan un colchón de muelles continuos Multielastic® con un nivel de firmeza alto y una sensación de acogida progresiva en tumbada inicial gracias a su acolchado con fibras hipoalergénicas. Su tejido Stretch, incorpora el exclusivo tratamiento Fresh Touch, que está diseñado para aportar un confort térmico sensacional, manteniendo una correcta temperatura corporal mientras descansamos.', 'Capas interiores de Colchón Copacabana\r\n\r\n    1. Tejido Stretch con Tratamiento Fresh Touch\r\n    2. Fibras Hipoalergénicas\r\n    3. Sistema Commodo +®\r\n    4. Textil TNT\r\n    5. Confort System®\r\n    6. Fieltro\r\n    7. Muelle Continuo Multielástic® (16 cm)\r\n    8. Encapsulado\r\n\r\n+/- 29 cm\r\nMismas capas en ambos lados del colchón\r\n', '', '775.00', 45, '426.25', 3, 'copacabana.jpg', 1),
(26, 'Colchón Essential Firm', 'El colchón de muelles Flex® Essential Firm es la solución perfecta para aquellos que busquen un colchon firme al mejor precio. Incluye un núcleo de muelles continuos Multielástic® para lograr ese punto de firmeza que, junto con el acolchado con fibras hipoalergénicas, hacen que este modelo sea un colchón altamente transpirable. ', 'Capas interiores de Colchón Essential Firm\r\n\r\n    1. Tejido Stretch con Comportamiento Optigrade®\r\n    2. Poliéter Reciclable\r\n    3. Fibras Hipoalergénicas\r\n    4. Textil TNT\r\n    5. Fieltro\r\n    6. Muelle Continuo Multielastic® (16 cm)\r\n', '', '550.00', 60, '220.00', 3, 'essential-firm.jpg', 1),
(27, 'Colchón Iguazú Visco', 'El colchón de muelles Flex® Iguazú Visco es un colchón de muelles continuos Multielastic®, ideal para aquellos que buscan un colchón firme de muelles con una gran adaptabilidad en tumbada inicial y una mayor sensación de confort térmico gracias a su acolchado con viscoelástica con gel. Cuenta con Sistema Commodo® que es un material perfilado de alta densidad que mejora la adaptación del cuerpo y favorece la transpiración de los rellenos. Además, la innovadora tecnología Fresh Touch incorporada en el tejido, reduce la sudoración y humedad en la piel eliminando las sensaciones frías\r\n', '\r\n+/- 28,5 cm\r\nMismas capas en ambos lados del colchón\r\n', '', '806.00', 50, '403.00', 1, 'iguazu-visco.jpg', 1),
(28, 'Colchón Mahe Visco', 'El colchón de muelles Flex® Skin+ Mahe Visco es un colchón firme de muelles continuos Multielastic® NxT, acolchado con viscoelástica con gel para una mayor adaptabilidad y confort. El colchón Mahe Visco cuenta con el tratamiento Skin+, basado en microcápsulas con carotenoides que aplican propiedades altamente beneficiosas para la piel, por ejemplo, actuando como antioxidante previniendo el envejecimiento celular y aportando iluminación a tu piel ya que mejorar la humedad y suavidad de la misma. ', 'Capas interiores de Colchón Mahe Visco\r\n\r\n    1. Tejido Damasco con Tratamiento Skin +\r\n    2. Fibras Hipoalergénicas\r\n    3. Viscoelástica con Gel\r\n    4. Sistema Commodo +®\r\n    5. Textil TNT\r\n    6. Confort System+®\r\n    7. Fieltro\r\n    8. Muelle Continuo Multielástic® NxT (16 cm)\r\n    9. Encapsulado\r\n\r\n+/- 31 cm\r\nMismas capas en ambos lados del colchón\r\n', '', '1375.00', 60, '550.00', 3, 'mahe-visco.jpg', 1),
(29, 'Colchón Palace Visco', 'El colchón de muelles Flex® Palace Visco está diseñado para personas que buscan un colchón de firmeza alta con un plus de confort. Incorpora un núcleo de muelles continuos Multielástic Nxt ® que, gracias a su tratamiento térmico extra, hace que sea más resistente y duradero. Su acolchado se compone de viscoelástica con gel y fibras hipoalergénicas para lograr una acogida suave y adaptable al mismo tiempo', 'Capas interiores de Colchón Palace Visco\r\n\r\n    1. Tejido Stretch\r\n    2. Fibras Hipoalergénicas\r\n    3. Viscoelástica con gel\r\n    4. Sistema Commodo+®\r\n    5. Textil TNT\r\n    6. Confort System+®\r\n    7. Fieltro\r\n    8. Muelle Continuo Multielástic® NxT (16 cm)\r\n    9. Encapsulado\r\n\r\n+/- 32 cm\r\nMismas capas en ambos lados del colchón\r\n', '', '1310.00', 60, '524.00', 4, 'palace-visco.jpg', 1),
(30, 'Colchón Eternity', 'Nuestro colchón de muelles Flex® Eternity es la mayor obra de arte de la colección. Diseñado para ofrecer un descanso de calidad y único. Un colchón con toques clásicos a la vez que elegantes, presentes tanto en su tapicería como en el interior, que combinan la belleza con el lujo en el descanso. Sus muelles ensacados Pocket Premium® Pro, ofrecen una firmeza media- alta, en función de la presión recibida, adaptándose en cada movimiento a la forma del cuerpo. ', 'Capas interiores de Colchón Eternity\r\n\r\n    1. Tejido Damasco con Viscosa\r\n    2. Sistema SSS(Super Soft Sense)\r\n    3. Fibras Hipoalergénicas)\r\n    4. Seda\r\n    5. Sistema SSS(Super Soft Sense)\r\n    6. Textil TNT\r\n    7. Látex Talalay (3cm)\r\n    8. Bloque HR (4 cm)\r\n    8. Coco\r\n    9. Muelle Ensacado Pocket Premium® Pro (18 cm)\r\n    10. Encapsulado\r\n    11. Confort System®\r\n\r\n+/- 34 cm\r\nColchón de una sola cara\r\n', '', '2800.00', 30, '1960.00', 1, 'eternity.jpg', 1),
(31, 'Colchón Habana', 'El colchón de muelles Flex® Habana está indicado para personas que buscan un colchón con una firmeza alta y progresiva gracias a la combinación de su núcleo de muelles continuos Multielástic® y su acolchado con fibras hipoalergénicas. Incorpora el Sistema Commodo® que mejora la transpirabilidad de los rellenos además de la adaptación de estos al cuerpo.', 'Capas interiores de Colchón Habana\r\n\r\n    1. Tejido Stretch\r\n    2. Fibras Hipoalergénicas\r\n    3. Sistema Commodo®\r\n    4. Poliéter Reciclable\r\n    5. Textil TNT\r\n    6. Confort System ® +\r\n    7. Fieltro\r\n    8. Muelle Continuo Multielástic® (16 cm)\r\n    9. Encapsulado\r\n\r\n+/- 29 cm\r\nMismas capas en ambos lados del colchón\r\n', '', '650.00', 35, '422.35', 5, 'habana.jpg', 1),
(32, 'Colchón Habana Pocket', 'Nuestro colchón de muelles Flex® Habana Pocket está indicado para personas que buscan un colchón con una firmeza progresiva gracias a la combinación de su núcleo de muelles ensacados con su acolchado con fibras hipoalergénicas. Incorpora el Sistema Commodo® que mejora la transpirabilidad de los rellenos además de la adaptación de estos al cuerpo.', 'Capas interiores de Colchón Habana Pocket\r\n\r\n    1. Tejido Stretch\r\n    2. Fibras Hipoalergénicas\r\n    3. Sistema Commodo®\r\n    4. Poliéter Reciclable\r\n    5. Textil TNT\r\n    6. Confort System ® +\r\n    7. Muelle Ensacado Pocket Premium® (15 cm)\r\n    8. Encapsulado\r\n\r\n+/- 25 cm\r\nMismas capas en ambos lados del colchón', '', '760.00', 35, '500.50', 2, 'habana-pocket.jpg', 1),
(33, 'Colchón Junior Visco A', 'El colchón de muelles Flex® Junior Visco A está indicado para el buen desarrollo de los más pequeños en todas sus etapas de crecimiento gracias a la adaptabilidad que aporta su núcleo de muelles continuos Multielástic®. Su acogida es suave y confortable gracias a la combinación, en su acolchado, de viscoelástica y fibras hipoalergénicas. ', 'Capas interiores de Colchón Junior Visco A\r\n\r\n    1. Tejido Stretch\r\n    2. Viscoelástica\r\n    3. Fibras Hipoalergénicas\r\n    4. Polieter Reciclable\r\n    5. Textil TNT\r\n    6. Sistema Commodo+®\r\n    7. Fieltro\r\n    8. Muelle Continuo Multielástic® (16 cm)\r\n', '', '520.00', 30, '364.00', 2, 'nube-visco-junior-a.jpg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`) VALUES
(1, 'admin', 'Flex Expert Sagunto', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'Flex', 'Flex Expert Sagunto', 'flex');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
