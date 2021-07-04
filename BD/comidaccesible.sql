-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 10:29 AM
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
(2, 'Arroces', 'Lo sabes, ¡te encanta el arroz! Encuentra aquí nuestra mejor selección de recetas con arroz: combinaciones de arroz con pollo, arroz con verduras, arroz con legumbres, recetas de risotto, incluso nuestra receta para el perfecto arroz blanco.'),
(3, 'Cocina Asiática', 'Si te gusta la comida china y los sabores asiáticos, aquí tienes las mejores ideas para disfrutar de la mejor cocina asiática sin salir de casa: arroz tres delicias, rollitos primavera, pollo agridulce, pollo al curry… ¿te atreves a experimentar?'),
(4, 'Batidos y Refrescos', 'Encuentra originales y deliciosas combinaciones para crear tus propios batidos de frutas, smoothies, zumos de frutas, aguas saborizadas y refrescos caseros.'),
(5, 'Carnes', 'Para el día que te apetece comer carne, ¡a comerla de la mejor manera! Encuentra aquí nuestra selección de recetas con carne picada, recetas de carne guisada, recetas de solomillo de cerdo, recetas de lomo de cerdo… ¡harán las delicias de los más carnívoros!'),
(6, 'Recetas de Desayunos', 'Para algunos es la comida más importante del día. ¿Pero por qué no hacerla también la más divertida? Encuentra las mejores recetas de desayunos saludables, desayunos rápidos, desayunos para el fin de semana… ¡a cual más rico!'),
(7, 'Ensaladas y Bowls', 'Recetas de ensaladas ricas, originales y sencillas para todos los gustos y momentos del año: ensaladas de verano, ensaladas templadas, ensaladas de pasta, ensaladas de arroz, ensaladas con quinua, ensaladas con legumbres, ensaladas con frutas… ¿Se puede pedir más?'),
(8, 'Recetas Fitness', 'Sabes bien que “el 70% del resultado depende de tu alimentación”. Así que, ¡sácale el máximo provecho a tu esfuerzo! Encuentra aquí recetas fitness para antes de entrenar, recetas fitness para después de entrenar, recetas fitness para hidratarte... descubre en este apartado las recetas fitness que necesitas.\r\n'),
(9, 'Guisos', 'Los guisos son una de las formas más antiguas de cocinar los alimentos, ya que permiten la armónica transformación y fusión de todos sus sabores. Encuentra aquí las mejores recetas de guisos de verduras, guisos de legumbres, pollo guisado… ¡prepara la barra de pan para rebañar!'),
(10, 'Hamburguesas', 'Las hamburguesas están de moda. ¡Y es que están buenísimas! Ahora las hay de todos los sabores y colores: hamburguesas vegetales, hamburguesas de pescado, hamburguesas gourmet… ¡Aprende a cocinar tu hamburguesa casera favorita y disfruta del planazo!'),
(11, 'Recetas de Legumbres', 'Las legumbres son el alimento proteico vegetal por excelencia. Además de ser muy nutritivas, ¡son muy ricas! Si quieres ir más allá de las clásicas recetas de garbanzos y lentejas estofadas, esta es tu selección favorita: originales recetas de hummus, ensaladas de garbanzos, garbanzos con verduras, salteados con lentejas, alubias rojas, alubias blancas, guisantes… ¡en combinaciones que te conquistarán!'),
(12, 'Cocina Mexicana', 'La cocina mexicana es amplísima y simplemente deliciosa. Te traemos aquí una modesta selección de los platos más divertidos y sencillos para hacer en casa. ¿Te atreves con unos tacos? ¡Órale!'),
(13, 'Recetas con Pasta', 'La pasta es un alimento muy socorrido, pero sabes bien que es fácil caer en lo mismo de siempre. Encuentra aquí la inspiración para combinar tu pasta de mil maneras: recetas con pasta y verduras, originales salsas para recetas de espaguetis, ensaladas de pasta variadas… ¡si repites, es porque quieres!'),
(14, 'Recetas de Pizza', 'Encuentra inspiración para tus pizzas caseras y convierte esta “comida rápida” en su versión más sana y deliciosa. Diviértete experimentando con nuevos ingredientes y combinaciones, ¡y olvídate de las pizzas congeladas y precocinadas!'),
(15, 'Recetas de Pescados y Mariscos', '¿Quieres incluir más pescado en tu dieta? Encuentra aquí ricas y fáciles elaboraciones: merluza al horno, dorada a la sal, salmón al horno, deliciosas recetas con atún… ¡lánzate a la mar!'),
(16, 'Recetas con Pollo', 'El pollo es una de las proteínas más recurridas por su versatilidad. Aprovecha nuestra selección para no aburrirte nunca más de tus recetas con pollo: originales recetas con pechugas de pollo, recetas de pollo al horno, recetas de pollo en salsa, recetas de pollo guisado… ¡Todas en su versión más fácil y saludable'),
(17, 'Postres', '¡Aceptémoslo, nos encantan los postres! Encuentra aquí la mejor selección de postres fáciles y rápidos, postres sin horno, recetas de bizcocho, tortitas caseras… todos en sus versiones más sanas, así que ¡olvida el cargo de conciencia!'),
(18, 'Salsas', 'Dicen que el secreto está en la salsa. Encuentra la salsa que estabas buscando para tus pastas, arroces y todas tus elaboraciones: salsa pesto, salsa boloñesa, salsa mayonesa, salsa de yogur… ¡en versión tradicional y versión vegana!'),
(19, 'Salteados', '¿Sabías que los salteados son una de las mejores formas de cocinar tus vegetales? Lograrás conservar mejor sus nutrientes y mantendrán esa textura crujiente que te encanta. Encuentra aquí originales recetas de salteados de verduras, salteados de legumbres, salteados con pollo… ¡y todas sus combinaciones!'),
(20, 'Sándwiches y Bocadillos', 'Con un buen pan y unos ingredientes frescos, los sándwiches y bocadillos pueden ser una excelente opción para alimentarte saludablemente, sobre todo en esos días que la practicidad apremia. Encuentra recetas de sándwich con nutritivo pan integral o pan con semillas, originales variantes de sándwich vegetal, sándwich mixto, bocadillos veganos, y por supuesto, los clásicos bocadillos de toda la vida.'),
(21, 'Recetas Sin Gluten', 'Encuentra aquí todas nuestras recetas sin gluten. Cenas fáciles aptas para celíacos o intolerantes al gluten, postres fáciles, desayunos saludables y mucho más.\r\n'),
(22, 'Sopas y Cremas', 'Las sopas y cremas son una estupenda forma de comer verdura. Si mezclas bien los ingredientes puedes lograr sabores increíbles. Encuentra nuestras originales variantes para tu sopa de cebolla, crema de zanahoria, crema de calabacín, crema de calabaza… ¡y muchas más!'),
(23, 'Recetas Vegetarianas', 'Parece que cada día somos más los que queremos comer más verde. Hemos preparado esta selección bajo el criterio ovo-lacto-vegetariano. Encuentra recetas vegetarianas fáciles, postres vegetarianos, tapas y aperitivos vegetarianos, y en general, todo un mundo para explayarte en la cocina vegetariana.'),
(24, 'Recetas de Verdura', 'Si quieres comer más verdura, pero siempre acabas comiendo los mismos platos, esta es tu selección. Encuentra las mejores combinaciones de verduras al vapor, verduras a la plancha, verduras al horno, y hasta verduras en tempura. ¡Todo un festival de sabor, color y nutrientes!');

-- --------------------------------------------------------

--
-- Table structure for table `ingrediente`
--

CREATE TABLE `ingrediente` (
  `IdIngrediente` int(11) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Foto` varchar(2000) NOT NULL,
  `Tipo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingrediente`
--

INSERT INTO `ingrediente` (`IdIngrediente`, `Nombre`, `Foto`, `Tipo`) VALUES
(0, 'camote', 'ingrediente/camote.jpg', 'unidad'),
(1, 'huevo', 'ingrediente/huevo.jpg', 'Unidad'),
(2, 'platano', 'ingrediente/platano.jpg', 'Unidad'),
(3, 'apio', 'ingrediente/apio.jpg', 'Rama'),
(4, 'aceite', 'ingrediente/aceite.jpg', 'cuchara'),
(5, 'pescado', 'ingrediente/pescado.jpg', 'kilogramos'),
(6, 'cebolla', 'ingrediente/cebolla.jpg', 'unidad'),
(7, 'tomate', 'ingrediente/tomate.jpg', 'unidad'),
(8, 'trigo', 'ingrediente/trigo.jpg', 'kilogramos'),
(9, 'arroz', 'ingrediente/arroz.jpg', 'kilogramo'),
(10, 'maiz', 'ingrediente/maiz.jpg', 'kilogramo'),
(11, 'centeno', 'ingrediente/centeno.jpg', 'kilogramo'),
(12, 'cebada', 'ingrediente/cebada.jpg', 'kilogramo'),
(13, 'avena', 'ingrediente/avena.jpg', 'gramo'),
(14, 'manzana', 'ingrediente/manzana.jpg', 'unidad'),
(15, 'durazno', 'ingrediente/durazno.jpg', 'unidad'),
(16, 'mandarina', 'ingrediente/mandarina.jpg', 'unidad'),
(17, 'papaya', 'ingrediente/papaya.jpg', 'unidad'),
(18, 'guanabana', 'ingrediente/guanabana.jpg', 'unidad'),
(19, 'granadilla', 'ingrediente/granadilla.jpg', 'unidad'),
(20, 'uva', 'ingrediente/uva.jpg', 'unidad'),
(21, 'kiwi', 'ingrediente/kiwi.jpg', 'unidad'),
(22, 'limon', 'ingrediente/limon.jpg', 'unidad'),
(23, 'palta', 'ingrediente/palta.jpg', 'unidad'),
(24, 'pina', 'ingrediente/pina.jpg', 'unidad'),
(25, 'sandia', 'ingrediente/sandia.jpg', 'unidad'),
(26, 'pollo', 'ingrediente/pollo.jpg', 'kilogramo'),
(27, 'res', 'ingrediente/res.jpg', 'kilogramo'),
(28, 'salchicha', 'ingrediente/salchicha.jpg', 'unidad'),
(29, 'chorizo', 'ingrediente/chorizo.jpg', 'unidad'),
(30, 'moluscos', 'ingrediente/moluscos.jpg', 'kilogramo'),
(31, 'conserva de atun', 'ingrediente/conserva_atun.jpg', 'gramo'),
(32, 'cecina', 'ingrediente/cecina.jpg', 'kilogramo'),
(33, 'lechuga', 'ingrediente/lechuga.jpg', 'unidad'),
(34, 'espinaca', 'ingrediente/espinaca.jpg', 'unidad'),
(35, 'acelga', 'ingrediente/acelga.jpg', 'unidad'),
(36, 'culantro', 'ingrediente/culantro.jpg', 'unidad'),
(37, 'perejil', 'ingrediente/perejil.jpg', 'unidad'),
(38, 'pepino', 'ingrediente/pepino.jpg', 'unidad'),
(39, 'caigua', 'ingrediente/caigua.jpg', 'unidad'),
(40, 'brocoli', 'ingrediente/brocoli.jpg', 'kilogramo'),
(41, 'coliflor', 'ingrediente/coliflor.jpg', 'kilogramo'),
(42, 'pimiento', 'ingrediente/pimiento.jpg', 'unidad'),
(43, 'berenjena', 'ingrediente/berenjena.jpg', 'unidad'),
(44, 'poro', 'ingrediente/poro.jpg', 'gramo'),
(45, 'papa blanca', 'ingrediente/papa_blanca.jpg', 'kilogramo'),
(46, 'papa amarilla', 'ingrediente/papa_amarilla.jpg', 'kilogramo'),
(48, 'zanahoria', 'ingrediente/zanahoria.jpg', 'unidad'),
(49, 'beterraga', 'ingrediente/beterraga.jpg', 'unidad'),
(50, 'nabo', 'ingrediente/nabo.jpg', 'unidad'),
(51, 'frijoles', 'ingrediente/frijoles.jpg', 'kilogramo'),
(52, 'garbanzos', 'ingrediente/garbanzos.jpg', 'kilogramo'),
(53, 'habas', 'ingrediente/habas.jpg', 'kilogramo'),
(54, 'lentejas', 'ingrediente/lentejas.jpg', 'kilogramo'),
(55, 'soja', 'ingrediente/soja.jpg', 'kilogramo'),
(56, 'arveja', 'ingrediente/arveja.jpg', 'kilogramo'),
(57, 'pallares', 'ingrediente/pallares.jpg', 'kilogramo'),
(58, 'yogurt', 'ingrediente/yogurt.jpg', 'litro'),
(59, 'leche', 'ingrediente/leche.jpg', 'litro'),
(60, 'queso', 'ingrediente/queso.jpg', 'gramo'),
(61, 'comino', 'ingrediente/comino.jpg', 'cuchara'),
(62, 'pimienta', 'ingrediente/pimienta.jpg', 'cuchara'),
(63, 'sal', 'ingrediente/sal.jpg', 'cuchara'),
(64, 'azucar', 'ingrediente/azucar.jpg', 'cuchara'),
(65, 'sillao', 'ingrediente/sillao.jpg', 'cuchara'),
(66, 'vinagre', 'ingrediente/vinagre.jpg', 'cuchara'),
(67, 'aceituna', 'ingrediente/aceituna.jpg', 'unidad'),
(68, 'pan', 'ingrediente/pan.jpg', 'unidad'),
(69, 'harina', 'ingrediente/harina.jpg', 'kilogramo');

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
  `Pasos` longtext NOT NULL,
  `IdCategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `plato`
--

INSERT INTO `plato` (`IdPlato`, `NombrePlato`, `Descripción`, `Duracion`, `Dificultad`, `Foto`, `Pasos`, `IdCategoria`) VALUES
(1, 'Ceviche', 'El ceviche es el plato estrella de la gastronomía peruana. ... Se trata de un plato de mariscos que se presenta con diversos acompañamientos.', 40, 'intermedio', 'receta/ceviche-de-pescado_700x465-700x465.jpg', 'PASO1: Cortar la cebolla al hilo, en pluma. Se recomienda partir la cebolla por la mitad, quitarle la primera capa, colocar una mitad sobre la tabla de picar, hacer cortes delgados, y repetir con la otra mitad. Una vez cortada la cebolla lavarla para quitarle el amargor. PASO 2: Extraer el zumo de los limones exprimiéndolos a mano, y guardar el zumo en un recipiente. Un punto a tener en cuenta es que no se debe exprimir el limón hasta dejarlo seco. Se debe exprimir poco porque si pretendemos quitarle todo el zumo lo que vamos a lograr es que la parte astringente del limón bote esa acidez que a muchos les malogra el ansiado cebiche. Por eso se pide en la receta 20 limones. Exprimimos razonablemente cada uno de los 20 limones y tendremos una buena cantidad de zumo sin problemas de acidez.  PASO 3: Cortamos el pescado en cuadrados lo más uniformes posible. Cada uno corta los trozos del tamaño que mejor le agrade. Pero si se nos pide una recomendación les diríamos que hagan cubos de 2 centímetros por 2 centimetros, obviamente al ojo, a simple cálculo (no vayan a estar midiendo con una regla cada cuadrado para ver si tiene o no 2 centímetros, esa no es la idea). PASO 4: Ahora preparamos el ají limo. Para eso cortamos las dos puntas y las desechamos. Luego partimos el ají a lo largo por la mitad, retiramos con un cuchillo las semillas teniendo cuidado que no rocen con las manos porque no es nada agradable. Ya sin las semillas se corta el ají en rodajas y obtendremos medialunas. Alternativamente se puede cortar el ají en cubitos de 2 milímetros por 2 milímetros, aunque lo tradicional y más sencillo es cortarlo en rodajas. PASO 5: Llegó el momento. Colocamos los trozos de pescado en un recipiente y los aderezamos con la sal, la pimienta y el ají limo. Si se desea agregamos también los ingredientes opcionales: una pizca de sazonador ajinomoto, culantro (cilantro) picado y/o apio picado. Revolvemos todo y dejamos durante tres minutos para que el pescado se impregne de los sabores. PASO 6: Echamos el zumo de limón sobre el pescado e incorporamos la cebolla. PASO 7: Una vez que hemos puesto en el recipiente todos los ingredientes los removemos con una cuchara, a ritmo normal, ni muy suave ni muy violento. Se trata de mezclar los ingredientes. Es bueno además probar la sazón para rectificar el sabor si fuere necesario (de repente te parece que le falta algo de sal, o quizás algo de ají, y ese es el momento para corregir la sazón a tu gusto). PASO 8: Dejar reposar el preparado para que el pescado crudo se cocine. ¿Cuál es el tiempo recomendable?. También es al gusto de cada uno. Hay comensales que prefieren el pescado casi crudo así que se lo comen de inmediato, otros prefieren que el pescado esté cocido y para ellos con 10 minutos está bien. Para los demás, entre los que me incluyo, con 5 a 7 minutos de reposo resulta razonable. PASO 9: Finalmente, se coloca el preparado en una fuente y se puede acompañar con rodajas de camote cocido, trozos de yuca cocida o frita, maíz choclo cocido, hojas de lechuga, e incluso plátano verde frito.', 15),
(11, 'Lomo Saltado', 'El Lomo saltado es uno de los platos que más destaca en la gastronomía peruana.', 60, 'intermedio', 'receta/lomo saltado.jpg', 'PASO 1: Corta el lomo en trozos (bastones) más o menos gruesos (3cm x 1cm) y condiméntalos con ajo molido, comino, orégano y una cuchara de vinagre. Déjalo reposar unos 10 minutos para que coja sabor. Calienta la sartén a fuego alto con un poco de aceite\r\n PASO 2: Cuando veas que empieza a salir un poquito de humo, entonces agrega la carne y fríela por unos segundos, el tiempo dependerá de que tan caliente este la sartén. A continuación, resérvala en un bol y tápala para que conserve el calor\r\n PASO 3: Ahora en la misma sartén agrega la cebolla picada, el tomate, el ají amarillo y un poquito de aceite. Fríe todo por unos segundos y agrega un poco de caldo de carne, salsa de soja (sillao) y el vinagre. Agrega la carne que habías reservado, mezcla todo con movimientos de sartén (sin utensilio para no maltratar el tomate) y después de unos 30 segundos más o menos agrega la cebolla china y finalmente un poco de culantro picado (cilantro)\r\nPASO 4: El Lomo Saltado tiene que estar jugoso, por eso, si es necesario corrige agregando un poco de caldo de carne\r\nPASO 5:  Sirve en un plato casi la totalidad del lomo y deja un poco para mezclar con las papas fritas. Agrega las papas fritas al resto de lomo saltado en la sartén, mézclalo y vuelve a servir todo encima.\r\nPASO 6: En el Perú nos encanta el arroz, así que este plato también va acompañado de arroz blanco.', 19);

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
-- Dumping data for table `platoingrediente`
--

INSERT INTO `platoingrediente` (`Cantidad`, `IdPlato`, `IdIngrediente`) VALUES
(5, 1, 61),
(12, 1, 22),
(0.5, 1, 5),
(2, 1, 0),
(2, 1, 6),
(1, 1, 7),
(1, 1, 42),
(1, 1, 33),
(3, 1, 63),
(2, 11, 45),
(0.5, 11, 9),
(0.3, 11, 27),
(1, 11, 6),
(5, 11, 4),
(1, 11, 7),
(1, 11, 37),
(3, 11, 63);

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
  MODIFY `IdCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ingrediente`
--
ALTER TABLE `ingrediente`
  MODIFY `IdIngrediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `plato`
--
ALTER TABLE `plato`
  MODIFY `IdPlato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
