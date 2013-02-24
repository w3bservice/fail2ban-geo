# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.29-0ubuntu0.12.10.1)
# Database: fail2ban-geo
# Generation Time: 2013-02-24 15:14:44 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table banned_ips
# ------------------------------------------------------------

DROP TABLE IF EXISTS `banned_ips`;

CREATE TABLE `banned_ips` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) DEFAULT NULL,
  `hostname` varchar(128) DEFAULT NULL,
  `iso` varchar(2) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table countries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lat` varchar(9) DEFAULT NULL,
  `lng` varchar(9) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `iso` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;

INSERT INTO `countries` (`id`, `lat`, `lng`, `name`, `iso`)
VALUES
	(1,'34.5167','69.2000','AFGHANISTAN','AF'),
	(2,'60.1167','19.1167','ÅLAND ISLANDS','AX'),
	(3,'41.3333','19.7833','ALBANIA','AL'),
	(4,'36.7900','3.0700','ALGERIA','DZ'),
	(5,'-14.3333','-170.7170','AMERICAN SAMOA','AS'),
	(6,'42.5000','1.5166','ANDORRA','AD'),
	(7,'-8.8500','13.2333','ANGOLA','AO'),
	(8,'18.2167','-63.0667','ANGUILLA','AI'),
	(9,'-84.0000','0.0000','ANTARCTICA','AQ'),
	(10,'17.1167','-61.7833','ANTIGUA AND BARBUDA','AG'),
	(11,'-34.5833','-58.4833','ARGENTINA','AR'),
	(12,'40.1333','44.4667','ARMENIA','AM'),
	(13,'12.5000','-70.0167','ARUBA','AW'),
	(14,'-35.3000','149.1830','AUSTRALIA','AU'),
	(15,'48.1167','16.5667','AUSTRIA','AT'),
	(16,'40.4500','50.0667','AZERBAIJAN','AZ'),
	(17,'25.0500','-77.4667','BAHAMAS','BS'),
	(18,'26.2167','50.5833','BAHRAIN','BH'),
	(19,'23.7667','90.3833','BANGLADESH','BD'),
	(20,'13.1000','-59.6167','BARBADOS','BB'),
	(21,'53.9333','27.6333','BELARUS','BY'),
	(22,'50.7500','4.5333','BELGIUM','BE'),
	(23,'17.2500','-88.7667','BELIZE','BZ'),
	(24,'6.4833','2.6166','BENIN','BJ'),
	(25,'32.2833','-64.7667','BERMUDA','BM'),
	(26,'27.4667','89.6500','BHUTAN','BT'),
	(27,'-16.5167','-68.1833','BOLIVIA','BO'),
	(28,'12.1500',' -68.2666','BONAIRE','BQ'),
	(29,'43.8167','18.3333','BOSNIA AND HERZEGOVINA','BA'),
	(30,'-24.7500','25.9167','BOTSWANA','BW'),
	(31,'-54.4667','3.4833','BOUVET ISLAND','BV'),
	(32,'-15.8667','-47.9333','BRAZIL','BR'),
	(33,'-7.3000','72.4000','BRITISH INDIAN OCEAN TERRITORY','IO'),
	(34,'4.9333','114.9330','BRUNEI DARUSSALAM','BN'),
	(35,'42.6500','23.3833','BULGARIA','BG'),
	(36,'12.3500','-1.5166','BURKINA FASO','BF'),
	(37,'-3.3166','29.3167','BURUNDI','BI'),
	(38,'11.5500','104.8500','CAMBODIA','KM'),
	(39,'3.8666','11.5167','CAMEROON','CM'),
	(40,'45.3167','-75.6667','CANADA','CA'),
	(41,'14.9167','-23.5167','CAPE VERDE','CV'),
	(42,'19.2833','-81.3500','CAYMAN ISLANDS','KY'),
	(43,'4.4000','18.5167','CENTRAL AFRICAN REPUBLIC','CF'),
	(44,'12.1333','15.0333','CHAD','TD'),
	(45,'-33.3833','-70.7833','CHILE','CL'),
	(46,'39.9333','116.2830','CHINA','CN'),
	(47,'-10.4333','105.6830','CHRISTMAS ISLAND','CX'),
	(48,'-12.1833','96.8333','COCOS (KEELING) ISLANDS','CC'),
	(49,'4.7166','-74.1500','COLOMBIA','CO'),
	(50,'-11.6833','43.2667','COMOROS','KM'),
	(51,'-4.2500','15.2500','CONGO','CG'),
	(52,'-21.2000','-159.7500','COOK ISLANDS','CK'),
	(53,'9.9500','-84.1500','COSTA RICA','CR'),
	(54,'6.9000','-5.3500','CÔTE D\'IVOIRE','CI'),
	(55,'45.8000','15.9833','CROATIA','HR'),
	(56,'22.9833','-82.4000','CUBA','CU'),
	(57,'12.1166','-68.9333','CURAÇAO','CW'),
	(58,'35.1667','33.3667','CYPRUS','CY'),
	(59,'50.1000','14.2500','CZECH REPUBLIC','CZ'),
	(60,'55.6167','12.6500','DENMARK','DK'),
	(61,'11.5500','43.1667','DJIBOUTI','DJ'),
	(62,'15.3000','-61.4000','DOMINICA','DM'),
	(63,'18.4667','-69.9000','DOMINICAN REPUBLIC','DO'),
	(64,'-0.1500','-78.4833','ECUADOR','EC'),
	(65,'30.0500','31.2500','EGYPT','EG'),
	(66,'13.7000','-89.1167','EL SALVADOR','SV'),
	(67,'3.7500','8.7666','EQUATORIAL GUINEA','GQ'),
	(68,'15.2833','38.9167','ERITREA','ER'),
	(69,'59.3833','24.5833','ESTONIA','EE'),
	(70,'8.9833','38.8000','ETHIOPIA','ET'),
	(71,'-51.7000','-57.8500','FALKLAND ISLANDS','FK'),
	(72,'62.0167','-6.7666','FAROE ISLANDS','FO'),
	(73,'-18.1333','178.4170','FIJI','FJ'),
	(74,'60.1667','24.9333','FINLAND','FI'),
	(75,'49.0167','2.5333','FRANCE','FR'),
	(76,'4.8333','-52.3667','FRENCH GUIANA','GF'),
	(77,'-17.5500','-149.6170','FRENCH POLYNESIA','PF'),
	(78,'-49.3333','70.2500','FRENCH SOUTHERN TERRITORIES','TF'),
	(79,'0.4500','9.4166','GABON','GA'),
	(80,'13.3500','-16.5833','GAMBIA','GM'),
	(81,'41.6833','44.9500','GEORGIA','GE'),
	(82,'52.5000','13.3500','GERMANY','DE'),
	(83,'5.6000','-0.1666','GHANA','GH'),
	(84,'36.1500','-5.3500','GIBRALTAR','GI'),
	(85,'37.9000','23.7333','GREECE','GR'),
	(86,'66.9167','-53.6667','GREENLAND','GL'),
	(87,'12.0000','-61.7833','GRENADA','GD'),
	(88,'16.2667','-61.5167','GUADELOUPE','GP'),
	(89,'13.4667','144.7500','GUAM','GU'),
	(90,'14.5833','-90.5167','GUATEMALA','GT'),
	(91,'49.4500','-2.5333','GUERNSEY','GG'),
	(92,'9.5666','-13.6167','GUINEA','GN'),
	(93,'11.8833','-15.6500','GUINEA-BISSAU','GW'),
	(94,'6.8000','-58.1500','GUYANA','GY'),
	(95,'18.5667','-72.3000','HAITI','HT'),
	(96,'-53.0000','73.5000','HEARD ISLAND AND MCDONALD ISLANDS','HM'),
	(97,'41.9000','12.4500','HOLY SEE (VATICAN CITY STATE)','VA'),
	(98,'14.0500','-87.2167','HONDURAS','HN'),
	(99,'22.3333','114.1830','HONG KONG','HK'),
	(100,'47.5167','19.0333','HUNGARY','HU'),
	(101,'64.1333','-21.9000','ICELAND','IS'),
	(102,'28.5667','77.1167','INDIA','IN'),
	(103,'-6.1166','106.6500','INDONESIA','ID'),
	(104,'35.6667','51.4333','IRAN','IR'),
	(105,'33.2333','44.2333','IRAQ','IQ'),
	(106,'53.3333','-6.2500','IRELAND','IE'),
	(107,'54.1500','-4.4666','ISLE OF MAN','IM'),
	(108,'31.8667','35.2167','ISRAEL','IL'),
	(109,'41.9000','12.5000','ITALY','IT'),
	(110,'17.9333','-76.7833','JAMAICA','JM'),
	(111,'35.6833','139.7670','JAPAN','JP'),
	(112,'49.2000','-2.6166','JERSEY','JE'),
	(113,'31.9833','35.9833','JORDAN','JO'),
	(114,'51.2000','71.4500','KAZAKHSTAN','KZ'),
	(115,'-1.2833','36.8167','KENYA','KE'),
	(116,'1.4166','173.0000','KIRIBATI','KI'),
	(117,'39.0333','125.7830','KOREA, NORTH','KP'),
	(118,'37.5500','126.9670','KOREA, SOUTH','KR'),
	(119,'29.3333','47.9833','KUWAIT','KW'),
	(120,'42.8500','74.5833','KYRGYZSTAN','KG'),
	(121,'17.9500','102.5670','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','LA'),
	(122,'56.9667','24.0500','LATVIA','LV'),
	(123,'33.8167','35.4833','LEBANON','LB'),
	(124,'-29.4500','27.5500','LESOTHO','LS'),
	(125,'6.3000','-10.7833','LIBERIA','LR'),
	(126,'32.6667','13.1500','LIBYA','LY'),
	(127,'47.1500','9.5166','LIECHTENSTEIN','LI'),
	(128,'54.6333','25.1000','LITHUANIA','LT'),
	(129,'49.6167','6.2166','LUXEMBOURG','LU'),
	(130,'22.1667','113.5670','MACAO','MO'),
	(131,'41.9667','21.6500','MACEDONIA','MK'),
	(132,'-18.8000','47.4833','MADAGASCAR','MG'),
	(133,'-14.0000','33.7667','MALAWI','MW'),
	(134,'3.1666','101.7000','MALAYSIA','MY'),
	(135,'4.3500','73.5333','MALDIVES','MV'),
	(136,'12.5333','-7.9500','MALI','ML'),
	(137,'35.9000','14.5167','MALTA','MT'),
	(138,'7.0666','171.2830','MARSHALL ISLANDS','MH'),
	(139,'14.6000','-61.0000','MARTINIQUE','MQ'),
	(140,'18.1000','-15.9500','MAURITANIA','MR'),
	(141,'-20.1667','57.5000','MAURITIUS','MU'),
	(142,'-12.7833','45.2333','MAYOTTE','YT'),
	(143,'19.4333','-99.1000','MEXICO','MX'),
	(144,'6.9166','158.1830','MICRONESIA','FM'),
	(145,'47.0833','28.8333','MOLDOVA','MD'),
	(146,'43.7000','7.3833','MONACO','MC'),
	(147,'47.8500','106.7670','MONGOLIA','MN'),
	(148,'42.4333','19.2833','MONTENEGRO','ME'),
	(149,'16.7500','-62.1667','MONTSERRAT','MS'),
	(150,'34.0333','-6.8500','MOROCCO','MA'),
	(151,'-26.0000','32.5667','MOZAMBIQUE','MZ'),
	(152,'19.7500','96.1000','MYANMAR','MM'),
	(153,'-22.5667','17.1000','NAMIBIA','NA'),
	(154,'-0.5333','166.9170','NAURU','NR'),
	(155,'27.7000','85.3667','NEPAL','NP'),
	(156,'52.3000','4.7666','NETHERLANDS','NL'),
	(157,'-22.2667','166.4500','NEW CALEDONIA','NC'),
	(158,'-41.3333','174.8000','NEW ZEALAND','NZ'),
	(159,'12.1500','-86.1667','NICARAGUA','NI'),
	(160,'13.4833','2.1666','NIGER','NE'),
	(161,'9.2000','7.1833','NIGERIA','NG'),
	(162,'-19.0667','-169.9170','NIUE','NU'),
	(163,'-29.0333','167.9330','NORFOLK ISLAND','NF'),
	(164,'15.2333','145.7500','NORTHERN MARIANA ISLANDS','MP'),
	(165,'59.9167','10.7500','NORWAY','NO'),
	(166,'23.6167','58.5833','OMAN','OM'),
	(167,'33.6167','73.1000','PAKISTAN','PK'),
	(168,'7.3333','134.4830','PALAU','PW'),
	(169,'31.5333','34.4333','PALESTINIAN TERRITORY','PS'),
	(170,'8.9833','-79.5167','PANAMA','PA'),
	(171,'-9.4333','147.2170','PAPUA NEW GUINEA','PG'),
	(172,'-25.2667','-57.6333','PARAGUAY','PY'),
	(173,'-12.0000','-77.1167','PERU','PE'),
	(174,'14.5833','121.0000','PHILIPPINES','PH'),
	(175,'-25.0667','-130.1000','PITCAIRN','PN'),
	(176,'52.1667','20.9667','POLAND','PL'),
	(177,'38.7667','-9.1333','PORTUGAL','PT'),
	(178,'18.4500','-66.0000','PUERTO RICO','PR'),
	(179,'25.2500','51.5667','QATAR','QA'),
	(180,'-20.8833','55.4667','RÉUNION','RE'),
	(181,'44.5000','26.1333','ROMANIA','RO'),
	(182,'55.9833','37.5000','RUSSIAN FEDERATION','RU'),
	(183,'-1.9666','30.1167','RWANDA','RW'),
	(184,'17.9000','-62.8500','SAINT BARTHÉLEMY','BL'),
	(185,'-15.9167','-5.7000','SAINT HELENA','SH'),
	(186,'17.3000','-62.7167','SAINT KITTS AND NEVIS','KN'),
	(187,'14.0167','-61.0000','SAINT LUCIA','LC'),
	(188,'18.0667','-63.0833','SAINT MARTIN (FRENCH PART)','MF'),
	(189,'46.7667','-56.1667','SAINT PIERRE AND MIQUELON','PM'),
	(190,'13.1333','-61.2000','SAINT VINCENT AND THE GRENADINES','VC'),
	(191,'-13.8000','-171.7830','SAMOA','WS'),
	(192,'43.9167','12.4667','SAN MARINO','SM'),
	(193,'0.4000','6.7333','SAO TOME AND PRINCIPE','ST'),
	(194,'24.6333','46.7167','SAUDI ARABIA','SA'),
	(195,'14.7333','-17.5000','SENEGAL','SN'),
	(196,'44.8167','20.2833','SERBIA','RS'),
	(197,'-4.6333','55.4500','SEYCHELLES','SC'),
	(198,'8.5000','-13.2500','SIERRA LEONE','SL'),
	(199,'1.3666','103.9170','SINGAPORE','SG'),
	(200,'18.0333','-63.0500','SINT MAARTEN (DUTCH PART)','SX'),
	(201,'48.2000','17.2000','SLOVAKIA','SK'),
	(202,'46.2167','14.4833','SLOVENIA','SI'),
	(203,'-9.4166','160.0500','SOLOMON ISLANDS','SB'),
	(204,'2.0333','45.3500','SOMALIA','SO'),
	(205,'-25.7500','28.2167','SOUTH AFRICA','ZA'),
	(206,'-54.2833','-36.5000','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','GS'),
	(207,'4.8500','31.6000','SOUTH SUDAN','SS'),
	(208,'40.4000','-3.6833','SPAIN','ES'),
	(209,'6.9333','79.8500','SRI LANKA','LK'),
	(210,'15.6000','32.5500','SUDAN','SD'),
	(211,'5.8333','-55.1667','SURINAME','SR'),
	(212,'78.2500','15.5833','SVALBARD AND JAN MAYEN','SJ'),
	(213,'-26.3000','31.1000','SWAZILAND','SZ'),
	(214,'59.3333','18.0500','SWEDEN','SE'),
	(215,'46.9167','7.5000','SWITZERLAND','CH'),
	(216,'33.4167','36.5167','SYRIAN ARAB REPUBLIC','SY'),
	(217,'25.0333','121.5000','TAIWAN','TW'),
	(218,'38.5500','68.7833','TAJIKISTAN','TJ'),
	(219,'-6.8666','39.2000','TANZANIA','TZ'),
	(220,'13.9167','100.6000','THAILAND','TH'),
	(221,'-8.5666','125.5670','TIMOR-LESTE','TL'),
	(222,'6.1666','1.2500','TOGO','TG'),
	(223,'-9.4166','-171.2500','TOKELAU','TK'),
	(224,'-21.1667','-175.2000','TONGA','TO'),
	(225,'10.6167','-61.3500','TRINIDAD AND TOBAGO','TT'),
	(226,'36.8333','10.2333','TUNISIA','TN'),
	(227,'40.9667','28.8167','TURKEY','TR'),
	(228,'37.9833','58.3667','TURKMENISTAN','TM'),
	(229,'21.4667','-71.1333','TURKS AND CAICOS ISLANDS','TC'),
	(230,'-8.5166','179.2170','TUVALU','TV'),
	(231,'0.3166','32.4167','UGANDA','UG'),
	(232,'50.4000','30.5667','UKRAINE','UA'),
	(233,'24.4333','54.6500','UNITED ARAB EMIRATES','AE'),
	(234,'51.5000','-0.5000','UNITED KINGDOM','GB'),
	(235,'38.8500','-77.0333','UNITED STATES','US'),
	(236,'19.2833','166.6500','UNITED STATES MINOR OUTLYING ISLANDS','UM'),
	(237,'-34.8833','-56.1833','URUGUAY','UY'),
	(238,'41.2667','69.2667','UZBEKISTAN','UZ'),
	(239,'-17.7000','168.3000','VANUATU','VU'),
	(240,'10.3000','-66.8167','VENEZUELA','VE'),
	(241,'21.0333','105.8000','VIETNAM','VM'),
	(242,'18.4500','-64.5333','BRITISH VIRGIN ISLANDS','VG'),
	(243,'18.3333','-64.9833','U.S. VIRGIN ISLANDS','VI'),
	(244,'-13.2333','-176.1670','WALLIS AND FUTUNA','WF'),
	(245,'27.1667','-13.2000','WESTERN SAHARA','EH'),
	(246,'15.5167','44.1833','YEMEN','YE'),
	(247,'-15.4167','28.2833','ZAMBIA','ZM'),
	(248,'-17.9167','31.1333','ZIMBABWE','ZW');

/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
