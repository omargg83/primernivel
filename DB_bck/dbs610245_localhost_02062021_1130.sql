-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-06-2021 a las 16:30:51
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbs610245`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_bio`
--

CREATE TABLE `cat_bio` (
  `id_bio` int(10) UNSIGNED NOT NULL,
  `nombre_bio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_bio`
--

INSERT INTO `cat_bio` (`id_bio`, `nombre_bio`) VALUES
(1, 'Pfizer/BioNTech'),
(2, 'AstraZeneca'),
(3, 'SinoVac'),
(4, 'CanSino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_clues`
--

CREATE TABLE `cat_clues` (
  `id_clues` int(10) UNSIGNED NOT NULL,
  `clv_clues` varchar(15) NOT NULL,
  `nombre_clues` varchar(255) NOT NULL,
  `id_juris` int(10) UNSIGNED NOT NULL,
  `id_mpio` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_clues`
--

INSERT INTO `cat_clues` (`id_clues`, `clv_clues`, `nombre_clues`, `id_juris`, `id_mpio`) VALUES
(1, 'HGSSA015294', 'JURISDICCION SANITARIA I PACHUCA', 1, 48),
(2, 'HGSSA015306', 'JURISDICCION SANITARIA II TULANCINGO', 2, 77),
(3, 'HGSSA015311', 'JURISDICCION SANITARIA III TULA', 3, 76),
(4, 'HGSSA015323', 'JURISDICCION SANITARIA IV HUICHAPAN', 4, 29),
(5, 'HGSSA015335', 'JURISDICCION SANITARIA V ZIMAPAN', 5, 84),
(6, 'HGSSA015340', 'JURISDICCION SANITARIA VI IXMIQUILPAN', 6, 30),
(7, 'HGSSA015352', 'JURISDICCION SANITARIA VII ACTOPAN', 7, 3),
(8, 'HGSSA015364', 'JURISDICCION SANITARIA VIII METZTITLAN', 8, 37),
(9, 'HGSSA015376', 'JURISDICCION SANITARIA IX MOLANGO', 9, 42),
(10, 'HGSSA015381', 'JURISDICCION SANITARIA X HUEJUTLA', 10, 28),
(11, 'HGSSA015393', 'JURISDICCION SANITARIA XI APAN', 11, 8),
(12, 'HGSSA015405', 'JURISDICCION SANITARIA XII TIZAYUCA', 12, 69),
(13, 'HGSSA015410', 'JURISDICCION SANITARIA XIII OTOMI-TEPEHUA', 13, 53),
(14, 'HGSSA007731', 'JURISDICCION SANITARIA XIV TEPEJI', 14, 74),
(15, 'HGSSA007755', 'JURISDICCION SANITARIA XV ATOTONILCO', 15, 12),
(16, 'HGSSA007740', 'JURISDICCION SANITARIA XVI JACALA', 16, 31),
(17, 'HGSSA007722', 'JURISDICCION SANITARIA XVII ZACUALTIPAN', 17, 81),
(18, 'HGSSA000001', 'Dirección de Primer Nivel de Atención', 18, 51);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_jurisdicciones`
--

CREATE TABLE `cat_jurisdicciones` (
  `id_juris` int(10) UNSIGNED NOT NULL,
  `clv_juris` varchar(255) NOT NULL,
  `nombre_juris` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_jurisdicciones`
--

INSERT INTO `cat_jurisdicciones` (`id_juris`, `clv_juris`, `nombre_juris`) VALUES
(1, '01', 'PACHUCA'),
(2, '02', 'TULANCINGO'),
(3, '03', 'TULA'),
(4, '04', 'HUICHAPAN'),
(5, '05', 'ZIMAPÁN'),
(6, '06', 'IXMIQUILPAN'),
(7, '07', 'ACTOPAN'),
(8, '08', 'METZTITLÁN'),
(9, '09', 'MOLANGO'),
(10, '10', 'HUEJUTLA'),
(11, '11', 'APAN'),
(12, '12', 'TIZAYUCA'),
(13, '13', 'OTOMÍ TEPEHUA'),
(14, '14', 'TEPEJI'),
(15, '15', 'ATOTONILCO'),
(16, '16', 'JACALA'),
(17, '17', 'ZACUALTIPÁN'),
(18, '99', 'NO ESPECIFICADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_municipios`
--

CREATE TABLE `cat_municipios` (
  `id_mpio` int(10) UNSIGNED NOT NULL,
  `clv_mpio` varchar(255) NOT NULL,
  `nombre_mpio` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_municipios`
--

INSERT INTO `cat_municipios` (`id_mpio`, `clv_mpio`, `nombre_mpio`) VALUES
(1, '001', 'ACATLÁN'),
(2, '002', 'ACAXOCHITLÁN'),
(3, '003', 'ACTOPAN'),
(4, '004', 'AGUA BLANCA DE ITURBIDE'),
(5, '005', 'AJACUBA'),
(6, '006', 'ALFAJAYUCAN'),
(7, '007', 'ALMOLOYA'),
(8, '008', 'APAN'),
(9, '009', 'EL ARENAL'),
(10, '010', 'ATITALAQUIA'),
(11, '011', 'ATLAPEXCO'),
(12, '012', 'ATOTONILCO EL GRANDE'),
(13, '013', 'ATOTONILCO DE TULA'),
(14, '014', 'CALNALI'),
(15, '015', 'CARDONAL'),
(16, '016', 'CUAUTEPEC DE HINOJOSA'),
(17, '017', 'CHAPANTONGO'),
(18, '018', 'CHAPULHUACÁN'),
(19, '019', 'CHILCUAUTLA'),
(20, '020', 'ELOXOCHITLÁN'),
(21, '021', 'EMILIANO ZAPATA'),
(22, '022', 'EPAZOYUCAN'),
(23, '023', 'FRANCISCO I. MADERO'),
(24, '024', 'HUASCA DE OCAMPO'),
(25, '025', 'HUAUTLA'),
(26, '026', 'HUAZALINGO'),
(27, '027', 'HUEHUETLA'),
(28, '028', 'HUEJUTLA DE REYES'),
(29, '029', 'HUICHAPAN'),
(30, '030', 'IXMIQUILPAN'),
(31, '031', 'JACALA DE LEDEZMA'),
(32, '032', 'JALTOCÁN'),
(33, '033', 'JUÁREZ HIDALGO'),
(34, '034', 'LOLOTLA'),
(35, '035', 'METEPEC'),
(36, '036', 'SAN AGUSTÍN METZQUITITLÁN'),
(37, '037', 'METZTITLÁN'),
(38, '038', 'MINERAL DEL CHICO'),
(39, '039', 'MINERAL DEL MONTE'),
(40, '040', 'LA MISIÓN'),
(41, '041', 'MIXQUIAHUALA DE JUÁREZ'),
(42, '042', 'MOLANGO DE ESCAMILLA'),
(43, '043', 'NICOLÁS FLORES'),
(44, '044', 'NOPALA DE VILLAGRÁN'),
(45, '045', 'OMITLÁN DE JUÁREZ'),
(46, '046', 'SAN FELIPE ORIZATLÁN'),
(47, '047', 'PACULA'),
(48, '048', 'PACHUCA DE SOTO'),
(49, '049', 'PISAFLORES'),
(50, '050', 'PROGRESO DE OBREGÓN'),
(51, '051', 'MINERAL DE LA REFORMA'),
(52, '052', 'SAN AGUSTÍN TLAXIACA'),
(53, '053', 'SAN BARTOLO TUTOTEPEC'),
(54, '054', 'SAN SALVADOR'),
(55, '055', 'SANTIAGO DE ANAYA'),
(56, '056', 'SANTIAGO TULANTEPEC DE LUGO GUERRERO'),
(57, '057', 'SINGUILUCAN'),
(58, '058', 'TASQUILLO'),
(59, '059', 'TECOZAUTLA'),
(60, '060', 'TENANGO DE DORIA'),
(61, '061', 'TEPEAPULCO'),
(62, '062', 'TEPEHUACÁN DE GUERRERO'),
(63, '063', 'TEPEJI DEL RÍO DE OCAMPO'),
(64, '064', 'TEPETITLÁN'),
(65, '065', 'TETEPANGO'),
(66, '066', 'VILLA DE TEZONTEPEC'),
(67, '067', 'TEZONTEPEC DE ALDAMA'),
(68, '068', 'TIANGUISTENGO'),
(69, '069', 'TIZAYUCA'),
(70, '070', 'TLAHUELILPAN'),
(71, '071', 'TLAHUILTEPA'),
(72, '072', 'TLANALAPA'),
(73, '073', 'TLANCHINOL'),
(74, '074', 'TLAXCOAPAN'),
(75, '075', 'TOLCAYUCA'),
(76, '076', 'TULA DE ALLENDE'),
(77, '077', 'TULANCINGO DE BRAVO'),
(78, '078', 'XOCHIATIPAN'),
(79, '079', 'XOCHICOATLÁN'),
(80, '080', 'YAHUALICA'),
(81, '081', 'ZACUALTIPÁN DE ÁNGELES'),
(82, '082', 'ZAPOTLÁN DE JUÁREZ'),
(83, '083', 'ZEMPOALA'),
(84, '084', 'ZIMAPÁN'),
(85, '999', 'NO ESPECIFICADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_proceso`
--

CREATE TABLE `cat_proceso` (
  `id_proceso` int(10) UNSIGNED NOT NULL,
  `nombre_proceso` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_proceso`
--

INSERT INTO `cat_proceso` (`id_proceso`, `nombre_proceso`) VALUES
(1, 'Vacunación contra COVID-19 a población de 60 años y más'),
(2, 'Vacunación contra COVID-19 a población de 50 a 59 años'),
(3, 'Vacunación contra COVID-19 a personal educativo (SEPH)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_remesas`
--

CREATE TABLE `cat_remesas` (
  `id_remesa` int(10) UNSIGNED NOT NULL,
  `id_bio` int(10) UNSIGNED NOT NULL,
  `id_proceso` int(10) UNSIGNED NOT NULL,
  `fecha_recepcion` date NOT NULL,
  `cant_frasco` int(10) NOT NULL,
  `cant_dosis` int(10) NOT NULL,
  `lote` varchar(255) NOT NULL,
  `nombre_remesa` varchar(255) NOT NULL,
  `destinado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_remesas`
--

INSERT INTO `cat_remesas` (`id_remesa`, `id_bio`, `id_proceso`, `fecha_recepcion`, `cant_frasco`, `cant_dosis`, `lote`, `nombre_remesa`, `destinado`) VALUES
(1, 3, 2, '2021-05-02', 1111, 111, 'pendiente', 'Remesa para vacunar 50 a 59 años', 'remesa para vacunación de adultos de 50 a 59 años primeras dosis en los municipios de Atitalaquia, Mral del chico, Mral del Monte, Mral de la Reforma, Tizayuca y Zempoala iniciando vacunación el día 4 de mayo de 2021'),
(2, 4, 3, '2021-05-08', 7962, 79620, 'pendiente', 'Remesa para vacunar personal educativo Hidalgo', 'Remesa para vacunar personal educativo de los 84 municipios del 12 al 14 mayo de 2021'),
(3, 2, 2, '2021-05-21', 9652, 96520, '21-mayo (lote NF007 F.C. jul/21) | 24-mayo (lote NF007 F.C. ago/21)', 'Remesas AstraZeneca 21&24-mayo-2021', 'Adultos 50 a 59 años de 21 municipios del 25 al 29 de Mayo de 2021'),
(4, 2, 1, '2021-05-28', 15900, 159000, 'pendiente', 'Remesa AstraZeneca 2ª dosis 60 y mas', 'Segundas dosis Adultos Mayores para aplicación 29 de mayo al 6 de junio de 2021');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_sedes`
--

CREATE TABLE `cat_sedes` (
  `id_sede` int(10) UNSIGNED NOT NULL,
  `id_juris` int(10) UNSIGNED NOT NULL,
  `id_mpio` int(10) UNSIGNED NOT NULL,
  `id_remesa` int(10) UNSIGNED NOT NULL,
  `id_proceso` int(10) UNSIGNED NOT NULL,
  `clues_sede` varchar(15) NOT NULL,
  `nombre_sede` varchar(255) NOT NULL,
  `sede_activa` int(2) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_sedes`
--

INSERT INTO `cat_sedes` (`id_sede`, `id_juris`, `id_mpio`, `id_remesa`, `id_proceso`, `clues_sede`, `nombre_sede`, `sede_activa`) VALUES
(1, 12, 69, 1, 2, 'HGSSA003603', 'Auditorio Municipal/CS Tizayuca', 0),
(2, 12, 83, 1, 2, 'HGSSA004356', 'Centro de Salud Zempoala', 0),
(3, 12, 83, 1, 2, 'HGSSA004385', 'Centro de Salud Tellez', 0),
(4, 12, 69, 1, 2, 'HGSSA003603', 'Escuela Primaria Reynaldo Gómez Aldana / CS Tizayuca', 0),
(5, 7, 3, 2, 3, 'HGSSA000161', 'ESC SEC GRAL No 1 MIGUEL HIDALGO, ACTOPAN', 0),
(6, 7, 50, 2, 3, 'HGSSA002652', 'ESC PRIM JUSTO SIERRA, PROGRESO DE OBREGON', 0),
(7, 7, 23, 2, 3, 'HGIMO000474', 'SECUNDARIA TÉCNICA No. 14, FCO. I. MADERO', 0),
(8, 15, 12, 2, 3, 'HGSSA007944', 'ESCUELA SECUNDARIA JORGE VIESCA PALMA, ATOTONILCO EL GRANDE', 0),
(9, 10, 28, 2, 3, 'HGSSA004962', 'ESCUELA PRIMARIA FAUSTA CARETTA DE LA VEGA, HUEJUTLA DE REYES', 0),
(10, 10, 11, 2, 3, 'HGSSA000511', 'CECyTEH ATLAPEXCO', 0),
(11, 4, 29, 2, 3, 'HGSSA001515', 'ESCUELA PRIMARIA GENERAL JULIAN VILLAGRAN, HUICHAPAN', 0),
(12, 4, 59, 2, 3, 'HGSSA003072', 'ESCUELA PRIMARIA IGNACIO MANUEL ALTAMIRANO, TECOZAUTLA', 0),
(13, 6, 30, 2, 3, 'HGSSA001602', 'ESCUELA SECUNDARIA JUSTO SIERRA, IXMIQUILPAN', 0),
(14, 16, 18, 2, 3, 'S/C', 'ESCUELA SECUNDARIA GENERAL \"AGUSTIN MELGAR\"  CHAPULHUACAN', 0),
(15, 16, 31, 2, 3, 'HGSSA001800', 'ESCUELA PRIMARIA \"EL PENSADOR MEXICANO\", JACALA DE LEDEZMA', 0),
(16, 8, 37, 2, 3, 'HGSSA001923', 'CECyTEH PLANTEL MEZTITLÁN', 0),
(17, 9, 42, 2, 3, 'HGSSA002174', 'CBTA No 6 PLANTEL MOLANGO', 0),
(18, 9, 73, 2, 3, 'HGSSA015503', 'SECUNDARIA GENERAL JESUS REYES HEROLES, TLANCHINOL', 0),
(19, 13, 2, 2, 3, 'HGSSA000062', 'CECyTEH PLANTEL ACAXOCHITLÁN', 0),
(20, 13, 60, 2, 3, 'HGSSA003154', 'UNIVERSIDAD INTERCULTURAL DEL ESTADO DE HIDALGO (UICEH), TENANGO DE DORIA', 0),
(21, 1, 48, 2, 3, 'HGSAA002570', 'POLIFORUM CARLOS MARTÍNEZ BALMORI, UAEH ', 0),
(22, 1, 48, 2, 3, 'HGSSA015492', 'CIUDAD DEL CONOCIMIENTO Y LA CULTURA, PACHUCA', 0),
(23, 1, 48, 2, 3, 'HGSSA015492', 'CENTRO DE BACHILLERATO TECNOLOGICO INDUSTRIAL Y DE SERVICIOS NO. 8 (CBTis 8)', 0),
(24, 1, 48, 2, 3, 'HGSAA002570', 'CENTRO REGIONAL DE EDUCACIÓN NORMAL \"BENITO JUÁREZ\"', 0),
(25, 1, 48, 2, 3, 'HGSSA015492', 'INSTITUTO TECNOLÓGICO DE PACHUCA (ITP)', 0),
(26, 1, 48, 2, 3, 'HGSSA015492', 'CENTRO DE BACHILLERATO TECNOLOGICO INDUSTRIAL Y DE SERVICIOS NO. 222 (CBTis 222)', 0),
(27, 14, 63, 2, 3, 'HGSAA003364', 'ESC PRIM MELCHOR OCAMPO (UBICADA EN PLAZA PRINCIPAL)', 0),
(28, 14, 74, 2, 3, 'HGSSA003895', 'ESC SEC BENITO JUÁREZ, TLAXCOAPAN', 0),
(29, 12, 69, 2, 3, 'HGSSA003603', 'ESCUELA PRIMARIA REYNALDO GÓMEZ, TIZAYUCA', 0),
(30, 12, 83, 2, 3, 'HGSSA004356', 'AUDITORIO MUNICIPAL ZEMPOALA', 0),
(31, 3, 76, 2, 3, 'HGSSA003965', 'UNIVERSIDAD TECNOLÓGICA TULA-TEPEJÍ', 0),
(32, 2, 77, 2, 3, 'HGSSA018000', 'UNIVERSIDAD TECNOLOGICA DE TULANCINGO (UTEC)', 0),
(33, 17, 81, 2, 3, 'HGSSA004303', 'ESCUELA SECUNDARIA GENERAL TEOFILO RIVERA, ZACUALTIPAN DE ÁNGELES', 0),
(34, 5, 84, 2, 3, 'HGSSA015335', 'ESCUELA SECUNDARIA GENERAL FELIPE ANGELES, ZIMAPÁN', 0),
(35, 11, 8, 2, 3, 'HGSSA00136', 'ESCUELA SUPERIOR DE APAN, UAEH', 0),
(36, 1, 48, 2, 3, 'HGIST000106', 'HOSPITAL DRA. COLUMBA RIVERA OSORIO', 0),
(37, 10, 28, 3, 2, 'HGSSA004962', 'GALERA MUNICIPAL TEHUETLAN', 0),
(38, 10, 28, 3, 2, 'HGSSA004962', 'GALERA MUNICIPAL IXCATEPEC', 0),
(39, 10, 28, 3, 2, 'HGSSA004962', 'ESCUELA SEC. GRAL. HEROE  ANTONIO REYES', 0),
(40, 10, 28, 3, 2, 'HGSSA004962', 'ESC PRIM BARTOLOME DE LAS CASAS (LOC. CHALAHUIYAPA)', 0),
(41, 11, 8, 3, 2, 'HGSSA000395', 'ITESA (INSTITUTO TECNOLOGICO SUPERIOR DE APAN)', 0),
(42, 2, 16, 3, 2, 'HGSSA000873', 'AUDITORIO MUNICIPAL DE CUAUTEPEC', 0),
(43, 2, 56, 3, 2, 'HGSSA002990', 'AUDITORIO MUNICIPAL DE SANTIAGO TULANTEPEC', 0),
(44, 11, 61, 3, 2, 'HGSSA003195', 'AUDITORIO MUNICIPAL TEPEAPULCO / CS TEPEAPULCO', 0),
(45, 3, 76, 3, 2, 'HGSSA003965', 'AUDITORIO MUNICIPAL PLAZA NACIONALISMO  DE TULA', 1),
(46, 6, 30, 3, 2, 'HGSSA001602', 'ESCUELA SECUNDARIA JUSTO SIERRA', 1),
(47, 14, 63, 3, 2, 'HGSSA003364', 'AUDITORIO DE LA UNIDAD DEPORTIVA', 1),
(48, 7, 3, 3, 2, 'HGSSA000161', 'INSTALACIONES DE LA FERIA /CS ACTOPAN', 1),
(49, 3, 67, 3, 2, 'HGSSA003504', 'ESCUELA PRIMARIA JUAN ALDAMA', 1),
(50, 7, 41, 3, 2, 'HGSSA004880', 'CANCHAS EL CALVARIO', 1),
(51, 14, 13, 3, 2, 'HGSSA000622', 'AUDITORIO MUNICIPAL DE ATOTONILCO DE TULA / CS ATOTONILCO', 1),
(52, 5, 84, 3, 2, 'HGSSA004390', 'CANCHA MUNICIPAL DE BASQUETBALL DE ZIMAPAN', 0),
(53, 5, 84, 3, 2, 'HGSSA004390', 'ESCUELA PRIMARIA CELERINO TORRES (LOCALIDAD FRANCISCO I. MADERO)', 0),
(54, 7, 23, 3, 2, 'HGSSA001206', 'ESC. SEC. TEC. No. 14', 1),
(55, 7, 23, 3, 2, 'HGSSA001206', 'ESC. PRIM. ÁLVARO OBREGÓN (SAN JUAN TEPA)', 1),
(56, 7, 23, 3, 2, 'HGSSA001206', 'CANCHA EL ROSARIO', 1),
(57, 7, 54, 3, 2, 'HGSSA002874', 'EXPLANADA DE LA PRESIDENCIA MUNICIPAL DE SAN SALVADOR', 1),
(58, 17, 81, 3, 2, 'HGSSA004303', 'SECUNDARIA TEOFILO RIVERA', 0),
(59, 15, 12, 3, 2, 'HGSSA000581', 'AUDITORIO / CS ATOTONILCO EL GRANDE', 0),
(60, 15, 24, 3, 2, 'HGSSA001252', 'COBAEH HUASCA', 0),
(61, 4, 29, 3, 2, 'HGSSA001515', 'AUDITORIO MUNICIPAL', 0),
(62, 4, 29, 3, 2, 'HGSSA001515', 'ESC PRIM JULIAN VILLAGRAN', 1),
(63, 4, 44, 3, 2, 'HGSSA002256', 'AUDITORIO MUNICIPAL', 0),
(64, 15, 45, 3, 2, 'HGSSA002302', 'AUDITORIO MUNICIPAL /CS SALUD ', 0),
(65, 2, 77, 2, 2, 'HGSSA004105', 'CENTRO DE READAPTACION SOCIAL DE TULANCINGO', 0),
(66, 4, 29, 2, 2, 'HGSSA001515', 'CENTRO DE READAPTACION SOCIAL DE HUICHAPAN', 0),
(67, 7, 3, 4, 1, 'HGSSA000161', 'INSTALACIONES DE LA FERIA /CS ACTOPAN', 1),
(68, 14, 5, 4, 1, 'HGSSA000296', 'ESC SECUNDARIA  GRAL ALFONSO REYES', 1),
(69, 14, 13, 4, 1, 'HGSSA000622', 'AUDITORIO MUNICIPAL DE ATOTONILCO DE TULA', 1),
(70, 7, 23, 4, 1, 'HGSSA001206', 'ESC. SEC. TEC. No. 14 (FRANCISCO I. MADERO)', 1),
(71, 7, 23, 4, 1, 'HGSSA001206', 'ESC. PRIM. ÁLVARO OBREGÓN (SAN JUAN TEPA)', 1),
(72, 7, 23, 4, 1, 'HGSSA001206', 'CANCHAS EL ROSARIO (FRANCISCO I. MADERO)', 1),
(73, 6, 30, 4, 1, 'HGSSA001602', 'ESCUELA SECUNDARIA  JUSTO SIERRA', 1),
(74, 7, 41, 4, 1, 'HGSSA004880', 'CANCHAS EL CALVARIO', 1),
(75, 7, 50, 4, 1, 'HGSSA002652', 'CENTRO DE CONVENCIONES \"BICENTENARIO\"', 1),
(76, 7, 54, 4, 1, 'HGSSA002874', 'EXPLANADA DE LA PRESIDENCIA MUNICIPAL', 1),
(77, 14, 63, 4, 1, 'HGSSA003364', 'AUDITORIO DE UNIDAD DEPORTIVA DE TEPEJI DEL RIO', 1),
(78, 14, 65, 4, 1, 'HGSSA003463', 'AUDITORIO MUNICIPAL DE TETEPANGO', 1),
(79, 3, 67, 4, 1, 'HGSSA003504', 'ESCUELA PRIMARIA JUAN ALDAMA', 1),
(80, 3, 70, 4, 1, 'HGSSA003656', 'ESC. PRIM JOSEFA ORTIZ DE  DOMINGUEZ', 1),
(81, 14, 74, 4, 1, 'HGSSA003895', 'ESCUELA SECUNDARIA BENITO JUAREZ', 1),
(82, 3, 76, 4, 1, 'HGSSA003965', 'AUDITORIO MUNICIPAL PLAZA DEL NACIONALISMO', 1),
(83, 17, 81, 4, 1, 'HGSSA004303', 'ESC SECUNDARIA TEOFILO RIVERA', 1),
(84, 5, 84, 4, 1, 'HGSSA004390', 'CANCHA MUNICIPAL DE BASQUETBALL DE ZIMAPAN', 1),
(85, 4, 17, 2, 2, 'HGSSA000955', 'EXPLANANADA CENTRO DE SALUD CHAPANTONGO', 1),
(86, 4, 17, 2, 2, 'HGSSA000955', 'A UN COSTADO CENTRO DE SALUD SAN BARTOLO OZOCALPAN', 1),
(87, 4, 17, 2, 2, 'HGSSA000955', 'A UN COSTADO DEL CENTRO DE SALUD TLAHUINILOLPAN', 1),
(88, 15, 1, 4, 2, 'HGSSA000016', 'CENTRO DE SALUD ACATLÁN', 1),
(89, 13, 2, 4, 2, 'HGSSA000062', 'AUDITORIO MUNICIPAL DE ACAXOCHITLÁN', 1),
(90, 13, 4, 4, 2, 'HGSSA000260', 'AUDITORIO MUNICIPAL DE AGUA BLANCA', 1),
(91, 14, 5, 4, 2, 'HGSSA000296', 'ESC SECUNDARIA  GRAL ALFONSO REYES', 1),
(92, 6, 6, 4, 2, 'HGSSA015631 ', 'ESCUELA PRIMARIA HIMNO NACIONAL, CENTRO', 1),
(93, 11, 7, 4, 2, 'HGSSA000371', 'ESCUELA PRIMARIA GONZALO G. AGIS', 1),
(94, 10, 11, 4, 2, 'HGSSA000523', 'AUDITORIO MUNICIPAL DE ATLAPEXCO', 1),
(95, 9, 14, 4, 2, 'HGSSA000663', 'UNIDAD DEPORTIVA DE CALNALI', 1),
(96, 6, 15, 4, 2, 'HGSSA000716', 'ESCUELA PRIMARIA LICENCIADO JESUS ZENIL', 1),
(97, 16, 18, 4, 2, 'HGSSA000984', 'CANCHA TECHADA  DE CHAPULHUACÁN', 1),
(98, 16, 18, 4, 2, 'HGSSA000984', 'AUDITORIO DE SANTA ANA', 1),
(99, 6, 19, 4, 2, 'HGSSA001054', 'COBAEH CHILCUAUTLA', 1),
(100, 8, 20, 4, 2, 'HGSSA001100', 'AUDITORIO MUNICIPAL DE ELOXOCHITLÁN', 1),
(101, 11, 21, 4, 2, 'HGSSA001136', 'AUDITORIO MUNICIPAL DE EMILIANO ZAPATA', 1),
(102, 10, 25, 4, 2, 'HGSSA001264', 'GALERA MUNICIPAL DE HUAUTLA', 1),
(103, 10, 25, 4, 2, 'HGSSA001264', 'GALERA DE TECOCOLUCO CALPAN', 1),
(104, 9, 26, 4, 2, 'HGSSAA001346', 'AUDITORIO MUNICIPAL DE HUAZALINGO', 1),
(105, 13, 27, 4, 2, 'HGSSA001363', 'CANCHA TECHADA DEL MUNICIPIO DE HUEHUETLA', 1),
(106, 16, 31, 4, 2, 'HGSSA001800', 'AUDITORIO MUNICIPAL \"CORONEL ALFONSO MAYORGA\"', 1),
(107, 10, 32, 4, 2, 'HGSSA007860', 'GALERA MUNICIPAL DE JALTOCÁN', 1),
(108, 8, 33, 4, 2, 'HGSSA001853', 'CANCHA TECHADA  DE SANTA MARIA JUAREZ', 1),
(109, 16, 40, 4, 2, 'HGSSA002075', 'NUEVO AUDITORIO MUNICIPAL', 1),
(110, 9, 34, 4, 2, 'HGSSA001865', 'TELESECUNDARIA No. 87 \"AÑO JUÁREZ\"', 1),
(111, 13, 35, 4, 2, 'HGSSA001906', 'AUDITORIO MUNICIPAL DE METEPEC', 1),
(112, 8, 37, 4, 2, 'HGSSA001923', 'CECYTEH PLANTEL METZTITLÁN', 1),
(113, 9, 42, 4, 2, 'HGSSA001923', 'CBTA NUM. 6', 1),
(114, 5, 43, 4, 2, 'HGSSA002215', 'AUDITORIO MUNICIPAL DE NICOLÁS FLORES JUNTO A PRESIDENCIA', 1),
(115, 5, 47, 4, 2, 'HGSSA002396', 'AUDITORIO JILIAPAN', 1),
(116, 16, 49, 4, 2, 'HGSSA002611', 'PLAZA TECHADA FRENTE A PRESIDENCIA MUNICIPAL', 1),
(117, 7, 50, 4, 2, 'HGSSA002652', 'CENTRO DE CONVENCIONES \"BICENTENARIO\"', 1),
(118, 8, 36, 4, 2, 'HGSSA001911', 'AUDITORIO MUNICIPAL DE SAN AGUSTÍN METZQUITITLÁN', 1),
(119, 8, 36, 4, 2, 'HGSSA001911', 'TUZANAPA', 1),
(120, 13, 53, 4, 2, 'HGSSA007911', 'AUDITORIO MUNICIPAL DE SAN BARTOLO TUTOTEPEC', 1),
(121, 10, 46, 4, 2, 'HGSSA002326', 'AUDITORIO MUNICIPAL ORIZATLAN', 1),
(122, 10, 46, 4, 2, 'HGSSA002326', 'GALERA LAS PIEDRAS', 1),
(123, 10, 46, 4, 2, 'HGSSA002326', 'GALERA AHUATITLA', 1),
(124, 7, 55, 4, 2, 'HGSSA002903', 'AUDITORIO MUNICIPAL DE SANTIAGO DE ANAYA', 1),
(125, 2, 57, 4, 2, 'HGSSA003014', 'AUDITORIO MUNICIPAL DE SINGUILUCAN', 1),
(126, 5, 58, 4, 2, 'HGSSA003043', 'AUDITORIO MUNICIPAL DE TASQUILLO', 1),
(127, 4, 59, 4, 2, 'HGSSA003072', 'AUDITORIO 20 DE NOVIEMBRE', 1),
(128, 4, 59, 4, 2, 'HGSSA003072', 'PRIMARIA IGNACIO MANUEL ALTAMIRANO', 1),
(129, 13, 60, 4, 2, 'HGSSA003154', 'AUDITORIO MUNICIPAL DE TENANGO', 1),
(130, 9, 62, 4, 2, 'HGSSA003241', 'AUDITORIO MUNICIPAL DE TEPEHUACÁN', 1),
(131, 3, 64, 4, 2, 'HGSSA003422', 'CECYTEH TEPETITLÁN', 1),
(132, 14, 65, 4, 2, 'HGSSA003463', 'AUDITORIO MUNICIPAL DE TETEPANGO', 1),
(133, 17, 68, 4, 2, 'HGSSA003550', 'AUDITORIO MUNICIPAL DE TIANGUISTENGO', 1),
(134, 3, 70, 4, 2, 'HGSSA003656', 'ESCUELA PRIMARIA JOSEFA ORTIZ DE DOMINGUEZ -TLAHUELILPAN', 1),
(135, 8, 71, 4, 2, 'HGSSA003685', 'AUDITORIO MUNICIPAL DE TLAHUILTEPA', 1),
(136, 8, 71, 4, 2, 'HGSSA003685', 'CHICHICAXTLA', 1),
(137, 8, 71, 4, 2, 'HGSSA003685', 'AUDITORIO COMUNITARIO SAN ANDRÉS MIRAFLORES', 1),
(138, 11, 72, 4, 2, 'HGSSA003743', 'AUDITORIO MUNICIPAL DE TLANALAPA', 1),
(139, 9, 73, 4, 2, 'HGSSA003760', 'ESCUELA PRIMARIA NIÑOS HEROES', 1),
(140, 14, 74, 4, 2, 'HGSSA003895', 'ESCUELA SECUNDARIA BENITO JUAREZ', 1),
(141, 10, 78, 4, 2, 'HGIMO001932', 'GALERA DE OHUATIPA', 1),
(142, 10, 78, 4, 2, 'HGIMO001932', 'GALERA DE ATLALCO', 1),
(143, 17, 79, 4, 2, 'HGSSA004216', 'AUDITORIO MUNICIPAL DE XOCHICOATLÁN', 1),
(144, 10, 80, 4, 2, 'HGSSA004233', 'GALERA DE OXELOCO', 1),
(145, 10, 80, 4, 2, 'HGSSA004233', 'GALERA DE TLALCHIYAHUALICA', 1),
(146, 10, 32, 4, 1, 'HGSSA007860 ', 'GALERA MUNICIPAL DE JALTOCÁN', 1),
(147, 10, 11, 4, 1, 'HGSSA000523', 'AUDITORIO MUNICIPAL DE ATLAPEXCO', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat_usuarios`
--

CREATE TABLE `cat_usuarios` (
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `id_clues` int(10) UNSIGNED NOT NULL,
  `ap_paterno` varchar(255) NOT NULL,
  `ap_materno` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `nivel` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cat_usuarios`
--

INSERT INTO `cat_usuarios` (`id_usuario`, `id_clues`, `ap_paterno`, `ap_materno`, `nombre`, `email`, `usuario`, `contrasena`, `nivel`) VALUES
(1, 18, 'AVILA', 'TÉLLEZ GIRÓN', 'RUBÉN', 'rubenavila@yahoo.com', 'admin', 'Ruben$', 1),
(2, 18, 'MAGOS', '', 'ING. GERARDO', 'gmagos22@gmail.com', 'GERMAGOS', 'CovID$19', 2),
(3, 18, 'ESTRATEGIAS ', 'Y APOYO A LA OPERACIÓN', 'SUBDIRECCIÓN DE ', 'elcid@ssh.gob.mx', 'SEAO', 'SEAO', 2),
(4, 1, 'MUÑÓZ', 'GODÍNEZ', 'DRA. MARIA ANTONIETA', 'jurisdiccion.pachuca@ssh.gob.mx', 'HGSSA015294', 'HGSSA015294', 3),
(5, 2, 'AGUILAR', 'PÉREZ', 'MTRO. DAVID ARMANDO', 'jurisdiccion.tulancingo@ssh.gob.mx', 'HGSSA015306', 'HGSSA015306', 3),
(6, 3, 'PARRA', 'ANGELES', 'DRA. ROSA MARÍA', 'jurisdiccion.tula@ssh.gob.mx', 'HGSSA015311', 'HGSSA015311', 3),
(7, 4, 'AGUILAR', 'CRUZ', 'DR. ANTONIO', 'jurisdiccion.huichapan@ssh.gob.mx', 'HGSSA015323', 'HGSSA015323', 3),
(8, 5, 'CRUZ', 'MEJÍA', 'DR. JESÚS RAÚL', 'jurisdiccion.zimapan@ssh.gob.mx', 'HGSSA015335', 'HGSSA015335', 3),
(9, 6, 'PEÑA', 'HUERTA', 'DRA. LUCINA', 'jurisdiccion.ixmiquilpan@ssh.gob.mx', 'HGSSA015340', 'HGSSA015340', 3),
(10, 7, 'BECERRA', 'DÍAZ', 'DRA. ROSA GILDA', 'jurisdiccion.actopan@ssh.gob.mx', 'HGSSA015352', 'HGSSA015352', 3),
(11, 8, 'SARABIA', 'GUZMAN', 'DR. JESUS', 'jurisdiccion.metztitlan@ssh.gob.mx', 'HGSSA015364', 'HGSSA015364', 3),
(12, 9, 'ALFARO', 'VARELA', 'DR. JOSÉ', 'jurisdiccion.molango@ssh.gob.mx', 'HGSSA015376', 'HGSSA015376', 3),
(13, 10, 'SÁNCHEZ', 'OLIVARES', 'DR. ABEL ABRAHAM', 'jurisdiccion.huejutla@ssh.gob.mx', 'HGSSA015381', 'HGSSA015381', 3),
(14, 11, 'VARGAS', 'VÉRTIZ', 'DRA. VERÓNICA', 'jurisdiccion.apan@ssh.gob.mx', 'HGSSA015393', 'HGSSA015393', 3),
(15, 12, 'GÓMEZ', 'GÓMEZ', 'DR. MIGUEL ÁNGEL', 'jurisdiccion.tizayuca@ssh.gob.mx', 'HGSSA015405', 'HGSSA015405', 3),
(16, 13, 'HERNÁNDEZ', 'PACHECO', 'DRA. ALEJANDRA', 'jurisdiccion.otomitepehua@ssh.gob.mx', 'HGSSA015410', 'HGSSA015410', 3),
(17, 14, 'GARRIDO', 'GUERRERO', 'DRA. GRISSEL', 'jurisdiccion.tepeji@ssh.gob.mx', 'HGSSA007731', 'HGSSA007731', 3),
(18, 15, 'CALDERÓN', 'MARTÍNEZ', 'DRA. MARTHA BERENICE', 'jurisdiccion.atotonilco@ssh.gob.mx', 'HGSSA007755', 'HGSSA007755', 3),
(19, 16, 'SALAS', 'MÁRQUEZ', 'MTRO. NAZARETH', 'jurisdiccion.jacala@ssh.gob.mx', 'HGSSA007740', 'HGSSA007740', 3),
(20, 17, 'BADILLO', 'SOTO', 'DR. IGNACIO', 'jurisdiccion.zacualtipan@ssh.gob.mx', 'HGSSA007722', 'HGSSA007722', 3),
(21, 18, 'MONTOYA', 'BALLESTEROS', 'DRA. CLAUDIA GABRIELA', 'subdireccion.atencionintegral@ssh.gob.mx', 'SPIS', 'CoVID$21', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_vac_50a59`
--

CREATE TABLE `det_vac_50a59` (
  `id_det_vac_50a59` int(10) UNSIGNED NOT NULL,
  `hora_captura` datetime DEFAULT NULL,
  `id_sede` int(10) UNSIGNED NOT NULL,
  `nombre_captura_inf` varchar(255) NOT NULL,
  `id_bio` int(10) UNSIGNED NOT NULL,
  `num_dosis` int(10) UNSIGNED NOT NULL,
  `fecha_reporte` date DEFAULT NULL,
  `H_50` int(10) UNSIGNED NOT NULL,
  `M_50` int(10) UNSIGNED NOT NULL,
  `H_55` int(10) UNSIGNED NOT NULL,
  `M_55` int(10) UNSIGNED NOT NULL,
  `HENG_50` int(10) UNSIGNED NOT NULL,
  `MENG_50` int(10) UNSIGNED NOT NULL,
  `HENG_55` int(10) UNSIGNED NOT NULL,
  `MENG_55` int(10) UNSIGNED NOT NULL,
  `HEG_50` int(10) UNSIGNED NOT NULL,
  `MEG_50` int(10) UNSIGNED NOT NULL,
  `HEG_55` int(10) UNSIGNED NOT NULL,
  `MEG_55` int(10) UNSIGNED NOT NULL,
  `H_60` int(10) UNSIGNED NOT NULL,
  `M_60` int(10) UNSIGNED NOT NULL,
  `H_65` int(10) UNSIGNED NOT NULL,
  `M_65` int(10) UNSIGNED NOT NULL,
  `HENG_60` int(10) UNSIGNED NOT NULL,
  `MENG_60` int(10) UNSIGNED NOT NULL,
  `HENG_65` int(10) UNSIGNED NOT NULL,
  `MENG_65` int(10) UNSIGNED NOT NULL,
  `HEG_60` int(10) UNSIGNED NOT NULL,
  `MEG_60` int(10) UNSIGNED NOT NULL,
  `HEG_65` int(10) UNSIGNED NOT NULL,
  `MEG_65` int(10) UNSIGNED NOT NULL,
  `H_70` int(10) UNSIGNED NOT NULL,
  `M_70` int(10) UNSIGNED NOT NULL,
  `H_75` int(10) UNSIGNED NOT NULL,
  `M_75` int(10) UNSIGNED NOT NULL,
  `HENG_70` int(10) UNSIGNED NOT NULL,
  `MENG_70` int(10) UNSIGNED NOT NULL,
  `HENG_75` int(10) UNSIGNED NOT NULL,
  `MENG_75` int(10) UNSIGNED NOT NULL,
  `HEG_70` int(10) UNSIGNED NOT NULL,
  `MEG_70` int(10) UNSIGNED NOT NULL,
  `HEG_75` int(10) UNSIGNED NOT NULL,
  `MEG_75` int(10) UNSIGNED NOT NULL,
  `H_80` int(10) UNSIGNED NOT NULL,
  `M_80` int(10) UNSIGNED NOT NULL,
  `HENG_80` int(10) UNSIGNED NOT NULL,
  `MENG_80` int(10) UNSIGNED NOT NULL,
  `HEG_80` int(10) UNSIGNED NOT NULL,
  `MEG_80` int(10) UNSIGNED NOT NULL,
  `ME_18` int(10) UNSIGNED NOT NULL,
  `MEENG_18` int(10) UNSIGNED NOT NULL,
  `MEEG_18` int(10) UNSIGNED NOT NULL,
  `ME_25` int(10) UNSIGNED NOT NULL,
  `MEENG_25` int(10) UNSIGNED NOT NULL,
  `MEEG_25` int(10) UNSIGNED NOT NULL,
  `ME_30` int(10) UNSIGNED NOT NULL,
  `MEENG_30` int(10) UNSIGNED NOT NULL,
  `MEEG_30` int(10) UNSIGNED NOT NULL,
  `ME_35` int(10) UNSIGNED NOT NULL,
  `MEENG_35` int(10) UNSIGNED NOT NULL,
  `MEEG_35` int(10) UNSIGNED NOT NULL,
  `ME_40` int(10) UNSIGNED NOT NULL,
  `MEENG_40` int(10) UNSIGNED NOT NULL,
  `MEEG_40` int(10) UNSIGNED NOT NULL,
  `ME_45` int(10) UNSIGNED NOT NULL,
  `MEENG_45` int(10) UNSIGNED NOT NULL,
  `MEEG_45` int(10) UNSIGNED NOT NULL,
  `ME_50` int(10) UNSIGNED NOT NULL,
  `MEENG_50` int(10) UNSIGNED NOT NULL,
  `MEEG_50` int(10) UNSIGNED NOT NULL,
  `ME_55` int(10) UNSIGNED NOT NULL,
  `MEENG_55` int(10) UNSIGNED NOT NULL,
  `MEEG_55` int(10) UNSIGNED NOT NULL,
  `briga` int(10) UNSIGNED NOT NULL,
  `personal_salud` int(10) UNSIGNED NOT NULL,
  `merma` int(10) UNSIGNED NOT NULL,
  `Frs_dosis_completas` int(5) NOT NULL DEFAULT '0',
  `Frs_dosis_incompletas` int(5) NOT NULL DEFAULT '0',
  `observa` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `det_vac_50a59`
--

INSERT INTO `det_vac_50a59` (`id_det_vac_50a59`, `hora_captura`, `id_sede`, `nombre_captura_inf`, `id_bio`, `num_dosis`, `fecha_reporte`, `H_50`, `M_50`, `H_55`, `M_55`, `HENG_50`, `MENG_50`, `HENG_55`, `MENG_55`, `HEG_50`, `MEG_50`, `HEG_55`, `MEG_55`, `H_60`, `M_60`, `H_65`, `M_65`, `HENG_60`, `MENG_60`, `HENG_65`, `MENG_65`, `HEG_60`, `MEG_60`, `HEG_65`, `MEG_65`, `H_70`, `M_70`, `H_75`, `M_75`, `HENG_70`, `MENG_70`, `HENG_75`, `MENG_75`, `HEG_70`, `MEG_70`, `HEG_75`, `MEG_75`, `H_80`, `M_80`, `HENG_80`, `MENG_80`, `HEG_80`, `MEG_80`, `ME_18`, `MEENG_18`, `MEEG_18`, `ME_25`, `MEENG_25`, `MEEG_25`, `ME_30`, `MEENG_30`, `MEEG_30`, `ME_35`, `MEENG_35`, `MEEG_35`, `ME_40`, `MEENG_40`, `MEEG_40`, `ME_45`, `MEENG_45`, `MEEG_45`, `ME_50`, `MEENG_50`, `MEEG_50`, `ME_55`, `MEENG_55`, `MEEG_55`, `briga`, `personal_salud`, `merma`, `Frs_dosis_completas`, `Frs_dosis_incompletas`, `observa`) VALUES
(3, '2021-05-04 20:19:19', 2, 'Miguel Ángel Gómez Gómez', 1, 1, '2021-05-04', 129, 163, 96, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4, '2021-05-04 20:22:16', 3, 'Miguel Ángel Gómez Gómez', 1, 1, '2021-05-04', 161, 214, 124, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5, '2021-05-04 20:24:22', 4, 'Miguel Ángel Gómez Gómez', 1, 1, '2021-05-04', 512, 645, 441, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(6, '2021-05-04 20:40:05', 4, 'Miguel Ángel Gómez Gómez', 1, 1, '2021-05-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 40, 9, 10, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 2, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(7, '2021-05-05 09:58:32', 4, 'Miguel Ángel Gómez Gómez', 1, 2, '2021-05-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 44, 13, 30, 0, 0, 0, 0, 0, 0, 0, 0, 18, 15, 9, 6, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 28, 0, 0, 0, ''),
(8, '2021-05-04 22:42:06', 1, 'Miguel Ángel Gómez Gómez', 1, 1, '2021-05-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 24, 12, 7, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(9, '2021-05-04 22:46:12', 1, 'Miguel Ángel Gómez Gómez', 1, 2, '2021-05-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 19, 22, 20, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, ''),
(10, '2021-05-25 17:47:03', 46, 'ANA BERENICE HERNANDEZ RODRIGUEZ', 2, 1, '2021-05-25', 337, 438, 276, 422, 0, 0, 0, 0, 0, 0, 0, 0, 20, 26, 8, 15, 0, 0, 0, 0, 0, 0, 0, 0, 4, 9, 3, 12, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 0, 0, 0, 0, 11, 0, 0, 19, 0, 0, 14, 0, 0, 10, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 12, 0, 1, 165, 0, 'Se inicia jornada con 838 Frascos, de los cuales se utilizan 165 Frascos. Cabe mencionar que se registra 1 perdida en operación debido a que 1 Frasco con 10 dosis se cayó y rompio. 165 Frascos salieron con 10 Dosis. Quedando un total de 672 Frascos al termino de la Jornada con fecha 25/05/2021. '),
(11, '2021-05-25 18:28:44', 45, 'TAPS. IDALIA HARRIS ACEVEDO', 2, 1, '2021-05-25', 370, 490, 335, 407, 0, 0, 0, 0, 0, 0, 0, 0, 23, 15, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 13, 0, 0, 15, 0, 0, 12, 0, 0, 7, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 171, 0, 'SIN INCIDENCIAS'),
(12, '2021-05-25 18:56:09', 49, 'TAPS. IDALIA HARRIS ACEVEDO', 2, 1, '2021-05-25', 297, 344, 248, 350, 0, 0, 0, 0, 0, 0, 0, 0, 26, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 24, 0, 0, 18, 0, 0, 12, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 137, 0, 'EN UNA CELULA SE CAE UN FRASCO EL CUAL SE ROMPE Y CONTENIA 2 DOSIS'),
(13, '2021-05-25 19:11:30', 39, 'BENDICTA PONCE ZAPATA', 2, 1, '2021-05-25', 206, 338, 200, 323, 0, 1, 0, 0, 0, 0, 0, 0, 21, 19, 9, 5, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 6, 0, 0, 9, 0, 0, 7, 0, 0, 7, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 117, 0, 'sin insidencias'),
(14, '2021-05-25 19:13:20', 41, 'Lidia Hernández Dávila', 2, 1, '2021-05-25', 199, 323, 237, 298, 0, 0, 0, 0, 0, 0, 0, 0, 17, 21, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, 3, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 6, 0, 0, 12, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 115, 0, 'Jornada sin incidentes'),
(15, '2021-05-25 19:41:03', 44, 'Lidia Hernández Dávila', 2, 1, '2021-05-25', 299, 369, 273, 321, 0, 2, 0, 1, 0, 0, 0, 0, 18, 25, 9, 18, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, 0, 0, 0, 0, 11, 0, 0, 10, 0, 0, 11, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 140, 0, 'Jornada sin incidente'),
(16, '2021-05-25 19:51:27', 58, 'L. E. VERONICA HERNANDEZ HERNANDEZ', 2, 1, '2021-05-25', 221, 306, 146, 210, 0, 0, 0, 0, 0, 0, 0, 0, 14, 10, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 12, 0, 0, 14, 0, 0, 11, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 96, 0, 'SIN OBSERVACIONES'),
(17, '2021-05-25 20:15:17', 47, 'JOSEFINA DOMINGUEZ TREJO', 2, 1, '2021-05-25', 303, 407, 261, 346, 0, 1, 0, 0, 0, 0, 0, 0, 17, 31, 4, 4, 1, 0, 0, 0, 0, 0, 0, 0, 1, 3, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 0, 0, 0, 0, 9, 0, 0, 9, 0, 0, 10, 0, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 143, 0, 'SE INICIAN LAS ACTIVIDADES  A LAS  8:00 AM Y SE DESARROLLAN SIN INCIDENCIAS'),
(18, '2021-05-25 20:20:48', 51, 'JOSEFINA DOMINGUEZ TREJO', 2, 1, '2021-05-25', 283, 363, 230, 248, 0, 0, 0, 0, 0, 0, 0, 0, 16, 11, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 11, 0, 0, 11, 0, 0, 4, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 'SIN INCIDENCIAS DURANTE LA JORNADA '),
(19, '2021-05-25 20:21:19', 48, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-25', 465, 617, 402, 531, 0, 0, 0, 0, 0, 0, 0, 0, 27, 49, 13, 20, 0, 0, 0, 0, 0, 0, 0, 0, 12, 14, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 4, 10, 0, 0, 0, 0, 9, 0, 0, 17, 0, 0, 10, 0, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, 0, 'Ninguna'),
(20, '2021-05-25 20:26:14', 54, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-25', 202, 261, 193, 282, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 11, 0, 0, 12, 0, 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 0, 'Ninguna'),
(21, '2021-05-25 20:34:35', 50, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-25', 306, 363, 254, 292, 0, 0, 0, 0, 0, 0, 0, 0, 10, 8, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 8, 0, 0, 9, 0, 0, 8, 0, 0, 2, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 128, 0, 'Ninguna'),
(22, '2021-05-25 20:38:04', 57, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-25', 261, 360, 262, 307, 0, 0, 0, 0, 0, 0, 0, 0, 29, 22, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 8, 0, 0, 0, 0, 8, 0, 0, 8, 0, 0, 8, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 0, 'Ninguna'),
(23, '2021-05-26 10:35:25', 52, 'Yaneth Villeda Briceño', 2, 1, '2021-05-25', 174, 287, 172, 209, 0, 0, 0, 0, 0, 0, 0, 0, 11, 13, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 7, 0, 0, 10, 0, 0, 9, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 92, 0, 'Se utilizaron 92 frascos , con 10 dosis cada frasco, no hubo Perdidas en la operación'),
(24, '2021-05-26 11:07:42', 42, 'Lic Ruben Avila Tellez Giron', 2, 1, '2021-05-25', 257, 417, 260, 325, 0, 0, 0, 0, 0, 0, 0, 0, 18, 22, 15, 12, 0, 0, 0, 0, 0, 0, 0, 0, 7, 11, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 12, 0, 0, 12, 0, 0, 8, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1390, 0, 'Capturado de reporte en Excel'),
(25, '2021-05-26 11:08:57', 43, 'Lic Ruben Avila Tellez Giron', 2, 1, '2021-05-25', 238, 284, 217, 279, 0, 0, 0, 0, 0, 0, 0, 0, 11, 13, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 7, 0, 0, 7, 0, 0, 4, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 109, 0, 'frascos deducidos por el total'),
(26, '2021-05-26 16:15:24', 42, 'CLAUDIA ANEL ALVARADO JORGE', 2, 1, '2021-05-26', 198, 275, 171, 230, 0, 0, 0, 0, 0, 0, 0, 0, 21, 19, 12, 14, 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6, 0, 0, 0, 0, 11, 0, 0, 8, 0, 0, 5, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SIN MERMAS '),
(27, '2021-05-26 16:18:54', 43, 'CLAUDIA ANEL ALVARADO JORGE', 2, 1, '2021-05-26', 138, 185, 126, 164, 0, 0, 0, 0, 0, 0, 0, 0, 17, 23, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 9, 0, 0, 6, 0, 0, 6, 0, 0, 4, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SIN MERMAS.'),
(28, '2021-05-26 16:33:57', 46, 'ANA BERENICE HERNANDEZ RODRIGUEZ', 2, 1, '2021-05-26', 343, 461, 297, 457, 0, 0, 0, 0, 0, 0, 0, 0, 23, 28, 12, 11, 0, 0, 0, 0, 0, 0, 0, 0, 4, 7, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 3, 9, 0, 0, 0, 0, 9, 0, 0, 24, 0, 0, 13, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 173, 0, 'Se inicia jornada con 672 Frascos, de los cuales se utilizan 173 Frascos. Cabe mencionar que 173 Frascos salieron con 10 Dosis. Quedando un total de 499 Frascos al termino de la Jornada con fecha 26/05/2021. '),
(29, '2021-05-26 17:35:21', 45, 'TAPS. IDALIA HARRIS ACEVEDO', 2, 1, '2021-05-26', 397, 517, 307, 393, 0, 0, 0, 0, 0, 0, 0, 0, 11, 10, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 10, 0, 0, 15, 0, 0, 11, 0, 0, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 171, 0, 'SIN INCIDENCIAS'),
(30, '2021-05-26 17:53:17', 49, 'TAPS. IDALIA HARRIS ACEVEDO', 2, 1, '2021-05-26', 303, 387, 294, 367, 0, 0, 0, 0, 0, 0, 0, 0, 44, 46, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 23, 0, 0, 20, 0, 0, 13, 0, 0, 6, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 152, 0, 'SIN INCIDENCIAS'),
(31, '2021-05-26 18:25:40', 58, 'ENF. VERONICA HERNANDEZ HERNANDEZ', 2, 1, '2021-05-26', 226, 344, 188, 273, 0, 0, 0, 0, 0, 0, 0, 0, 13, 19, 5, 12, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 21, 0, 0, 21, 0, 0, 8, 0, 0, 5, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 115, 0, '11 FRASCOS PRESTAMO DE IMSS'),
(32, '2021-05-26 18:32:37', 41, 'Lidia Hernández Dávila', 2, 1, '2021-05-26', 273, 379, 227, 316, 0, 0, 0, 0, 0, 0, 0, 0, 11, 19, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 4, 7, 0, 0, 0, 0, 13, 0, 0, 10, 0, 0, 4, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 129, 0, 'Jornada si incidentes'),
(33, '2021-05-26 18:47:23', 44, 'Lidia Hernández Dávila', 2, 1, '2021-05-26', 356, 474, 354, 378, 0, 0, 0, 0, 0, 0, 0, 0, 27, 25, 9, 13, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2, 5, 9, 0, 0, 0, 0, 0, 0, 0, 0, 2, 11, 0, 0, 0, 0, 12, 0, 0, 10, 0, 0, 13, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 171, 0, 'Jornada sin incidentes'),
(34, '2021-05-26 19:18:57', 59, 'L.E MARÍA ELENA GUERRERO CABRERA', 2, 1, '2021-05-26', 235, 307, 207, 265, 0, 0, 0, 0, 0, 0, 0, 0, 7, 10, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 4, 5, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 10, 0, 0, 6, 0, 0, 4, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109, 0, 'Al iniciar la jornada de vacunación, la vacuna se encuentra a 3°C, se aplican1063 dosis en adultos y 27 dosis a embarazadas. se termina jornada sin contratiempos.'),
(35, '2021-05-26 19:26:11', 60, 'L.E MARÍA ELENA GUERRERO CABRERA', 2, 1, '2021-05-26', 90, 86, 78, 103, 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 39, 0, 'Se inicia jornada de vacunación, teniendo una temperatura de 2°c la vacuna, se aplican 382 dosis en adultos y 8 dosis a embarazadas.'),
(36, '2021-05-26 19:32:17', 64, 'L.E MARÍA ELENA GUERRERO CABRERA', 2, 1, '2021-05-26', 57, 54, 54, 70, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 'Al recibir la vacuna se encuentra en una temperatura de 3°c, se aplicaron 243 dosis adultos y 7 dosis a embarazadas. Se termina jornada sin contratiempos.'),
(37, '2021-05-26 19:41:42', 39, 'BENEDICTA PONCE ZAPATA', 2, 1, '2021-05-26', 203, 235, 151, 248, 0, 0, 0, 0, 0, 0, 0, 0, 22, 21, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 10, 0, 0, 9, 0, 0, 10, 0, 0, 2, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 93, 0, 'FRASCOS 93 (930 DOSIS), 3 DOSIS SON UTILIZADAS PARA SEGUNDAS DOSIS  '),
(38, '2021-05-26 19:46:22', 39, 'BENEDICTA PONCE ZAPATA', 2, 2, '2021-05-26', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SEGUNDAS DOSIS '),
(39, '2021-05-26 19:48:04', 48, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-26', 345, 442, 279, 390, 0, 0, 0, 0, 0, 0, 0, 0, 20, 27, 14, 17, 0, 0, 0, 0, 0, 0, 0, 0, 3, 9, 3, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 11, 0, 0, 17, 0, 0, 9, 0, 0, 6, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 161, 0, 'Ninguna'),
(40, '2021-05-26 19:52:05', 54, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-26', 121, 149, 100, 150, 0, 0, 0, 0, 0, 0, 0, 0, 11, 20, 8, 10, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 6, 0, 0, 8, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 'Ninguna'),
(41, '2021-05-26 19:58:54', 50, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-26', 262, 332, 200, 310, 0, 0, 0, 0, 0, 1, 0, 0, 13, 10, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 8, 0, 0, 11, 0, 0, 9, 0, 0, 5, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119, 0, 'Ninguna'),
(42, '2021-05-26 20:00:15', 61, 'LEO MINERVA CERON SEGOVIA', 2, 1, '2021-05-26', 169, 254, 154, 174, 0, 0, 0, 0, 0, 0, 0, 0, 21, 13, 9, 10, 0, 0, 0, 0, 0, 0, 0, 0, 5, 6, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 8, 0, 0, 10, 0, 0, 7, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 0, 'SE OBTUVIERON 10 DOSIS DE CADA FRASCO SE UTILIZARON 86 FRASCOS Y QUEDAN DE EXISTENCIA ACTUAL  177  UN TOTAL DE FRASCOS RECIBIDOS EN ESTA SEDE DE 263 FRASCOS'),
(43, '2021-05-26 20:04:58', 57, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-26', 298, 347, 237, 246, 0, 0, 0, 1, 0, 0, 0, 1, 10, 25, 8, 7, 0, 0, 0, 0, 0, 0, 0, 0, 3, 7, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 0, 0, 0, 0, 13, 0, 0, 8, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 'Ninguno'),
(44, '2021-05-26 20:26:31', 62, 'LEO MINERVA CERON SEGOVIA', 2, 1, '2021-05-26', 164, 214, 136, 184, 0, 0, 0, 0, 0, 0, 0, 1, 9, 11, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 5, 0, 0, 3, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 0, 'SE UTILIZARON 74 FRASCOS DEL CUAL SALIERON 10 DOSIS DE CADA FRASCO , RESTAN DE EXISTENCIA ACTUAL EN ESA SEDE 86 FRASCOS'),
(45, '2021-05-26 20:38:57', 63, 'LEO MINERVA CERON SEGOVIA', 2, 1, '2021-05-26', 194, 253, 193, 230, 0, 0, 0, 0, 0, 0, 0, 0, 26, 13, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 5, 0, 0, 4, 0, 0, 5, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 95, 0, 'SE UTILIZARON 95 FRASCOS QUE SE OBTUVIERON 10 DOSIS DE CADA UNO RESTAN EN EXISTENCIA ACTUAL EN ESTA SEDE 55 FRASCOS CERRADOS TOTAL DE FRASCOS RECIBIDOS 150, LAS COMPAÑERAS DE LAS CELULAS DE ESTA SEDE REPORTAN QUE LAS AGUJAS NO EMBONAN BIEN  ( 4 SALIERON DEFECTUOSAS)'),
(46, '2021-05-26 20:57:38', 38, 'EYENITH M. ESCUDERO HERNANDEZ', 2, 1, '2021-05-26', 56, 98, 46, 79, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, 'SIN INCIDENCIAS '),
(47, '2021-05-26 20:59:25', 38, 'EYENITH M. ESCUDERO HERNANDEZ', 2, 2, '2021-05-26', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SEGUNDAS DOSIS'),
(48, '2021-05-26 21:39:07', 51, 'JOSEFINA DOMINGUEZ TREJO', 2, 1, '2021-05-26', 342, 444, 258, 273, 0, 0, 0, 0, 0, 0, 0, 0, 20, 30, 7, 5, 0, 0, 0, 0, 0, 0, 0, 0, 3, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 16, 0, 0, 12, 0, 0, 13, 0, 0, 8, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 145, 0, 'SIN INCIDENCIAS'),
(49, '2021-05-26 21:47:43', 47, 'JOSEFINA DOMINGUEZ TREJO', 2, 1, '2021-05-26', 430, 578, 377, 499, 0, 0, 1, 1, 0, 0, 0, 0, 28, 29, 16, 22, 1, 0, 0, 0, 0, 0, 0, 0, 10, 6, 5, 8, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 0, 0, 18, 0, 0, 18, 0, 0, 7, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 'SE INICIA A LAS 7:45 LA VACUNACION. SE AGLOMERO LA POBLACION APROXIMADAMENTE A LAS 13:00 HABIENDO MOLESTIA POR PARTE DE LA POBLACION DEBIDO AL TIEMPO DE ESPERA, SIN EMBARGO LAS CELULAS ESTABAN ATENDIENDO EN TIEMPO, HUBO  UNA DIFERENCIA ENTRE UNA SERVIDORA DE LA NACION QUE VENIA DE PACHUCA QUE NO QUISO PROPÓRCIONAR SU NOM,BRE Y RESP DE VACUNACION JUR , DEBIDO A LOS TIEMPOS DE ESPERA, SIN EMABARGO SE ATENCIO A TODA LA POBLACION QUE ASISTIO. '),
(50, '2021-05-27 08:55:18', 40, 'NEHEMIAS CRUZ MATIAS', 2, 1, '2021-05-25', 108, 142, 112, 131, 0, 0, 0, 0, 0, 0, 0, 0, 15, 9, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 'FRASCOS  55 (SEGUNDAS DOSIS 2 PERSONAS)'),
(51, '2021-05-27 08:58:48', 40, 'NEHEMIAS CRUZ MATIAS', 2, 2, '2021-05-25', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SEGUNDAS DOSIS DOS PERSONA '),
(53, '2021-05-27 16:09:20', 42, 'CLAUDIA ANEL ALVARADO JORGE', 2, 1, '2021-05-27', 185, 250, 151, 190, 0, 0, 0, 0, 0, 0, 0, 0, 24, 19, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 5, 7, 0, 0, 0, 0, 0, 0, 0, 0, 3, 8, 0, 0, 0, 0, 7, 0, 0, 5, 0, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'sin mermas.'),
(54, '2021-05-27 16:16:58', 43, 'CLAUDIA ANEL ALVARADO JORGE', 2, 1, '2021-05-27', 112, 163, 101, 138, 0, 0, 0, 0, 0, 0, 0, 0, 13, 17, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 3, 7, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, 0, 0, 0, 0, 10, 0, 0, 11, 0, 0, 7, 0, 0, 5, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Se concluye con 80 dosis disponibles'),
(55, '2021-05-27 17:30:26', 46, 'ANA BERENICE HERNANDEZ RODRIGUEZ', 2, 1, '2021-05-27', 348, 467, 315, 382, 0, 0, 0, 0, 0, 0, 0, 0, 28, 48, 25, 23, 0, 0, 0, 0, 0, 0, 0, 0, 20, 15, 8, 12, 0, 0, 0, 0, 0, 0, 0, 0, 3, 13, 0, 0, 0, 0, 32, 0, 0, 25, 0, 0, 23, 0, 0, 9, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 182, 0, 'Se inicia jornada con 499 Frascos, de los cuales se utilizan 182 Frascos. 182 Frascos salieron con 10 Dosis. Cabe mencionar que se donaron 14 frascos a la Jurisdicción Actopan. Quedando un total de 303 Frascos al termino de la Jornada con fecha 27/05/2021. '),
(56, '2021-05-27 18:00:29', 39, 'BENEDICTA PONCE ZAPATA', 2, 1, '2021-05-27', 173, 213, 136, 197, 0, 0, 0, 0, 0, 0, 0, 0, 32, 32, 14, 9, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 6, 0, 0, 11, 0, 0, 9, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 0, 'HUEJUTLA DE REYES HIDALGO-ESC. SEC. GRAL. HEROE ANTONIO REYES LE LLEGARON 502 FRASCOS PRESTO A CHALAHUIYAPA 22 FRASCOS EL DIA 25/05/21, PRESTO A TEHUETLAN 13 FRASCOS 27/05/21'),
(57, '2021-05-27 18:05:04', 39, 'BENEDICTA PONCE ZAPATA', 2, 2, '2021-05-27', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'segundas dosis '),
(58, '2021-05-27 18:22:40', 61, 'LEO MINERVA CERON SEGOVIA', 1, 1, '2021-05-27', 220, 289, 182, 189, 0, 0, 0, 0, 0, 0, 0, 0, 6, 19, 13, 8, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, 3, 0, 0, 9, 0, 0, 2, 0, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 0, 'SE UTILIZARON 97 FRASCOS Y RESTAN FRASCOS CERRADOS 80 , QUE SE UTILIZARAN PARA TERMINAR EL DIA DE MAÑANA'),
(59, '2021-05-27 18:28:44', 45, 'TAPS. IDALIA HARRIS ACEVEDO', 2, 1, '2021-05-27', 447, 581, 376, 443, 0, 0, 0, 0, 0, 0, 0, 0, 28, 28, 11, 11, 0, 0, 0, 0, 0, 0, 0, 0, 5, 4, 3, 6, 0, 0, 0, 0, 0, 0, 0, 0, 4, 8, 0, 0, 0, 0, 21, 0, 0, 18, 0, 0, 12, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 202, 0, 'SIN INCIDENCIAS'),
(60, '2021-05-27 18:30:32', 62, 'LEO MINERVA CERON SEGOVIA', 2, 1, '2021-05-27', 173, 225, 158, 144, 0, 0, 0, 0, 0, 0, 0, 0, 9, 6, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 3, 0, 0, 5, 0, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 'SE UTILIZARON 75 FRASCOS DEL CUAL SALIERON 10 DOSIS DE CADA FRASCO Y SE TIENE DE EXISTENCIA ACTUAL 11 FRASCOS CERRADOS PARA UTILIZAR EL DIA DE MAÑANA PARA TERMINAR CON ESA POBLACION'),
(61, '2021-05-27 18:31:55', 37, 'YURIDIA HERNANDEZ ISARIO', 2, 1, '2021-05-27', 112, 171, 109, 170, 0, 0, 0, 0, 0, 0, 0, 0, 34, 24, 18, 13, 0, 0, 0, 0, 0, 0, 0, 0, 10, 4, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 7, 5, 0, 0, 0, 0, 6, 0, 0, 8, 0, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 0, 'PIDIO PRESTADOS 13 FRASCOS A LA SEDE DE HUEJUTLA ESC. SEC. GRAL. HEROE ANTONIO REYES'),
(62, '2021-05-27 18:34:09', 37, 'YURIDIA HERNANDEZ ISARIO', 2, 2, '2021-05-27', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SEGUNDAS DOSIS'),
(63, '2021-05-27 18:35:25', 63, 'LEO MINERVA CERON SEGOVIA', 2, 1, '2021-05-27', 124, 136, 108, 127, 0, 0, 0, 0, 0, 0, 0, 0, 9, 10, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 55, 0, 'SE UTILIZARON 55 FRASCOS TODOS SE OBTUVIERON 10 DOSIS EN CADA FRASCO Y SE CUMPLIO LA META EN ESTA SEDE, SE UTILIZÓ TODO EL BIOLOGICO RECIBIDO, CERO EXISTENCIA'),
(64, '2021-05-27 18:38:35', 59, 'L.E MARÍA ELENA GUERRERO CABRERA', 2, 1, '2021-05-27', 159, 221, 112, 168, 0, 0, 0, 0, 0, 0, 0, 0, 15, 13, 11, 15, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, 2, 0, 0, 0, 0, 11, 0, 0, 10, 0, 0, 2, 0, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 'Se desarrolla la jornada de vacunación sin incidentes. La vacuna se recepciono en 3°c. '),
(65, '2021-05-27 18:43:02', 49, 'TAPS. IDALIA HARRIS ACEVEDO', 2, 1, '2021-05-27', 219, 272, 193, 254, 0, 0, 0, 0, 0, 0, 0, 0, 68, 58, 12, 20, 0, 0, 0, 0, 0, 0, 0, 0, 7, 12, 6, 2, 0, 0, 0, 0, 0, 0, 0, 0, 12, 9, 0, 0, 0, 0, 23, 0, 0, 12, 0, 0, 9, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119, 0, 'SIN INCIDENCIAS'),
(66, '2021-05-27 18:43:05', 41, 'Lidia Hernández Dávila', 2, 1, '2021-05-27', 209, 272, 175, 208, 0, 0, 0, 0, 0, 0, 0, 0, 19, 24, 8, 11, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, 6, 4, 0, 0, 0, 0, 6, 0, 0, 4, 0, 0, 7, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 97, 0, 'Al termino de las actividades de vacunación, al realizar el conteo de frascos que se regresaron a la unidad refrigerante donde se resguarda el biológico, un frasco sufre accidente (rompió).  '),
(67, '2021-05-27 19:03:29', 44, 'Lidia Hernández Dávila', 2, 1, '2021-05-27', 280, 314, 207, 269, 0, 0, 0, 0, 0, 0, 0, 0, 18, 20, 9, 12, 0, 0, 0, 0, 0, 0, 0, 0, 6, 11, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 7, 9, 0, 0, 0, 0, 13, 0, 0, 7, 0, 0, 4, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 'Jornada si incidentes'),
(68, '2021-05-27 19:12:39', 60, 'L.E MARÍA ELENA GUERRERO CABRERA', 2, 1, '2021-05-27', 84, 125, 77, 97, 0, 0, 0, 0, 0, 0, 0, 0, 5, 8, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 6, 0, 0, 0, 0, 4, 0, 0, 2, 0, 0, 5, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Se aplican 417 dosis en adultos y 13 embarazadas, se reciben 42 frascos de Puente de Doria.\r\n\r\n'),
(69, '2021-05-27 19:18:26', 64, 'L.E MARÍA ELENA GUERRERO CABRERA', 2, 1, '2021-05-27', 50, 66, 36, 70, 0, 0, 0, 0, 0, 0, 0, 0, 6, 10, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, 'Se recepciona la vacuna en 3°c, se aplican 269 dosis a adultos y 11 embarazadas.'),
(70, '2021-05-27 23:37:38', 51, 'JOSEFINA DOMINGUEZ TREJO', 2, 1, '2021-05-27', 156, 157, 109, 129, 0, 0, 0, 0, 0, 0, 0, 0, 14, 17, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 0, 0, 0, 0, 13, 0, 0, 4, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 'SE RECIBEN 290 DOSIS DE LA SEDE DE TEPEJI DEL RIO AUDITORIO MUNICIPAL, SE CONCLUYE LA JORNADA DE VACUNACION.'),
(71, '2021-05-27 23:41:38', 47, 'JOSEFINA DOMINGUEZ TREJO', 2, 1, '2021-05-27', 402, 405, 294, 324, 0, 0, 0, 0, 0, 0, 0, 0, 43, 31, 18, 20, 0, 0, 0, 0, 0, 0, 0, 0, 14, 12, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 7, 6, 0, 0, 0, 0, 19, 0, 0, 14, 0, 0, 15, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, 0, 167, 0, 'SE ENVIAN 29 FRASCOS A LA SEDE DE ATOTONILCO DE TULA , SEDE AUDITORIO MUNICIPAL. '),
(72, '2021-05-28 11:36:55', 48, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-27', 264, 331, 207, 298, 0, 0, 0, 0, 0, 0, 0, 0, 23, 27, 9, 8, 0, 0, 0, 0, 0, 0, 0, 0, 7, 5, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 0, 0, 0, 0, 7, 0, 0, 17, 0, 0, 8, 0, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 'Ninguna'),
(73, '2021-05-28 12:31:36', 52, 'Yaneth Villeda Briceño', 2, 1, '2021-05-26', 159, 218, 140, 213, 0, 0, 0, 0, 0, 0, 0, 0, 16, 9, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 3, 6, 0, 0, 0, 0, 6, 0, 0, 11, 0, 0, 3, 0, 0, 5, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 82, 0, 'Se utilizaron 82 frascos '),
(74, '2021-05-28 13:28:34', 52, 'Yaneth Villeda Briceño', 2, 1, '2021-05-27', 180, 253, 144, 241, 0, 0, 0, 0, 0, 0, 0, 0, 18, 25, 8, 6, 0, 0, 0, 0, 0, 0, 0, 0, 3, 12, 10, 7, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 0, 0, 0, 0, 10, 0, 0, 14, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 95, 0, 'Se utilizaron 95 frascos , dando un total de 950 dosis '),
(75, '2021-05-28 13:53:05', 53, 'Yaneth Villeda Briceño', 2, 1, '2021-05-27', 46, 68, 32, 69, 0, 0, 0, 0, 0, 0, 0, 0, 8, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1, 0, 0, 5, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 'Se utilizaron 25 frascos , dando un total de 250 dosis aplicadas'),
(76, '2021-05-28 16:09:00', 42, 'CLAUDIA ANEL ALVARADO JORGE', 2, 1, '2021-05-28', 128, 148, 100, 115, 0, 0, 0, 0, 0, 0, 0, 0, 27, 22, 13, 8, 0, 0, 0, 0, 0, 0, 0, 0, 5, 4, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 5, 7, 0, 0, 0, 0, 13, 0, 0, 15, 0, 0, 2, 0, 0, 3, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 'Se concluye sin ninguna merma, en sede cuautepec cero frascos ya que se apoyo a san Lorenzo con 30 frascos.'),
(77, '2021-05-28 17:43:42', 46, 'ANA BERENICE HERNANDEZ RODRIGUEZ', 2, 1, '2021-05-28', 341, 462, 304, 381, 0, 0, 0, 0, 0, 0, 0, 0, 42, 53, 25, 17, 0, 0, 0, 0, 0, 0, 0, 0, 8, 10, 6, 14, 0, 0, 0, 0, 0, 0, 0, 0, 7, 9, 0, 0, 0, 0, 25, 0, 0, 29, 0, 0, 7, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 178, 0, 'Se inicia jornada con 303 Frascos, de los cuales se utilizan 178 Frascos. Cabe mencionar que 178 Frascos salieron con 10 Dosis. Quedando un total de 125 Frascos al termino de la Jornada con fecha 28/05/2021. '),
(78, '2021-05-28 18:27:00', 44, 'Lidia Hernández Dávila', 2, 1, '2021-05-28', 307, 326, 249, 343, 0, 1, 0, 0, 0, 0, 0, 0, 32, 27, 9, 17, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6, 6, 10, 0, 0, 0, 0, 0, 0, 0, 0, 5, 4, 0, 0, 0, 0, 13, 0, 0, 11, 0, 0, 10, 0, 0, 7, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 0, 140, 0, 'Jornada sin incidentes'),
(79, '2021-05-28 18:54:41', 47, 'JOSEFINA DOMINGUEZ TREJO', 2, 1, '2021-05-28', 139, 168, 96, 111, 0, 0, 0, 0, 0, 0, 0, 0, 17, 7, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 7, 0, 0, 8, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 59, 0, 'SE RECIBEN 21 FRASCOS DE SEDE CRUZ AZUL IMSS ORDINARIO. '),
(80, '2021-05-28 19:01:17', 65, 'CLAUDIA ANEL ALVARADO JORGE', 4, 4, '2021-05-28', 27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Solo se vcunaron a 30 personas , quedan disponibles 20 dosis.'),
(81, '2021-05-28 19:10:41', 55, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-27', 119, 173, 116, 135, 0, 0, 0, 0, 0, 0, 0, 0, 31, 10, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 8, 0, 0, 13, 0, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 'Pasa 16 frascos a sede de mixquiahuala'),
(82, '2021-05-28 19:11:58', 39, 'ENF. BENEDICTA PONCE ZAPATA', 2, 1, '2021-05-28', 141, 145, 112, 141, 0, 0, 0, 0, 0, 0, 0, 0, 27, 31, 7, 11, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 18, 0, 0, 12, 0, 0, 6, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 0, 0, 76, 0, 'SE VACUNAN BRIGADISTAS DE SEDENA, SECRETARIA DE BIENESTAR Y SALUD MUNICIPAL'),
(83, '2021-05-28 19:14:40', 50, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-27', 354, 439, 293, 331, 0, 0, 0, 0, 0, 0, 0, 0, 24, 15, 19, 10, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, 16, 0, 0, 17, 0, 0, 12, 0, 0, 5, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0, 156, 0, 'Recibe 15 frascos de Caxuxi, 16 frascos de Tepatepec y 14 frascos de Ixmiquilpan'),
(84, '2021-05-28 19:14:49', 39, 'ENF. BENEDICTA PONCE ZAPATA', 2, 2, '2021-05-28', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 'NINGUNA'),
(85, '2021-05-28 19:24:43', 56, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-28', 104, 129, 84, 118, 0, 0, 0, 0, 0, 0, 0, 0, 33, 12, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 5, 0, 0, 7, 0, 0, 1, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 'Ninguna '),
(86, '2021-05-28 19:24:50', 41, 'Lidia Hernández Dávila', 2, 1, '2021-05-28', 202, 264, 170, 194, 0, 0, 0, 1, 0, 0, 0, 0, 24, 15, 5, 14, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 6, 4, 0, 0, 0, 0, 10, 0, 0, 8, 0, 0, 5, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 94, 0, 'Jornada sin incidentes'),
(87, '2021-05-28 19:55:50', 61, 'MINERVA CERON SEGOVIA', 2, 1, '2021-05-28', 140, 171, 102, 144, 0, 0, 0, 0, 0, 0, 0, 0, 8, 6, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 2, 0, 0, 6, 0, 0, 4, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 60, 0, 'SIN EXISTENCIA DE BIOLOGICO, CADA UNO DE LOS FRASCOS SALIO CON 10 DOSIS DE VACUNA.'),
(88, '2021-05-28 19:57:30', 60, 'L.E MARÍA ELENA GUERRERO CABRERA', 2, 1, '2021-05-28', 65, 67, 48, 52, 0, 0, 0, 0, 0, 0, 0, 0, 7, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 27, 0, 'Se lleva a cabo jornada sin incidentes. Se envian 12 frascos a Sede de Omitlan.'),
(89, '2021-05-28 20:04:19', 59, 'L.E MARÍA ELENA GUERRERO CABRERA', 1, 1, '2021-05-28', 151, 195, 140, 158, 0, 0, 0, 0, 0, 0, 0, 0, 12, 17, 12, 11, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 0, 0, 0, 0, 8, 0, 0, 8, 0, 0, 6, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 74, 0, 'Se aplicaron en total 740 dosis, se resguardan 57 frascos. El día lunes se realiza apertura de SEDE, para dar continuidad con la vacunación. Personal de INSABI realizara promoción en fin de semana.'),
(90, '2021-05-28 20:08:03', 62, 'MINERVA CERON SEGOVIA', 2, 1, '2021-05-28', 76, 75, 53, 64, 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 4, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 6, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, 'SIN EXISTENCIA DE BIOLOGICO TODOS LOS FRASCOS SALIERON DE 10 DOSIS CADA UNO'),
(91, '2021-05-28 20:09:48', 64, 'L.E MARÍA ELENA GUERRERO CABRERA', 2, 1, '2021-05-28', 40, 50, 33, 37, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 3, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 0, 'Se da por concluida la jornada, se aplicaron 180 dosis. se recibieron 12 frascos de SEDE Huasca Cobaeh, se regresan 4 frascos a CS Atotonilco.'),
(92, '2021-05-28 20:28:40', 66, 'MINERVA CERON SEGOVIA', 4, 4, '2021-05-28', 77, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 0, 'SIN EXISTENCIA DE BIOLOGICO TODOS LOS FRASCOS SALIERON CON 10 DOSIS CADA UNO'),
(93, '2021-05-31 17:10:06', 90, 'FAVIOLA SANTIAGO GONZALEZ ', 2, 1, '2021-05-31', 29, 55, 27, 47, 0, 0, 0, 0, 0, 0, 0, 0, 3, 7, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 18, 0, 'SE APLICAN 175 DOSIS A PERSONAS DE 50 AÑOS Y MAS, ASI MISMO SE APLICAN 3 DOSIS A MUJERES EMBARAZADAS Y DOS DOSIS A BRIGADISTA ( 1 DOSIS ES PRIMERA Y 1 ES SEGUNDA DOSIS) UTILIZANDO UN TOTAL DE 18 FRASCOS '),
(94, '2021-05-31 19:10:05', 88, 'L.E MARÍA ELENA GUERRERO CABRERA', 2, 1, '2021-05-31', 126, 136, 83, 110, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 9, 5, 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2, 0, 0, 0, 0, 6, 0, 0, 5, 0, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 53, 0, 'Se inicia, jornada de vacunación, se proporcionan 13 frascos de vacuna a UMR Loma Larga.'),
(95, '2021-05-31 19:26:49', 89, 'FAVIOLA SANTIAGO GONZALEZ ', 2, 1, '2021-05-31', 113, 174, 95, 130, 0, 0, 0, 0, 0, 0, 0, 0, 3, 9, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 8, 0, 0, 2, 0, 0, 3, 0, 0, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 0, 'SE APLICAN 532 DOSIS A PESONAS DE 50 AÑOS Y MAS Y 18 DOSIS A MUJERES EMBARAZADAS, UTILIZANDO 55 FRASCOS CON 10 DOSIS '),
(96, '2021-05-31 19:59:05', 59, 'L.E MARÍA ELENA GUERRERO CABRERA', 2, 1, '2021-05-31', 27, 30, 26, 18, 0, 0, 0, 0, 0, 0, 0, 0, 6, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 0, 0, 0, 0, 5, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 'Se realiza apertura nuevamente de la SEDE Atotonilco. Se reciben 3 frascos de Huasca y 4 frascos de Omitlán, Atotonilco le sobran 43 frascos al cierre de la jornada. Total de frascos que se regresan al almacén general 50 frascos. '),
(97, '2021-05-31 20:33:28', 85, 'LEO MINERVA CERON SEGOVIA', 4, 4, '2021-05-31', 106, 146, 93, 115, 0, 0, 0, 0, 0, 0, 0, 0, 7, 10, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 9, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 4, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 'EN LA SEDE DE cHAPANTONGO SE RECIBIERON 83 FRASCOS, SE UTILIZARON 51 FRASCOS 510 DSIS APLICADAS Y NO HUBO MERMAS, TODOS LOS FRASCOS SE OBTUVIERON 10 DOSIS DE CADA UNO Y RESTAN 32 FRASCO CERRADOS.'),
(101, '2021-05-31 21:22:50', 47, 'JOSEFINA DOMINGUEZ TREJO', 2, 1, '2021-05-31', 39, 49, 45, 41, 0, 0, 0, 0, 0, 0, 0, 0, 13, 29, 9, 8, 0, 0, 0, 0, 0, 0, 0, 0, 9, 7, 3, 5, 0, 0, 0, 0, 0, 0, 0, 0, 8, 5, 0, 0, 0, 0, 5, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, 'Se aplican estas dosis debido que no alcanzo el biológico en la dotación anterior y ya estaban citados'),
(103, '2021-06-01 16:37:49', 120, 'L.E. FAVIOLA SANTIAGO GONZALEZ', 2, 1, '2021-06-01', 28, 38, 35, 41, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 0, 'SE APLICO UN TOTAL DE 150 DOSIS, 142 DOSIS  DE 50 A 59 , 8 DOSIS A MAYORES DE 60 AÑOS , 0 EMBARAZADAS.'),
(104, '2021-06-01 16:47:53', 90, 'L.E. FAVIOLA SANTIAGO GONZALEZ', 2, 1, '2021-06-01', 62, 80, 42, 83, 0, 0, 0, 0, 0, 0, 0, 0, 8, 14, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 4, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 0, 'SE APLICO UN TOTAL DE 320 DOSIS\r\n- 267 DOSIS  DE 50 A 59 AÑOS\r\n- 43 A MAYORES DE 60 AÑOS\r\n- 10 EMBARAZADAS\r\n- 0 MERMAS'),
(105, '2021-06-01 17:39:41', 46, 'ANA BERENICE HERNANDEZ RODRIGUEZ', 2, 1, '2021-06-01', 16, 11, 13, 13, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 8, 0, 'Se inicia jornada con 125 Frascos, de los cuales se utilizan 8 Frascos. Cabe mencionar que 8 Frascos salieron con 10 Dosis. Quedando un total de 117 Frascos al termino de la Jornada con fecha 01/06/2021. '),
(106, '2021-06-01 17:42:26', 114, 'ENF. LOURDES SIMON MORALES', 2, 1, '2021-06-01', 49, 79, 53, 67, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 7, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 0, 'NINGUNA INCIDENCIA'),
(107, '2021-06-01 17:51:06', 126, 'María Guadalupe Ortiz Hernández ', 2, 1, '2021-06-01', 81, 106, 66, 117, 0, 0, 0, 1, 0, 0, 0, 0, 2, 6, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 11, 0, 0, 0, 0, 1, 0, 0, 4, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 'Ninguna '),
(108, '2021-06-01 18:08:35', 99, 'ALICIA PASCUAL BENITEZ', 2, 1, '2021-06-01', 99, 145, 88, 109, 0, 0, 0, 0, 0, 0, 0, 0, 10, 18, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 5, 0, 0, 3, 0, 0, 8, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 'Se inicia jornada con 109 Frascos, de los cuales se utilizan 51 Frascos. Cabe mencionar que 51 Frascos salieron con 10 Dosis. Quedando un total de 58 Frascos al termino de la Jornada con fecha 01/06/2021. '),
(109, '2021-06-01 18:10:03', 102, 'MARCELO BAUTISTA HERNANDEZ', 2, 1, '2021-06-01', 96, 148, 110, 138, 0, 0, 0, 0, 0, 0, 0, 0, 30, 25, 9, 21, 0, 0, 0, 0, 0, 0, 0, 0, 11, 12, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0, 11, 9, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, 'SIN INCIDENCIAS '),
(110, '2021-06-01 18:13:12', 86, 'LEO MINERVA CERON SEGOVIA', 4, 4, '2021-06-01', 98, 97, 66, 82, 0, 0, 0, 0, 0, 0, 0, 0, 18, 11, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 9, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 0, 'LA SEDE DE SAN BARTOLO TUVO APOYO CON 21 FRASCOS DE LA SEDE CHAPANTONGO; BIOLOGICO RECIBIDO EN ESTA SEDE 20 FRACOS, TERMINAN DE VACUNAR CERO MERMAS'),
(111, '2021-06-01 18:22:56', 96, 'VIOLETA PEREZ DELGADO', 2, 1, '2021-06-01', 140, 225, 135, 201, 0, 0, 0, 0, 0, 0, 0, 0, 18, 25, 8, 11, 0, 0, 0, 0, 0, 0, 0, 0, 11, 6, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 6, 8, 0, 0, 0, 0, 5, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 82, 0, 'Se inicia jornada con 174 Frascos, de los cuales se utilizan 82 Frascos. Cabe mencionar que 82 Frascos salieron con 10 Dosis. Quedando un total de 92 Frascos al termino de la Jornada con fecha 01/06/2021. '),
(112, '2021-06-01 18:34:37', 128, 'LEO MINERVA CERON SEGOVIA', 2, 1, '2021-06-01', 81, 114, 66, 106, 0, 0, 0, 0, 0, 0, 0, 0, 18, 14, 4, 9, 0, 0, 0, 0, 0, 0, 0, 0, 5, 5, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 6, 7, 0, 0, 0, 0, 9, 0, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 0, 'SE RECIBIERON EN ESTA SEDE 130  FRASCOS DE VACUNA HOY  SE UTILIZARON 46 FRASCOS QUEDAS 84 PARA UTILIZAR MAÑANA, TODOS SE OBTUVIERON DE 10 DOSIS'),
(113, '2021-06-01 18:38:40', 133, 'L. E. VERONICA HERNANDEZ HERNANDEZ', 2, 1, '2021-06-01', 73, 77, 54, 78, 0, 0, 0, 0, 0, 0, 0, 0, 11, 11, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 5, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 3, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 'SIN INCIDENCIAS'),
(114, '2021-06-01 18:41:50', 127, 'LEO MINERVA CERON SEGOVIA', 2, 1, '2021-06-01', 121, 129, 107, 112, 0, 0, 0, 0, 0, 0, 0, 0, 13, 18, 9, 6, 0, 0, 0, 0, 0, 0, 0, 0, 2, 6, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 3, 5, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 54, 0, 'SE RECIBIERON EN ESTA SEDE 130 FRASCOS DE VACUNA EL DÍA DE HOY SE UTILIZARON 54 FRASCOS QUE SE OBTUVIERON DIEZ DOSIS DE CADA FRASCO , LE RESTAN PARA UTILZAR MAÑANA 76 FRASCOS'),
(115, '2021-06-01 18:42:28', 143, 'L. E. VERONICA HERNANDEZ HERNANDEZ', 2, 1, '2021-06-01', 92, 103, 68, 96, 0, 0, 0, 0, 0, 0, 0, 0, 13, 11, 9, 8, 0, 0, 0, 0, 0, 0, 0, 0, 6, 2, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 0, 0, 0, 0, 3, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 43, 0, 'SIN INCIDENCIAS'),
(116, '2021-06-01 18:44:23', 88, 'L.E MARÍA ELENA GUERRERO CABRERA', 2, 1, '2021-06-01', 128, 168, 113, 121, 0, 0, 0, 0, 0, 0, 0, 0, 19, 17, 5, 6, 0, 0, 0, 0, 0, 0, 0, 0, 4, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 6, 0, 0, 7, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'El día de hoy, se proporcionan 4 frascos (40 dosis) a UMR Loma Larga. '),
(117, '2021-06-01 18:45:31', 107, 'ARACELI OLIVARES CRUZ', 2, 1, '2021-06-01', 65, 111, 57, 106, 0, 0, 0, 0, 0, 0, 0, 0, 6, 9, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 37, 0, 'SIN INCIDENCIAS'),
(119, '2021-06-01 18:54:52', 89, 'L.E. FAVIOLA SANTIAGO GONZALEZ', 2, 1, '2021-06-01', 69, 113, 54, 73, 0, 0, 0, 0, 0, 0, 0, 0, 9, 6, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 14, 0, 0, 8, 0, 0, 7, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 'SE APLICARON 370 DOSIS \r\n- 309 DOSIS DE 50 A 59 AÑOS.\r\n- 29 DOSIS MAYORES DE 60 AÑOS\r\n- 32 DOSIS A EMBARAZADAS\r\n- 0 MERMAS '),
(120, '2021-06-01 19:03:39', 131, 'TAPS. IDALIA HARRIS ACEVEDO', 2, 1, '2021-06-01', 131, 147, 107, 143, 0, 0, 0, 0, 0, 0, 0, 0, 18, 21, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 9, 5, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 3, 0, 0, 3, 0, 0, 1, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 62, 0, 'SIN INCIDENCIAS'),
(121, '2021-06-01 19:04:02', 129, 'L.E. FAVIOLA SANTIAGO GONZALEZ', 2, 1, '2021-06-01', 60, 92, 58, 76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 0, 'SE APLICO UN TOTAL DE 290 DOSIS\r\n- 286 DOSIS DE 50 A 59 AÑOS\r\n- 4 DOSIS A EMBARAZADAS\r\n- 0 MERMAS'),
(122, '2021-06-01 19:06:49', 62, 'LEO MINERVA CERON SEGOVIA', 2, 1, '2021-06-01', 149, 148, 106, 113, 0, 0, 0, 0, 0, 0, 0, 0, 10, 12, 9, 3, 0, 0, 0, 0, 0, 0, 0, 0, 4, 2, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 5, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 59, 0, 'SE RECIBIERON 80 FRASCOS DE APOYO A ESTA SEDE EL CUAL EN EL VALE NO INDICAN LA SEDE , APLICAN 590 DOSIS UTILIZANDO 59 FRASCOS QUEDAN EN EXISTENCIA 21 FRASCOS '),
(123, '2021-06-01 19:17:16', 49, 'TAPS. IDALIA HARRIS ACEVEDO', 2, 1, '2021-06-01', 66, 128, 76, 84, 0, 0, 0, 0, 0, 0, 0, 0, 15, 19, 10, 11, 0, 0, 0, 0, 0, 0, 0, 0, 2, 5, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, 0, 0, 0, 0, 6, 0, 0, 16, 0, 0, 3, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 46, 0, '3 DOSIS FUERON APLICADAS A ADULTO MAYOR, ESTAS ESTARAN REPORTADAS EN LA PLATAFORMA DE SEGUNDAS DOSIS DE 60 AÑOS Y MAS. ( NO HAY PERDIDAS)'),
(124, '2021-06-01 19:26:09', 121, 'VERONICA LARA LARA', 2, 1, '2021-06-01', 83, 118, 81, 132, 0, 0, 0, 0, 0, 0, 0, 0, 5, 8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 5, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, 'SIN INCIDENCIAS '),
(125, '2021-06-01 19:45:26', 144, 'ARACELI  HERNANDEZ CRUZ', 2, 1, '2021-06-01', 57, 64, 30, 48, 0, 0, 0, 0, 0, 0, 0, 0, 11, 5, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 'SIN INCIDENCIA '),
(126, '2021-06-01 19:49:36', 93, 'Lidia Hernández Dávila', 2, 1, '2021-06-01', 94, 116, 91, 124, 0, 0, 0, 0, 0, 0, 0, 0, 9, 11, 7, 4, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 3, 0, 0, 5, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 0, 'SEDE SIN  INCIDENTES'),
(127, '2021-06-01 19:55:36', 48, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-31', 3, 3, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 3, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 'La dosis sobrante se completa con lo capturado en el grupo de 60 y mas '),
(128, '2021-06-01 19:56:27', 101, 'Lidia Hernández Dávila', 2, 1, '2021-06-01', 169, 223, 129, 186, 0, 3, 0, 2, 0, 0, 0, 0, 4, 6, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 13, 0, 0, 4, 0, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 'SEDE SIN INCIDENTES'),
(129, '2021-06-01 20:01:37', 138, 'Lidia Hernández Dávila', 2, 1, '2021-06-01', 150, 160, 103, 162, 0, 0, 0, 0, 0, 0, 0, 0, 2, 9, 8, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 'SEDE SIN INCIDENTES'),
(130, '2021-06-01 20:10:03', 47, 'JOSEFINA DOMINGUEZ TREJO', 2, 1, '2021-06-01', 4, 5, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'sin incidentes '),
(132, '2021-06-01 20:14:06', 50, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-31', 4, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 'Las 6 dosis restantes empatan con el informe de 60 y mas segundas dosis.'),
(134, '2021-06-01 20:42:32', 124, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-05-31', 214, 297, 201, 217, 0, 0, 0, 0, 0, 0, 0, 0, 16, 8, 2, 6, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 0, 0, 0, 0, 6, 0, 0, 12, 0, 0, 5, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 'Ninguno'),
(135, '2021-06-01 20:46:34', 98, 'DRA. MARIA DEL CARMEN MELO', 2, 1, '2021-06-01', 45, 81, 56, 74, 0, 0, 0, 0, 0, 0, 0, 0, 4, 14, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 6, 0, 0, 2, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 30, 0, 'NO HAY PERDIDA EN OPERACIÓN 10 DOSIS POR FRASCOS.'),
(136, '2021-06-01 20:48:00', 142, 'LETICIA HERNANDEZ HERNANDEZ', 2, 1, '2021-06-01', 23, 36, 26, 38, 0, 0, 0, 0, 0, 0, 0, 0, 10, 17, 8, 17, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 5, 4, 0, 0, 0, 0, 0, 0, 0, 0, 5, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 'SIN INCIDENCIAS'),
(137, '2021-06-01 20:51:20', 48, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-06-01', 7, 10, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'Las tres dosis se empatan con el reporte de segundas dosis de adulto mayor ');
INSERT INTO `det_vac_50a59` (`id_det_vac_50a59`, `hora_captura`, `id_sede`, `nombre_captura_inf`, `id_bio`, `num_dosis`, `fecha_reporte`, `H_50`, `M_50`, `H_55`, `M_55`, `HENG_50`, `MENG_50`, `HENG_55`, `MENG_55`, `HEG_50`, `MEG_50`, `HEG_55`, `MEG_55`, `H_60`, `M_60`, `H_65`, `M_65`, `HENG_60`, `MENG_60`, `HENG_65`, `MENG_65`, `HEG_60`, `MEG_60`, `HEG_65`, `MEG_65`, `H_70`, `M_70`, `H_75`, `M_75`, `HENG_70`, `MENG_70`, `HENG_75`, `MENG_75`, `HEG_70`, `MEG_70`, `HEG_75`, `MEG_75`, `H_80`, `M_80`, `HENG_80`, `MENG_80`, `HEG_80`, `MEG_80`, `ME_18`, `MEENG_18`, `MEEG_18`, `ME_25`, `MEENG_25`, `MEEG_25`, `ME_30`, `MEENG_30`, `MEEG_30`, `ME_35`, `MEENG_35`, `MEEG_35`, `ME_40`, `MEENG_40`, `MEEG_40`, `ME_45`, `MEENG_45`, `MEEG_45`, `ME_50`, `MEENG_50`, `MEEG_50`, `ME_55`, `MEENG_55`, `MEEG_55`, `briga`, `personal_salud`, `merma`, `Frs_dosis_completas`, `Frs_dosis_incompletas`, `observa`) VALUES
(138, '2021-06-01 20:52:40', 97, 'TEC. REMEDIOS CARDENAS ', 2, 1, '2021-06-01', 59, 90, 73, 88, 0, 0, 0, 0, 0, 0, 0, 0, 3, 9, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 'FRASCOS DE 10 DOSIS, SIN INCIDENCIAS '),
(139, '2021-06-01 21:03:14', 109, 'L.E ERICA ROSALIO HERNANDEZ', 2, 1, '2021-06-01', 94, 103, 58, 93, 0, 0, 0, 0, 0, 0, 0, 0, 8, 6, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 5, 2, 0, 0, 0, 0, 3, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 40, 0, 'SE APERTURAN 40 FRASCOS CON 10 DOSIS CADA UNO, HAY UNA PERDIDA DE 1 DOSIS POR ERROR TECNICO ( cayó al piso jeringa  cargada con una dosis de vacuna)'),
(140, '2021-06-01 21:03:56', 50, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-06-01', 5, 7, 4, 6, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 'Las 2 dosis empatan con el grupo de 60 y mas segundas dosis'),
(141, '2021-06-01 21:09:30', 106, 'L.E FLORENCIA RUBIO RUBIO', 2, 1, '2021-06-01', 76, 105, 78, 111, 0, 0, 0, 0, 0, 0, 0, 0, 8, 6, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 0, 'SE APERTURAN 40 FRASCOS CON 400 DOSIS CADA UNO'),
(142, '2021-06-01 21:14:47', 124, 'Virginia Fabiola Hernández Montoya', 2, 1, '2021-06-01', 166, 179, 113, 155, 0, 0, 0, 0, 0, 0, 0, 0, 20, 18, 11, 13, 0, 0, 0, 0, 0, 0, 0, 0, 5, 6, 2, 5, 0, 0, 0, 0, 0, 0, 0, 0, 3, 10, 0, 0, 0, 0, 10, 0, 0, 8, 0, 0, 3, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 0, 0, 75, 0, 'Ninguna'),
(143, '2021-06-01 21:17:05', 116, 'L.E ESMERALDA MONTES COVARRUBIAS', 2, 1, '2021-06-01', 52, 66, 56, 81, 0, 0, 0, 0, 0, 0, 0, 0, 5, 4, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 4, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 0, 'SE APERTURAN 28 FRASCOS CON 10 DOSIS CADA UNO 280 DOSIS. SE PASAN 22 FRASCOS A SEDE UMR CHALAHUITE '),
(144, '2021-06-01 21:27:26', 94, 'ERICA CONTRERAS HERNANDEZ', 2, 1, '2021-06-01', 94, 149, 85, 121, 0, 0, 0, 0, 0, 0, 0, 0, 15, 16, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 'SIN INCIDENCIAS'),
(146, '2021-06-01 21:59:52', 95, 'MAYRA VARGAS BELTRAN', 2, 1, '2021-06-01', 86, 129, 79, 123, 0, 0, 0, 0, 0, 0, 0, 0, 11, 13, 6, 4, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 3, 0, 0, 2, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 48, 0, 'SIN INCIDENCIAS'),
(147, '2021-06-01 22:07:19', 104, 'FERMIN ALVAREZ CAMARGO', 2, 1, '2021-06-01', 72, 84, 79, 87, 0, 0, 0, 0, 0, 0, 0, 0, 7, 11, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 4, 0, 0, 4, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 'SIN INCIDENCIAS'),
(148, '2021-06-01 22:13:57', 110, 'NICANDRO CRUZ TREJO', 2, 1, '2021-06-01', 52, 96, 54, 83, 0, 0, 0, 0, 0, 0, 0, 0, 11, 15, 6, 11, 0, 0, 0, 0, 0, 0, 0, 0, 7, 4, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 8, 5, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 37, 0, 'SIN INCIDENCIAS'),
(149, '2021-06-01 22:19:54', 113, 'MA. CARMEN PEREZ CANO', 2, 1, '2021-06-01', 58, 74, 57, 63, 0, 0, 0, 0, 0, 0, 0, 0, 10, 10, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 3, 2, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 0, 'SIN INCIDENCIAS'),
(150, '2021-06-01 22:24:43', 130, 'ROSARIO HERNANDEZ TORRES', 2, 1, '2021-06-01', 125, 161, 123, 162, 0, 0, 0, 0, 0, 0, 0, 0, 30, 21, 14, 4, 0, 0, 0, 0, 0, 0, 0, 0, 14, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 7, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 69, 0, 'SIN INCIDENCIAS'),
(151, '2021-06-01 22:29:42', 139, 'ARACELI HERNANDEZ VELASCO', 2, 1, '2021-06-01', 122, 191, 117, 167, 0, 0, 0, 0, 0, 0, 0, 0, 19, 19, 7, 6, 0, 0, 0, 0, 0, 0, 0, 0, 4, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 9, 0, 0, 9, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 'SIN INCIDENCIAS'),
(152, '2021-06-02 09:11:37', 105, 'FAVIOLA SANTIAGO GONZALEZ ', 2, 1, '2021-06-01', 71, 83, 63, 71, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, 'SE PALICARON 305 DOSIS A PERSONAS DE 50 Y MAS Y 5 DOSIS A MUJERES EMBARAZADAS  APLICANDO UN TOTAL DE 310 DOSIS Y OCUPANDO 31 FRASCOS. ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_vac_60ymas`
--

CREATE TABLE `det_vac_60ymas` (
  `id_det_vac_60ymas` int(10) UNSIGNED NOT NULL,
  `hora_captura` datetime DEFAULT NULL,
  `id_sede` int(10) UNSIGNED NOT NULL,
  `nombre_captura_inf` varchar(255) NOT NULL,
  `id_bio` int(10) UNSIGNED NOT NULL,
  `num_dosis` int(10) UNSIGNED NOT NULL,
  `fecha_reporte` date DEFAULT NULL,
  `H_50` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `M_50` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `H_55` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `M_55` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `HENG_50` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `MENG_50` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `HENG_55` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `MENG_55` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `HEG_50` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `MEG_50` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `HEG_55` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `MEG_55` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `H_60` int(10) UNSIGNED NOT NULL,
  `M_60` int(10) UNSIGNED NOT NULL,
  `H_65` int(10) UNSIGNED NOT NULL,
  `M_65` int(10) UNSIGNED NOT NULL,
  `HENG_60` int(10) UNSIGNED NOT NULL,
  `MENG_60` int(10) UNSIGNED NOT NULL,
  `HENG_65` int(10) UNSIGNED NOT NULL,
  `MENG_65` int(10) UNSIGNED NOT NULL,
  `HEG_60` int(10) UNSIGNED NOT NULL,
  `MEG_60` int(10) UNSIGNED NOT NULL,
  `HEG_65` int(10) UNSIGNED NOT NULL,
  `MEG_65` int(10) UNSIGNED NOT NULL,
  `H_70` int(10) UNSIGNED NOT NULL,
  `M_70` int(10) UNSIGNED NOT NULL,
  `H_75` int(10) UNSIGNED NOT NULL,
  `M_75` int(10) UNSIGNED NOT NULL,
  `HENG_70` int(10) UNSIGNED NOT NULL,
  `MENG_70` int(10) UNSIGNED NOT NULL,
  `HENG_75` int(10) UNSIGNED NOT NULL,
  `MENG_75` int(10) UNSIGNED NOT NULL,
  `HEG_70` int(10) UNSIGNED NOT NULL,
  `MEG_70` int(10) UNSIGNED NOT NULL,
  `HEG_75` int(10) UNSIGNED NOT NULL,
  `MEG_75` int(10) UNSIGNED NOT NULL,
  `H_80` int(10) UNSIGNED NOT NULL,
  `M_80` int(10) UNSIGNED NOT NULL,
  `HENG_80` int(10) UNSIGNED NOT NULL,
  `MENG_80` int(10) UNSIGNED NOT NULL,
  `HEG_80` int(10) UNSIGNED NOT NULL,
  `MEG_80` int(10) UNSIGNED NOT NULL,
  `ME_18` int(10) UNSIGNED NOT NULL,
  `MEENG_18` int(10) UNSIGNED NOT NULL,
  `MEEG_18` int(10) UNSIGNED NOT NULL,
  `ME_25` int(10) UNSIGNED NOT NULL,
  `MEENG_25` int(10) UNSIGNED NOT NULL,
  `MEEG_25` int(10) UNSIGNED NOT NULL,
  `ME_30` int(10) UNSIGNED NOT NULL,
  `MEENG_30` int(10) UNSIGNED NOT NULL,
  `MEEG_30` int(10) UNSIGNED NOT NULL,
  `ME_35` int(10) UNSIGNED NOT NULL,
  `MEENG_35` int(10) UNSIGNED NOT NULL,
  `MEEG_35` int(10) UNSIGNED NOT NULL,
  `ME_40` int(10) UNSIGNED NOT NULL,
  `MEENG_40` int(10) UNSIGNED NOT NULL,
  `MEEG_40` int(10) UNSIGNED NOT NULL,
  `ME_45` int(10) UNSIGNED NOT NULL,
  `MEENG_45` int(10) UNSIGNED NOT NULL,
  `MEEG_45` int(10) UNSIGNED NOT NULL,
  `ME_50` int(10) UNSIGNED NOT NULL,
  `MEENG_50` int(10) UNSIGNED NOT NULL,
  `MEEG_50` int(10) UNSIGNED NOT NULL,
  `ME_55` int(10) UNSIGNED NOT NULL,
  `MEENG_55` int(10) UNSIGNED NOT NULL,
  `MEEG_55` int(10) UNSIGNED NOT NULL,
  `briga` int(10) UNSIGNED NOT NULL,
  `personal_salud` int(10) UNSIGNED NOT NULL,
  `merma` int(10) UNSIGNED NOT NULL,
  `Frs_dosis_completas` int(4) NOT NULL DEFAULT '0',
  `Frs_dosis_incompletas` int(4) NOT NULL DEFAULT '0',
  `observa` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `det_vac_60ymas`
--

INSERT INTO `det_vac_60ymas` (`id_det_vac_60ymas`, `hora_captura`, `id_sede`, `nombre_captura_inf`, `id_bio`, `num_dosis`, `fecha_reporte`, `H_50`, `M_50`, `H_55`, `M_55`, `HENG_50`, `MENG_50`, `HENG_55`, `MENG_55`, `HEG_50`, `MEG_50`, `HEG_55`, `MEG_55`, `H_60`, `M_60`, `H_65`, `M_65`, `HENG_60`, `MENG_60`, `HENG_65`, `MENG_65`, `HEG_60`, `MEG_60`, `HEG_65`, `MEG_65`, `H_70`, `M_70`, `H_75`, `M_75`, `HENG_70`, `MENG_70`, `HENG_75`, `MENG_75`, `HEG_70`, `MEG_70`, `HEG_75`, `MEG_75`, `H_80`, `M_80`, `HENG_80`, `MENG_80`, `HEG_80`, `MEG_80`, `ME_18`, `MEENG_18`, `MEEG_18`, `ME_25`, `MEENG_25`, `MEEG_25`, `ME_30`, `MEENG_30`, `MEEG_30`, `ME_35`, `MEENG_35`, `MEEG_35`, `ME_40`, `MEENG_40`, `MEEG_40`, `ME_45`, `MEENG_45`, `MEEG_45`, `ME_50`, `MEENG_50`, `MEEG_50`, `ME_55`, `MEENG_55`, `MEEG_55`, `briga`, `personal_salud`, `merma`, `Frs_dosis_completas`, `Frs_dosis_incompletas`, `observa`) VALUES
(1, '2021-03-01 18:00:00', 1, 'RATG', 4, 4, '2021-03-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 2, 0, 0, 'REGISTRO DE PRUEBA POBLACION DE 60 Y MAS AÑOS'),
(2, '2021-05-31 17:51:51', 83, 'L. E. VERONICA HERNANDEZ HERNANDEZ', 2, 2, '2021-05-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 112, 142, 101, 121, 0, 0, 0, 0, 0, 0, 0, 0, 75, 78, 47, 59, 0, 0, 0, 0, 0, 0, 0, 0, 43, 72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 85, 0, 'SIN INCIDENCIAS'),
(3, '2021-05-31 21:19:44', 78, 'JOSEFINA DOMINGUEZ TREJO', 2, 2, '2021-05-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 104, 75, 81, 0, 0, 0, 0, 0, 0, 0, 0, 48, 50, 39, 44, 0, 0, 0, 0, 0, 0, 0, 0, 37, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 'sin incidentes '),
(4, '2021-06-01 16:52:37', 83, 'L. E. VERONICA HERNANDEZ HERNANDEZ', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119, 143, 82, 125, 0, 0, 0, 0, 0, 0, 0, 0, 68, 112, 43, 73, 0, 0, 0, 0, 0, 0, 0, 0, 60, 75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 90, 0, 'SIN INCIDENCIAS'),
(5, '2021-06-01 17:55:22', 73, 'ANA BERENICE HERNANDEZ RODRIGUEZ', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 288, 393, 205, 281, 0, 0, 0, 0, 0, 0, 0, 0, 138, 176, 91, 126, 0, 0, 0, 0, 0, 0, 0, 0, 109, 193, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 16, 0, 203, 0, 'Se inicia jornada con 861 Frascos, de los cuales se utilizan 203 Frascos. Cabe mencionar que 203 Frascos salieron con 10 Dosis. Quedando un total de 631 Frascos al termino de la Jornada con fecha 01/06/2021. '),
(6, '2021-06-01 18:30:44', 82, 'TAPS. IDALIA HARRIS ACEVEDO', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 297, 382, 264, 308, 0, 0, 0, 0, 0, 0, 0, 0, 195, 194, 123, 165, 0, 0, 0, 0, 0, 0, 0, 0, 116, 156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 220, 0, 'SIN INCIDENCIAS'),
(7, '2021-06-01 18:39:10', 80, 'TAPS. IDALIA HARRIS ACEVEDO', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 101, 68, 87, 0, 0, 0, 0, 0, 0, 0, 0, 59, 56, 41, 46, 0, 0, 0, 0, 0, 0, 0, 0, 33, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 61, 0, 'SIN INCIDENCIAS'),
(8, '2021-06-01 19:34:35', 79, 'TAPS. IDALIA HARRIS ACEVEDO', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 138, 165, 155, 161, 0, 0, 0, 0, 0, 0, 0, 0, 116, 125, 96, 105, 0, 0, 0, 0, 0, 0, 0, 0, 91, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 125, 0, '3 DOSIS FUERON APLICADAS DE UN FRASCO REPORTADO EN LA PLATAFORMA DE  PRIMERAS DOSIS DE 50 A 59 AÑOS.'),
(9, '2021-06-01 19:53:17', 67, 'Virginia Fabiola Hernández Montoya', 2, 2, '2021-05-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 286, 405, 240, 278, 0, 0, 0, 0, 0, 0, 0, 0, 157, 211, 111, 133, 0, 0, 0, 0, 0, 0, 0, 0, 116, 171, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 211, 0, 'La dosis que esta demás se complementa con lo capturado en el rubro de 50 a 59 de primeras dosis.'),
(10, '2021-06-01 20:04:15', 70, 'Virginia Fabiola Hernández Montoya', 2, 2, '2021-05-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 142, 176, 115, 145, 0, 0, 0, 0, 0, 0, 0, 0, 81, 98, 56, 78, 0, 0, 0, 0, 0, 0, 0, 0, 71, 108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, 0, 'Ninguno'),
(11, '2021-06-01 20:09:28', 74, 'Virginia Fabiola Hernández Montoya', 2, 2, '2021-05-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, 181, 104, 134, 0, 0, 0, 0, 0, 0, 0, 0, 85, 89, 69, 67, 0, 0, 0, 0, 0, 0, 0, 0, 65, 85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 98, 0, 'las 6 dosis de mas empatan con el reporte de primeras dosis de 50 a 59 años'),
(12, '2021-06-01 20:22:49', 81, 'JOSEFINA DOMINGUEZ TREJO', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 156, 161, 108, 134, 0, 0, 0, 0, 0, 0, 0, 0, 69, 83, 56, 70, 0, 0, 0, 0, 0, 0, 0, 0, 53, 63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 97, 0, 'sin incidentes'),
(13, '2021-06-01 20:25:21', 68, 'JOSEFINA DOMINGUEZ TREJO', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 99, 115, 84, 83, 0, 0, 0, 0, 0, 0, 0, 0, 67, 69, 54, 44, 0, 0, 0, 0, 0, 0, 0, 0, 83, 92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 79, 0, 'sin incidencias'),
(14, '2021-06-01 20:26:33', 78, 'JOSEFINA DOMINGUEZ TREJO', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 71, 88, 56, 56, 0, 0, 0, 0, 0, 0, 0, 0, 49, 38, 26, 39, 0, 0, 0, 0, 0, 0, 0, 0, 46, 31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, 0, 'sin incidencias'),
(15, '2021-06-01 20:35:21', 75, 'Virginia Fabiola Hernández Montoya', 2, 2, '2021-05-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 117, 194, 99, 127, 0, 0, 0, 0, 0, 0, 0, 0, 86, 98, 50, 56, 0, 0, 0, 0, 0, 0, 0, 0, 59, 84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 0, 'Ninguna'),
(16, '2021-06-01 20:37:59', 76, 'Virginia Fabiola Hernández Montoya', 2, 2, '2021-05-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 197, 223, 148, 193, 0, 0, 0, 0, 0, 0, 0, 0, 116, 125, 76, 82, 0, 0, 0, 0, 0, 0, 0, 0, 96, 154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 141, 0, 'Ninguno'),
(17, '2021-06-01 20:47:40', 67, 'Virginia Fabiola Hernández Montoya', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 221, 312, 158, 224, 0, 0, 0, 0, 0, 0, 0, 0, 106, 162, 55, 108, 0, 0, 0, 0, 0, 0, 0, 0, 85, 133, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 157, 0, 'las tres dosis restantes se aplicaron en el grupo de 50 a 59 años 1ras dosis.'),
(18, '2021-06-01 20:55:06', 70, 'Virginia Fabiola Hernández Montoya', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 101, 140, 92, 113, 0, 0, 0, 0, 0, 0, 0, 0, 63, 81, 42, 66, 0, 0, 0, 0, 0, 0, 0, 0, 52, 77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 83, 0, 'Ninguna'),
(19, '2021-06-01 21:01:16', 74, 'Virginia Fabiola Hernández Montoya', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 168, 112, 153, 0, 0, 0, 0, 0, 0, 0, 0, 83, 103, 47, 84, 0, 0, 0, 0, 0, 0, 0, 0, 62, 100, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, 0, 'Las 2 dosis restantes se aplicaron en el grupo de 50 a 59 años 1ras. dosis.'),
(20, '2021-06-01 21:06:19', 75, 'Virginia Fabiola Hernández Montoya', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109, 130, 119, 138, 0, 0, 0, 0, 0, 0, 0, 0, 92, 89, 61, 46, 0, 0, 0, 0, 0, 0, 0, 0, 52, 74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 'Ninguna'),
(21, '2021-06-01 21:10:28', 76, 'Virginia Fabiola Hernández Montoya', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 167, 229, 148, 155, 0, 0, 0, 0, 0, 0, 0, 0, 106, 132, 66, 102, 0, 0, 0, 0, 0, 0, 0, 0, 98, 127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133, 0, 'Ninguno'),
(22, '2021-06-01 22:50:27', 84, 'Yaneth Villeda Briceño', 2, 2, '2021-05-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 207, 231, 149, 197, 0, 0, 0, 0, 0, 0, 0, 0, 136, 140, 74, 116, 0, 0, 0, 0, 0, 0, 0, 0, 73, 134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, 0, 149, 0, 'SE UTILIZARON 140 FCOS DE 10 DOSIS UN TOTAL DE 1490 VACUNAS APLICADAS'),
(23, '2021-05-31 21:25:14', 77, 'JOSEFINA DOMINGUEZ TREJO', 2, 2, '2021-05-31', 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 341, 391, 260, 271, 0, 0, 0, 0, 0, 0, 0, 0, 186, 204, 114, 137, 0, 0, 0, 0, 0, 0, 0, 0, 147, 155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 10, 221, 0, 'Se encuentra un frasco roto al abrir la caja. se aplican dos segundas dosis a personal de salud '),
(24, '2021-06-01 20:13:28', 77, 'JOSEFINA DOMINGUEZ TREJO', 2, 2, '2021-06-01', 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 232, 262, 176, 185, 0, 0, 0, 0, 0, 0, 0, 0, 134, 165, 85, 66, 0, 0, 0, 0, 0, 0, 0, 0, 95, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 152, 0, 'SIN INCIDENTES'),
(25, '2021-05-31 21:03:28', 68, 'JOSEFINA DOMINGUEZ TREJO', 2, 2, '2021-05-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 124, 95, 79, 93, 0, 0, 0, 0, 0, 0, 0, 0, 76, 59, 47, 54, 0, 0, 0, 0, 0, 0, 0, 0, 78, 55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 76, 0, 'Sin incidencias'),
(26, '2021-05-31 21:15:37', 69, 'JOSEFINA DOMINGUEZ TREJO', 2, 2, '2021-05-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 194, 208, 145, 157, 0, 0, 0, 0, 0, 0, 0, 0, 96, 127, 84, 76, 0, 0, 0, 0, 0, 0, 0, 0, 66, 87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 124, 0, 'Se encuentra un frasco roto al abrir la caja al estar realizando el ingreso de biológico al refrigerador. Sin ningún  otro incidente'),
(27, '2021-05-31 21:18:04', 81, 'JOSEFINA DOMINGUEZ TREJO', 2, 2, '2021-05-31', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 143, 171, 132, 142, 0, 0, 0, 0, 0, 0, 0, 0, 75, 102, 48, 71, 0, 0, 0, 0, 0, 0, 0, 0, 50, 66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, ''),
(28, '2021-06-01 18:48:00', 146, 'ARACELI OLIVARES CRUZ', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SEGUNDAS DOSIS'),
(29, '2021-06-01 20:20:57', 69, 'JOSEFINA DOMINGUEZ TREJO', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 165, 96, 139, 0, 0, 0, 0, 0, 0, 0, 0, 66, 63, 51, 45, 0, 0, 0, 0, 0, 0, 0, 0, 33, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 84, 0, 'sin incidencias'),
(30, '2021-06-01 21:31:07', 147, 'ERICA CONTRERAS HERNANDEZ', 2, 2, '2021-06-01', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SIN INCIDENCIAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_vac_seph`
--

CREATE TABLE `det_vac_seph` (
  `id_det_vac_seph` int(10) UNSIGNED NOT NULL,
  `hora_captura` datetime DEFAULT NULL,
  `id_sede` int(10) UNSIGNED NOT NULL,
  `nombre_captura_inf` varchar(300) NOT NULL,
  `id_bio` int(10) UNSIGNED NOT NULL,
  `fecha_reporte` date DEFAULT NULL,
  `num_dosis` int(10) UNSIGNED NOT NULL,
  `H_18` int(10) UNSIGNED NOT NULL,
  `M_18` int(10) UNSIGNED NOT NULL,
  `H_20` int(10) UNSIGNED NOT NULL,
  `M_20` int(10) UNSIGNED NOT NULL,
  `H_25` int(10) UNSIGNED NOT NULL,
  `M_25` int(10) UNSIGNED NOT NULL,
  `H_30` int(10) UNSIGNED NOT NULL,
  `M_30` int(10) UNSIGNED NOT NULL,
  `H_35` int(10) UNSIGNED NOT NULL,
  `M_35` int(10) UNSIGNED NOT NULL,
  `H_40` int(10) UNSIGNED NOT NULL,
  `M_40` int(10) UNSIGNED NOT NULL,
  `H_45` int(10) UNSIGNED NOT NULL,
  `M_45` int(10) UNSIGNED NOT NULL,
  `H_50` int(10) UNSIGNED NOT NULL,
  `M_50` int(10) UNSIGNED NOT NULL,
  `H_55` int(10) UNSIGNED NOT NULL,
  `M_55` int(10) UNSIGNED NOT NULL,
  `H_60` int(10) UNSIGNED NOT NULL,
  `M_60` int(10) UNSIGNED NOT NULL,
  `H_65` int(10) UNSIGNED NOT NULL,
  `M_65` int(10) UNSIGNED NOT NULL,
  `H_70` int(10) UNSIGNED NOT NULL,
  `M_70` int(10) UNSIGNED NOT NULL,
  `HENG_18` int(10) UNSIGNED NOT NULL,
  `MENG_18` int(10) UNSIGNED NOT NULL,
  `HENG_20` int(10) UNSIGNED NOT NULL,
  `MENG_20` int(10) UNSIGNED NOT NULL,
  `HENG_25` int(10) UNSIGNED NOT NULL,
  `MENG_25` int(10) UNSIGNED NOT NULL,
  `HENG_30` int(10) UNSIGNED NOT NULL,
  `MENG_30` int(10) UNSIGNED NOT NULL,
  `HENG_35` int(10) UNSIGNED NOT NULL,
  `MENG_35` int(10) UNSIGNED NOT NULL,
  `HENG_40` int(10) UNSIGNED NOT NULL,
  `MENG_40` int(10) UNSIGNED NOT NULL,
  `HENG_45` int(10) UNSIGNED NOT NULL,
  `MENG_45` int(10) UNSIGNED NOT NULL,
  `HENG_50` int(10) UNSIGNED NOT NULL,
  `MENG_50` int(10) UNSIGNED NOT NULL,
  `HENG_55` int(10) UNSIGNED NOT NULL,
  `MENG_55` int(10) UNSIGNED NOT NULL,
  `HENG_60` int(10) UNSIGNED NOT NULL,
  `MENG_60` int(10) UNSIGNED NOT NULL,
  `HENG_65` int(10) UNSIGNED NOT NULL,
  `MENG_65` int(10) UNSIGNED NOT NULL,
  `HENG_70` int(10) UNSIGNED NOT NULL,
  `MENG_70` int(10) UNSIGNED NOT NULL,
  `HEG_18` int(10) UNSIGNED NOT NULL,
  `MEG_18` int(10) UNSIGNED NOT NULL,
  `HEG_20` int(10) UNSIGNED NOT NULL,
  `MEG_20` int(10) UNSIGNED NOT NULL,
  `HEG_25` int(10) UNSIGNED NOT NULL,
  `MEG_25` int(10) UNSIGNED NOT NULL,
  `HEG_30` int(10) UNSIGNED NOT NULL,
  `MEG_30` int(10) UNSIGNED NOT NULL,
  `HEG_35` int(10) UNSIGNED NOT NULL,
  `MEG_35` int(10) UNSIGNED NOT NULL,
  `HEG_40` int(10) UNSIGNED NOT NULL,
  `MEG_40` int(10) UNSIGNED NOT NULL,
  `HEG_45` int(10) UNSIGNED NOT NULL,
  `MEG_45` int(10) UNSIGNED NOT NULL,
  `HEG_50` int(10) UNSIGNED NOT NULL,
  `MEG_50` int(10) UNSIGNED NOT NULL,
  `HEG_55` int(10) UNSIGNED NOT NULL,
  `MEG_55` int(10) UNSIGNED NOT NULL,
  `HEG_60` int(10) UNSIGNED NOT NULL,
  `MEG_60` int(10) UNSIGNED NOT NULL,
  `HEG_65` int(10) UNSIGNED NOT NULL,
  `MEG_65` int(10) UNSIGNED NOT NULL,
  `HEG_70` int(10) UNSIGNED NOT NULL,
  `MEG_70` int(10) UNSIGNED NOT NULL,
  `briga` int(10) UNSIGNED NOT NULL,
  `personal_salud` int(10) NOT NULL,
  `merma` int(10) UNSIGNED NOT NULL,
  `Frs_dosis_completas` int(5) NOT NULL DEFAULT '0',
  `Frs_dosis_incompletas` int(5) NOT NULL DEFAULT '0',
  `observa` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `det_vac_seph`
--

INSERT INTO `det_vac_seph` (`id_det_vac_seph`, `hora_captura`, `id_sede`, `nombre_captura_inf`, `id_bio`, `fecha_reporte`, `num_dosis`, `H_18`, `M_18`, `H_20`, `M_20`, `H_25`, `M_25`, `H_30`, `M_30`, `H_35`, `M_35`, `H_40`, `M_40`, `H_45`, `M_45`, `H_50`, `M_50`, `H_55`, `M_55`, `H_60`, `M_60`, `H_65`, `M_65`, `H_70`, `M_70`, `HENG_18`, `MENG_18`, `HENG_20`, `MENG_20`, `HENG_25`, `MENG_25`, `HENG_30`, `MENG_30`, `HENG_35`, `MENG_35`, `HENG_40`, `MENG_40`, `HENG_45`, `MENG_45`, `HENG_50`, `MENG_50`, `HENG_55`, `MENG_55`, `HENG_60`, `MENG_60`, `HENG_65`, `MENG_65`, `HENG_70`, `MENG_70`, `HEG_18`, `MEG_18`, `HEG_20`, `MEG_20`, `HEG_25`, `MEG_25`, `HEG_30`, `MEG_30`, `HEG_35`, `MEG_35`, `HEG_40`, `MEG_40`, `HEG_45`, `MEG_45`, `HEG_50`, `MEG_50`, `HEG_55`, `MEG_55`, `HEG_60`, `MEG_60`, `HEG_65`, `MEG_65`, `HEG_70`, `MEG_70`, `briga`, `personal_salud`, `merma`, `Frs_dosis_completas`, `Frs_dosis_incompletas`, `observa`) VALUES
(2, '2021-05-12 16:18:08', 33, 'L. E. VERONICA HERNANDEZ HERNANDEZ', 4, '2021-05-12', 4, 0, 0, 5, 7, 11, 26, 27, 51, 42, 73, 34, 42, 29, 30, 28, 28, 18, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, '2 FRASCOS CON 9 DOSIS – FRASCOS TOTALES USADOS EN LA JORNADA: 46'),
(3, '2021-05-12 17:37:29', 13, 'ANA BERENICE HERNANDEZ RODRIGUEZ', 4, '2021-05-12', 4, 0, 0, 5, 16, 25, 88, 67, 132, 93, 171, 97, 191, 92, 172, 71, 125, 73, 59, 4, 2, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 'Se inicia jornada con 460 Frascos, de los cuales se utilizan 149 Frascos. Cabe mencionar que 4 Frascos salieron con 9 Dosis y 145 Frascos con 10 Dosis. Quedando un total de 311 Frascos al termino de la Jornada con fecha 12/05/2021.  – FRASCOS TOTALES USAD'),
(4, '2021-05-12 18:33:03', 17, 'TAYDE MAYRASOL SANCHEZ BAUTISTA', 4, '2021-05-12', 4, 0, 0, 2, 4, 17, 24, 24, 29, 25, 30, 28, 44, 30, 39, 38, 32, 17, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'JORNADA DE VACUNACIÓN SIN INCIDENTES – FRASCOS TOTALES USADOS EN LA JORNADA: 40'),
(5, '2021-05-12 18:34:55', 8, 'L.E MARÍA ELENA GUERRERO CABRERA', 4, '2021-05-12', 4, 0, 0, 0, 14, 18, 58, 25, 89, 49, 109, 36, 65, 35, 48, 21, 32, 19, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 'Se recibe biológico a una temperatura de 2°C. Durante la jornada de vacunación se utilizan 65 frascos, se aplican 639 dosis, de 54 frascos se obtienen 10 dosis y de 11 frascos 9 dosis, teniendo una merma de 11 dosis.  – FRASCOS TOTALES USADOS EN LA JORNAD'),
(6, '2021-05-12 18:53:50', 18, 'TAYDE MAYRASOL SANCHEZ BAUTISTA', 4, '2021-05-12', 4, 0, 0, 10, 18, 37, 77, 40, 51, 46, 40, 52, 22, 26, 16, 25, 14, 15, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 0, 0, 'DE LOS 53 FRASCOS UTILIZADOS SE REPORTAN : 15 FRASCOS CON 10 DOSIS ,  Y 38 FRASCOS  CON 9 DOSIS CADA UNO. – FRASCOS TOTALES USADOS EN LA JORNADA: 53'),
(7, '2021-05-12 19:03:21', 20, 'FAVIOLA SANTIAGO GONZALEZ', 4, '2021-05-12', 4, 0, 5, 7, 17, 16, 38, 42, 58, 42, 48, 41, 59, 36, 30, 31, 27, 17, 12, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 'EN TRES FRASCOS SOLO SALIERON 9 DOSIS,  DE LAS CUALES SE REALIZO UNA ACTA DETALLANDO LAS DOSIS PERDIDAS.  – FRASCOS TOTALES USADOS EN LA JORNADA: 53'),
(8, '2021-05-12 19:07:29', 35, 'Lidia Hernández Dávila', 4, '2021-05-12', 4, 0, 0, 4, 29, 17, 87, 46, 128, 74, 126, 60, 103, 63, 111, 47, 97, 61, 67, 12, 4, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 'El personal vacunador al inicio de las actividades  reportan que en  11 frascos de vacuna cansino,  solo  obtuvieron 9 dosis por frasco – FRASCOS TOTALES USADOS EN LA JORNADA: 115'),
(9, '2021-05-12 19:08:42', 5, 'Virginia Fabiola Hernández Montoya', 4, '2021-05-12', 4, 0, 2, 3, 12, 13, 42, 29, 69, 53, 131, 46, 107, 48, 126, 65, 81, 51, 48, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 'Temperatura del biológico 4°C con termómetro de Vástago calibrado – FRASCOS TOTALES USADOS EN LA JORNADA: 93'),
(10, '2021-05-12 19:26:36', 27, 'JOSEFINA DOMINGUEZ TREJO', 4, '2021-05-12', 4, 0, 0, 13, 41, 34, 125, 33, 109, 37, 92, 31, 88, 27, 56, 39, 63, 29, 13, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 'Se inicia la  actividad a las 06:30 am. se trasladan 84 frascos de biológico a una tem de 3°C, se  tuvieron 9 frascos donde solo se obtuvieron 9 dosis de cada frasco. acudieron ordenadamente los docentes, al final se quedaron 2 profesores sin vacunar debi'),
(11, '2021-05-12 19:33:54', 19, 'FAVIOLA SANTIAGO GONZALEZ', 4, '2021-05-12', 4, 1, 5, 13, 33, 32, 53, 25, 66, 30, 62, 18, 52, 14, 16, 13, 14, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 'EN 22 FRASCOS SALIERON 9 DOSIS, DE LAS CUALES SE REALIZO UNA ACTA DETALLANDO LAS DOSIS. – FRASCOS TOTALES USADOS EN LA JORNADA: 47\r\n\r\n10 dosis de perdida en la operación debido a que el día once del mes de mayo del año 2021, se procede a sustentar la inactivación y desecho de biológico por perdida en la operación ya que en el momento de resguardar el biológico en la unidad refrigerante uno de estos cayó al suelo rompiéndose y derramando su contenido, afectando los biológicos:\r\nTipo de biológico: ANTI COVI-19\r\nLaboratorio: CanSino Biologics\r\nLote: A041621\r\nCaducidad: 14/04/2022\r\nTotal de frascos: 1\r\nTotal de dosis: 10'),
(12, '2021-05-12 19:43:27', 10, 'ERICA CONTRERAS HERNANDEZ', 4, '2021-05-12', 4, 0, 0, 5, 6, 20, 26, 43, 56, 69, 74, 74, 69, 59, 52, 43, 41, 37, 10, 3, 2, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, 0, 0, '69 FRASCOS (621 DOSIS) CON OBTENCION DE 9 DOSIS \r\n7 FRASCOS  (70) CON OBTENCION DE 10 DOSIS\r\n – FRASCOS TOTALES USADOS EN LA JORNADA: 76'),
(13, '2021-05-12 19:44:38', 29, 'Miguel Angel Gómez Gómez ', 4, '2021-05-12', 4, 2, 1, 21, 54, 57, 202, 94, 194, 97, 217, 81, 134, 65, 107, 50, 51, 25, 25, 1, 2, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'La Jornada transcurrió con tranquilidad, solicito reducción de células por tener espacios de tiempo sin trabajar – FRASCOS TOTALES USADOS EN LA JORNADA: 148'),
(14, '2021-05-12 19:48:23', 30, 'Miguel Angel Gómez Gómez ', 4, '2021-05-12', 4, 0, 0, 1, 4, 15, 24, 24, 65, 43, 85, 30, 60, 36, 47, 28, 16, 15, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jornada sin contratiempos – FRASCOS TOTALES USADOS EN LA JORNADA: 50'),
(15, '2021-05-12 19:51:29', 11, 'LEO MINERVA CERON SEGOVIA', 4, '2021-05-12', 4, 0, 1, 3, 11, 23, 49, 31, 68, 39, 54, 38, 69, 34, 46, 26, 30, 23, 23, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'SE TUVO UNA DOSIS EN PERDIDA A LA OPERACIÓN POR QUE LA AGUJA NEGRA NO EMBONO AL PIVOTE DE LA JERINGA Y AL APLICAR SE DERRAMO, ES POR ELLO LA DOSIS DE DESPERDICIO\r\nREPORTAN QUE VARIAS DE  LAS AGUJAS NEGRAS  NO EMBONAN BIEN – FRASCOS TOTALES USADOS EN LA JO'),
(16, '2021-05-12 19:55:10', 28, 'JOSEFINA DOMINGUEZ TREJO', 4, '2021-05-12', 4, 0, 0, 1, 8, 17, 42, 38, 79, 45, 87, 36, 70, 30, 62, 30, 35, 27, 22, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 'Se inicia actividad a las 6:30 am se traslada biológico a la escuela sede, a una tem de 2°C, se inicia la vacunación a las 8:00 am. se tuvieron 10 frascos  que solo salieron 9 dosis de cada uno. Hubo 2 esavis no graves los cuales se atendieron y los pacie'),
(17, '2021-05-12 19:55:12', 9, 'MA. MAGDALENA MONTERRUBIO JIMENEZ', 4, '2021-05-12', 4, 0, 1, 6, 19, 39, 76, 100, 154, 138, 222, 142, 182, 170, 192, 145, 133, 94, 52, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122, 0, 0, '122  FRASCOS (1098 DOSIS) CON OBTENCION DE 9 DOSIS\r\n77 FRASCOS ( 770 DOSIS) CON OBTENCION DE 10 DOSIS  – FRASCOS TOTALES USADOS EN LA JORNADA: 199'),
(18, '2021-05-12 20:13:16', 12, 'LEO MINERVA CERON SEGOVIA', 4, '2021-05-12', 4, 0, 0, 5, 14, 21, 45, 29, 30, 20, 26, 20, 19, 23, 23, 19, 16, 12, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 'EL PERSONAL DE LAS CELULAS REPORTAN QUE LAS AGUJAS DE 22X32 NO EMBONAN BIEN A LA JERINGA Y SE HAN DESECHADO ALGUNAS  DE LAS AGUJAS  ( DIEZ PIEZA)\r\nSE APLICARON 260 DOSIS CON 26 FRASCOS QUE SE OBTUVIERON DIEZ DOSIS Y 72 DOSIS CON 8 FRASCOS QUE SE OBTUVIERO'),
(19, '2021-05-12 20:19:00', 6, 'Virginia Fabiola Hernández Montoya', 4, '2021-05-12', 4, 0, 0, 5, 8, 21, 34, 26, 69, 61, 114, 43, 114, 53, 105, 64, 119, 39, 46, 3, 4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Se recibe el biológico a temperatura de  3°C con termómetro de Vástago – FRASCOS TOTALES USADOS EN LA JORNADA: 93'),
(20, '2021-05-12 21:14:29', 31, 'TAPS. IDALIA HARRIS ACEVEDO', 4, '2021-05-12', 4, 1, 3, 11, 33, 39, 123, 77, 169, 80, 219, 94, 231, 91, 175, 73, 129, 55, 88, 5, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SIN INCIDENCIAS – FRASCOS TOTALES USADOS EN LA JORNADA: 170'),
(22, '2021-05-12 22:43:44', 34, 'Yaneth Villeda Briceño', 4, '2021-05-12', 4, 3, 4, 6, 28, 32, 79, 40, 76, 44, 65, 37, 63, 39, 46, 25, 36, 27, 16, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 'se utilizaron 68 frascos los cuales ,13 frascos fueron de 9 dosis y 55 frascos con 10 dosis – FRASCOS TOTALES USADOS EN LA JORNADA: 68'),
(23, '2021-05-12 23:42:46', 26, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-12', 4, 0, 0, 2, 17, 32, 90, 49, 134, 71, 148, 64, 139, 62, 172, 46, 77, 31, 43, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'se reportan todos los frascos  con 10 dosis.   \r\nHoy se regresan 7 frascos al almacén para utilizar el día de mañana.\r\nse inicio con 125 frascos – FRASCOS TOTALES USADOS EN LA JORNADA: 118'),
(24, '2021-05-12 23:48:09', 23, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-12', 4, 0, 1, 8, 30, 43, 104, 67, 141, 100, 189, 73, 178, 48, 138, 36, 61, 22, 25, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, 0, 'frascos de inicio 135, devolución al almacén 5,  usados 130.\r\nobservación de frascos 33 frascos de 9 dosis y 97 de 10 dosis.\r\nSe vacuno 1 embarazada – FRASCOS TOTALES USADOS EN LA JORNADA: 130'),
(25, '2021-05-12 23:51:57', 24, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-12', 4, 0, 0, 9, 23, 37, 55, 28, 93, 30, 121, 29, 109, 38, 110, 17, 65, 17, 30, 1, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 25, 0, 0, 'observacion de frascos: 59 frascos de 10 dosis,  25 frascos de 9 dosis.\r\n – FRASCOS TOTALES USADOS EN LA JORNADA: 84'),
(26, '2021-05-12 23:58:57', 22, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-12', 4, 0, 0, 4, 6, 29, 29, 36, 78, 48, 94, 52, 100, 44, 69, 24, 25, 14, 22, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 'frascos de inicio 75 se utlizaron todos.\r\nen todos los frascos  se  obtienen  9 dosis – FRASCOS TOTALES USADOS EN LA JORNADA: 75'),
(27, '2021-05-13 00:05:34', 25, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-12', 4, 0, 1, 14, 47, 46, 137, 106, 207, 97, 272, 119, 273, 113, 309, 68, 154, 59, 88, 0, 2, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 225, 0, 0, 'una persona de ESAVI traslada al ISSSTE.\r\nFrascos  Inicio 210, recibidos 60, devolucion almacen 38.\r\nobservacion 225 de 9 dosis y 7 frascos de 10 dosis – FRASCOS TOTALES USADOS EN LA JORNADA: 232'),
(28, '2021-05-13 00:14:27', 21, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-12', 4, 0, 0, 12, 22, 76, 91, 97, 108, 99, 94, 75, 84, 82, 90, 41, 49, 29, 46, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 122, 0, 0, '1 embarazada\r\nESAVIS\r\ndosis por frascos: 9 dosis\r\n – FRASCOS TOTALES USADOS EN LA JORNADA: 122'),
(29, '2021-05-13 08:49:07', 16, 'Adelaido Hernandez Hernandez', 4, '2021-05-12', 4, 1, 0, 2, 3, 17, 35, 20, 34, 18, 41, 24, 28, 21, 26, 21, 14, 12, 14, 7, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 29, 0, 0, 'Se resgistran en total de los 37 frascos usados para su aplicación, 8 Frascos completos con sus 10 Dosis y 29 Frascos los cuales solo tendrian 9 Dosis.  – FRASCOS TOTALES USADOS EN LA JORNADA: 37'),
(30, '2021-05-13 09:46:49', 14, 'TEC. REMEDIOS CARDENAS ', 4, '2021-05-12', 4, 1, 4, 3, 19, 28, 43, 25, 37, 30, 34, 27, 33, 29, 32, 37, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 45, 0, 0, 'SE APERTURAN 45 FRASCOS OBTENIENDO 9 DOSIS DE CADA FRASCO. – FRASCOS TOTALES USADOS EN LA JORNADA: 45'),
(31, '2021-05-13 14:46:26', 33, 'L. E. VERONICA HERNANDEZ HERNANDEZ', 4, '2021-05-13', 4, 1, 3, 8, 14, 16, 41, 27, 49, 30, 46, 46, 49, 21, 34, 23, 22, 13, 14, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '1 FRASCO CON 9 DOSIS – FRASCOS TOTALES USADOS EN LA JORNADA: 46'),
(32, '2021-05-13 15:52:53', 16, 'Adelaido Hernández Hernández', 4, '2021-05-13', 4, 0, 4, 8, 23, 13, 38, 13, 42, 24, 29, 27, 35, 19, 18, 10, 14, 9, 5, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 'Reportan 17 frascos de los cuales solo contienen 9 dosis para aplicación. – FRASCOS TOTALES USADOS EN LA JORNADA: 35'),
(33, '2021-05-13 16:00:39', 13, 'ANA BERENICE HERNANDEZ RODRIGUEZ', 4, '2021-05-13', 4, 2, 8, 6, 37, 27, 95, 46, 132, 67, 183, 94, 201, 97, 148, 77, 98, 78, 80, 2, 0, 3, 2, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Se inicia jornada con 311 Frascos, de los cuales se utilizan 149 Frascos. Cabe mencionar que 1 Frasco salió con 9 Dosis y 148 Frascos con 10 Dosis. Quedando un total de 162 Frascos al termino de la Jornada con Fecha 13/05/2021.  – FRASCOS TOTALES USADOS EN LA JORNADA: 149'),
(34, '2021-05-13 16:02:06', 5, 'Virginia Fabiola Hernández Montoya', 4, '2021-05-13', 4, 0, 2, 5, 26, 15, 50, 27, 70, 48, 97, 46, 105, 50, 133, 44, 85, 52, 54, 8, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temperatura de 3°C – FRASCOS TOTALES USADOS EN LA JORNADA: 92'),
(36, '2021-05-13 16:05:54', 6, 'Virginia Fabiola Hernández Montoya', 4, '2021-05-13', 4, 0, 1, 5, 16, 17, 63, 20, 76, 47, 120, 45, 83, 49, 80, 46, 88, 53, 57, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temperatura de 3°C – FRASCOS TOTALES USADOS EN LA JORNADA: 87'),
(37, '2021-05-13 16:40:09', 26, 'Dra Maria Antonieta Muñoz Godinez ', 4, '2021-05-13', 4, 0, 2, 6, 32, 43, 86, 63, 120, 68, 134, 66, 131, 45, 134, 46, 81, 25, 50, 3, 4, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127, 0, 0, 'Atendidas 2 embarazadas (37y 27)\r\nFrascos recibidos 142 utilizados 127 devueltos almacén 15\r\nDosis por frascos 9 en todos – FRASCOS TOTALES USADOS EN LA JORNADA: 127'),
(39, '2021-05-13 16:44:38', 23, 'Dra Maria Antonieta Muñoz Godinez ', 4, '2021-05-13', 4, 1, 0, 27, 59, 48, 136, 74, 137, 71, 143, 51, 111, 65, 128, 38, 55, 14, 35, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 133, 0, 0, 'Embarazada 1 de 37 años\r\nFrascos recibidos:148 utilizados 133, devueltos almacén 15 viales.\r\nDosis por frascos 9 dosis en todos. – FRASCOS TOTALES USADOS EN LA JORNADA: 133'),
(40, '2021-05-13 16:48:31', 24, 'Dra Maria Antonieta Muñoz Godinez ', 4, '2021-05-13', 4, 0, 1, 5, 23, 44, 62, 56, 74, 55, 78, 48, 82, 44, 73, 20, 32, 20, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 0, 0, 'Embarazadas 1 de 32 años \r\nDosis por Frascos 1 de 10 y 81 de 9 dosis\r\n – FRASCOS TOTALES USADOS EN LA JORNADA: 82'),
(41, '2021-05-13 16:52:21', 20, 'FAVIOLA SANTIAGO GONZALEZ ', 4, '2021-05-13', 4, 2, 9, 5, 21, 25, 45, 29, 49, 43, 55, 38, 44, 41, 29, 23, 24, 21, 5, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'EN LOS 51 FRASCOS UTILIZADOS SALIERON 10 DOSIS.  – FRASCOS TOTALES USADOS EN LA JORNADA: 51'),
(42, '2021-05-13 16:58:22', 22, 'Dra Maria Antonieta Muñoz Godinez ', 4, '2021-05-13', 4, 1, 2, 10, 10, 21, 50, 37, 82, 49, 75, 55, 89, 61, 71, 19, 23, 15, 19, 1, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 77, 0, 0, 'Frascos recibidos 77  se utilizan 77.\r\nDosis por frasco 9 en todos los frascos – FRASCOS TOTALES USADOS EN LA JORNADA: 77'),
(43, '2021-05-13 17:05:06', 25, 'Dra Maria Antonieta Muñoz Godinez ', 4, '2021-05-13', 4, 0, 1, 30, 56, 80, 168, 92, 185, 108, 215, 117, 231, 127, 228, 76, 167, 64, 88, 1, 3, 2, 1, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 227, 0, 0, 'Frascos recibidos 278, utilizados 227 devueltos 51\r\nDosis por frasco 9 dosis \r\n2 embarazadas  (38 y 36) – FRASCOS TOTALES USADOS EN LA JORNADA: 227'),
(44, '2021-05-13 17:12:56', 10, 'ERICA CONTRERAS HERNANDEZ', 4, '2021-05-13', 4, 1, 2, 8, 20, 21, 46, 28, 49, 53, 74, 62, 47, 70, 57, 55, 46, 41, 17, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 78, 0, 0, 'frascos 78 (702 dosis) con obtención de 9 dosis\r\nfrascos con obtención de 10 dosis ninguno  – FRASCOS TOTALES USADOS EN LA JORNADA: 78'),
(45, '2021-05-13 17:21:28', 19, 'FAVIOLA SANTIAGO GONZALEZ ', 4, '2021-05-13', 4, 2, 6, 6, 25, 16, 54, 23, 59, 26, 62, 27, 34, 13, 33, 13, 19, 6, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 'TOTAL DE FRASCOS UTILIZADOS 44 DE LOS CUALES 9 SALIERON CON 9 DOSIS DE BIOLOGICO  – FRASCOS TOTALES USADOS EN LA JORNADA: 44'),
(46, '2021-05-13 17:31:06', 30, 'Miguel Angel Gómez Gómez ', 4, '2021-05-13', 4, 0, 1, 5, 17, 8, 30, 23, 50, 50, 60, 28, 29, 26, 40, 13, 9, 9, 11, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jornada sin incidencias  – FRASCOS TOTALES USADOS EN LA JORNADA: 41'),
(47, '2021-05-13 17:42:59', 8, 'L.E MARÍA ELENA GUERRERO CABRERA', 4, '2021-05-13', 4, 2, 8, 11, 50, 22, 69, 26, 65, 20, 74, 33, 55, 22, 47, 13, 31, 14, 16, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'El biológico se recepciono en 2°c, durante la jornada se utilizaron 58 frascos, de los cuales solo un frasco salió de 9 dosis, teniendo merma de 1 dosis.  – FRASCOS TOTALES USADOS EN LA JORNADA: 58'),
(48, '2021-05-13 17:44:31', 29, 'Miguel Angel Gómez Gómez ', 4, '2021-05-13', 4, 1, 2, 9, 50, 63, 145, 69, 153, 59, 132, 45, 100, 39, 81, 33, 34, 23, 25, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Jornada sin contratiempos, solo 1 fco. con 9 dosis – FRASCOS TOTALES USADOS EN LA JORNADA: 107'),
(49, '2021-05-13 17:54:12', 21, 'Dra Maria Antonieta Muñoz Godinez ', 4, '2021-05-13', 4, 1, 1, 19, 21, 82, 84, 113, 99, 96, 97, 95, 85, 99, 100, 54, 47, 41, 32, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 130, 0, 0, 'Embarazadas 1 de 25 años\r\nDosis por frascos 9 en todos.\r\nRestan para inicio mañana  122 (1098 dosis) – FRASCOS TOTALES USADOS EN LA JORNADA: 130'),
(50, '2021-05-13 18:02:24', 9, 'MA. MAGDALENA MONTERRUBIO JIMENEZ', 4, '2021-05-13', 4, 5, 16, 11, 50, 37, 88, 82, 155, 131, 201, 106, 191, 136, 179, 139, 150, 83, 50, 5, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 162, 0, 0, 'FRASCOS 162 (1458 DOSIS) CON OBTENCIÓN DE 9 DOSIS\r\nFRASCOS 36 (360 DOSIS) CON OBTENCIÓN DE 10 DOSIS – FRASCOS TOTALES USADOS EN LA JORNADA: 198'),
(51, '2021-05-13 18:07:40', 11, 'LEO MINERVA CERON SEGOVIA', 4, '2021-05-13', 4, 0, 5, 1, 32, 26, 81, 22, 87, 27, 54, 26, 47, 23, 39, 17, 37, 13, 19, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 0, 'Número de frascos utilizados 57 ; de los cuales 44 frascos se obtuvieron de 10 dosis cada uno y 13 frascos donde se obtuvieron 9 dosis por frasco un total de 557 dosis aplicadas, Un frasco por accidente se rompió, del cual se especifica en el acta correspondiente del día, queda de remanente 45 frascos cerrados – FRASCOS TOTALES USADOS EN LA JORNADA: 57'),
(52, '2021-05-13 18:27:38', 18, 'TAYDE MAYRASOL SANCHEZ BAUTISTA', 4, '2021-05-13', 4, 4, 9, 12, 21, 28, 52, 25, 63, 40, 57, 38, 32, 22, 23, 23, 10, 16, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SIN INCIDENCIAS – FRASCOS TOTALES USADOS EN LA JORNADA: 48'),
(53, '2021-05-13 18:32:12', 12, 'LEO MINERVA CERON SEGOVIA', 4, '2021-05-13', 4, 0, 5, 8, 14, 10, 37, 11, 25, 13, 23, 9, 28, 8, 15, 8, 10, 5, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Se aplicaron 240 dosis de los cuales se utilizaron 24 frascos que se obtuvieron 10 dosis de cada frasco, se recibieron un total de 65 frascos en el municipio;  el día de ayer se utilizaron 34 frascos, teniendo un total de 58 frascos utilizados, quedan de existencia actual  7 frascos cerrados – FRASCOS TOTALES USADOS EN LA JORNADA: 24'),
(54, '2021-05-13 18:34:20', 35, 'Lidia Hernández Dávila', 4, '2021-05-13', 4, 1, 4, 8, 35, 30, 83, 55, 96, 63, 143, 57, 106, 59, 106, 51, 80, 41, 73, 4, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'El personal de salud al inicio de las actividades de vacunación reportan que un frasco de vacuna cansino, solo salieron nueve dosis – FRASCOS TOTALES USADOS EN LA JORNADA: 110'),
(55, '2021-05-13 18:39:14', 15, 'L.E FLORENCIA RUBIO RUBIO', 4, '2021-05-12', 4, 3, 3, 5, 13, 14, 24, 14, 34, 18, 23, 8, 19, 16, 21, 23, 20, 11, 7, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 'SE UTILIZAN 28 FRASCOS DE 10 DOSIS CADA UNO – FRASCOS TOTALES USADOS EN LA JORNADA: 28'),
(56, '2021-05-13 18:39:59', 17, 'TAYDE MAYRASOL SANCHEZ BAUTISTA', 4, '2021-05-13', 4, 2, 3, 8, 16, 16, 26, 16, 34, 25, 32, 22, 44, 32, 20, 35, 18, 17, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, '2 BRIGADISTAS DE BIENESTAR Y 1 DE PROTECCIÓN CIVIL – FRASCOS TOTALES USADOS EN LA JORNADA: 38'),
(57, '2021-05-13 18:44:22', 15, 'L.E FLORENCIA RUBIO RUBIO', 4, '2021-05-13', 4, 1, 14, 2, 25, 9, 33, 10, 19, 9, 16, 8, 14, 9, 14, 7, 11, 10, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, 0, 0, 'SE UTILIZAN 22 FRASCOS DE BIOLOGICO 21 DE 10 DOSIS Y 1 DE 9 DOSIS. QUEDANDO UN REMANENTE DE 5 FRASCOS. – FRASCOS TOTALES USADOS EN LA JORNADA: 22'),
(58, '2021-05-13 19:55:43', 14, 'TEC. REMEDIOS CARDENAS ', 4, '2021-05-13', 4, 6, 23, 15, 43, 20, 34, 20, 23, 22, 36, 11, 25, 26, 16, 16, 18, 13, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 0, 44, 0, 0, 'SE ACUDE A A SEDE CON 38 FRASCOS LOS CUALES FUERON DE 9 DOSIS. SE RECIBIERON 9 FRASCOS MAS DE  BIOLOGICO DE ALMACEN CENTRAL .DE LOS CUALES SE UTILIZAN 5 FRASCOS CON 9 DOSIS CADA UNO. AL TERMINO DE LA JORNADA SE UTILIZAN 43 FRASCOS CON UN TOTAL DE 387 DOSIS. RESGUARDANDO A NIVEL JURISDICIONAL 4 FRASCOS. – FRASCOS TOTALES USADOS EN LA JORNADA: 43'),
(59, '2021-05-13 20:41:53', 27, 'JOSEFINA DOMINGUEZ TREJO', 4, '2021-05-13', 4, 0, 1, 7, 45, 20, 120, 34, 105, 44, 123, 31, 72, 31, 62, 28, 55, 29, 24, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 'Se inicia a las  7:45.  27 fcos salen con 9 dosis. – FRASCOS TOTALES USADOS EN LA JORNADA: 85'),
(61, '2021-05-13 20:55:59', 32, 'CLAUDIA ANEL ALVARADO JORGE', 4, '2021-05-12', 4, 0, 0, 27, 67, 59, 222, 111, 246, 94, 318, 123, 274, 112, 231, 93, 194, 65, 89, 1, 9, 0, 0, 0, 1, 0, 0, 0, 1, 1, 1, 0, 0, 2, 2, 0, 2, 2, 1, 0, 3, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 90, 0, 0, '155  Frascos ocupados salieron 10 dosis\r\n   90  Frascos ocupados salieron 9 dosis., Por lo anterior no hay mermas o perdidas \r\n         en la operación. – FRASCOS TOTALES USADOS EN LA JORNADA: 245'),
(62, '2021-05-13 21:03:28', 28, 'JOSEFINA DOMINGUEZ TREJO', 4, '2021-05-13', 4, 0, 0, 8, 11, 21, 53, 32, 74, 23, 80, 35, 80, 34, 56, 25, 42, 19, 25, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sin incidencias – FRASCOS TOTALES USADOS EN LA JORNADA: 62'),
(63, '2021-05-13 21:37:24', 7, 'Juana Ramirez Facundo ', 4, '2021-05-12', 4, 0, 0, 5, 16, 0, 0, 27, 25, 0, 27, 19, 43, 19, 44, 23, 29, 23, 29, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '.... – FRASCOS TOTALES USADOS EN LA JORNADA: 33'),
(64, '2021-05-13 21:52:09', 31, 'TAPS. IDALIA HARRIS ACEVEDO', 4, '2021-05-13', 4, 0, 4, 13, 49, 48, 144, 80, 200, 77, 210, 69, 190, 80, 127, 71, 112, 63, 73, 2, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 'SIN INCIDENCIAS – FRASCOS TOTALES USADOS EN LA JORNADA: 162'),
(65, '2021-05-13 21:54:05', 7, 'Juana Ramirez Facundo ', 4, '2021-05-13', 4, 0, 0, 4, 8, 4, 9, 20, 26, 19, 29, 22, 45, 21, 44, 25, 20, 29, 23, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '.. – FRASCOS TOTALES USADOS EN LA JORNADA: 35'),
(66, '2021-05-13 22:06:36', 32, 'CLAUDIA ANEL ALVARADO JORGE', 4, '2021-05-13', 4, 2, 11, 38, 53, 75, 175, 117, 222, 118, 208, 148, 209, 121, 193, 96, 156, 93, 97, 9, 5, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 27, 0, 0, '191 Frascos salieron 10 dosis\r\n   27 Frascos salieron   9 dosis , por lo anterior no hay mermas ni perdidas en la \r\n         operación. – FRASCOS TOTALES USADOS EN LA JORNADA: 218'),
(67, '2021-05-14 09:19:43', 34, 'Yaneth Villeda Briceño', 4, '2021-05-13', 4, 1, 12, 9, 38, 17, 76, 36, 59, 37, 47, 23, 48, 23, 32, 23, 31, 12, 18, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 10, 0, 0, 'Se obtiene  un total de 550 dosis, todas las células reportan frascos con 10 dosis, se tiene un accidente de red de frío y se pierde un frasco completo con 10 dosis – FRASCOS TOTALES USADOS EN LA JORNADA: 55'),
(68, '2021-05-14 14:11:31', 33, 'L. E. VERONICA HERNANDEZ HERNANDEZ', 4, '2021-05-14', 4, 2, 8, 10, 11, 14, 20, 31, 31, 24, 23, 23, 24, 21, 13, 20, 15, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, '2 FRASCOS CON 9 DOSIS – FRASCOS TOTALES USADOS EN LA JORNADA: 31'),
(69, '2021-05-14 16:52:33', 16, 'Adelaido Hernández Hernández', 4, '2021-05-14', 4, 0, 3, 5, 17, 25, 33, 9, 29, 21, 43, 16, 32, 16, 11, 12, 12, 12, 11, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 6, 0, 0, '6 Frascos se presentaron solo con 9 dosis. – FRASCOS TOTALES USADOS EN LA JORNADA: 32'),
(70, '2021-05-14 16:53:15', 13, 'ANA BERENICE HERNANDEZ RODRIGUEZ', 4, '2021-05-14', 4, 0, 5, 6, 35, 42, 101, 62, 121, 71, 145, 67, 105, 64, 88, 44, 73, 53, 48, 8, 3, 2, 3, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Se inicia jornada con 162 Frascos, de los cuales se utilizan 115 Frascos. Cabe mencionar que 115 Frascos salieron con 10 Dosis. Quedando un total de 47 Frascos al termino de la Jornada con fecha 14/05/2021. Se informa que el día Lunes 17/05/2021 se vacunaran 45 Profesores y 45 Brigadistas. – FRASCOS TOTALES USADOS EN LA JORNADA: 115'),
(71, '2021-05-14 17:28:24', 29, 'Miguel Angel Gómez Gómez ', 4, '2021-05-14', 4, 0, 4, 11, 29, 36, 119, 59, 144, 56, 134, 39, 85, 40, 73, 17, 27, 14, 17, 2, 1, 1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sin incidencias  – FRASCOS TOTALES USADOS EN LA JORNADA: 91'),
(72, '2021-05-14 18:20:40', 8, 'L.E MARÍA ELENA GUERRERO CABRERA', 4, '2021-05-14', 4, 1, 2, 8, 23, 21, 32, 25, 47, 29, 53, 22, 46, 22, 33, 16, 11, 13, 16, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1, 0, 0, 'AL INICIAR LA JORNADA LBORAL, LA VACUNA SE ENCUENTRA EN 2°C, SE CUENTA CON 59 FRASCOS DE LOS CUALES SE UTILIZAN 43 FRASCOS. DE 42 FRASCOS SE OBTIENEN 10 DOSIS Y DE 1 FRASCO SE OBTIENEN 9 DOSIS, SE TIENE 1 MERMA.   SE APOYA A LA JURISDICCIÓN DE MEZTITLAN CON 4 FRASCOS, Y SE REGRESA AL ALMACEN 12 FRASCOS DE VACUNA QUE CORRESPONDEN A 120 DOSIS, TAMBIEN SE ENTREGAN INSUMOS CORRESPONDIENTES. – FRASCOS TOTALES USADOS EN LA JORNADA: 43'),
(73, '2021-05-14 18:27:10', 20, 'L.E.FAVIOLA SANTIAGO GONZALEZ', 4, '2021-05-14', 4, 4, 5, 6, 17, 12, 27, 37, 40, 46, 48, 40, 42, 31, 28, 15, 16, 19, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'SE UTILIZAN 45 FRASCOS DE LOS CUALES SE OPTIENEN 443 DOSIS LAS CUALES SE APLICAN A DOCENTES Y SE HACE EL MOVIMIENTO DE 7 DOSIS A CECyTEH PLANTEL ACAXOCHITLÁN.\r\n\r\n – FRASCOS TOTALES USADOS EN LA JORNADA: 45'),
(74, '2021-05-14 18:35:43', 11, 'LEO MINERVA CERON SEGOVIA', 4, '2021-05-14', 4, 8, 9, 8, 39, 14, 38, 15, 44, 10, 42, 12, 28, 8, 27, 18, 28, 19, 24, 4, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 8, 0, 0, 'Se da por terminada la vacunación a personal educativo en esta sede aplicando el día de hoy 432 dosis de los cuales se obtuvieron 36 frascos de 10 dosis y frascos con 9 dosis ( 8) , teniendo 8 mermas; se aplican 34 dosis a personal brigadista, teniendo como existencia actual de biologico 1 frasco cerrado resguardado en el centro de salud de Huichapan – FRASCOS TOTALES USADOS EN LA JORNADA: 44'),
(75, '2021-05-14 18:48:43', 10, 'ERICA CONTRERAS HERNANDEZ', 4, '2021-05-14', 4, 6, 7, 8, 15, 23, 35, 24, 41, 45, 59, 50, 40, 46, 36, 49, 24, 30, 9, 1, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 0, 0, 'FRASCOS 58 (522 DOSIS) CON OBTENCIÓN DE 9 DOSIS\r\nFRASCOS 3 (30 DOSIS) CON OBTENCIÓN DE 10 DOSIS\r\nENTRADA 8 FRASCOS  (72 DOSIS) ORIGEN JURISDICCCION JACALA – FRASCOS TOTALES USADOS EN LA JORNADA: 61'),
(76, '2021-05-14 18:49:25', 19, 'L.E.FAVIOLA SANTIAGO GONZALEZ', 4, '2021-05-14', 4, 3, 10, 13, 24, 8, 45, 25, 60, 21, 55, 23, 42, 27, 24, 19, 11, 13, 5, 4, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, '40 FRASCOS DE 10 DOSIS Y 3 FRASCOS DE 9 DOSIS HACIENDO UN TOTAL DE 427 DOSIS Y SE RECIBEN 7 DOSIS DE LA SEDE UNIVERSIDAD INTERCULTURAL DEL ESTADO DE HIDALGO TENANGO DE DORIA HACIENDO UN TOTAL DE 434 DOSIS APLICADAS – FRASCOS TOTALES USADOS EN LA JORNADA: 43'),
(77, '2021-05-14 18:52:57', 7, 'Juana Ramirez Facundo ', 4, '2021-05-14', 4, 2, 0, 1, 8, 11, 21, 10, 35, 33, 40, 23, 40, 26, 37, 27, 27, 11, 14, 3, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '.. – FRASCOS TOTALES USADOS EN LA JORNADA: 37'),
(78, '2021-05-14 19:09:12', 9, 'MA. MAGDALENA MONTERRUBIO JIMENEZ', 4, '2021-05-14', 4, 7, 9, 20, 51, 56, 108, 78, 149, 126, 148, 100, 103, 88, 110, 124, 102, 107, 58, 3, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 117, 0, 0, 'FRASCOS 117 (1053 DOSIS) CON OBTENCION DE 9 DOSIS \r\nFRASCOS 50 (500 DOSIS) CON OBTENCION DE 10 DOSIS\r\nENTRADA 17 ( 9 DOSIS) 1 (10 DOSIS) TOTAL 18 ORIGEN ZACUALTIPAN  – FRASCOS TOTALES USADOS EN LA JORNADA: 167'),
(79, '2021-05-14 20:03:32', 17, 'TAYDE MAYRASOL SANCHEZ BAUTISTA', 4, '2021-05-14', 4, 5, 6, 4, 9, 19, 24, 23, 31, 36, 28, 19, 29, 36, 26, 22, 24, 12, 14, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 'SIN INCIDENCIAS – FRASCOS TOTALES USADOS EN LA JORNADA: 38'),
(80, '2021-05-14 20:09:44', 30, 'Miguel Angel Gómez Gómez ', 4, '2021-05-14', 4, 0, 0, 1, 1, 4, 8, 3, 13, 6, 13, 4, 11, 5, 11, 5, 3, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 'Jornada sin incidentes,   – FRASCOS TOTALES USADOS EN LA JORNADA: 10'),
(81, '2021-05-14 20:12:54', 18, 'TAYDE MAYRASOL SANCHEZ BAUTISTA', 4, '2021-05-14', 4, 6, 12, 7, 26, 30, 42, 29, 49, 32, 41, 35, 23, 23, 19, 20, 11, 20, 5, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 0, 0, '26 FRASCOS CON 10 DOSIS Y 19 CON 9 DOSIS – FRASCOS TOTALES USADOS EN LA JORNADA: 45'),
(82, '2021-05-14 20:37:43', 5, 'Virginia Fabiola Hernández Montoya', 4, '2021-05-14', 4, 0, 4, 7, 19, 16, 40, 33, 97, 55, 93, 50, 83, 53, 102, 44, 78, 36, 46, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 10, 0, 0, 'Un frasco de los recibidos venia vacío.\r\nTemperatura de 3°C – FRASCOS TOTALES USADOS EN LA JORNADA: 88'),
(83, '2021-05-14 20:39:18', 31, 'TAPS. IDALIA HARRIS ACEVEDO', 4, '2021-05-14', 4, 4, 2, 14, 25, 32, 86, 37, 88, 46, 91, 40, 77, 47, 77, 38, 53, 31, 28, 1, 0, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 0, 0, 0, 0, 'SIN INCIDENCIAS – FRASCOS TOTALES USADOS EN LA JORNADA: 89'),
(84, '2021-05-14 20:42:25', 6, 'Virginia Fabiola Hernández Montoya', 4, '2021-05-14', 4, 0, 0, 0, 2, 2, 4, 2, 2, 6, 6, 3, 1, 2, 3, 1, 3, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Temperatura de 3°C – FRASCOS TOTALES USADOS EN LA JORNADA: 4'),
(85, '2021-05-14 21:12:25', 32, 'CLAUDIA ANEL ALVARADO JORGE', 4, '2021-05-14', 4, 3, 8, 31, 71, 49, 115, 63, 123, 54, 144, 60, 123, 52, 93, 44, 81, 33, 72, 4, 4, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 60, 0, 0, '88 frascos de 10 dosis \r\n40 frascos  de 9 dosis, por lo anterior no se presentaron mermas o perdidas en operación. – FRASCOS TOTALES USADOS EN LA JORNADA: 128\r\n\r\n20 dosis de 2 frascos vacios (fantasmas)'),
(86, '2021-05-14 22:12:18', 26, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-14', 4, 0, 2, 27, 49, 73, 84, 81, 87, 65, 96, 51, 73, 56, 79, 35, 48, 30, 46, 6, 4, 3, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, 0, 0, 'frascos recibidos111, todos utilizados.\r\ndosis por frascos 9.\r\n7 referidos por alerga al issste.\r\ndevueltos cero. – FRASCOS TOTALES USADOS EN LA JORNADA: 111'),
(87, '2021-05-14 22:25:53', 23, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-14', 4, 6, 2, 34, 60, 61, 85, 72, 79, 70, 79, 43, 89, 53, 64, 21, 37, 17, 23, 3, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 'frascos de inicio:    120               utilizados    100       devueltos   20\r\ndosis por frascos 9\r\nembarzadas   3:  (25,19 y 23 años) – FRASCOS TOTALES USADOS EN LA JORNADA: 100'),
(88, '2021-05-14 22:31:47', 24, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-14', 4, 0, 0, 0, 1, 2, 11, 14, 39, 60, 42, 44, 44, 70, 37, 72, 53, 62, 23, 47, 27, 21, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 0, 0, 'recibidos  75, utilizados 75  devueltos  cero\r\nDosis por frasco 9\r\nEmbarazdas 2   ( de 31 y 36 años)\r\n5 referidos por anafilaxia – FRASCOS TOTALES USADOS EN LA JORNADA: 75'),
(89, '2021-05-14 22:34:18', 22, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-14', 4, 1, 1, 7, 15, 22, 52, 36, 65, 40, 74, 42, 49, 35, 45, 24, 34, 13, 10, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 63, 0, 0, 'Frascos  recibidos 3, utilizados 63 devueltos a c.s jesus del rosal  4 \r\nDosis por frasco 9\r\nembarazadas  1    de 30 años – FRASCOS TOTALES USADOS EN LA JORNADA: 63'),
(90, '2021-05-14 22:38:03', 25, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-14', 4, 0, 1, 27, 64, 50, 93, 71, 102, 85, 86, 71, 130, 53, 138, 39, 78, 43, 64, 6, 2, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 114, 0, 0, 'frascos recibidos, 168   frascos  utilizados 134;    frascos devueltos   34   a jesus del rosal\r\nDosis por frasco   9\r\nEmbarazadas   2  ( una de 23 y 32 años) – FRASCOS TOTALES USADOS EN LA JORNADA: 134'),
(91, '2021-05-14 22:41:35', 21, 'Dra. María Antonieta Muñoz Godinez', 4, '2021-05-14', 4, 0, 1, 7, 10, 31, 38, 31, 58, 38, 73, 43, 43, 32, 41, 22, 22, 22, 26, 0, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 'frascos  recibidos  122. utilizados 60,  devueltos a CS jesus del rosal, 62\r\nfosis por frasco  9\r\n – FRASCOS TOTALES USADOS EN LA JORNADA: 60'),
(92, '2021-05-14 22:45:58', 35, 'Lidia Hernandez Davila', 4, '2021-05-14', 4, 0, 0, 0, 22, 19, 66, 22, 52, 30, 76, 18, 55, 27, 50, 23, 36, 16, 26, 2, 4, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 'No se presentaron incidencias – FRASCOS TOTALES USADOS EN LA JORNADA: 55'),
(93, '2021-05-14 23:12:12', 28, 'JOSEFINA DOMINGUEZ TREJO', 4, '2021-05-14', 4, 1, 0, 2, 10, 9, 25, 17, 33, 11, 52, 15, 47, 18, 26, 14, 23, 12, 13, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sin incidencias,  se concluye la actividad – FRASCOS TOTALES USADOS EN LA JORNADA: 33'),
(94, '2021-05-14 23:18:25', 27, 'JOSEFINA DOMINGUEZ TREJO', 4, '2021-05-14', 4, 4, 3, 8, 19, 16, 62, 33, 80, 21, 57, 29, 46, 16, 53, 25, 35, 21, 23, 3, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 0, 0, 'a 14 frascos solo le salieron 9 dosis – FRASCOS TOTALES USADOS EN LA JORNADA: 57'),
(95, '2021-05-17 15:51:44', 13, 'Berenice Hernández Rodriguez', 4, '2021-05-17', 4, 0, 0, 6, 10, 12, 52, 9, 34, 16, 43, 8, 27, 9, 28, 5, 20, 3, 9, 1, 0, 2, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 'Se inicia jornada con 47 frascos se ingresan 8 frascos de la jurisdicción Huichapan y 11 frascos de la Jurisdicción Zimapán dando un total de 66 frascos en total. Cabe hacer mención que se utilizaron 33 frascos aplicando un total de 330 dosis, teniendo un sobrante de 33 frascos los cuales se trasladaran al almacén central del día de hoy 17/05/2021 – FRASCOS TOTALES USADOS EN LA JORNADA: 33'),
(96, '2021-05-18 10:41:56', 26, 'DRA MARIA ANTONIETA MUÑOZ GODINEZ', 4, '2021-05-17', 4, 7, 12, 54, 104, 68, 127, 66, 134, 64, 144, 69, 103, 51, 101, 15, 40, 15, 17, 1, 2, 1, 2, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106, 0, 145, 0, 0, '2 EMBARAZADAS DE 26 AÑOS AMBAS\r\n1 ESAVI DE 32 AÑOS MUJER\r\n\r\nSE RECIBIERON 516 FRASCOS DE\r\nTEC. Y POLIDEPORTIVO: 116\r\nESTATAL: 271\r\nAPAN: 60\r\nTEPEJI: 58\r\nMEZTITLAN: 3\r\nTEPEHUA: 8\r\n------------------------\r\nTOTAL: 516\r\n\r\n\r\nFRASCOS USADOS: 145 (9 DOSIS)\r\n\r\nFRASCOS ENVIADOS A HUEJUTLA: 16\r\n\r\nSE ENVIAN ALMACEN CENTRAL: 355 FRASCOS \r\n\r\n– FRASCOS TOTALES USADOS EN LA JORNADA: 145'),
(97, '2021-05-18 17:31:12', 9, 'MA. MAGDALENA MONTERRUBIO JIMENEZ', 4, '2021-05-18', 4, 4, 4, 15, 16, 16, 29, 25, 41, 26, 29, 27, 27, 22, 21, 18, 16, 10, 11, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, 0, 36, 0, 0, 'frascos 36 (324 dosis) con obtención de 9 dosis\r\nfrascos 12 (120 dosis) con obtención de 10 dosis\r\norigen Pachuca frascos 99  – FRASCOS TOTALES USADOS EN LA JORNADA: 48'),
(98, '2021-05-19 12:02:06', 25, 'DRA. MARIA ANTONIETA MUÑOZ GODINEZ', 4, '2021-05-18', 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 252, 0, 28, 0, 0, '28 FRASCOS APLICADOS DE 9 DOSIS CADA UNO\r\n\r\n – FRASCOS TOTALES USADOS EN LA JORNADA: 28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cat_bio`
--
ALTER TABLE `cat_bio`
  ADD PRIMARY KEY (`id_bio`) USING BTREE;

--
-- Indices de la tabla `cat_clues`
--
ALTER TABLE `cat_clues`
  ADD PRIMARY KEY (`id_clues`) USING BTREE,
  ADD KEY `id_juris` (`id_juris`),
  ADD KEY `id_mpio` (`id_mpio`);

--
-- Indices de la tabla `cat_jurisdicciones`
--
ALTER TABLE `cat_jurisdicciones`
  ADD PRIMARY KEY (`id_juris`) USING BTREE;

--
-- Indices de la tabla `cat_municipios`
--
ALTER TABLE `cat_municipios`
  ADD PRIMARY KEY (`id_mpio`) USING BTREE;

--
-- Indices de la tabla `cat_proceso`
--
ALTER TABLE `cat_proceso`
  ADD PRIMARY KEY (`id_proceso`) USING BTREE;

--
-- Indices de la tabla `cat_remesas`
--
ALTER TABLE `cat_remesas`
  ADD PRIMARY KEY (`id_remesa`) USING BTREE,
  ADD KEY `cat_remesas_fk_1` (`id_bio`),
  ADD KEY `cat_remesas_fk_2` (`id_proceso`);

--
-- Indices de la tabla `cat_sedes`
--
ALTER TABLE `cat_sedes`
  ADD PRIMARY KEY (`id_sede`) USING BTREE,
  ADD KEY `id_cat_sedes_fk_1` (`id_juris`),
  ADD KEY `id_cat_sedes_fk_2` (`id_mpio`),
  ADD KEY `id_cat_sedes_fk_3` (`id_remesa`),
  ADD KEY `id_cat_sedes_fk_4` (`id_proceso`);

--
-- Indices de la tabla `cat_usuarios`
--
ALTER TABLE `cat_usuarios`
  ADD PRIMARY KEY (`id_usuario`) USING BTREE,
  ADD KEY `id_clues` (`id_clues`);

--
-- Indices de la tabla `det_vac_50a59`
--
ALTER TABLE `det_vac_50a59`
  ADD PRIMARY KEY (`id_det_vac_50a59`) USING BTREE,
  ADD KEY `id_det_vac_50a59_fk_1` (`id_sede`),
  ADD KEY `id_det_vac_50a59_fk_2` (`id_bio`);

--
-- Indices de la tabla `det_vac_60ymas`
--
ALTER TABLE `det_vac_60ymas`
  ADD PRIMARY KEY (`id_det_vac_60ymas`) USING BTREE,
  ADD KEY `id_det_vac_60ymas_fk_1` (`id_sede`);

--
-- Indices de la tabla `det_vac_seph`
--
ALTER TABLE `det_vac_seph`
  ADD PRIMARY KEY (`id_det_vac_seph`) USING BTREE,
  ADD KEY `id_det_vac_seph_fk_1` (`id_sede`),
  ADD KEY `id_det_vac_seph_fk_2` (`id_bio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cat_bio`
--
ALTER TABLE `cat_bio`
  MODIFY `id_bio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cat_clues`
--
ALTER TABLE `cat_clues`
  MODIFY `id_clues` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `cat_jurisdicciones`
--
ALTER TABLE `cat_jurisdicciones`
  MODIFY `id_juris` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `cat_municipios`
--
ALTER TABLE `cat_municipios`
  MODIFY `id_mpio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de la tabla `cat_proceso`
--
ALTER TABLE `cat_proceso`
  MODIFY `id_proceso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cat_remesas`
--
ALTER TABLE `cat_remesas`
  MODIFY `id_remesa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cat_sedes`
--
ALTER TABLE `cat_sedes`
  MODIFY `id_sede` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT de la tabla `cat_usuarios`
--
ALTER TABLE `cat_usuarios`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `det_vac_50a59`
--
ALTER TABLE `det_vac_50a59`
  MODIFY `id_det_vac_50a59` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT de la tabla `det_vac_60ymas`
--
ALTER TABLE `det_vac_60ymas`
  MODIFY `id_det_vac_60ymas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `det_vac_seph`
--
ALTER TABLE `det_vac_seph`
  MODIFY `id_det_vac_seph` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cat_clues`
--
ALTER TABLE `cat_clues`
  ADD CONSTRAINT `cat_clues_fk_1` FOREIGN KEY (`id_juris`) REFERENCES `cat_jurisdicciones` (`id_juris`),
  ADD CONSTRAINT `cat_clues_fk_2` FOREIGN KEY (`id_mpio`) REFERENCES `cat_municipios` (`id_mpio`);

--
-- Filtros para la tabla `cat_remesas`
--
ALTER TABLE `cat_remesas`
  ADD CONSTRAINT `cat_remesas_fk_1` FOREIGN KEY (`id_bio`) REFERENCES `cat_bio` (`id_bio`),
  ADD CONSTRAINT `cat_remesas_fk_2` FOREIGN KEY (`id_proceso`) REFERENCES `cat_proceso` (`id_proceso`);

--
-- Filtros para la tabla `cat_sedes`
--
ALTER TABLE `cat_sedes`
  ADD CONSTRAINT `id_cat_sedes_fk_1` FOREIGN KEY (`id_juris`) REFERENCES `cat_jurisdicciones` (`id_juris`),
  ADD CONSTRAINT `id_cat_sedes_fk_2` FOREIGN KEY (`id_mpio`) REFERENCES `cat_municipios` (`id_mpio`),
  ADD CONSTRAINT `id_cat_sedes_fk_3` FOREIGN KEY (`id_remesa`) REFERENCES `cat_remesas` (`id_remesa`),
  ADD CONSTRAINT `id_cat_sedes_fk_4` FOREIGN KEY (`id_proceso`) REFERENCES `cat_proceso` (`id_proceso`);

--
-- Filtros para la tabla `cat_usuarios`
--
ALTER TABLE `cat_usuarios`
  ADD CONSTRAINT `cat_usuarios_fk_1` FOREIGN KEY (`id_clues`) REFERENCES `cat_clues` (`id_clues`);

--
-- Filtros para la tabla `det_vac_50a59`
--
ALTER TABLE `det_vac_50a59`
  ADD CONSTRAINT `id_det_vac_50a59_fk_1` FOREIGN KEY (`id_sede`) REFERENCES `cat_sedes` (`id_sede`),
  ADD CONSTRAINT `id_det_vac_50a59_fk_2` FOREIGN KEY (`id_bio`) REFERENCES `cat_bio` (`id_bio`);

--
-- Filtros para la tabla `det_vac_60ymas`
--
ALTER TABLE `det_vac_60ymas`
  ADD CONSTRAINT `id_det_vac_60ymas_fk_1` FOREIGN KEY (`id_sede`) REFERENCES `cat_sedes` (`id_sede`);

--
-- Filtros para la tabla `det_vac_seph`
--
ALTER TABLE `det_vac_seph`
  ADD CONSTRAINT `id_det_vac_seph_fk_1` FOREIGN KEY (`id_sede`) REFERENCES `cat_sedes` (`id_sede`),
  ADD CONSTRAINT `id_det_vac_seph_fk_2` FOREIGN KEY (`id_bio`) REFERENCES `cat_bio` (`id_bio`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
