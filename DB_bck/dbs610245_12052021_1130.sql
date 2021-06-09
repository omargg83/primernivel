-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: db5000655979.hosting-data.io
-- Tiempo de generación: 12-05-2021 a las 16:29:50
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
(2, 4, 3, '2021-05-09', 79620, 79620, 'pendiente', 'Remesa para vacunar personal educativo', 'Remesa para vacunar personal educativo de los 84 municipios del 12 al 14 mayo de 2021');

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
(1, 12, 69, 1, 2, 'HGSSA003603', 'Auditorio Municipal/CS Tizayuca', 1),
(2, 12, 83, 1, 2, 'HGSSA004356', 'Centro de Salud Zempoala', 1),
(3, 12, 83, 1, 2, 'HGSSA004385', 'Centro de Salud Tellez', 1),
(4, 12, 69, 1, 2, 'HGSSA003603', 'Escuela Primaria Reynaldo Gómez Aldana / CS Tizayuca', 1),
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
(28, 14, 74, 2, 3, 'HGSSA003895', 'ESC SEC BENITO JUÁREZ DE TLAXCOAPAN', 1),
(29, 12, 69, 2, 3, 'HGSSA003603', 'ESCUELA PRIMARIA REYNALDO GÓMEZ, TIZAYUCA', 1),
(30, 12, 83, 2, 3, 'HGSSA004356', 'AUDITORIO MUNICIPAL ZEMPOALA', 1),
(31, 3, 76, 2, 3, 'HGSSA003965', 'UNIVERSIDAD TECNOLÓGICA TULA-TEPEJÍ', 1),
(32, 2, 77, 2, 3, 'HGSSA018000', 'UNIVERSIDAD TECNOLOGICA DE TULANCINGO (UTEC)', 1),
(33, 17, 81, 2, 3, 'HGSSA004303', 'ESCUELA SECUNDARIA GENERAL TEOFILO RIVERA, ZACUALTIPAN DE ÁNGELES', 1),
(34, 5, 84, 2, 3, 'HGSSA015335', 'ESCUELA SECUNDARIA GENERAL FELIPE ANGELES, ZIMAPÁN', 1),
(35, 11, 8, 2, 3, 'HGSSA00136', 'ESCUELA SUPERIOR DE APAN, UAEH', 1);

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
(20, 17, 'BADILLO', 'SOTO', 'DR. IGNACIO', 'jurisdiccion.zacualtipan@ssh.gob.mx', 'HGSSA007722', 'HGSSA007722', 3);

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
  `briga` int(10) UNSIGNED NOT NULL,
  `personal_salud` int(10) UNSIGNED NOT NULL,
  `merma` int(10) UNSIGNED NOT NULL,
  `observa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `det_vac_50a59`
--

INSERT INTO `det_vac_50a59` (`id_det_vac_50a59`, `hora_captura`, `id_sede`, `nombre_captura_inf`, `id_bio`, `num_dosis`, `fecha_reporte`, `H_50`, `M_50`, `H_55`, `M_55`, `HENG_50`, `MENG_50`, `HENG_55`, `MENG_55`, `HEG_50`, `MEG_50`, `HEG_55`, `MEG_55`, `H_60`, `M_60`, `H_65`, `M_65`, `HENG_60`, `MENG_60`, `HENG_65`, `MENG_65`, `HEG_60`, `MEG_60`, `HEG_65`, `MEG_65`, `H_70`, `M_70`, `H_75`, `M_75`, `HENG_70`, `MENG_70`, `HENG_75`, `MENG_75`, `HEG_70`, `MEG_70`, `HEG_75`, `MEG_75`, `H_80`, `M_80`, `HENG_80`, `MENG_80`, `HEG_80`, `MEG_80`, `briga`, `personal_salud`, `merma`, `observa`) VALUES
(2, '2021-03-04 20:19:19', 4, 'LSC RUBEN AVILA TELLEZ GIRON', 2, 2, '2021-05-03', 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'REPORTE DE PRUEBA'),
(3, '2021-05-04 20:19:19', 2, 'Miguel Ángel Gómez Gómez', 1, 1, '2021-05-04', 129, 163, 96, 123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4, '2021-05-04 20:22:16', 3, 'Miguel Ángel Gómez Gómez', 1, 1, '2021-05-04', 161, 214, 124, 181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(5, '2021-05-04 20:24:22', 4, 'Miguel Ángel Gómez Gómez', 1, 1, '2021-05-04', 512, 645, 441, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(6, '2021-05-04 20:40:05', 4, 'Miguel Ángel Gómez Gómez', 1, 1, '2021-05-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 40, 9, 10, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 2, 5, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, ''),
(7, '2021-05-05 09:58:32', 4, 'Miguel Ángel Gómez Gómez', 1, 2, '2021-05-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 38, 44, 13, 30, 0, 0, 0, 0, 0, 0, 0, 0, 18, 15, 9, 6, 0, 0, 0, 0, 0, 0, 0, 0, 4, 3, 0, 0, 0, 0, 2, 28, 0, ''),
(8, '2021-05-04 22:42:06', 1, 'Miguel Ángel Gómez Gómez', 1, 1, '2021-05-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 24, 12, 7, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, ''),
(9, '2021-05-04 22:46:12', 1, 'Miguel Ángel Gómez Gómez', 1, 2, '2021-05-04', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, 19, 22, 20, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1, 5, 3, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 1, 0, 0, '');

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
  `briga` int(10) UNSIGNED NOT NULL,
  `personal_salud` int(10) UNSIGNED NOT NULL,
  `merma` int(10) UNSIGNED NOT NULL,
  `observa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `det_vac_60ymas`
--

INSERT INTO `det_vac_60ymas` (`id_det_vac_60ymas`, `hora_captura`, `id_sede`, `nombre_captura_inf`, `id_bio`, `num_dosis`, `fecha_reporte`, `H_60`, `M_60`, `H_65`, `M_65`, `HENG_60`, `MENG_60`, `HENG_65`, `MENG_65`, `HEG_60`, `MEG_60`, `HEG_65`, `MEG_65`, `H_70`, `M_70`, `H_75`, `M_75`, `HENG_70`, `MENG_70`, `HENG_75`, `MENG_75`, `HEG_70`, `MEG_70`, `HEG_75`, `MEG_75`, `H_80`, `M_80`, `HENG_80`, `MENG_80`, `HEG_80`, `MEG_80`, `briga`, `personal_salud`, `merma`, `observa`) VALUES
(1, '2021-03-01 18:00:00', 6, 'RATG', 4, 4, '2021-03-01', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 1, 1, 3, 3, 3, 3, 4, 1, 2, 'POCA AFLUENCIA DE PACIENTES POBLACIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `det_vac_seph`
--

CREATE TABLE `det_vac_seph` (
  `id_det_vac_seph` int(10) UNSIGNED NOT NULL,
  `hora_captura` datetime DEFAULT NULL,
  `id_sede` int(10) UNSIGNED NOT NULL,
  `nombre_captura_inf` varchar(255) NOT NULL,
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
  `observa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `det_vac_seph`
--

INSERT INTO `det_vac_seph` (`id_det_vac_seph`, `hora_captura`, `id_sede`, `nombre_captura_inf`, `id_bio`, `fecha_reporte`, `num_dosis`, `H_18`, `M_18`, `H_20`, `M_20`, `H_25`, `M_25`, `H_30`, `M_30`, `H_35`, `M_35`, `H_40`, `M_40`, `H_45`, `M_45`, `H_50`, `M_50`, `H_55`, `M_55`, `H_60`, `M_60`, `H_65`, `M_65`, `H_70`, `M_70`, `HENG_18`, `MENG_18`, `HENG_20`, `MENG_20`, `HENG_25`, `MENG_25`, `HENG_30`, `MENG_30`, `HENG_35`, `MENG_35`, `HENG_40`, `MENG_40`, `HENG_45`, `MENG_45`, `HENG_50`, `MENG_50`, `HENG_55`, `MENG_55`, `HENG_60`, `MENG_60`, `HENG_65`, `MENG_65`, `HENG_70`, `MENG_70`, `HEG_18`, `MEG_18`, `HEG_20`, `MEG_20`, `HEG_25`, `MEG_25`, `HEG_30`, `MEG_30`, `HEG_35`, `MEG_35`, `HEG_40`, `MEG_40`, `HEG_45`, `MEG_45`, `HEG_50`, `MEG_50`, `HEG_55`, `MEG_55`, `HEG_60`, `MEG_60`, `HEG_65`, `MEG_65`, `HEG_70`, `MEG_70`, `briga`, `personal_salud`, `merma`, `observa`) VALUES
(1, '2021-05-07 22:46:12', 5, 'RATG', 4, '2021-04-30', 4, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 2, 'POCA AFLUENCIA DE PBOLACION');

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
  MODIFY `id_remesa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `cat_sedes`
--
ALTER TABLE `cat_sedes`
  MODIFY `id_sede` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `cat_usuarios`
--
ALTER TABLE `cat_usuarios`
  MODIFY `id_usuario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `det_vac_50a59`
--
ALTER TABLE `det_vac_50a59`
  MODIFY `id_det_vac_50a59` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `det_vac_60ymas`
--
ALTER TABLE `det_vac_60ymas`
  MODIFY `id_det_vac_60ymas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `det_vac_seph`
--
ALTER TABLE `det_vac_seph`
  MODIFY `id_det_vac_seph` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
