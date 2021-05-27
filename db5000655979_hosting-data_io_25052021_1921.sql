-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: db5000655979.hosting-data.io
-- Tiempo de generación: 26-05-2021 a las 00:22:15
-- Versión del servidor: 5.7.32-log
-- Versión de PHP: 7.0.33-0+deb9u10

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
(3, 2, 2, '2021-05-22', 9652, 96520, 'pendiente', 'Remesas AstraZeneca 22&24-mayo-2021', 'Adultos 50 a 59 años de 21 municipios del 25 al 29 de Mayo de 2021');

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
(5, 7, 3, 2, 3, 'HGSSA000161', 'ESC SEC GRAL No 1 MIGUEL HIDALGO, ACTOPAN', 1),
(6, 7, 50, 2, 3, 'HGSSA002652', 'ESC PRIM JUSTO SIERRA, PROGRESO DE OBREGON', 1),
(7, 7, 23, 2, 3, 'HGIMO000474', 'SECUNDARIA TÉCNICA No. 14, FCO. I. MADERO', 1),
(8, 15, 12, 2, 3, 'HGSSA007944', 'ESCUELA SECUNDARIA JORGE VIESCA PALMA, ATOTONILCO EL GRANDE', 1),
(9, 10, 28, 2, 3, 'HGSSA004962', 'ESCUELA PRIMARIA FAUSTA CARETTA DE LA VEGA, HUEJUTLA DE REYES', 1),
(10, 10, 11, 2, 3, 'HGSSA000511', 'CECyTEH ATLAPEXCO', 1),
(11, 4, 29, 2, 3, 'HGSSA001515', 'ESCUELA PRIMARIA GENERAL JULIAN VILLAGRAN, HUICHAPAN', 1),
(12, 4, 59, 2, 3, 'HGSSA003072', 'ESCUELA PRIMARIA IGNACIO MANUEL ALTAMIRANO, TECOZAUTLA', 1),
(13, 6, 30, 2, 3, 'HGSSA001602', 'ESCUELA SECUNDARIA JUSTO SIERRA, IXMIQUILPAN', 1),
(14, 16, 18, 2, 3, 'S/C', 'ESCUELA SECUNDARIA GENERAL \"AGUSTIN MELGAR\"  CHAPULHUACAN', 1),
(15, 16, 31, 2, 3, 'HGSSA001800', 'ESCUELA PRIMARIA \"EL PENSADOR MEXICANO\", JACALA DE LEDEZMA', 1),
(16, 8, 37, 2, 3, 'HGSSA001923', 'CECyTEH PLANTEL MEZTITLÁN', 1),
(17, 9, 42, 2, 3, 'HGSSA002174', 'CBTA No 6 PLANTEL MOLANGO', 1),
(18, 9, 73, 2, 3, 'HGSSA015503', 'SECUNDARIA GENERAL JESUS REYES HEROLES, TLANCHINOL', 1),
(19, 13, 2, 2, 3, 'HGSSA000062', 'CECyTEH PLANTEL ACAXOCHITLÁN', 1),
(20, 13, 60, 2, 3, 'HGSSA003154', 'UNIVERSIDAD INTERCULTURAL DEL ESTADO DE HIDALGO (UICEH), TENANGO DE DORIA', 1),
(21, 1, 48, 2, 3, 'HGSAA002570', 'POLIFORUM CARLOS MARTÍNEZ BALMORI, UAEH ', 1),
(22, 1, 48, 2, 3, 'HGSSA015492', 'CIUDAD DEL CONOCIMIENTO Y LA CULTURA, PACHUCA', 1),
(23, 1, 48, 2, 3, 'HGSSA015492', 'CENTRO DE BACHILLERATO TECNOLOGICO INDUSTRIAL Y DE SERVICIOS NO. 8 (CBTis 8)', 1),
(24, 1, 48, 2, 3, 'HGSAA002570', 'CENTRO REGIONAL DE EDUCACIÓN NORMAL \"BENITO JUÁREZ\"', 1),
(25, 1, 48, 2, 3, 'HGSSA015492', 'INSTITUTO TECNOLÓGICO DE PACHUCA (ITP)', 1),
(26, 1, 48, 2, 3, 'HGSSA015492', 'CENTRO DE BACHILLERATO TECNOLOGICO INDUSTRIAL Y DE SERVICIOS NO. 222 (CBTis 222)', 1),
(27, 14, 63, 2, 3, 'HGSAA003364', 'ESC PRIM MELCHOR OCAMPO (UBICADA EN PLAZA PRINCIPAL)', 1),
(28, 14, 74, 2, 3, 'HGSSA003895', 'ESC SEC BENITO JUÁREZ, TLAXCOAPAN', 1),
(29, 12, 69, 2, 3, 'HGSSA003603', 'ESCUELA PRIMARIA REYNALDO GÓMEZ, TIZAYUCA', 1),
(30, 12, 83, 2, 3, 'HGSSA004356', 'AUDITORIO MUNICIPAL ZEMPOALA', 1),
(31, 3, 76, 2, 3, 'HGSSA003965', 'UNIVERSIDAD TECNOLÓGICA TULA-TEPEJÍ', 1),
(32, 2, 77, 2, 3, 'HGSSA018000', 'UNIVERSIDAD TECNOLOGICA DE TULANCINGO (UTEC)', 1),
(33, 17, 81, 2, 3, 'HGSSA004303', 'ESCUELA SECUNDARIA GENERAL TEOFILO RIVERA, ZACUALTIPAN DE ÁNGELES', 1),
(34, 5, 84, 2, 3, 'HGSSA015335', 'ESCUELA SECUNDARIA GENERAL FELIPE ANGELES, ZIMAPÁN', 1),
(35, 11, 8, 2, 3, 'HGSSA00136', 'ESCUELA SUPERIOR DE APAN, UAEH', 1),
(36, 1, 48, 2, 3, 'HGIST000106', 'HOSPITAL DRA. COLUMBA RIVERA OSORIO', 1),
(37, 10, 28, 3, 2, 'HGSSA004962', 'GALERA MUNICIPAL TEHUETLAN', 1),
(38, 10, 28, 3, 2, 'HGSSA004962', 'GALERA MUNICIPAL IXCATEPEC', 1),
(39, 10, 28, 3, 2, 'HGSSA004962', 'ESCUELA SEC. GRAL. HEROE  ANTONIO REYES', 1),
(40, 10, 28, 3, 2, 'HGSSA004962', 'ESC PRIM BARTOLOME DE LAS CASAS (LOC. CHALAHUIYAPA)', 1),
(41, 11, 8, 3, 2, 'HGSSA000395', 'ITESA (INSTITUTO TECNOLOGICO SUPERIOR DE APAN)', 1),
(42, 2, 16, 3, 2, 'HGSSA000873', 'AUDITORIO MUNICIPAL DE CUAUTEPEC', 1),
(43, 2, 56, 3, 2, 'HGSSA002990', 'AUDITORIO MUNICIPAL DE SANTIAGO TULANTEPEC', 1),
(44, 11, 61, 3, 2, 'HGSSA003195', 'AUDITORIO MUNICIPAL TEPEAPULCO / CS TEPEAPULCO', 1),
(45, 3, 76, 3, 2, 'HGSSA003965', 'AUDITORIO MUNICIPAL PLAZA NACIONALISMO  DE TULA', 1),
(46, 6, 30, 3, 2, 'HGSSA001602', 'ESC SEC FED JUSTO SIERRA, IXMIQUILPAN', 1),
(47, 14, 63, 3, 2, 'HGSSA003364', 'AUDITORIO DE LA UNIDAD DEPORTIVA', 1),
(48, 7, 3, 3, 2, 'HGSSA000161', 'INSTALACIONES DE LA FERIA /CS ACTOPAN', 1),
(49, 3, 67, 3, 2, 'HGSSA003504', 'ESC PRIM JUAN ALDAMA, TEZONTEPEC DE ALDAMA', 1),
(50, 7, 41, 3, 2, 'HGSSA004880', 'CANCHAS EL CALVARIO', 1),
(51, 14, 13, 3, 2, 'HGSSA000622', 'AUDITORIO MUNICIPAL DE ATOTONILCO DE TULA / CS ATOTONILCO', 1),
(52, 5, 84, 3, 2, 'HGSSA004390', 'CANCHA MUNICIPAL DE BASQUETBALL DE ZIMAPAN', 1),
(53, 5, 84, 3, 2, 'HGSSA004390', 'ESCUELA PRIMARIA CELERINO TORRES (LOCALIDAD FRANCISCO I. MADERO)', 1),
(54, 7, 23, 3, 2, 'HGSSA001206', 'ESC. SEC. TEC. No. 14', 1),
(55, 7, 23, 3, 2, 'HGSSA001206', 'ESC. PRIM. ÁLVARO OBREGÓN', 1),
(56, 7, 23, 3, 2, 'HGSSA001206', 'CANCHA EL ROSARIO', 1),
(57, 7, 54, 3, 2, 'HGSSA002874', 'EXPLANADA DE LA PRESIDENCIA MUNICIPAL DE SAN SALVADOR', 1),
(58, 17, 81, 3, 2, 'HGSSA004303', 'SECUNDARIA TEOFILO RIVERA', 1),
(59, 15, 12, 3, 2, 'HGSSA000581', 'AUDITORIO / CS ATOTONILCO EL GRANDE', 1),
(60, 15, 24, 3, 2, 'HGSSA001252', 'COBAEH HUASCA', 1),
(61, 4, 29, 3, 2, 'HGSSA001515', 'AUDITORIO MUNICIPAL', 1),
(62, 4, 29, 3, 2, 'HGSSA001515', 'ESC PRIM JULIAN VILLAGRAN', 1),
(63, 4, 44, 3, 2, 'HGSSA002256', 'AUDITORIO MUNICIPAL', 1),
(64, 15, 45, 3, 2, 'HGSSA002302', 'AUDITORIO MUNICIPAL /CS SALUD ', 1);

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
(2, '2021-03-04 20:19:19', 4, 'LSC RUBEN AVILA TELLEZ GIRON', 2, 2, '2021-05-03', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'REPORTE DE PRUEBA'),
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
(14, '2021-05-25 19:13:20', 41, 'Lidia Hernández Dávila', 2, 1, '2021-05-25', 199, 323, 237, 298, 0, 0, 0, 0, 0, 0, 0, 0, 17, 21, 6, 7, 0, 0, 0, 0, 0, 0, 0, 0, 7, 3, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 6, 0, 0, 12, 0, 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 115, 0, 'Jornada sin incidentes');

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

INSERT INTO `det_vac_60ymas` (`id_det_vac_60ymas`, `hora_captura`, `id_sede`, `nombre_captura_inf`, `id_bio`, `num_dosis`, `fecha_reporte`, `H_60`, `M_60`, `H_65`, `M_65`, `HENG_60`, `MENG_60`, `HENG_65`, `MENG_65`, `HEG_60`, `MEG_60`, `HEG_65`, `MEG_65`, `H_70`, `M_70`, `H_75`, `M_75`, `HENG_70`, `MENG_70`, `HENG_75`, `MENG_75`, `HEG_70`, `MEG_70`, `HEG_75`, `MEG_75`, `H_80`, `M_80`, `HENG_80`, `MENG_80`, `HEG_80`, `MEG_80`, `ME_18`, `MEENG_18`, `MEEG_18`, `ME_25`, `MEENG_25`, `MEEG_25`, `ME_30`, `MEENG_30`, `MEEG_30`, `ME_35`, `MEENG_35`, `MEEG_35`, `ME_40`, `MEENG_40`, `MEEG_40`, `ME_45`, `MEENG_45`, `MEEG_45`, `ME_50`, `MEENG_50`, `MEEG_50`, `ME_55`, `MEENG_55`, `MEEG_55`, `briga`, `personal_salud`, `merma`, `Frs_dosis_completas`, `Frs_dosis_incompletas`, `observa`) VALUES
(1, '2021-03-01 18:00:00', 1, 'RATG', 4, 4, '2021-03-01', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 3, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 1, 2, 0, 0, 'REGISTRO DE PRUEBA POBLACION DE 60 Y MAS AÑOS');

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
  MODIFY `id_remesa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cat_sedes`
--
ALTER TABLE `cat_sedes`
  MODIFY `id_sede` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de la tabla `cat_usuarios`
--
ALTER TABLE `cat_usuarios`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `det_vac_50a59`
--
ALTER TABLE `det_vac_50a59`
  MODIFY `id_det_vac_50a59` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `det_vac_60ymas`
--
ALTER TABLE `det_vac_60ymas`
  MODIFY `id_det_vac_60ymas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
