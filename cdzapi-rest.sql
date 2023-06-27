-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-06-2023 a las 03:52:19
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cdzapi-rest`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `constellation` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `characters`
--

INSERT INTO `characters` (`id`, `name`, `constellation`, `rank`, `description`, `image_url`) VALUES
(1, 'Athena', 'None', 'Unknown', 'Goddess of wisdom and war', 'https://i.pinimg.com/originals/35/61/b1/3561b1cf99e93dc9f27d7b313205eeae.jpg'),
(2, 'Pegasus Seiya', 'Pegasus', 'Bronze', 'Main protagonist of the series', 'https://w0.peakpx.com/wallpaper/345/42/HD-wallpaper-seiya-de-pegaso.jpg'),
(3, 'Dragon Shiryu', 'Dragon', 'Bronze', 'Loyal and skilled warrior', 'https://i.pinimg.com/originals/f5/a4/de/f5a4deaeb585895b5194340f4aa0ef0b.jpg'),
(4, 'Cygnus Hyoga', 'Cygnus', 'Bronze', 'Master of the \"Diamond Dust\" technique', 'https://i.pinimg.com/originals/cf/f7/23/cff7230a47890b3d964b3a080ce36dcf.jpg'),
(5, 'Andromeda Shun', 'Andromeda', 'Bronze', 'Gentle and compassionate fighter', 'https://i.pinimg.com/474x/f7/47/1f/f7471fd9bb838812195ce4845bd52c24.jpg'),
(6, 'Phoenix Ikki', 'Phoenix', 'Bronze', 'Mysterious and powerful warrior', 'https://64.media.tumblr.com/83afb1e3c152ef08e1545d55fa0cc5c4/tumblr_nqfrlyxVQd1upt0mdo1_500.png'),
(7, 'Unicorn Jabu', 'Unicorn', 'Bronze', 'The spirited Bronze Saint of the Unicorn constellation.', 'https://i.pinimg.com/474x/b2/dc/e1/b2dce1cff117cf58e6d2e0c2f1bc26bb.jpg'),
(8, 'Bear Geki', 'Bear', 'Bronze', 'The fierce Bronze Saint of the Bear constellation.', 'https://i.pinimg.com/originals/ff/b4/9a/ffb49a7a3f49639e3f5ecc5484b7771f.jpg'),
(9, 'Silver Seiya', 'Pegasus', 'Silver', 'The legendary Silver Saint of the Pegasus constellation.', 'https://i.pinimg.com/originals/cb/7b/08/cb7b0824c73280ff3373615d8c386824.jpg'),
(10, 'Silver Shiryu', 'Dragon', 'Silver', 'The strong-willed Silver Saint of the Dragon constellation.', 'https://i.pinimg.com/originals/95/ad/fc/95adfc22332161b9b8101701038fda0c.jpg'),
(11, 'Silver Hyoga', 'Cygnus', 'Silver', 'The calm and collected Silver Saint of the Cygnus constellation.', 'https://e1.pxfuel.com/desktop-wallpaper/557/539/desktop-wallpaper-270-ideas-de-hyoga-en-2021-cygnus-hyoga-thumbnail.jpg'),
(12, 'Silver Shun', 'Andromeda', 'Silver', 'The kind-hearted Silver Saint of the Andromeda constellation.', 'https://i.pinimg.com/474x/d0/61/04/d0610481907e93fcefd06935eca060e6--saints.jpg'),
(13, 'Silver Ikki', 'Phoenix', 'Silver', 'The fierce and enigmatic Silver Saint of the Phoenix constellation.', 'https://w0.peakpx.com/wallpaper/114/31/HD-wallpaper-ikki-fenix-caballeros.jpg'),
(14, 'Aries Mu', 'Aries', 'Gold', 'Aries Mu is a loyal and dedicated Gold Saint who protects Athena with unwavering determination. With his powerful Cosmo energy and the Aries Cloth, Mu defends justice and fights against any threat to peace.', 'https://w0.peakpx.com/wallpaper/457/437/HD-wallpaper-mu-de-aries-caballeros-del-zodiaco.jpg'),
(15, 'Taurus Aldebaran', 'Taurus', 'Gold', 'Taurus Aldebaran is a formidable Gold Saint known for his incredible physical strength and indomitable spirit. He wears the Taurus Cloth and uses his mighty attacks to crush his enemies.', 'https://i.pinimg.com/736x/bd/c4/f9/bdc4f9b5cc2174f17a87e957d4774d97--manga-art-taurus.jpg'),
(16, 'Gemini Saga', 'Gemini', 'Gold', 'Gemini Saga is a complex and enigmatic Gold Saint who possesses immense power. With his dual personalities, Saga is a force to be reckoned with, capable of great acts of both good and evil.', 'https://i.pinimg.com/originals/24/a3/14/24a314d80bc3eac6fc547dec0669becf.jpg'),
(17, 'Cancer Deathmask', 'Cancer', 'Gold', 'Cancer Deathmask is a fearsome Gold Saint known for his ruthless and merciless nature. He wears the Cancer Cloth and uses his deadly techniques to strike fear into the hearts of his opponents.', 'https://i.pinimg.com/564x/e3/ec/8a/e3ec8a587751205daa47fc1367709cfc.jpg'),
(18, 'Leo Aiolia', 'Leo', 'Gold', 'Leo Aiolia is a noble and courageous Gold Saint who fiercely protects Athena. With his incredible speed and power, Aiolia wears the Leo Cloth and delivers devastating attacks to his foes.', 'https://i.pinimg.com/736x/62/3b/c9/623bc925e45f3cdc804d8e03524618b7--gold-leo.jpg'),
(19, 'Virgo Shaka', 'Virgo', 'Gold', 'Virgo Shaka is a wise and enlightened Gold Saint known for his deep spirituality and mastery of the Sixth Sense. With the Virgo Cloth, Shaka possesses incredible defensive and offensive capabilities.', 'https://e1.pxfuel.com/desktop-wallpaper/654/439/desktop-wallpaper-los-caballeros-del-zodiaco-shaka-de-virgo-thumbnail.jpg'),
(20, 'Libra Dohko', 'Libra', 'Gold', 'Libra Dohko is a legendary Gold Saint with centuries of wisdom and experience. He wears the Libra Cloth and wields incredible power, capable of unleashing devastating attacks against his adversaries.', 'https://e1.pxfuel.com/desktop-wallpaper/606/81/desktop-wallpaper-gold-saint-libra-dohko-with-divine-cloth-saint-seiya-soul-of-gold-artwork-by-spaceweaver-libra-dohko.jpg'),
(21, 'Scorpio Milo', 'Scorpio', 'Gold', 'Scorpio Milo is a charismatic and cunning Gold Saint known for his deadly precision and agility. With the Scorpio Cloth, Milo strikes fear into his enemies with his venomous attacks.', 'https://i.pinimg.com/originals/c7/30/8e/c7308ed04ec882d21deeebb70efdf596.jpg'),
(22, 'Sagittarius Aiolos', 'Sagittarius', 'Gold', 'Sagittarius Aiolos is a legendary Gold Saint who sacrificed himself to protect Athena. Known for his unparalleled speed and accuracy, Aiolos wears the Sagittarius Cloth and fights with unwavering loyalty.', 'https://w0.peakpx.com/wallpaper/294/821/HD-wallpaper-seiya-de-sagitario.jpg'),
(23, 'Capricorn Shura', 'Capricorn', 'Gold', 'Capricorn Shura is a disciplined and powerful Gold Saint who adheres strictly to his principles. With the Capricorn Cloth, Shura showcases his exceptional swordsmanship and formidable strength in battle.', 'https://i.pinimg.com/474x/58/28/c6/5828c69ddbe519285d943dfddf1bee4e.jpg'),
(24, 'Aquarius Camus', 'Aquarius', 'Gold', 'Aquarius Camus is a calm and composed Gold Saint known for his mastery of ice-based techniques. Wearing the Aquarius Cloth, Camus freezes his opponents with his powerful attacks and defends Athena with unwavering loyalty.', 'https://i.pinimg.com/originals/3d/ef/0f/3def0fe3d8be76cf4e8d93403952c373.jpg'),
(25, 'Pisces Aphrodite', 'Pisces', 'Gold', 'Pisces Aphrodite is a graceful and enigmatic Gold Saint with an ethereal beauty. With the Pisces Cloth, Aphrodite manipulates the power of love and illusions to confuse and defeat his enemies.', 'https://i.pinimg.com/736x/36/d3/2e/36d32e192286ddccaa57bcd67c738e14.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
