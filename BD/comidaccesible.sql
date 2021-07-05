-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2021 at 03:56 AM
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
  `Descripcion` mediumtext NOT NULL,
  `Foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`IdCategoria`, `Nombre`, `Descripcion`, `Foto`) VALUES
(1, '30 minutos o menos', '¿Tienes poco tiempo? No renuncies a comer algo rico y sano. Encuentra aquí recetas de cocina rápidas, cenas rápidas, postres fáciles… y en general, recetas fáciles y sanas para cualquier momento del día, especialmente para la cena.', 'categoria/1.jpg'),
(2, 'Arroces', 'Lo sabes, ¡te encanta el arroz! Encuentra aquí nuestra mejor selección de recetas con arroz: combinaciones de arroz con pollo, arroz con verduras, arroz con legumbres, recetas de risotto, incluso nuestra receta para el perfecto arroz blanco.', 'categoria/2.jpg'),
(3, 'Cocina Asiática', 'Si te gusta la comida china y los sabores asiáticos, aquí tienes las mejores ideas para disfrutar de la mejor cocina asiática sin salir de casa: arroz tres delicias, rollitos primavera, pollo agridulce, pollo al curry… ¿te atreves a experimentar?', 'categoria/3.jpg'),
(4, 'Batidos y Refrescos', 'Encuentra originales y deliciosas combinaciones para crear tus propios batidos de frutas, smoothies, zumos de frutas, aguas saborizadas y refrescos caseros.', 'categoria/4.jpg'),
(5, 'Carnes', 'Para el día que te apetece comer carne, ¡a comerla de la mejor manera! Encuentra aquí nuestra selección de recetas con carne picada, recetas de carne guisada, recetas de solomillo de cerdo, recetas de lomo de cerdo… ¡harán las delicias de los más carnívoros!', 'categoria/5.jpg'),
(6, 'Recetas de Desayunos', 'Para algunos es la comida más importante del día. ¿Pero por qué no hacerla también la más divertida? Encuentra las mejores recetas de desayunos saludables, desayunos rápidos, desayunos para el fin de semana… ¡a cual más rico!', 'categoria/6.jpg'),
(7, 'Ensaladas y Bowls', 'Recetas de ensaladas ricas, originales y sencillas para todos los gustos y momentos del año: ensaladas de verano, ensaladas templadas, ensaladas de pasta, ensaladas de arroz, ensaladas con quinua, ensaladas con legumbres, ensaladas con frutas… ¿Se puede pedir más?', 'categoria/7.jpg'),
(8, 'Recetas Fitness', 'Sabes bien que “el 70% del resultado depende de tu alimentación”. Así que, ¡sácale el máximo provecho a tu esfuerzo! Encuentra aquí recetas fitness para antes de entrenar, recetas fitness para después de entrenar, recetas fitness para hidratarte... descubre en este apartado las recetas fitness que necesitas.\r\n', 'categoria/8.jpg'),
(9, 'Guisos', 'Los guisos son una de las formas más antiguas de cocinar los alimentos, ya que permiten la armónica transformación y fusión de todos sus sabores. Encuentra aquí las mejores recetas de guisos de verduras, guisos de legumbres, pollo guisado… ¡prepara la barra de pan para rebañar!', 'categoria/9.jpg'),
(10, 'Hamburguesas', 'Las hamburguesas están de moda. ¡Y es que están buenísimas! Ahora las hay de todos los sabores y colores: hamburguesas vegetales, hamburguesas de pescado, hamburguesas gourmet… ¡Aprende a cocinar tu hamburguesa casera favorita y disfruta del planazo!', 'categoria/10.jpg'),
(11, 'Recetas de Legumbres', 'Las legumbres son el alimento proteico vegetal por excelencia. Además de ser muy nutritivas, ¡son muy ricas! Si quieres ir más allá de las clásicas recetas de garbanzos y lentejas estofadas, esta es tu selección favorita: originales recetas de hummus, ensaladas de garbanzos, garbanzos con verduras, salteados con lentejas, alubias rojas, alubias blancas, guisantes… ¡en combinaciones que te conquistarán!', 'categoria/11.jpg'),
(12, 'Cocina Mexicana', 'La cocina mexicana es amplísima y simplemente deliciosa. Te traemos aquí una modesta selección de los platos más divertidos y sencillos para hacer en casa. ¿Te atreves con unos tacos? ¡Órale!', 'categoria/12.jpg'),
(13, 'Recetas con Pasta', 'La pasta es un alimento muy socorrido, pero sabes bien que es fácil caer en lo mismo de siempre. Encuentra aquí la inspiración para combinar tu pasta de mil maneras: recetas con pasta y verduras, originales salsas para recetas de espaguetis, ensaladas de pasta variadas… ¡si repites, es porque quieres!', 'categoria/13.jpg'),
(14, 'Recetas de Pizza', 'Encuentra inspiración para tus pizzas caseras y convierte esta “comida rápida” en su versión más sana y deliciosa. Diviértete experimentando con nuevos ingredientes y combinaciones, ¡y olvídate de las pizzas congeladas y precocinadas!', 'categoria/14.jpg'),
(15, 'Recetas de Pescados y Mariscos', '¿Quieres incluir más pescado en tu dieta? Encuentra aquí ricas y fáciles elaboraciones: merluza al horno, dorada a la sal, salmón al horno, deliciosas recetas con atún… ¡lánzate a la mar!', 'categoria/15.jpg'),
(16, 'Recetas con Pollo', 'El pollo es una de las proteínas más recurridas por su versatilidad. Aprovecha nuestra selección para no aburrirte nunca más de tus recetas con pollo: originales recetas con pechugas de pollo, recetas de pollo al horno, recetas de pollo en salsa, recetas de pollo guisado… ¡Todas en su versión más fácil y saludable', 'categoria/16.jpg'),
(17, 'Postres', '¡Aceptémoslo, nos encantan los postres! Encuentra aquí la mejor selección de postres fáciles y rápidos, postres sin horno, recetas de bizcocho, tortitas caseras… todos en sus versiones más sanas, así que ¡olvida el cargo de conciencia!', 'categoria/17.jpg'),
(18, 'Salsas', 'Dicen que el secreto está en la salsa. Encuentra la salsa que estabas buscando para tus pastas, arroces y todas tus elaboraciones: salsa pesto, salsa boloñesa, salsa mayonesa, salsa de yogur… ¡en versión tradicional y versión vegana!', 'categoria/18.jpg'),
(19, 'Salteados', '¿Sabías que los salteados son una de las mejores formas de cocinar tus vegetales? Lograrás conservar mejor sus nutrientes y mantendrán esa textura crujiente que te encanta. Encuentra aquí originales recetas de salteados de verduras, salteados de legumbres, salteados con pollo… ¡y todas sus combinaciones!', 'categoria/19.jpg'),
(20, 'Sándwiches y Bocadillos', 'Con un buen pan y unos ingredientes frescos, los sándwiches y bocadillos pueden ser una excelente opción para alimentarte saludablemente, sobre todo en esos días que la practicidad apremia. Encuentra recetas de sándwich con nutritivo pan integral o pan con semillas, originales variantes de sándwich vegetal, sándwich mixto, bocadillos veganos, y por supuesto, los clásicos bocadillos de toda la vida.', 'categoria/20.jpg'),
(21, 'Recetas Sin Gluten', 'Encuentra aquí todas nuestras recetas sin gluten. Cenas fáciles aptas para celíacos o intolerantes al gluten, postres fáciles, desayunos saludables y mucho más.\r\n', 'categoria/21.jpg'),
(22, 'Sopas y Cremas', 'Las sopas y cremas son una estupenda forma de comer verdura. Si mezclas bien los ingredientes puedes lograr sabores increíbles. Encuentra nuestras originales variantes para tu sopa de cebolla, crema de zanahoria, crema de calabacín, crema de calabaza… ¡y muchas más!', 'categoria/22.jpg'),
(23, 'Recetas Vegetarianas', 'Parece que cada día somos más los que queremos comer más verde. Hemos preparado esta selección bajo el criterio ovo-lacto-vegetariano. Encuentra recetas vegetarianas fáciles, postres vegetarianos, tapas y aperitivos vegetarianos, y en general, todo un mundo para explayarte en la cocina vegetariana.', 'categoria/23.jpg'),
(24, 'Recetas de Verdura', 'Si quieres comer más verdura, pero siempre acabas comiendo los mismos platos, esta es tu selección. Encuentra las mejores combinaciones de verduras al vapor, verduras a la plancha, verduras al horno, y hasta verduras en tempura. ¡Todo un festival de sabor, color y nutrientes!', 'categoria/24.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `filtro`
--

CREATE TABLE `filtro` (
  `IdPlato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `filtro`
--

INSERT INTO `filtro` (`IdPlato`) VALUES
(25);

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
(1, 'Ceviche', 'El ceviche es el plato estrella de la gastronomía peruana. ... Se trata de un plato de mariscos que se presenta con diversos acompañamientos.', 40, 'intermedio', 'receta/ceviche-de-pescado_700x465-700x465.jpg', 'PASO1: Cortar la cebolla al hilo, en pluma. Se recomienda partir la cebolla por la mitad, quitarle la primera capa, colocar una mitad sobre la tabla de picar, hacer cortes delgados, y repetir con la otra mitad. Una vez cortada la cebolla lavarla para quitarle el amargor. \n\nPASO 2: Extraer el zumo de los limones exprimiéndolos a mano, y guardar el zumo en un recipiente. Un punto a tener en cuenta es que no se debe exprimir el limón hasta dejarlo seco. Se debe exprimir poco porque si pretendemos quitarle todo el zumo lo que vamos a lograr es que la parte astringente del limón bote esa acidez que a muchos les malogra el ansiado cebiche. Por eso se pide en la receta 20 limones. Exprimimos razonablemente cada uno de los 20 limones y tendremos una buena cantidad de zumo sin problemas de acidez.  \n\nPASO 3: Cortamos el pescado en cuadrados lo más uniformes posible. Cada uno corta los trozos del tamaño que mejor le agrade. Pero si se nos pide una recomendación les diríamos que hagan cubos de 2 centímetros por 2 centimetros, obviamente al ojo, a simple cálculo (no vayan a estar midiendo con una regla cada cuadrado para ver si tiene o no 2 centímetros, esa no es la idea). \n\nPASO 4: Ahora preparamos el ají limo. Para eso cortamos las dos puntas y las desechamos. Luego partimos el ají a lo largo por la mitad, retiramos con un cuchillo las semillas teniendo cuidado que no rocen con las manos porque no es nada agradable. Ya sin las semillas se corta el ají en rodajas y obtendremos medialunas. Alternativamente se puede cortar el ají en cubitos de 2 milímetros por 2 milímetros, aunque lo tradicional y más sencillo es cortarlo en rodajas. \n\nPASO 5: Llegó el momento. Colocamos los trozos de pescado en un recipiente y los aderezamos con la sal, la pimienta y el ají limo. Si se desea agregamos también los ingredientes opcionales: una pizca de sazonador ajinomoto, culantro (cilantro) picado y/o apio picado. Revolvemos todo y dejamos durante tres minutos para que el pescado se impregne de los sabores. \n\nPASO 6: Echamos el zumo de limón sobre el pescado e incorporamos la cebolla. \n\nPASO 7: Una vez que hemos puesto en el recipiente todos los ingredientes los removemos con una cuchara, a ritmo normal, ni muy suave ni muy violento. Se trata de mezclar los ingredientes. Es bueno además probar la sazón para rectificar el sabor si fuere necesario (de repente te parece que le falta algo de sal, o quizás algo de ají, y ese es el momento para corregir la sazón a tu gusto). \n\nPASO 8: Dejar reposar el preparado para que el pescado crudo se cocine. ¿Cuál es el tiempo recomendable?. También es al gusto de cada uno. Hay comensales que prefieren el pescado casi crudo así que se lo comen de inmediato, otros prefieren que el pescado esté cocido y para ellos con 10 minutos está bien. Para los demás, entre los que me incluyo, con 5 a 7 minutos de reposo resulta razonable. \n\nPASO 9: Finalmente, se coloca el preparado en una fuente y se puede acompañar con rodajas de camote cocido, trozos de yuca cocida o frita, maíz choclo cocido, hojas de lechuga, e incluso plátano verde frito.', 15),
(11, 'Lomo Saltado', 'El Lomo saltado es uno de los platos que más destaca en la gastronomía peruana.', 60, 'intermedio', 'receta/lomo saltado.jpg', 'PASO 1: Corta el lomo en trozos (bastones) más o menos gruesos (3cm x 1cm) y condiméntalos con ajo molido, comino, orégano y una cuchara de vinagre. Déjalo reposar unos 10 minutos para que coja sabor. Calienta la sartén a fuego alto con un poco de aceite\r\n PASO 2: Cuando veas que empieza a salir un poquito de humo, entonces agrega la carne y fríela por unos segundos, el tiempo dependerá de que tan caliente este la sartén. A continuación, resérvala en un bol y tápala para que conserve el calor\r\n PASO 3: Ahora en la misma sartén agrega la cebolla picada, el tomate, el ají amarillo y un poquito de aceite. Fríe todo por unos segundos y agrega un poco de caldo de carne, salsa de soja (sillao) y el vinagre. Agrega la carne que habías reservado, mezcla todo con movimientos de sartén (sin utensilio para no maltratar el tomate) y después de unos 30 segundos más o menos agrega la cebolla china y finalmente un poco de culantro picado (cilantro)\r\nPASO 4: El Lomo Saltado tiene que estar jugoso, por eso, si es necesario corrige agregando un poco de caldo de carne\r\nPASO 5:  Sirve en un plato casi la totalidad del lomo y deja un poco para mezclar con las papas fritas. Agrega las papas fritas al resto de lomo saltado en la sartén, mézclalo y vuelve a servir todo encima.\r\nPASO 6: En el Perú nos encanta el arroz, así que este plato también va acompañado de arroz blanco.', 19),
(12, 'Tallarines Rojos', 'Los tallarines rojos con pollo son un plato muy popular en Perú. Una receta sencilla de preparar, perfecta para diario, fruto de la fusión de la gastronomía peruana con la italiana.', 60, 'facil', 'receta/Tallarines-rojos-con-pollo-768x530.jpg', 'Primer Paso: Lo primero es limpiar el pollo con un trapo húmedo, secamos con papel absorbente. Retiramos los restos de plumas con unas pinzas o con un soplete. Retiramos también los excesos de grasa. Salpimentamos por todos lados, con generosidad.\r\n\r\nSegundo Paso: Calentamos un poco de aceite de oliva virgen extra en una sartén y freímos el pollo a fuego fuerte por el lado de la piel durante un par de minutos o hasta que esté dorado. Volteamos y doramos por la otra cara. Retiramos y reservamos.\r\n\r\nTercer Paso: Lavamos los tomates y los troceamos. Introducimos en el vaso de una batidora. Pelamos la cebolla y troceamos. La añadimos al vaso, junto con los tomates. Lavamos la zanahoria, laminamos y añadimos también al vaso. Añadimos un poco de agua y trituramos con una batidora de brazo hasta obtener un puré homogéneo.\r\n\r\nCuarto Paso: Calentamos la sartén en la que hemos frito el pollo y añadimos una pizca más de aceite, los dientes de ajo pelado y rallados, la pasta de ají, la hoja de laurel, 1/2 cucharadita de comino molido, sal y pimienta negra recién molida. Removemos unos segundos antes de incorporar las verduras trituradas anteriormente.\r\n\r\nQuinto Paso: Cuando la salsa comience a hervir incorporamos el pollo, bajamos el fuego y cocemos durante 20 minutos. Tapamos la sartén para que no salpique la salsa y evitamos ensuciar en exceso.', 13),
(13, 'Ají de gallina', 'El ají de gallina es un plato típico de la gastronomía Peruana', 40, 'facil', 'receta/receta-de-aji-de-gallina.jpg', 'Paso 1: Limpia bien la pechuga quitando los excesos de grasa, ponla en una olla cubierta por agua con sal al gusto y una pizca de orégano, deja que hierva por unos veinte minutos aproximadamente.\r\n\r\nPaso 2: Cuando este lista guardamos el caldo, deshilacha la pechuga y reservamos.\r\nají de pollo\r\n\r\nPaso 3: Lava las papas y ponlas a sancochar en una olla a fuego medio junto con los huevos cubiertos por agua, hasta que estén suaves.\r\ncomo hervir papas\r\n\r\nPaso 4: Licua los tres paquetes de galleta con la leche.\r\n\r\nPaso 5: Corta la cebolla en cuadros muy pequeños, pondremos una olla al fuego medio y agregamos una cucharada de aceite, la cebolla, el ajos, dejaremos que se fría e iremos moviendo con un cucharón.\r\n\r\nPaso 6: Agrega el ají amarillo, el cominos y la pimienta, mezcla por unos dos minutos y hecha el pollo o gallina ya deshilachada, sigue mezclando por unos dos minutos.\r\nreceta de aji de gallina\r\n\r\nPaso 7: A continuación echamos la galleta que hemos licuado, bajamos la temperatura y con ayuda de un cucharón iremos moviendo hasta que se mezclen bien todos los ingredientes.\r\n\r\nPaso 8: Si la preparación esta muy espesa podemos agregar de a pocos el caldo que reservamos anteriormente hasta obtener la consistencia deseada. Rectifica sazón y sirve', 1),
(14, 'Leche de tigre', 'La leche de tigre es uno de los resultados directos de preparar ceviche de pescado. Se trata de los jugos que sobran al momento de preparar el mencionado plato, y sí, puedes bebértela sola.', 40, 'intermedio', 'receta/IMG_2111.webp', 'Paso 1: Necesitarás pescado o marisco (corvina, merluza, langostinos) zumo de limón o lima, caldo de pescado (fumet casero mejor que mejor), apio, cebolla morada, cilantro, sal y pimienta.\r\n\r\nPaso 2: Exprimimos el zumo de limón o de lima (o ambos). Colamos por si queda algún pipo y pasamos al vaso de la batidora. Añadimos el pescado y el fumet o caldo de pescado.\r\n\r\nPaso 3: Pelamos el apio para retirar los filamentos y troceamos. Pelamos la cebolla morada y cortamos en juliana. Ponemos ambos ingredientes en el vaso de la batidora e incorporamos sal, pimienta, el cilantro fresco y el hielo.\r\n\r\nPaso 4: El hielo nos ayuda a equilibrar la acidez para evitar que el cítrico transforme el pescado del cebiche. Además de ayudar a que baje la temperatura y esté frío. Trituramos hasta obtener una cremita. La textura que obtengas dependerá del fumet (o caldo) que utilices.\r\n\r\nPaso 5: Hay quienes lo prefieren más espeso, pero lo ideal es que quede con la ligereza similar a la de un zumo de limón o al agua de coco. Si queremos que pique rico le pondremos un poco de ají, rocoto o guindilla, lo pondremos en la nevera durante un par de horas y lo tomaremos bien fresquito.', 15),
(15, 'Salchipapas ', 'Las Salchipapas son muy populares en los mercados y en algunas carretillas en las calles de la ciudad.', 20, 'facil', 'receta/Lima_salchipapas.jpg', 'Las Salchipapas son muy populares en los mercados y en algunas carretillas en las calles de la ciudad.', 1),
(16, 'Chifa Aeropuerto', 'La chifa aeropuerto es un platillo que nace de la fusión entre la comida china y la comida peruana. Se puede decir que es uno de los platos más consumidos en Perú. ', 60, 'intermedio', 'receta/aeropuerto_chifa_cocinademona.jpg', 'Paso 1: Para empezar lo primero que debes hacer es la tortilla. En un wok caliente vierte 2 cucharadas de aceite y coloca el huevo previamente batido. Fríe por ambos lados, sin sobrecocer. Luego retira, corta en tiras y reserva.\r\nPaso 2: A continuación corta la pechuga de pollo en cuadraditos. Igualmente corta la cebolla china y lava los frijoles chinos.\r\nPaso 3: En el mismo wok, vierte un poco más de aceite y pon a freír el pollo. Agrega una cucharadita de la cebolla china y los frijoles chinos. Deja sofreír por un minuto.\r\nPaso 4: Luego agrega la salsa de soya, el kion y el azúcar. Mezcla todo muy bien. Añade el arroz y remueve nuevamente hasta que todo se integre perfectamente.\r\nPaso 5: Seguidamente, añade los fideos chinos y el sillao. Mezcla y verifica la sazón. Por último, agrega las tiras de huevos, el resto de la cebolla china y el aceite de ajonjolí. Para finalizar remueve bien y apaga el fuego.\r\nPaso 6: Sirve bien calientito.', 3),
(17, 'Anticucho peruano', 'El Anticucho es una de las comidas más conocidas en el Perú, se encuentra en muchos lugares alrededor del país y su preparación es infinita, teniendo por tanto un sabor que cambia constantemente.', 20, 'facil', 'receta/Antichucos_-_Grilled_Beef_Heart_skewers.jpg', 'Paso 1: Lo primero que debemos hacer es limpiar el corazón de vaca para luego trozarlo en pedazos de tamaño regular, o si deseas, en trozos pequeños.\r\nPaso 2: Después de esto, debemos mezclar en un bowl de tamaño regular el ají panca, los ajos, la sal, pimienta, comino, orégano, vinagre y cerveza, cuando la mezcla esté homogénea introducimos los trozos de corazón, que deberán macerarse como mínimo un par de horas.\r\nPaso 3: Mientras los trozos se maceran, aprovechamos para ir preparando el aderezo que nos ayudará en la cocción.\r\nPaso 4: En un pequeño bowl colocamos las 2 cucharadas de ají panca, la pizca de sal y la taza de aceite, mezclando bien. Este será el aderezo que iremos untando a los anticuchos mientras están en la parrilla.\r\nPaso 5: Cuando ya hayan tomado sabor los trozos de corazón, podemos ir ensartándolos en los palitos, colocando entre 3 y 4 pedazos por palito.\r\nPaso 6: Después de esto los llevamos a la parrilla, y los cocemos por ambos lados, para esto nos ayudamos con la brocha, pues con esta iremos untando el aderezo y así se cocinan con más sabor.\r\nPaso 7: Los anticuchos de corazón pueden servirse acompañados de un trozo de choclo sancochado y de mitades de papa sancochada.\r\nPaso 8: Un truquito para que la papa quede más rica, es después de sancocharlas, las pelamos, cortamos en mitades y las colocamos en la parrilla mientras cocinamos los anticuchos.', 5),
(18, 'Cuy Asado', 'El cuy es una especie de roedor que pesa cerca de 1 kg y que se puede encontrar en la región andina de Sudamérica', 80, 'dificil', 'receta/Cuy_al_horno_(2053163530).jpg', 'Paso 1: Aliñar el cuy con 5 dientes de ajo, el comino y sal. Dejarlo reposar hasta el día siguiente.\r\nPaso 2: Calentar en una sartén 6 cucharadas de aceite con el achiote. Barnizar el cuy con el aceite de achiote.\r\nPaso 3: Asar el cuy en carbón, pinchándolo para que vaya cocinándose homogéneamente.\r\nPaso 4: Calentar en una sartén 2 cucharadas de aceite y añadir la cebolla, los 3 dientes de ajo restantes, las cebolletas, el cilantro, el orégano, la pimienta y sal. Cocinar durante 5 minutos.\r\nPaso 5: Agregar las papas y suficiente agua hasta cubrirlas. Esperar hasta que el agua hierva, reducir la temperatura y cocinar a fuego lento hasta que las papas estén blandas.\r\nPaso 6: Servir el cuy sobre las papas cocidas acompañado de hojas de lechuga, tomate y curtido de cebolla.', 5),
(19, 'Arroz con Mariscos', 'Hay miles de formas de hacer arroz con mariscos, pero la versión peruana es una de las más sabrosas.', 60, 'intermedio', 'receta/arroz_con_mariscos_peruano.jpg', 'Paso 1: Primero que nada: cocina el arroz blanco en una olla con las 2 tazas de caldo de camarones, las hojas de laurel y 1 cucharadita de sal. Cuando se evapore el líquido, baja el fuego y tapa. En 20 minutos estará listo. Reserva.\r\nPaso 2: Lava y limpia todos los mariscos y conchas.\r\nPaso 3: A los camarones quítales la piel y la cabeza y úsalas para hacer el caldo.\r\nPaso 4: Pica los calamares y el pulpo en ruedas.\r\nPaso 5: Cocina el pulpo en agua por 20-30 minutos. Cuando esté listo, reserva.\r\nPaso 6: Limpia bien las conchas de mar.\r\nPaso 7: Pica todos los vegetales en cuadritos pequeños. En el caso del ají peruano, puedes molerlo luego de retirarle las semillas y las venas.\r\nPaso 8: Este primer paso recomiendo hacerlo 2 horas antes que el resto de la preparación para permitir que el grano se enfríe un poco.\r\nPaso 9: Sigamos con el resto de la receta del arroz con mariscos:\r\nPaso 10: Calienta una olla o una paellera. Agrégale un par de cucharadas de aceite de oliva y sofríe los dientes de ajo, la cebolla, el tomate y el ají (en ese orden). Agrega el orégano, sal y pimienta y un chorrito pequeño de vino blanco de cocina.\r\nPaso 11: Cuando el vino se evapore, agrega la media taza  restante del caldo de camarones.\r\nPaso 12: Incorpora las conchas, luego los calamares frescos y el pulpo previamente cocido, revuelve unos minutos.\r\nPaso 13: En este momento puedes echarle el ají rocoto si decidiste usarlo (es picante), las arvejas y los camarones pelados.\r\nPaso 14: Revisa la sal y pimienta de este guiso.\r\nPaso 15: Agrega el arroz cocido y revuelve bien todo.\r\nPaso 16: Cuando los camarones estén cocinados sirve tu arroz con mariscos con hojas de cilantro fresco picado por encima.', 15),
(20, 'Causa rellena', 'Comedera / Comida Peruana / Cómo hacer causa rellena peruana\r\nBY DANIEL 1 COMENTARIO\r\n\r\nCÓMO HACER CAUSA RELLENA PERUANA\r\ncausa-rellena-de-atun\r\nLa causa rellena ó causa limeña, es uno de los platos más fabulosos que tiene la gastronomía peruana.', 50, 'intermedio', 'receta/causa_rellena.jpg', 'Paso 1: La elaboración de la causa rellena requiere de varios pasos y, si bien toma un tiempo y tiene un proceso a seguir, es muy fácil de hacer.\r\nPaso 2: Primero debes dejar todo pelado y cortado:\r\nPaso 3: Pica la cebolla y el tomate en cubos pequeños y reserva en un bowl.\r\nPaso 4: Corta el aguacate en dados medianos. Reserva.\r\nPaso 5: Sancocha un huevo, quítale la cáscara y reserva.\r\nPaso 6: Pica el ají amarillo en cuadritos muy pequeños y reserva.\r\nPaso 7: Pela y pica las papas en trozos medianos y ponlas a hervir en una olla con agua y una pizca de sal.\r\nPaso 8: Mientras se hacen las papas puedes preparar el relleno de la causa limeña:\r\nPaso 9: Mezcla el tomate, la cebolla, un parte del ají amarillo, las latas de atún y la mayonesa. Agrégale una pizca de sal.\r\nPaso 10: Si ya están listas las papas, ponlas en un recipiente grande y hazlas puré aplastándolas con un tenedor o con un respectivo pisapapas. Paso 11: Agrega un chorro de aceite de oliva y el jugo del medio limón. Sigue aplastando y mezclando.\r\nPaso 12: También puedes agregarle algo de ají amarillo, preferiblemente molido hasta que se haga pasta. Mezcla todo muy bien hasta que tome una buena consistencia de puré. No debe estar muy cremoso sino más bien un poco compacto.\r\nPaso 13: Ahora llega el momento de armar tu maravillosa causa rellena.\r\nPaso 14: Lo ideal es que tengas un molde redondo donde puedas ir agregando las capas.\r\nPaso 15: Empieza primero con una capa de puré de papas, procura que tenga de grosor unos 2 centímetros, aunque esto al final va a depender un poco de ti.\r\nPaso 16: Luego agrega una capa del relleno preparado previamente. Ayúdate con un tenedor y/o una cuchara para que quede compacto.\r\nPaso 17: Seguidamente agrega una última capa de puré de papas, utiliza nuevamente un tenedor o cuchara para compactar y darle forma.\r\nPaso 18: En este momento puedes agregar el topping de aguacate (mezclado con un poquito de mayonesa si quieres) y encima unas ruedas de huevo sancochado.\r\nPaso 19: También puedes hacerlo en otro orden y, luego de agregar el relleno, poner el aguacate y finalmente el puré de papas.\r\nPaso 20: Puedes colocar algunos trozos de ají amarillo por encima de tu causa limeña a modo de decoración.\r\nPaso 21: También puedes ponerle algo de ají (en crema) a un lado del plato.\r\nListo, ya tienes una deliciosa causa rellena de atún.', 0),
(21, 'Carapulcra', 'Existen varias formas de preparar carapulcra. Esta vez, optamos por la versión casera, que suele hacerse con papa seca. En esta receta, te mostramos también a preparar maní molido.', 60, 'intermedio', 'receta/platos_peruanos_Carapulcra.jpg', 'Paso 1. Tuesta la papa seca en una sartén. Luego cúbrela con agua y deja remojar por 2 horas.\r\nPaso 2. Tuesta el maní y licúalo hasta molerlo. Reserva ½ taza.\r\nPaso 3. Calienta el aceite en una olla, agrega la panceta y séllala. Añade el pollo y sigue sellando. Reserva las carnes.\r\nPaso 4. En la misma olla, sofríe la cebolla de 3 a 5 minutos con una pizca de sal. Luego agrega el ajo y sigue sofriendo por un par de minutos más. Continúa con el ají panca y el ají amarillo; intégralos hasta que el aderezo absorba el aroma y sabor de los ajíes. Sazona con sal, pimienta y comino al gusto.\r\nPaso 5. Incorpora las carnes selladas, la papa seca previamente escurrida, los clavos de olor, la canela y el anís. Vierte 5 tazas de agua y deja cocinar de 35 a 45 minutos.\r\nPaso 6. Añade ½ taza de maní molido y el chocolate. Mezcla bien hasta incorporar todos los ingredientes.\r\nPaso 7. Sirve. Acompaña con arroz blanco y yuca cocida.', 9),
(22, 'Papa rellena', 'La Papa rellena es uno de mis platillos favoritos. Es rica, llena de sabor, satisface, y puedes servirla tanto como entrada como plato de fondo. ', 80, 'dificil', 'receta/Peru_PapasRellenas2.jpg', 'Paso 1: Cocina las papas en agua hirviendo que las cubra por unos 20 minutos o hasta que estén suaves. Escurre.\r\nPaso 2: Pélalas y pásalas por el prensapapas. Agrega sal y pimienta, tápalas y reserva mientras haces el relleno.\r\nPaso 3: En una sartén calienta el aceite sobre fuego algo. Agrega la cebolla y el ajo, revolviendo, hasta que están suaves. Incorpora la pasta de tomate y el ají panca.\r\nPaso 4: Agrega la carne de soya, sal y pimienta. Revuelve bien. Tapa, baja el fuego y cocina, revolviendo de vez en cuando, por unos 15 minutos.\r\nPaso 5: Incorpora los huevos duros, pasas, aceitunas y perejil. Apaga el fuego.\r\nPaso 6: Con las manos enharinadas amasa las papas unos segundos. Toma una porción y aplástala entre tus manos como haciendo una tortilla.\r\nPaso 7: Con una cuchara pon una porción del relleno en el centro de la papa. Cierra y forma como un óvalo.\r\nPaso 8: Pon harina en un plato y los huevos ligeramente batidos en otro plato. Rueda cada papa rellena por harina y luego por los huevos. \r\nPaso 9: Finalmente otra vez por harina.\r\nPaso 10: En una sartén pon a calentar aceite y fríe ahí las papas, teniendo cuidado de que queden doradas por todos lados y que forme una costrita dorada y tostadita en toda la superficie.\r\nPaso 11: Escúrrelas en papel toalla y sirve con salsa criolla y con arroz.\r\ngolden.', 20),
(23, 'Seco de pollo', 'El seco de pollo es unos de los platos más exquisitos de la gastronomía peruana. Por ello, si quieres puedes sorprender a tu familia con este delicioso plato', 60, 'intermedio', 'receta/seco_de_pollo_zoylitaamiestilo.jpg', 'Paso 1: Primero lavas las papas y las zanahorias, pelas las papas y las picas en cuadros, mientras que las zanahorias las cortas en rodajas.\r\nPaso 2: En una olla con aceite fríe las presas de pollo, hasta que se doren por completo. Retiras las presas de pollo y en la misma olla agregas la cebolla. No dejes de dorarlas hasta que queden transparentes. Luego, agregas el ajo picado y muévelo para que no se queme.\r\nPaso 3: Añades ají amarillo y dóralo por máximo cinco minutos. Echas el sazonador de pollo a la mezcla. También puedes usar el caldo de pollo para dar un sabor especial a la comida.\r\nPaso 4: Mueves bien la mezcla y agregas la zanahoria picada.\r\nPaso 5: En una licuadora agregas el culantro y una taza de agua para licuar. Teniendo esto listo ponlo en la olla del guiso. Mueves bien y adicionas las alverjas y las papas picadas. Agregas finalmente el pollo frito con una taza de agua hervida y cocinas por 20 minutos.\r\nPaso 6: Cuando ya lo tengas preparado, puedes servirlo con arroz blanco, yuca o frijoles', 16),
(24, 'Arroz con pollo', 'El arroz con pollo, qué duda cabe, es uno de los platos bandera de la gastronomía peruana. Aquí te enseñamos a prepararlo.', 60, 'intermedio', 'receta/arroz con pollo.jpg', 'Paso 1. Deshojar el culantro.\r\nPaso 2. Colocar el culantro en la licuadora y agregar el caldo de pollo.\r\nPaso 3. Licuar.\r\nPaso 4. Vaciar el culantro licuado en un bol y reservar.\r\nPaso 5. Cortar la cebolla en cuadraditos pequeños.\r\nPaso 6. Cortar un pimiento en tiras y otro pimiento en cuadrados pequeños.\r\nPaso 7. Cortar una zanahoria en cuadraditos pequeños.\r\nPaso 8. Pelar las arvejas.\r\nPaso 9. Colocar las presas de pollo en un bol y salpimentar.\r\nPaso 10. Colocar una olla a calentar y agregar un poco de aceite.\r\nPaso 11. Agregar las presas de pollo para sellarlas y reservarlas.\r\nPaso 12. Colocar la cebolla y una pizca de sal en la olla donde se selló las presas de pollo.\r\nPaso 13. Sofreír por unos minutos y agregar el ajo.\r\nPaso 14. Sofreír un par de minutos.\r\nPaso 15. Añadir el ají amarillo y sofreír.\r\nPaso 16. Agregar el culantro licuado y sofreír por unos minutos.\r\nPaso 17. Añadir pimienta y comino y mezclar.\r\nPaso 18. Agregar la cerveza negra.\r\nPaso 19. Mezclar.\r\nPaso 20. Añadir el pimiento en cuadraditos, arvejas, zanahoria y choclo desgranado.\r\nPaso 21. Mezclar.\r\nPaso 22. Agregar el caldo de pollo y mezclar.\r\nPaso 23. Mezclar y dejar cocinar por unos minutos.', 16),
(25, 'Chupe de camarones', 'Un buen chupe de camarones puede funcionar como primer y segundo plato.', 60, 'dificil', 'receta/chupe-de-camarones.jpg', 'Paso 1. Pica en cubos pequeños la cebolla, tomate, ají amarillo y el ajo. Sofríelos en una olla grande.\r\nPaso 2. Seguidamente agrega los 3 litros de caldo de camarones y 1 litro extra de agua.\r\nPaso 3. Echa las mazorcas junto al caldo. Deja que hierva a fuego potente.\r\nPaso 4. Cuando el maíz esté suave agrega el arroz, las papas, sal, pimienta y orégano. Nuevamente deja cocinar, Puedes bajar el fuego a la mitad.\r\nPaso 5. Cuando la papa esté casi lista, que se pueda picar con tenedor sin dificultad, agrega los camarones.\r\nPaso 6. Finalmente, unos 5 minutos después de haber puesto los camarones, agrega los huevos enteros procurando que no se partan la yemas. Deja a fuego bajo hasta que se sancochen (2 o 3 minutos).\r\nPaso 7. Justo cuando retires del fuego la olla, agrega la leche evaporada. Ten cuidado de no incorporarla en plena cocción porque se te corta y echasa perder todo.\r\nPaso 8. Al servir agrega hojas de cilantro y si te provoca, puedes ponerle a esta receta de chupe de camarones un poco de ají amarillo picado en tiras.', 15),
(26, 'Ocopa', 'Durante muchos años se ha conservado la tradición arequipeña en todas las picanterías una que ha hecho que hoy en día disfrutemos de esta deliciosa crema. ', 40, 'facil', 'receta/Ocopa.jpg', 'Paso 1. En un batán de piedra o en la licuadora colocamos 10 ajíes mirasol tostados, ½ cebolla roja picada , un diente de ajo y una rama de huacatay cocido.\r\nPaso 2. Mientras se sigue licuando o moliendo añadimos  un chorro de aceite y uno de agua\r\nPaso 3. Mientras se muele o licua también añadimos ¼ de taza maní tostado y ½ docena galleta de vainilla.\r\nPaso 4. Seguimos licuando o moliendo y según se espese añadimos más agua o aceite\r\nPaso 5. Agregamos 2 tazas de queso fresco y probamos la sal.\r\nPaso 6. Por ultimo, se echa dependiendo su espesor un chorro de leche o aceite según al gusto y ¡LISTO!.', 24),
(27, 'Chupe de pollo', 'Esta receta de chupe de pollo pareciera ser complicada pero en realidad es muy sencilla. Es un plato excelente para prepararlo en casa un día que haga frío o lluvia.', 40, 'intermedio', 'receta/chupe-de-pollo1.jpg', 'Haciendo el caldo de pollo:\r\nPaso 1: Yo lo hago con media cebolla, un tallo de puerro, otro de apio y medio pimiento.\r\nPaso 2: Pongan el caparazón, cuello, patas y otros huesos del pollo a sancochar en agua junto con estos ingredientes y llévenlo a un hervor.\r\nPaso 3: Procuren retirar la espuma y el exceso de grasa que se van formando en la superficie a medida que se hace el caldo. Lo pueden hacer con una cuchara o un pequeño colador.\r\nPaso 4: Manténganlo por 20 minutos y retiren del fuego. Cuelen, dejen enfriar y pongan aparte. A este caldo no se le agrega sal.\r\nHaciendo el mix de picante:\r\nPaso 5: Coloca media taza de aceite de oliva en una licuadora y el chile o ajií picante criollo. Licúa hasta lograr una consistencia aceitosa. Paso 6: Si está muy espeso, agrega más aceite.\r\nHaciendo el chupe:\r\nPaso 7: En una olla, pon el ajo, la cebolla, el puerro y el apio en aceite de oliva. Cuando la cebolla esté transparente, agrega el caldo de pollo, la pechuga y la mazorca de maíz. Cocina a fuego medio hasta que la pechuga esté lista.\r\nPaso 8: Retira la pechuga y la mazorca. Desmenuza el pollo en el tamaño de tu preferencia. Desgrana la mazorca y ponla aparte. Agrega la sal a gusto. Justo aquí se toma una decisión clave: Si se cuela o no el caldo.\r\nPaso 9: Si no lo cuelas, agrega el maíz y una lata de nata. Revuelve a fuego lento por unos 2-3 minutos hasta que la crema se incorpore por completo (más tiempo y la nata se espesa demasiado y se arruina el plato). Al servir, pon cilantro picadito (justo al servir), queso blanco criollo y un chorrito del mix de picante.\r\nPaso 10: Si lo cuelas, el procedimiento es diferente. En una ollita aparte, pon aceite de oliva y ajo porro picadito. Cuando luzca bien, agrega el colado del caldo. Luego, agrega el pollo desmenuzado, el maíz y la nata. Al servir, agrega el cilantro picadito, el queso blanco criollo y un chorrito del mix de picante.\r\nPaso 11: El chupe de pollo colado es más rico porque el puerro y el aceite de oliva están frescos, pero es un poco más trabajoso. Es tu decisión.', 22),
(28, 'Ensalada de atún y palta', 'Esta ensalada de aguacate con atún tiene un toque muy especial. Descubre cómo prepararla y compártela con tu familia, ¡es deliciosa!', 20, 'facil', 'receta/atunypalta.jpg', 'Mezcla todos los ingredientes en un tazón, salpimenta y sirve de inmediato.', 23),
(29, 'PECHUGA DE POLLO EMPANIZADA', 'Plato muy saludable para toda la familia', 30, 'facil', 'receta/pechuga-de-pollo-empanizada-con-polenta-y-ensalada.jpg', 'Paso 1: Salpimienta las pechugas. Combina el queso parmesano con la polenta.\r\nPaso 2: Empaniza las milanesas comenzando por la harina, luego por el huevo y finaliza en la mezcla de polenta.\r\nPaso 3: Dora de dos en dos en una sartén grande con el aceite vegetal. Hazlo a fuego medio aproximadamente 3 minutos por lado.\r\nPaso 4: Integra la cebolla, los jitomates y la espinaca con el aceite de oliva, el limón, el vinagre balsámico y la miel. Salpimienta ligeramente.\r\nPaso 5: Sirve esta mezcla para acompañar las milanesas y ofrece.', 21),
(30, 'Crujiente con pomelo y yogur en vasito', 'Si las gachas o el porridge de avena no te convence por su textura blanda, prueba a preparar tu propio muesli. ', 20, 'facil', 'receta/pomelo y yogurt.jpg', 'Comenzaremos pelando a lo vivo el pomelo, seguidamente le separamos los gajos y le quitamos las telillas blancas. Cortamos en dados la fruta. La repartimos en dos y echamos la cuarta parte en el fondo de cada vaso. Echamos una capa de yogur, una capa de muesli y le añadimos una de las cucharadas de miel. Repetir esta operación hasta acabar con los ingredientes. Servir rápidamente para evitar que los cereales se ablanden.', 6),
(31, 'Smoothie de fresa, aguacate y queso', 'refrescante, cremoso, saciante y delicioso. Se prepara en cero coma, igual que el resto y es perfecto para llevar y beber de camino al trabajo cuando no tenemos tiempo de desayunar tranquilamente en casa', 15, 'facil', 'receta/smoothiefresa.jpg', 'Lavamos las fresas a conciencia bajo un chorro de agua fría, retiramos las hojas verdes y la parte blanca que puedan tener y las colocamos en el vaso de la batidora. Yo he utilizado Thermomix porque le da una textura estupenda a los smoothies, pero podéis usar cualquier otra. Cortamos el aguacate por la mitad, transversalmente, y separamos las dos mitades. Con ayuda de una cuchara retiramos la carne y la añadimos.\r\n\r\nA continuación incorporamos el resto de ingredientes excepto la leche, es decir, el yogur de fresa, la miel y el queso crema. Trituramos a velocidad media-alta durante un par de minutos o hasta que obtengamos una mezcla homogénea. Incorporamos la leche, poco a poco y sin dejar de batir, hasta conseguir el espesor deseado. Guardamos en la nevera hasta el momento de servir.', 4);

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
(3, 11, 63),
(2, 12, 6),
(0.5, 12, 26),
(1, 12, 48),
(2, 12, 7),
(1, 12, 61),
(1, 12, 63),
(1, 12, 62),
(0.5, 13, 26),
(1, 13, 6),
(1, 13, 61),
(1, 13, 63),
(1, 13, 1),
(3, 13, 67),
(2, 13, 45),
(5, 14, 22),
(2, 14, 6),
(2, 14, 63),
(1, 14, 62),
(1, 14, 3),
(1, 14, 5),
(2, 15, 45),
(3, 15, 63),
(5, 15, 28),
(0.5, 16, 26),
(0.5, 16, 9),
(2, 16, 1),
(2, 16, 65),
(1, 16, 64),
(1, 16, 63),
(1, 16, 62),
(2, 17, 66),
(0.5, 17, 27),
(1, 17, 61),
(1, 17, 63),
(1, 17, 62),
(2, 17, 4),
(1, 18, 61),
(8, 18, 4),
(2, 18, 6),
(2, 18, 36),
(2, 18, 62),
(2, 18, 45),
(0.5, 19, 9),
(2, 19, 7),
(1, 19, 6),
(0.3, 19, 56),
(5, 19, 36),
(1, 19, 63),
(1, 19, 62),
(1, 20, 45),
(700, 20, 31),
(1, 20, 6),
(2, 20, 7),
(2, 20, 23),
(6, 20, 22),
(1, 20, 1),
(2, 20, 63),
(2, 20, 4),
(2, 20, 67),
(1, 21, 45),
(0.3, 21, 26),
(1, 21, 6),
(1, 21, 63),
(1, 21, 61),
(1, 21, 62),
(2, 21, 4),
(1, 22, 45),
(1, 22, 63),
(1, 22, 62),
(2, 22, 4),
(1, 22, 6),
(1, 22, 7),
(0.5, 22, 27),
(2, 22, 67),
(2, 22, 1),
(0.5, 23, 26),
(1, 23, 6),
(1, 23, 48),
(1, 23, 45),
(1, 23, 63),
(1, 23, 61),
(1, 23, 62),
(0.3, 23, 56),
(1, 24, 6),
(0.5, 24, 42),
(1, 24, 48),
(0.4, 24, 56),
(0.5, 24, 26),
(1, 24, 63),
(1, 24, 62),
(1, 24, 61),
(1, 24, 4),
(0.5, 24, 9),
(0.5, 25, 59),
(1, 25, 10),
(1, 25, 45),
(1, 25, 7),
(1, 25, 6),
(0.4, 25, 9),
(2, 25, 1),
(5, 25, 36),
(1, 25, 63),
(1, 25, 61),
(1, 26, 6),
(1, 26, 4),
(100, 26, 60),
(1, 26, 63),
(0.1, 26, 59),
(1, 26, 45),
(0.5, 27, 26),
(0.2, 27, 59),
(1, 27, 4),
(1, 27, 6),
(200, 27, 60),
(5, 27, 36),
(1, 27, 63),
(400, 28, 31),
(2, 28, 23),
(1, 28, 38),
(2, 28, 63),
(3, 28, 22),
(1, 28, 4),
(0.5, 29, 26),
(1, 29, 69),
(2, 29, 1),
(1, 29, 34),
(2, 29, 7),
(1, 29, 6),
(1, 29, 4),
(3, 29, 22),
(2, 30, 58),
(2, 31, 23),
(1, 31, 58),
(200, 31, 60),
(0.5, 31, 59);

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
  MODIFY `IdPlato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
