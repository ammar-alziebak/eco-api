-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6283
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table test.address
CREATE TABLE IF NOT EXISTS `address` (
  `id` varchar(100) NOT NULL,
  `fullName` varchar(100) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `postalCode` varchar(20) DEFAULT NULL,
  `stateId` varchar(100) DEFAULT NULL,
  `areaId` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `userId` varchar(100) DEFAULT NULL,
  `isDefault` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.address: ~7 rows (approximately)
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` (`id`, `fullName`, `phoneNumber`, `postalCode`, `stateId`, `areaId`, `description`, `userId`, `isDefault`) VALUES
	('13bacda0-e2cb-11eb-9092-152d9d1b9c94', 'Taim', '01131167534', '45000', '2dde33b8-9efe-11eb-a8b3-0242ac130003', '9330412e-9eff-11eb-a8b3-0242ac130003', 'A, street2, a-38-3', '4b27aa50-996a-11eb-bd9d-00ff5ce25614', 0),
	('67c831f0-a9da-11eb-8e92-234123d52c8a', 'Ammaro', '01121184536', '53000', '2dde3156-9efe-11eb-a8b3-0242ac130003', '93303b2a-9eff-11eb-a8b3-0242ac130003', 'a-63-6, 3resident, milawati', '4b27aa50-996a-11eb-bd9d-00ff5ce25614', 1),
	('864fef10-9f8e-11eb-9eb4-bd380cba5913', 'Ammar Alziebak', '01121175143', '52100', '2dde33b8-9efe-11eb-a8b3-0242ac130003', '93303ec2-9eff-11eb-a8b3-0242ac130003', 'm-city , jalan 202, A-35-1', '4b27aa50-996a-11eb-bd9d-00ff5ce25614', 0),
	('a16056f0-9f8e-11eb-9eb4-bd380cba5913', 'Taim Alziebak', '011211452618', '54000', '2dde34bc-9efe-11eb-a8b3-0242ac130003', '93304692-9eff-11eb-a8b3-0242ac130003', 'city garden plam villa', '4b27aa50-996a-11eb-bd9d-00ff5ce25614', 0),
	('d880e530-aebd-11eb-85d1-7f40692cb33d', 'q', 'q', 'q', '2dde3156-9efe-11eb-a8b3-0242ac130003', '93303904-9eff-11eb-a8b3-0242ac130003', 'q', '22fc8990-9e05-11eb-bd9d-00ff5ce25614', 0),
	('ee6bb460-aebd-11eb-85d1-7f40692cb33d', 'r', 'r', 'r', '2dde33b8-9efe-11eb-a8b3-0242ac130003', '93303ec2-9eff-11eb-a8b3-0242ac130003', 'r', '22fc8990-9e05-11eb-bd9d-00ff5ce25614', 0),
	('ffed0ef0-aebd-11eb-85d1-7f40692cb33d', 'y', 'y', 'y', '2dde3156-9efe-11eb-a8b3-0242ac130003', '93303c10-9eff-11eb-a8b3-0242ac130003', 'i', '22fc8990-9e05-11eb-bd9d-00ff5ce25614', 0);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;

-- Dumping structure for table test.area
CREATE TABLE IF NOT EXISTS `area` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `stateId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.area: ~7 rows (approximately)
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` (`id`, `name`, `stateId`) VALUES
	('93303904-9eff-11eb-a8b3-0242ac130003', 'Ayer Baloi', '2dde3156-9efe-11eb-a8b3-0242ac130003'),
	('93303b2a-9eff-11eb-a8b3-0242ac130003', 'Ayer Hitam', '2dde3156-9efe-11eb-a8b3-0242ac130003'),
	('93303c10-9eff-11eb-a8b3-0242ac130003', 'Bakri', '2dde3156-9efe-11eb-a8b3-0242ac130003'),
	('93303dc8-9eff-11eb-a8b3-0242ac130003', 'Bukit Bintang', '2dde33b8-9efe-11eb-a8b3-0242ac130003'),
	('93303ec2-9eff-11eb-a8b3-0242ac130003', 'Bukit Jalil', '2dde33b8-9efe-11eb-a8b3-0242ac130003'),
	('9330412e-9eff-11eb-a8b3-0242ac130003', 'Bukit Ledang', '2dde33b8-9efe-11eb-a8b3-0242ac130003'),
	('93304692-9eff-11eb-a8b3-0242ac130003', 'Putrajaya', '2dde34bc-9efe-11eb-a8b3-0242ac130003');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;

-- Dumping structure for table test.brand
CREATE TABLE IF NOT EXISTS `brand` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.brand: ~13 rows (approximately)
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` (`id`, `name`, `logo`, `image`, `description`) VALUES
	('1', 'DEWALT', 'https://www.hardwarepasal.com/src/img/brand/2020-05-08-10-27-51_XBnPBuSCiE_brand.png', 'https://cdn.protoolreviews.com/wp-content/uploads/2019/04/DeWalt-20V-Max-Atomic-Compact-Tools-1-e1553618035458.jpg', 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('10', 'Ingco', 'https://www.hardwarepasal.com/src/img/brand/2019-11-19-07-25-32_W89qDqsC5L_brand.png', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('11', 'Milwaukee', 'https://www.hardwarepasal.com/src/img/brand/2020-03-20-11-35-31_FaE1LHSbCH_brand.png', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('12', 'HIKOKI', 'https://www.hardwarepasal.com/src/img/brand/2021-02-10-09-32-50_3fNcNvoK11_brand.png', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('13', 'Makita', 'https://www.hardwarepasal.com/src/img/brand/2018-10-09-11-36-40_tZjp4V7VFt_brand.png', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('2', 'Bosch', 'https://www.hardwarepasal.com/src/img/brand/2018-10-09-09-46-51_vQUr74odQK_brand.png', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('3', 'Daewoo', 'https://www.hardwarepasal.com/src/img/brand/2019-05-01-12-37-01_y1pSOF7EOM_brand.png', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('4', 'Sony', 'https://resources.mynewsdesk.com/image/upload/c_limit,dpr_2.625,f_auto,h_700,q_auto,w_340/pmecovklqahuemvk9zh1.jpg', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('5', 'ABB', 'https://www.pikpng.com/pngl/b/430-4306903_womens-forum-building-the-future-with-womens-vision.png', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('6', 'NDL', '//upload.ecvv.com/upload/Company/201311/China_zhejiang_nuodelong_machine_electric_co_ltd20131181341361.jpg', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('7', 'Facom', 'https://www.facom.com/blobs/medias/s/29dde49402c01283/Logo_FACOM_1978.png', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('8', 'DUCATI', 'http://www.pngall.com/wp-content/uploads/8/Ducati-Logo.png', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.'),
	('9', 'ANLY', 'https://www.division16electricworks.com/Anly.jpg', NULL, 'Founded in 1999, the Asiaeuro Group is a distributor of pure wines with its corporate headquarters in Kuala Lumpur.');
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;

-- Dumping structure for table test.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `id` varchar(100) NOT NULL,
  `userId` varchar(100) DEFAULT NULL,
  `createDate` datetime DEFAULT current_timestamp(),
  `updateDate` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.cart: ~3 rows (approximately)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` (`id`, `userId`, `createDate`, `updateDate`) VALUES
	('1bc8e890-a407-11eb-9290-8d3cf74def1e', 'undefined', '2021-04-23 15:40:00', '2021-04-23 15:40:00'),
	('6fdb65c4-9fad-11eb-a8b3-0242ac130003', '4b27aa50-996a-11eb-bd9d-00ff5ce25614', '2021-04-18 02:47:17', '2021-04-18 02:47:17'),
	('b9a18a90-a141-11eb-80e5-996593381b38', '22fc8990-9e05-11eb-bd9d-00ff5ce25614', '2021-04-20 03:02:02', '2021-04-20 03:02:02');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table test.cart_items
CREATE TABLE IF NOT EXISTS `cart_items` (
  `id` varchar(100) NOT NULL,
  `cartId` varchar(100) DEFAULT NULL,
  `productId` varchar(100) DEFAULT NULL,
  `variationDetailsId` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.cart_items: ~9 rows (approximately)
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` (`id`, `cartId`, `productId`, `variationDetailsId`, `quantity`) VALUES
	('2ba2ec60-abb5-11eb-9175-d3e251c06bc9', 'b9a18a90-a141-11eb-80e5-996593381b38', '19aec240-9438-11eb-a210-00ff5ce25614', 'g6884c66-9478-11eb-a8b3-0242ac130003', 1),
	('2e98f500-e778-11eb-8a2e-3514d3979e78', '6fdb65c4-9fad-11eb-a8b3-0242ac130003', '3d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 2),
	('814d3880-df88-11eb-a07b-b5076eedf790', '6fdb65c4-9fad-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a28852ec-9478-11eb-a8b3-0242ac130003', 2),
	('9838aed0-df88-11eb-a07b-b5076eedf790', '6fdb65c4-9fad-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2885166-9478-11eb-a8b3-0242ac130003', 2),
	('9b46d930-df88-11eb-a07b-b5076eedf790', '6fdb65c4-9fad-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2884c66-9478-11eb-a8b3-0242ac130003', 2),
	('c3b4dfe0-e328-11eb-9092-152d9d1b9c94', '6fdb65c4-9fad-11eb-a8b3-0242ac130003', '39aec240-9438-11eb-a210-00ff5ce25614', NULL, 5),
	('cc4744a0-e881-11eb-baa4-795965ab3ba6', '6fdb65c4-9fad-11eb-a8b3-0242ac130003', '49aec240-9438-11eb-a210-00ff5ce25614', NULL, 3),
	('dba64550-e619-11eb-8639-f52e09691b81', '6fdb65c4-9fad-11eb-a8b3-0242ac130003', '8d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 5),
	('f6667980-e328-11eb-9092-152d9d1b9c94', '6fdb65c4-9fad-11eb-a8b3-0242ac130003', '19aec240-9438-11eb-a210-00ff5ce25614', 'h6884c66-9478-11eb-a8b3-0242ac130003', 1);
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;

-- Dumping structure for table test.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` varchar(100) NOT NULL,
  `parentId` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.categories: ~194 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `parentId`, `name`, `logo`) VALUES
	('1', NULL, 'Home', ''),
	('10', '8', 'Personal protective equipment\r\n', 'https://www.hardwarepasal.com/src/img/productcategory/2020-09-01-16-53-40_0cySDI4wyg_category.png'),
	('100', '9', 'Garden Scissor', NULL),
	('101', '9', 'Wheelbarrow', NULL),
	('102', '9', 'Brush cutter', NULL),
	('103', '96', 'Gasoline Chain Saw', NULL),
	('104', '96', 'Electric chain saw', NULL),
	('105', '96', 'Cordless chain saw', NULL),
	('106', '5', 'LN KEY sets', NULL),
	('107', '5', 'Cordless Screwdrivers', NULL),
	('108', '5', 'Screwdriver set', NULL),
	('109', '5', 'Screwdriver', NULL),
	('11', '3', 'Home appliances', 'https://www.hardwarepasal.com/src/img/productcategory/2021-03-26-04-34-42_cn1M5GkYNJ_category.jpg'),
	('110', '4', 'Staples, Rivets & Glue Guns', NULL),
	('111', '4', 'Drill bits and blades', NULL),
	('112', '4', 'Spanners, Pliers & Wrench', NULL),
	('113', '4', 'Saws, Knives & Cutting Tools', NULL),
	('114', '4', 'Measuring Tools', NULL),
	('115', '4', 'Automotive tools', NULL),
	('116', '4', 'Hammers, scissors & file', NULL),
	('117', '4', 'Block padlock', NULL),
	('118', '4', 'Cable Tie', NULL),
	('119', '4', 'grease & spray gun', NULL),
	('12', '3', 'LED Interior Lighting', ''),
	('120', '4', 'oil can', NULL),
	('121', '4', 'c-clamp', NULL),
	('122', '4', 'Plane and Wood Chisel', NULL),
	('123', '4', 'Glass Cutter', NULL),
	('124', '4', 'Spirit Level', NULL),
	('125', '4', 'Tripod', NULL),
	('126', '4', 'Axe', NULL),
	('127', '4', 'Hexagon socket', NULL),
	('128', '4', 'Hole saw', NULL),
	('129', '4', 'Handle socket wrench', NULL),
	('13', '3', 'LED Outdoor Lighting', ''),
	('130', '110', 'Rivet Gun', NULL),
	('131', '110', 'Heat Stick', NULL),
	('132', '110', 'Glue Gun', NULL),
	('133', '110', 'Staple Gun', NULL),
	('134', '110', 'Caulking Gun', NULL),
	('135', '110', 'Nails', NULL),
	('136', '110', 'Staple Pins', NULL),
	('137', '110', 'Silicone Sealant', NULL),
	('138', '111', 'Drill Bit Set', NULL),
	('139', '111', 'Drill Bits', NULL),
	('14', '3', 'LED Professional Lighting', ''),
	('140', '111', 'Chalk Line Reel', NULL),
	('141', '111', 'Screwdriver bit set', NULL),
	('142', '111', 'Grinding Disc', NULL),
	('143', '111', 'Chuck and adapter', NULL),
	('144', '111', 'Taper and Bastard', NULL),
	('145', '111', 'Zinc Spray', NULL),
	('146', '111', 'Saw blade', NULL),
	('147', '111', 'Reciprocating saw blade', NULL),
	('148', '111', 'jigsaw blade', NULL),
	('149', '111', 'Forstner Drill Bits', NULL),
	('15', '3', 'Lighting Decoration', ''),
	('150', '111', 'Reciprocating saw blades', NULL),
	('151', '111', 'Router bit set', NULL),
	('152', '112', 'Pliers', NULL),
	('153', '112', 'Wrench', NULL),
	('154', '112', 'Spanner set', NULL),
	('155', '112', 'Thread tap set', NULL),
	('156', '112', 'Spanner', NULL),
	('157', '113', 'Cutters', NULL),
	('158', '113', 'Snips', NULL),
	('159', '113', 'Knife Blade & Cable cutter', NULL),
	('16', '12', 'LED Bulb Light', NULL),
	('160', '113', 'Hacksaw', NULL),
	('161', '113', 'Hand saw', NULL),
	('162', '114', 'Measuring Tape', NULL),
	('163', '114', 'Laser distance detector', NULL),
	('164', '114', 'Calipers', NULL),
	('165', '114', 'Weight Scale', NULL),
	('166', '114', 'Infrared Thermometer', NULL),
	('167', '114', 'Mini Anemometers', NULL),
	('168', '114', 'Inspection Camera', NULL),
	('169', '114', 'Thermal Imager', NULL),
	('17', '12', 'LED Panel Light', NULL),
	('170', '114', 'Optical Level', NULL),
	('171', '114', 'Leveling Staff', NULL),
	('172', '114', 'Measuring Wheel', NULL),
	('173', '116', 'File', NULL),
	('174', '116', 'Hammer', NULL),
	('175', '115', 'Tool Set Box', NULL),
	('176', '115', 'Hydraulic Jack', NULL),
	('177', '115', 'Impact wrench', NULL),
	('178', '115', 'Two Way Wheel Spanner', NULL),
	('179', '115', 'Impact screwdriver', NULL),
	('18', '12', 'LED Tube', NULL),
	('180', '115', 'L type spanner and tools', NULL),
	('181', '115', 'Tyre Repair Kit', NULL),
	('182', '115', 'Jaw puller', NULL),
	('183', '115', 'concrete cutters', NULL),
	('184', '115', 'Ground driller', NULL),
	('185', '115', 'Engine oil', NULL),
	('186', '1', 'Electrical tool', NULL),
	('187', '186', 'Digital Multi-meter', NULL),
	('188', '186', 'Crimper Tools', NULL),
	('189', '186', 'Wire Strippers', NULL),
	('19', '12', 'LED Spotlight', NULL),
	('190', '186', 'Cable Tester', NULL),
	('191', '186', 'Socket Tester', NULL),
	('192', '186', 'Soldering Iron', NULL),
	('193', '186', 'Voltage detector', NULL),
	('194', '2', 'CURRENT TRANSFORMER', NULL),
	('2', '1', 'Electrical & Electronics', 'https://www.hardwarepasal.com/src/img/productcategory/2020-08-26-10-39-25_h3RhsjKdSI_category.png'),
	('20', '12', 'LED High Bay Light', NULL),
	('21', '12', 'LED Down Light', NULL),
	('22', '12', 'LED Ceiling Light', NULL),
	('23', '12', 'Candle Light', NULL),
	('24', '12', 'LED Pendant Light', NULL),
	('25', '12', 'LED Cup', NULL),
	('26', '12', 'LED Wall Light', NULL),
	('27', '14', 'LED PAR Light', NULL),
	('28', '14', 'LED Flashlight', NULL),
	('29', '14', 'LED Traffic Light', NULL),
	('3', '1', 'Lights & Accessories', 'https://www.hardwarepasal.com/src/img/productcategory/2020-08-26-10-46-20_PzG6aKl58S_category.png'),
	('30', '13', 'Outdoor Lighting', NULL),
	('31', '13', 'LED Street Light', NULL),
	('32', '13', 'LED Floodlight', NULL),
	('33', '13', 'LED Wall Washer', NULL),
	('34', '13', 'LED Garden Light', NULL),
	('35', '15', 'LED Strip Light', NULL),
	('36', '15', 'Rope Light', NULL),
	('37', '15', 'Lantern', NULL),
	('38', '15', 'Tiffany Lamp', NULL),
	('39', '15', 'Metal Light', NULL),
	('4', '1', 'Hand Tools\r\n', 'https://www.hardwarepasal.com/src/img/productcategory/2020-08-26-10-51-10_gMJ00JtDds_category.png'),
	('40', '6', 'Sander', NULL),
	('41', '6', 'Air Compressor', NULL),
	('42', '6', 'Cut Off Machine', NULL),
	('43', '6', 'Electric Blower', NULL),
	('44', '6', 'Heat Gun', NULL),
	('45', '6', 'backpack blowers', NULL),
	('46', '6', 'Routers', NULL),
	('47', '6', 'Electric Planer', NULL),
	('48', '6', 'Power Saws', NULL),
	('49', '6', 'Pumps', NULL),
	('5', '1', 'Screwdrivers & Hex key set \r\n', 'https://www.hardwarepasal.com/src/img/productcategory/2020-08-26-10-42-25_SNhD6Wj17j_category.png'),
	('50', '6', 'Electric Trimmers', NULL),
	('51', '6', 'Grinders & Cutters', NULL),
	('52', '6', 'Battery Charger', NULL),
	('53', '6', 'Bench Grinder', NULL),
	('54', '6', 'Battery Tester', NULL),
	('55', '6', 'Drain Cleaner', NULL),
	('56', '6', 'Spare parts', NULL),
	('57', '6', 'Trowel', NULL),
	('58', '6', 'Battery', NULL),
	('59', '6', 'Mixer', NULL),
	('6', '1', 'Power Tools', 'https://www.hardwarepasal.com/src/img/productcategory/2020-08-26-10-51-54_4NwYHWpI57_category.png'),
	('60', '6', 'Generator', NULL),
	('61', '48', 'Circular Saw', NULL),
	('62', '48', 'Mitre Saw', NULL),
	('63', '48', 'Jigsaw', NULL),
	('64', '48', 'Reciprocating Saw', NULL),
	('65', '49', 'Peripheral Pump', NULL),
	('66', '49', 'Submersible Pump', NULL),
	('67', '49', 'Crompton Pumps', NULL),
	('68', '49', 'Gasoline Water Pump', NULL),
	('69', '51', 'Angle Grinder', NULL),
	('7', '1', 'Drill machine', 'https://www.hardwarepasal.com/src/img/productcategory/2020-08-26-10-43-12_WTp1FppeEt_category.png'),
	('70', '51', 'Die Grinder', NULL),
	('71', '51', 'Marble Cutter', NULL),
	('72', '51', 'angle polisher', NULL),
	('73', '56', 'Rotor', NULL),
	('74', '56', 'Stator', NULL),
	('75', '56', 'carbon brush', NULL),
	('76', '56', 'Gear', NULL),
	('77', '56', 'Armature', NULL),
	('78', '56', 'Motor', NULL),
	('79', '56', 'Gear box', NULL),
	('8', '1', 'Safety & Welding equipment \r\n', 'https://www.hardwarepasal.com/src/img/productcategory/2020-08-26-10-44-55_IQQVfuS6SU_category.png'),
	('80', '56', 'Stop lever', NULL),
	('81', '56', 'Cylinder hose', NULL),
	('82', '60', 'Diesel Generator', NULL),
	('83', '60', 'Gasoline Generator', NULL),
	('84', '7', 'Cordless Drill', NULL),
	('85', '7', 'Impact Drill', NULL),
	('86', '7', 'Impact Drill Set Box', NULL),
	('87', '7', 'Electric Drill Machines', NULL),
	('88', '7', 'Hammer Drills', NULL),
	('89', '7', 'Drill Press', NULL),
	('9', '1', 'Gardening tool\r\n', 'https://www.hardwarepasal.com/src/img/productcategory/2020-08-26-10-41-47_PllNoEtvgf_category.png'),
	('90', '7', 'Drilling Motor', NULL),
	('91', '88', 'Demolition Hammer', NULL),
	('92', '88', 'Rotary hammer', NULL),
	('93', '8', 'Safety Equipments', NULL),
	('94', '8', 'Welding Equipments', NULL),
	('95', '8', 'High Pressure Washer', NULL),
	('96', '9', 'Chain saw', NULL),
	('97', '9', 'Lawn Mower', NULL),
	('98', '9', 'Garden Tool Set', NULL),
	('99', '9', 'Garden hose', NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table test.condition
CREATE TABLE IF NOT EXISTS `condition` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.condition: ~2 rows (approximately)
/*!40000 ALTER TABLE `condition` DISABLE KEYS */;
INSERT INTO `condition` (`id`, `name`) VALUES
	('1a83bc28-9483-11eb-a8b3-0242ac130003', 'New'),
	('1a83bea8-9483-11eb-a8b3-0242ac130003', 'Old');
/*!40000 ALTER TABLE `condition` ENABLE KEYS */;

-- Dumping structure for table test.currency_symbol
CREATE TABLE IF NOT EXISTS `currency_symbol` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.currency_symbol: ~2 rows (approximately)
/*!40000 ALTER TABLE `currency_symbol` DISABLE KEYS */;
INSERT INTO `currency_symbol` (`id`, `name`) VALUES
	('e94fddf6-9484-11eb-a8b3-0242ac130003', 'SYP'),
	('e95156cc-9484-11eb-a8b3-0242ac130003', 'USD');
/*!40000 ALTER TABLE `currency_symbol` ENABLE KEYS */;

-- Dumping structure for procedure test.GetAllChildCategoryByParentId
DELIMITER //
CREATE PROCEDURE `GetAllChildCategoryByParentId`(
    IN  categoryId INT,
    OUT childIds VARCHAR(20)
)
BEGIN

	 SET childIds = (SELECT id FROM categories WHERE parentId = categoryId
						UNION
						SELECT id FROM categories WHERE parentId IN (SELECT id FROM categories WHERE parentId = categoryId));

END//
DELIMITER ;

-- Dumping structure for table test.made_in
CREATE TABLE IF NOT EXISTS `made_in` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.made_in: ~1 rows (approximately)
/*!40000 ALTER TABLE `made_in` DISABLE KEYS */;
INSERT INTO `made_in` (`id`, `name`) VALUES
	('f849d132-9483-11eb-a8b3-0242ac130003', 'china');
/*!40000 ALTER TABLE `made_in` ENABLE KEYS */;

-- Dumping structure for table test.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `subtotal` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `shippingFee` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `total` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `paymentMethod` int(11) NOT NULL,
  `orderDate` datetime NOT NULL,
  `paymentDate` date DEFAULT NULL,
  `shipDate` date DEFAULT NULL,
  `completedDate` date DEFAULT NULL,
  `shippingInformation` varchar(500) DEFAULT NULL,
  `deliveryAddress` varchar(500) NOT NULL,
  `customerId` varchar(100) NOT NULL,
  `customerMessage` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.orders: ~4 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `status`, `subtotal`, `shippingFee`, `total`, `paymentMethod`, `orderDate`, `paymentDate`, `shipDate`, `completedDate`, `shippingInformation`, `deliveryAddress`, `customerId`, `customerMessage`) VALUES
	('2021071811Ib2', 1, 130152.800000, 3000.000000, 133152.800000, 1, '2021-07-18 11:04:03', NULL, NULL, NULL, NULL, 'Ammaro| (01121184536) |a-63-6, 3resident, milawati , Ayer Hitam , 53000 , Johor', '4b27aa50-996a-11eb-bd9d-00ff5ce25614', NULL),
	('202107182Ap8', 1, 38800.000000, 3000.000000, 41800.000000, 1, '2021-07-18 02:01:52', NULL, NULL, NULL, 'Shipping by DHL', 'Ammar Alziebak| (01121175143) |m-city , jalan 202, A-35-1 , Bukit Jalil , 52100 , Kuala Lumpur', '4b27aa50-996a-11eb-bd9d-00ff5ce25614', NULL),
	('2021071910VGx', 1, 145152.800000, 3000.000000, 148152.800000, 2, '2021-07-19 10:29:57', NULL, NULL, NULL, NULL, 'Ammar Alziebak| (01121175143) |m-city , jalan 202, A-35-1 , Bukit Jalil , 52100 , Kuala Lumpur', '4b27aa50-996a-11eb-bd9d-00ff5ce25614', NULL),
	('2021071910ZL0', 1, 145152.800000, 3000.000000, 148152.800000, 1, '2021-07-19 10:43:59', NULL, NULL, NULL, NULL, 'Ammaro| (01121184536) |a-63-6, 3resident, milawati , Ayer Hitam , 53000 , Johor', '4b27aa50-996a-11eb-bd9d-00ff5ce25614', 'test');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table test.order_details
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` varchar(100) NOT NULL,
  `orderId` varchar(100) NOT NULL,
  `productId` varchar(100) NOT NULL,
  `variationDetailsId` varchar(100) DEFAULT NULL,
  `originalPrice` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `salePrice` decimal(20,6) NOT NULL DEFAULT 0.000000,
  `qty` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.order_details: ~56 rows (approximately)
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` (`id`, `orderId`, `productId`, `variationDetailsId`, `originalPrice`, `salePrice`, `qty`, `status`) VALUES
	('202107181103593J4', '2021071811EA2', '39aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 5, 1),
	('202107181103595Ym', '2021071811EA2', '3d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 19400.000000, 2, 1),
	('20210718110359bxl', '2021071811EA2', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a28852ec-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210718110359DhB', '2021071811EA2', '8d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 12000.000000, 5, 1),
	('20210718110359DoZ', '2021071811EA2', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2884c66-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210718110359Tx7', '2021071811EA2', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2885166-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210718110359ygV', '2021071811EA2', '19aec240-9438-11eb-a210-00ff5ce25614', 'h6884c66-9478-11eb-a8b3-0242ac130003', 5000.000000, 4500.000000, 1, 1),
	('202107181104030oN', '2021071811Ib2', '39aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 5, 1),
	('202107181104035pv', '2021071811Ib2', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2885166-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('202107181104036QU', '2021071811Ib2', '19aec240-9438-11eb-a210-00ff5ce25614', 'h6884c66-9478-11eb-a8b3-0242ac130003', 5000.000000, 4500.000000, 1, 1),
	('202107181104037AR', '2021071811Ib2', '8d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 12000.000000, 5, 1),
	('20210718110403K5d', '2021071811Ib2', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2884c66-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210718110403nfj', '2021071811Ib2', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a28852ec-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210718110403uvA', '2021071811Ib2', '3d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 19400.000000, 2, 1),
	('2021071820142JGT', '202107182u2V', '3d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 19400.000000, 2, 1),
	('2021071820152LH6', '202107182Ap8', '3d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 19400.000000, 2, 1),
	('202107191029462hB', '202107191089K', '19aec240-9438-11eb-a210-00ff5ce25614', 'h6884c66-9478-11eb-a8b3-0242ac130003', 5000.000000, 4500.000000, 1, 1),
	('202107191029466Pn', '202107191089K', '8d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 12000.000000, 5, 1),
	('202107191029468Yr', '202107191089K', '3d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 19400.000000, 2, 1),
	('20210719102946gg4', '202107191089K', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2884c66-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719102946Njy', '202107191089K', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2885166-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719102946RFN', '202107191089K', '49aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 3, 1),
	('20210719102946XGN', '202107191089K', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a28852ec-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719102946yzN', '202107191089K', '39aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 5, 1),
	('202107191029520yC', '2021071910AQl', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a28852ec-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('2021071910295251e', '2021071910AQl', '49aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 3, 1),
	('202107191029529gV', '2021071910AQl', '3d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 19400.000000, 2, 1),
	('20210719102952dQq', '2021071910AQl', '19aec240-9438-11eb-a210-00ff5ce25614', 'h6884c66-9478-11eb-a8b3-0242ac130003', 5000.000000, 4500.000000, 1, 1),
	('20210719102952KQt', '2021071910AQl', '39aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 5, 1),
	('20210719102952m0E', '2021071910AQl', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2885166-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719102952sFY', '2021071910AQl', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2884c66-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719102952VzM', '2021071910AQl', '8d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 12000.000000, 5, 1),
	('20210719102957M8J', '2021071910VGx', '19aec240-9438-11eb-a210-00ff5ce25614', 'h6884c66-9478-11eb-a8b3-0242ac130003', 5000.000000, 4500.000000, 1, 1),
	('20210719102957q3r', '2021071910VGx', '39aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 5, 1),
	('20210719102957Qo7', '2021071910VGx', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2884c66-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719102957RMx', '2021071910VGx', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2885166-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719102957Tyr', '2021071910VGx', '49aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 3, 1),
	('20210719102957vkV', '2021071910VGx', '8d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 12000.000000, 5, 1),
	('20210719102957vLh', '2021071910VGx', '3d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 19400.000000, 2, 1),
	('20210719102957wHf', '2021071910VGx', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a28852ec-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719104255apF', '2021071910jhk', '49aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 3, 1),
	('20210719104255Apk', '2021071910jhk', '8d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 12000.000000, 5, 1),
	('20210719104255c9G', '2021071910jhk', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a28852ec-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719104255DFU', '2021071910jhk', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2885166-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719104255rxp', '2021071910jhk', '3d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 19400.000000, 2, 1),
	('20210719104255SgL', '2021071910jhk', '39aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 5, 1),
	('20210719104255TXT', '2021071910jhk', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2884c66-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719104255ug6', '2021071910jhk', '19aec240-9438-11eb-a210-00ff5ce25614', 'h6884c66-9478-11eb-a8b3-0242ac130003', 5000.000000, 4500.000000, 1, 1),
	('202107191043591gL', '2021071910ZL0', '39aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 5, 1),
	('202107191043598Xv', '2021071910ZL0', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2884c66-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719104359fZR', '2021071910ZL0', '49aec240-9438-11eb-a210-00ff5ce25614', NULL, 5000.000000, 5000.000000, 3, 1),
	('20210719104359gk4', '2021071910ZL0', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a28852ec-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719104359kIm', '2021071910ZL0', '8d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 12000.000000, 5, 1),
	('20210719104359kPA', '2021071910ZL0', '3d6c2cc2-9435-11eb-a210-00ff5ce25614', NULL, 20000.000000, 19400.000000, 2, 1),
	('20210719104359lqc', '2021071910ZL0', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', 'a2885166-9478-11eb-a8b3-0242ac130003', 20000.000000, 17600.000000, 2, 1),
	('20210719104359y6U', '2021071910ZL0', '19aec240-9438-11eb-a210-00ff5ce25614', 'h6884c66-9478-11eb-a8b3-0242ac130003', 5000.000000, 4500.000000, 1, 1);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;

-- Dumping structure for table test.page
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `pageCode` varchar(50) NOT NULL,
  `contentData` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table test.page: ~10 rows (approximately)
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` (`id`, `name`, `pageCode`, `contentData`) VALUES
	(1, 'About Us', 'About-Us', '  <div class="container">\r\n  <div class="text-center">\r\n  </div>\r\n  <div class="ckeditor-content clearfix"><div class="col-md-12" style="margin-bottom: 40px;">\r\n  <p style="font-family: Muli-Bold; font-size: 25px; line-height: 1.2;">MR.DIY first opened one store on Jalan Tuanku Abdul Rahman in July 2005 and has now grown to become the largest home improvement retailer in the region with stores across Malaysia.</p>\r\n  </div>\r\n  <div class="row">\r\n  <div class="col-md-4" style="margin: 40px 0px 40px;">\r\n  <div class="column-title" style="font-family: Muli-ExtraBold; text-transform: uppercase; font-size: 40px; padding-top: 15px; text-align: center;">700+</div>\r\n  <hr style="width: 30px; height: 2px; background: #ffc425; display: block;">\r\n  <p style="font-family: Muli-Light; font-size: 16px; color: #8f8f8f; margin: 0px; text-align: center;">Stores throughout Malaysia</p>\r\n  </div>\r\n  <div class="col-md-4" style="margin: 40px 0px 40px;">\r\n  <div class="column-title" style="font-family: Muli-ExtraBold; text-transform: uppercase; font-size: 40px; padding-top: 15px; text-align: center;">10,000</div>\r\n  <hr style="width: 30px; height: 2px; background: #ffc425; display: block;">\r\n  <p style="font-family: Muli-Light; font-size: 16px; color: #8f8f8f; margin: 0px; text-align: center;">Average square feet per store</p>\r\n  </div>\r\n  <div class="col-md-4" style="margin: 40px 0px 40px;">\r\n  <div class="column-title" style="font-family: Muli-ExtraBold; text-transform: uppercase; font-size: 40px; padding-top: 15px; text-align: center;">80 million</div>\r\n  <hr style="width: 30px; height: 2px; background: #ffc425; display: block;">\r\n  <p style="font-family: Muli-Light; font-size: 16px; color: #8f8f8f; margin: 0px; text-align: center;">Customers served yearly</p>\r\n  </div>\r\n  </div>\r\n  <div class="col-md-12" style="margin: 40px 0px 40px;">\r\n  <p style="font-family: Muli; font-size: 17px; color: #000000; text-align: justify;">Most MR.DIY stores encompass about average 10,000 square feet per store, providing a comfortable and wholesome family shopping experience. MR.DIY serves more than 80 million customers yearly at all stores in Malaysia and Brunei, as well as our <a href="https://www.mrdiy.com.my/" target="_blank" style="color: #ed1c24;" rel="noopener noreferrer">online store</a><span>.</span><br><br>All MR.DIY stores are managed directly and in collaboration with large retailers and mall owners, operating as a mini anchor tenant in Tesco, Giant, AEON and AEON BIG. <br><br>With ten categories — Hardware, Household, Electrical, Furnishing, Car Accessories, Stationery &amp; Sports, Toys, Gifts, Computer &amp; Mobile Accessories and Jewellery &amp; Cosmetics — in each store, MR.DIY offers a wide selection of more than 16,600 types of products at \'Always Low Prices\'.</p>\r\n  </div>\r\n  <div class="row" style="margin: 80px 0px 80px; background-color: #f6f6f6; padding: 30px;">\r\n  <div class="col-md-4">  \r\n  <div class="column-title" style="font-family: Muli-ExtraBold; text-transform: uppercase; font-size: 20px; padding-top: 15px; text-align: center;">Always</div>\r\n  <hr style="width: 30px; height: 2px; background: #ffc425; display: block; /* margin: 1rem 0;">\r\n  <p style="font-size: 14px; text-align: center;">Low Prices</p>\r\n  </div>\r\n  <div class="col-md-4">  \r\n  <div class="column-title" style="font-family: Muli-ExtraBold; text-transform: uppercase; font-size: 20px; padding-top: 15px; text-align: center;">Wide</div>\r\n  <hr style="width: 30px; height: 2px; background: #ffc425; display: block; /* margin: 1rem 0;">\r\n  <p style="font-size: 14px; text-align: center;">Product Range</p>\r\n  </div>\r\n  <div class="col-md-4">  \r\n  <div class="column-title" style="font-family: Muli-ExtraBold; text-transform: uppercase; font-size: 20px; padding-top: 15px; text-align: center;">Convenient</div>\r\n  <hr style="width: 30px; height: 2px; background: #ffc425; display: block; /* margin: 1rem 0;">\r\n  <p style="font-size: 14px; text-align: center;">Location Nationwide</p>\r\n  </div>\r\n  </div>\r\n  <div class="row align-items-center mt-5">\r\n  <div class="col-md-6 order-md-1 order-2" style="padding-bottom: 15px;">\r\n  <p style="font-family: Muli-ExtraBold; font-size: 25px; color: #ed1b23;">Our Vision</p>\r\n  <strong>To be the largest home improvement retailer in Malaysia and Brunei&nbsp;</strong></div>\r\n  <div class="col-md-6 order-md-2 order-1"><img src="https://www.mrdiy.com/files/editor_files/images/Home/English/Vision.jpg" caption="false" class="img-fluid" alt="MR.DIY Malaysia"></div>\r\n  </div>\r\n  <div class="row align-items-center mb-5">\r\n  <div class="col-md-6" style="margin-top: 30px;" cmcaret=""><img src="https://www.mrdiy.com/files/editor_files/images/Home/English/Vision2.png" caption="false" class="img-fluid" alt="MR.DIY Malaysia"></div>\r\n  <div class="col-md-6">\r\n  <p style="font-family: Muli-ExtraBold; font-size: 25px; color: #ed1a22;">Our Mission</p>\r\n  <span style="font-family: Muli-Bold; font-size: 16px; color: #000000;">To create a globally recognised retail brand. <br>To offer diverse retail experience catering for different customer segments.<br>To maintain wide variety, good quality and value for money; <br>holding through of our Company’s motto “ALWAYS LOW PRICES”.</span></div>\r\n  </div>\r\n  <div class="col-md-12 mt-5">\r\n  <p style="font-family: Muli-ExtraBold; font-size: 25px; text-align: center; color: #ed1b23;">Business Partners</p>\r\n  </div>\r\n  <div class="d-flex flex-wrap mb-5">\r\n  <div class="img text-center" style="flex: 1;"><img src="https://www.mrdiy.com/files/editor_files/logo01_2.png" caption="false"></div>\r\n  <div class="img text-center" style="flex: 1;"><img src="https://www.mrdiy.com/files/editor_files/logo03_2.png" caption="false"></div>\r\n  <div class="img text-center" style="flex: 1;"><img src="https://www.mrdiy.com/files/editor_files/logo04_2.png" caption="false"></div>\r\n  <div class="img text-center" style="flex: 1;"><img src="https://www.mrdiy.com/files/editor_files/logo05_2.png" caption="false"></div>\r\n  </div></div> </div>'),
	(2, 'Contact Us', 'Contact-Us', '<div class="grid12-4 no-left-gutter"><div class="block-content"><h3 class="page-title"><span class="base" data-ui-id="page-title-wrapper">MR. D.I.Y. ECommerce [M] Sdn Bhd</span></h3><div class="feature indent first"><i class="ic fa fa-building"></i><p class="no-margin ">Lot 1907, Jalan KPB 11, Kawasan Perindustrian Balakong, 43300 Seri Kembangan, Selangor D.E, Malaysia.</p></div><div class="feature indent last"><i class="ic fa fa-envelope"></i><p class="no-margin " style="color: #f77b00;">ecom_helpdesk@mrdiy2u.com</p><p class="no-margin " style="color: #f77b00;"><span style="color: #000000;">(9.00 am – 6.00 pm, Monday – Friday)</span></p></div></div></div>'),
	(3, 'Help Centre', 'Help-Centre', NULL),
	(4, 'How To Buy', 'How-To-Buy', NULL),
	(5, 'Shipping Info', 'Shipping-Info', NULL),
	(6, 'Return & Refund', 'Return-Refund', NULL),
	(7, 'Careers', 'Careers', NULL),
	(8, 'Policies', 'Policies', NULL),
	(9, 'Privacy Policy', 'Privacy-Policy', NULL),
	(10, 'Branches', 'Branches', NULL);
/*!40000 ALTER TABLE `page` ENABLE KEYS */;

-- Dumping structure for table test.payment_method
CREATE TABLE IF NOT EXISTS `payment_method` (
  `value` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table test.payment_method: ~2 rows (approximately)
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` (`value`, `name`) VALUES
	(1, 'Cash On Delivery'),
	(2, 'Transfer');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;

-- Dumping structure for table test.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` varchar(100) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `productNo` varchar(100) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(20,6) DEFAULT NULL,
  `usdPrice` decimal(20,6) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `madeInId` varchar(100) DEFAULT NULL,
  `conditionValue` tinyint(1) DEFAULT 0,
  `warrantyPeriodId` varchar(100) DEFAULT NULL,
  `categoryId` varchar(100) DEFAULT NULL,
  `brandId` varchar(100) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `currencySymbolId` varchar(100) DEFAULT NULL,
  `productImage` varchar(100) DEFAULT NULL,
  `breadcrumb` varchar(200) DEFAULT NULL,
  `published` tinyint(1) DEFAULT 1,
  `expiryDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.product: ~53 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `name`, `productNo`, `description`, `price`, `usdPrice`, `discount`, `madeInId`, `conditionValue`, `warrantyPeriodId`, `categoryId`, `brandId`, `stock`, `currencySymbolId`, `productImage`, `breadcrumb`, `published`, `expiryDate`) VALUES
	('19aec240-9438-11eb-a210-00ff5ce25614', 'COPPER PLATE SHEET /SHIM /FLAT BAR /CUSTOMIZE', NULL, 'COPPER PLATE SHEET SHIM FLAT BAR  MATERIAL \r\n** More exclusive price or a different size. Please drop us an inquiry at our website: fnpbiz.com **\r\n\r\nSpecification:\r\nMaterials: Copper Bar\r\nApplication: Conductivity\r\nCode : JIS H3100 C1100\r\nShape: Flat Bar\r\nExterior Finish: Clean, New', 5000.000000, NULL, 10, NULL, NULL, NULL, '11', NULL, NULL, NULL, 'https://cf.shopee.com.my/file/97a09922b14b62663508c6ed55f0656e', 'Home,electric,metal,copper', NULL, NULL),
	('1d6c2cc2-9435-11eb-a210-00ff5ce25614', '0.3mm/0.4mm Multicolor copper wire Beading Wire Beading thread Jewelry Cord String cord Beading line DIY Craft Making 11 colors', 'A1234', '<span>Welcome to the hzqiaoqiao.my Store<br/>\r\n-------------------------------------------------- ---<br/>\r\n🌹أجمل وأروع اغاني🌹2020 🌹\r\n<br/>\r\n☆☆☆ Package Description ☆☆☆<br/>\r\n☆ Includes Package<br/>\r\n→ The product you choose！<br/>\r\n☆ Best Service:<br/>\r\nAvailable!<br/>\r\nAbout 5-11 days arrived your address!<br/>\r\n100% Satisfaction Guarantee And Premium Quality Guarantee! Any problem when you get the package, just contact us。<br/>\r\n<br/>\r\n☆ Dear Friend! You may find that someone is selling at a lower price than us but they cannot guarantee the same quality and service as we do. Thank you!<br/>\r\n-------------------------------------------------- ---<br/>\r\nItem: Beading Wire<br/>\r\nMaterial:copper<br/>\r\nSize: 0.3mm-15meters/0.4mm-8meters<br/>\r\nWeight: 15g<br/>\r\nApplication: Jewelry Making DIY</span><br/>', 20000.000000, 20.000000, 12, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '11', '1', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/d250c7e654675b6856389b848df1c138', 'Home,Clothing,Men\'s-Clothing,T-shirts', 1, '2021-04-06'),
	('29aec240-9438-11eb-a210-00ff5ce25614', 'ABB SH201L 1POLE 2POLE 3POLE MCB 6KA (SWITZERLAND BRAND)', NULL, '📐 Product Description 📏\r\n\r\n📍 Features :\r\n● BRAND: ABB\r\n● Model: SH201 Series\r\n● MALAYSIA SIRIM APPROVE\r\n● Number of pole :  1P/2P/3P\r\n● Rated current :  C6 6A, C10 10A, C16 16A, C20 20A, C32 32A, C40 40A.\r\n● Rated voltage :  240 V\r\n● Rated short-circuit breaking capacity :  6 kA\r\n● Tripping Characteristic: C', 5000.000000, NULL, NULL, NULL, NULL, NULL, '11', NULL, NULL, NULL, 'https://cf.shopee.com.my/file/bcaa02e833fa3c2f31e0f7f54d7c543a', 'Home,Power & Hand Tools,Hand Tools,Wrenches', NULL, NULL),
	('2d6c2cc2-9435-11eb-a210-00ff5ce25614', 'Cable Lug 1.5mm 2.5mm 4mm 6mm 10mm 16mm 25mm Ring Terminals, Connectors, Tin Plated Pure Copper', 'A1234', 'Product Description\r\nMaterial:Tin Plated Copper\r\nColor: Silver\r\nSize viable : 1.5mm, 2.5mm, 4mm, 6mm, 10mm, 16mm, 25mm \r\nFeatures:\r\n●100% brand new and high quality.\r\n●Premium quality copper material, environmentally friendly, safe for using\r\n\r\n*Picture is for illustration Purpose, if you need different hole size kindly pm us*\r\n\r\nReady Stock!', 20000.000000, 20.000000, 19, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '11', '1', 30, '833d08e6-9481-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/ef10743fb45909f653e9986f00d63e66', 'Home,Clothing,Men\'s-Clothing,T-shirts', 1, NULL),
	('39aec240-9438-11eb-a210-00ff5ce25614', 'Milwaukee 12Volt Drill Driver M12BD', NULL, '        <div align="center" dir="rtl">\r\n        \r\n                <table class="MsoNormalTable" dir="rtl" border="1" cellspacing="0" cellpadding="0" style="border-collapse:collapse;border:none;mso-border-alt:double #003366 1.5pt;\r\n         mso-padding-alt:0in 2.85pt 0in 2.85pt;mso-table-dir:bidi;mso-border-insideh:\r\n         .5pt solid #003366;mso-border-insidev:.5pt solid #003366">\r\n                  <tbody><tr style="mso-yfti-irow:0"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" class="arhead"> \r\n                    <p class="MsoNormal" align="center">\r\n                    <span lang="AR-SY" dir="RTL">رقم الكود</span><span><o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" class="arhead"> \r\n                      <p class="MsoNormal" dir="RTL" style="direction:\r\n          rtl;unicode-bidi:embed" align="center"><span lang="AR-SY" style="language:\r\n          AR-SY">اسم المادة ومواصفاتها</span><span dir="LTR"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" class="arhead"> \r\n                    <p class="MsoNormal" align="center">\r\n                    <span class="GramE"><span lang="AR-SY" dir="RTL">الطراز</span></span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" class="arhead"> \r\n                    <p class="MsoNormal" align="center">\r\n                    <span class="GramE"><span lang="AR-SY" dir="RTL">التيار</span></span><span lang="AR-SY" dir="RTL" style="mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-language:\r\n          AR-SY;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" class="arhead"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">شدة القطع</span><o:p></o:p></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" class="arhead"> \r\n                    <p class="MsoNormal" align="center">\r\n                    <span class="GramE"><span lang="AR-SY" dir="RTL">العيار<br>\r\n                    الحراري</span></span><span lang="AR-SY" dir="RTL" style="mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-language:\r\n          AR-SY;font-weight:normal"><o:p></o:p></span></p>\r\n                      </td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" class="arhead"> \r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">العيار</span></span><span lang="AR-SY" dir="RTL"> المغنطيسي</span><o:p></o:p></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:1;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511101<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> ثابت </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS50NB<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>20A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>15KA<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:2;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511102<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> ثابت </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS50NB<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>30A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>15KA<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:3;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511103<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> ثابت </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS50NB<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>40A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>15KA<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:4;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511104<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> ثابت </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS50NB<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>50A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>15KA<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:5;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511301<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS125NJ<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>50A<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>30KA<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span>32-50A<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:6;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511302<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS125NJ<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>63A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>30KA<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span>40-63A<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:7;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511303<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS125NJ<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>100A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>30KA<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span>63-100A<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:8;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511304<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS125NJ<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>125A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>30KA<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span>80-125A<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:9;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511401<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS160NJ</span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>160A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>35KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span>100-160A<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:10;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511501<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> ثابت </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XE225NS</span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>150A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>18KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:11;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511502<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> ثابت </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XE225NS</span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>175A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>18KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:12;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511503<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> ثابت </span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XE225NS</span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>200A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>18KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:13;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511504<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> ثابت</span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XE225NS</span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>225A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>18KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:14;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511701<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري</span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS250NJ<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>250A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>35KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>160-250A</span><span lang="AR-SY" dir="RTL"><o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span lang="AR-SY" dir="RTL">ثابت<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:15;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511801<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري</span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS400CJ<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>400A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>35KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>250-400A</span><span lang="AR-SY" dir="RTL"><o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span>5-10In<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:16;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>511901<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري الكتروني</span><span style="mso-bidi-font-family:\r\n          &quot;Times New Roman&quot;;language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS400SE-C<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>400A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>35KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>200-400A<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" dir="RTL" style="text-align:center;direction:\r\n          rtl;unicode-bidi:embed"><span lang="AR-SY" style="language:\r\n          AR-SY">حتى </span><span dir="LTR">12In</span><span lang="AR-SY"> و تعيير للزمن<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:17;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>512101<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري</span><span style="mso-bidi-font-family:&quot;Times New Roman&quot;;\r\n          language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS630CJ<o:p></o:p></span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>630A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>45KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>400-630A</span><span lang="AR-SY" dir="RTL"><o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" style="text-align:center"><span>5-10In<span lang="AR-SY" dir="RTL"><o:p></o:p></span></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:18;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>512201<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري الكتروني</span><span style="mso-bidi-font-family:\r\n          &quot;Times New Roman&quot;;language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS800SE</span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>800A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>50KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>400-800A<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" dir="RTL" style="text-align:center;direction:\r\n          rtl;unicode-bidi:embed"><span lang="AR-SY" style="language:\r\n          AR-SY">حتى </span><span dir="LTR">12In</span><span lang="AR-SY"> و تعيير للزمن<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:19;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>512401<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري الكتروني</span><span style="mso-bidi-font-family:\r\n          &quot;Times New Roman&quot;;language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS1250SE</span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>1000A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>85KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>500-1000A<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" dir="RTL" style="text-align:center;direction:\r\n          rtl;unicode-bidi:embed"><span lang="AR-SY" style="language:\r\n          AR-SY">حتى </span><span dir="LTR">12In</span><span lang="AR-SY"> و تعيير للزمن<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:20;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>512402<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع \r\n                        حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري الكتروني</span><span style="mso-bidi-font-family:\r\n          &quot;Times New Roman&quot;;language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS1250SE</span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>1250A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>85KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>630-1250A<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" dir="RTL" style="text-align:center;direction:\r\n          rtl;unicode-bidi:embed"><span lang="AR-SY" style="language:\r\n          AR-SY">حتى </span><span dir="LTR">12In</span><span lang="AR-SY"> و تعيير للزمن<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                  <tr class="textar" style="mso-yfti-irow:21;mso-yfti-lastrow:yes;height:19.85pt"> \r\n                    <td width="76" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>512601<o:p></o:p></span></p></td>\r\n                    <td width="136" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span lang="AR-SY" dir="RTL">قاطع حراري مغناطيسي<o:p></o:p></span></p>\r\n                      <p class="MsoNormal" align="center"><span class="GramE">\r\n                      <span lang="AR-SY" dir="RTL">ثلاثي</span></span><span lang="AR-SY" dir="RTL"> عياري الكتروني</span><span style="mso-bidi-font-family:\r\n          &quot;Times New Roman&quot;;language:AR-SA;font-weight:normal"><o:p></o:p></span></p></td>\r\n                    <td width="95" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> \r\n                    <p class="MsoNormal" align="center"><span>XS1600SE</span></p></td>\r\n                    <td width="53" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>1600A<o:p></o:p></span></p></td>\r\n                    <td width="60" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>100KA<o:p></o:p></span></p></td>\r\n                    <td width="87" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in" dir="ltr"> <p class="MsoNormal" align="center" style="text-align:center"><span>800-1600A<o:p></o:p></span></p></td>\r\n                    <td width="113" style="padding-left:5.4pt; padding-right:5.4pt; padding-top:0in; padding-bottom:0in"> <p class="MsoNormal" align="center" dir="RTL" style="text-align:center;direction:\r\n          rtl;unicode-bidi:embed"><span lang="AR-SY" style="language:\r\n          AR-SY">حتى </span><span dir="LTR">12In</span><span lang="AR-SY"> و تعيير للزمن<o:p></o:p></span></p></td>\r\n                  </tr>\r\n                </tbody></table>\r\n        </div>', 5000.000000, NULL, NULL, NULL, NULL, NULL, '84', '13', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2021-04-17-05-29-03_5uMCiTnEe7product.jpg', 'Home,Cordless Drill', NULL, NULL),
	('3d6c2cc2-9435-11eb-a210-00ff5ce25614', 'CDLI20012 20 volt cordless drill in', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 3, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '84', '10', 30, '833d08e6-9481-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-04-06-05-18-25_uATYsRie4Fproduct.png', 'Home,Cordless Drill', 1, NULL),
	('49aec240-9438-11eb-a210-00ff5ce25614', 'Ingco 810 Watt Impact Drill ID8108', NULL, '🔥🔥🔥🔥🔥🔥', 5000.000000, NULL, NULL, NULL, NULL, NULL, '85', '10', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2021-06-11-13-30-33_2xlp0XDvUEproduct.jpg', 'Home,Impact Drill', NULL, NULL),
	('4d6c2cc2-9435-11eb-a210-00ff5ce25614', 'Dewalt 650 Watt Impact Drill DWD024', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '85', '1', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-01-03-09-28-34_TAEo4p1b4sproduct.jpg', 'Home,Impact Drill', 1, NULL),
	('59aec240-9438-11eb-a210-00ff5ce25614', 'Daewoo 500W Impact Drill Impact Dri', NULL, '😜😀😊😃', 5000.000000, NULL, NULL, NULL, NULL, NULL, '85', '3', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2018-09-24-07-04-22_Gg8vVgntI0product.jpg', 'Home,Impact Drill', NULL, NULL),
	('5d6c2cc2-9435-11eb-a210-00ff5ce25614', 'HKTHP11151 115 PCS Tool set', 'A1234', '1', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '86', '10', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-04-06-05-22-55_xfoumWhGRkproduct.jpg', 'Home,Impact Drill Set Box', 1, NULL),
	('69aec240-9438-11eb-a210-00ff5ce25614', 'Bosch 600 Watt Impact Drill Tool Se', '', '1', 5000.000000, NULL, 30, NULL, NULL, NULL, '86', '2', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2020-07-29-13-08-02_4IitLK22Cuproduct.jpeg', 'Home,Impact Drill Set Box', 1, NULL),
	('6d6c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 500W Electric drill ED50028', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 7, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '87', '10', 15, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2019-04-10-09-55-40_2pcQtbdZ83product.jpg', 'Home,Electric Drill Machines', 1, '2021-06-20'),
	('79aec240-9438-11eb-a210-00ff5ce25614', 'Ingco 1300 Watt Demolition Breaker', NULL, '123', 5000.000000, NULL, NULL, NULL, NULL, NULL, '91', '10', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2021-06-11-13-51-43_lN3taIwSPOproduct.jpg', 'Home,Hammer Drills,Drill machine,Demolition Hammer', NULL, NULL),
	('7d6c2cc2-9435-11eb-a210-00ff5ce25614', 'Dewalt 1150 Watt Chipping Hammer SD', 'A1234', '123', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '91', '1', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-04-19-12-54-28_RIqZ17B6J2product.jpg', 'Home,Hammer Drills,Drill machine,Demolition Hammer', 1, NULL),
	('89aec240-9438-11eb-a210-00ff5ce25614', 'Dewalt 1500 Watt Demolition Hammer', NULL, '123', 5000.000000, NULL, NULL, NULL, NULL, NULL, '91', '1', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2020-04-17-10-14-46_lEeLF6WuWFproduct.jpg', 'Home,Hammer Drills,Drill machine,Demolition Hammer', NULL, NULL),
	('8d6c2cc2-9435-11eb-a210-00ff5ce25614', 'Dewalt 16 kg Demolition Hammer 30mm', 'A1234', '123', 20000.000000, 20.000000, 40, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '91', '1', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-08-23-00-54-47_2M9Yb8F8uCproduct.jpg', 'Home,Hammer Drills,Drill machine,Demolition Hammer', 1, NULL),
	('916c2cc2-9435-11eb-a210-00ff5ce25614', 'Daewoo 500W Rotary Hammer Heavy Dut', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '92', '3', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2018-09-24-06-31-49_AKNTV7ahgGproduct.jpg', 'Home,Hammer Drills,Drill machine,Rotary hammer', 1, NULL),
	('91aec240-9438-11eb-a210-00ff5ce25614', 'Makita MT Series 710W Rotary Hammer', NULL, '1', 5000.000000, NULL, 22, NULL, NULL, NULL, '92', '13', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2018-09-24-06-24-29_SxKSdqPFNaproduct.jpg', 'Home,Hammer Drills,Drill machine,Rotary hammer', NULL, NULL),
	('926c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 1250 Watt Rotary Hammer RH120', 'A1234', '1', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 1, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '92', '10', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-14-06-50_fRtKQ6UqSHproduct.jpg', 'Home,Hammer Drills,Drill machine,Rotary hammer', 1, NULL),
	('92aec240-9438-11eb-a210-00ff5ce25614', 'Ingco 350 Watt Drill Press DP133505', NULL, '1', 5000.000000, NULL, NULL, NULL, NULL, NULL, '89', '10', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2020-02-11-07-08-28_cPRdb3JLGAproduct.jpg', 'Home,Drill machine,Drill Press', NULL, NULL),
	('936c2cc2-9435-11eb-a210-00ff5ce25614', 'Dewalt 1200 Watt Magnetic Drill Pre', 'A1234', '1', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '89', '1', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-04-19-06-20-02_8z0U2EGV0zproduct.jpg', 'Home,Drill machine,Drill Press', 1, NULL),
	('93aec240-9438-11eb-a210-00ff5ce25614', 'Bosch 95 Watt Magnetic Drill Stand', NULL, '1', 5000.000000, NULL, NULL, NULL, NULL, NULL, '89', '2', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2020-07-29-12-49-27_Yj7s08Yc4fproduct.png', 'Home,Drill machine,Drill Press', NULL, NULL),
	('946c2cc2-9435-11eb-a210-00ff5ce25614', 'Milwaukee 1200 Watt 41mm Magnetic D', 'A1234', '1', 20000.000000, 20.000000, 55, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '89', '11', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-03-29-05-38-27_k61KVEWHJQproduct.PNG', 'Home,Drill machine,Drill Press', 1, NULL),
	('94aec240-9438-11eb-a210-00ff5ce25614', 'Milwaukee 42mm Magnetic Drilling Pr', NULL, '1', 5000.000000, NULL, NULL, NULL, NULL, NULL, '89', '11', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2020-03-29-05-47-26_WphFgOWcQ7product.PNG', 'Home,Drill machine,Drill Press', NULL, NULL),
	('956c2cc2-9435-11eb-a210-00ff5ce25614', 'Milwaukee 2800 Watt 350mm Diamond D', 'A1234', '1', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '90', '11', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-03-20-11-10-01_0QuURuW4Lrproduct.jpg', 'Home,Drill machine,Drilling Motor', 1, NULL),
	('95aec240-9438-11eb-a210-00ff5ce25614', 'Ingco 1050 Watt Drywall Sander DWS1', NULL, '1', 5000.000000, NULL, NULL, NULL, NULL, NULL, '40', '10', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2020-10-27-12-42-23_Ce71ESmbjaproduct.jpg', 'Home,Power Tools,Sander', NULL, NULL),
	('966c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 50 Liter Air Compressor AC255', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '41', '10', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-01-15-10-06-01_3qe3zjLLVjproduct.jpeg', 'Home,Power Tools,Air Compressor', 1, NULL),
	('96aec240-9438-11eb-a210-00ff5ce25614', 'Ingco 16" Industrial Cut Off Saw wi', NULL, '1', 5000.000000, NULL, NULL, NULL, NULL, NULL, '42', '10', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2020-07-23-11-57-20_twFF7VGHCOproduct.jpg', 'Home,Power Tools,Cut Off Machine', NULL, '2021-06-21'),
	('976c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 2000 Watt Heat Gun HG200038', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '44', '10', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-23-33_sr4tJNTQCIproduct.jpg', 'Home,Power Tools,Heat Gun', 1, NULL),
	('97aec240-9438-11eb-a210-00ff5ce25614', 'STIHL - backpack blowers BR 600', NULL, '1', 5000.000000, NULL, NULL, NULL, NULL, NULL, '45', NULL, NULL, NULL, 'https://hardwarepasal.com/src/img/product/2021-03-19-06-23-18_TYuR3pwUf3product.png', 'Home,Power Tools,Backpack Blowers', NULL, NULL),
	('986c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 2200 Watt Electric Router RT2', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '46', '10', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-14-16-15_QqGcVzywXmproduct.jpg', 'Home,Power Tools,Routers', 1, '2021-06-21'),
	('98aec240-9438-11eb-a210-00ff5ce25614', 'Ingco 1050 Watt Electric Planer PL1', NULL, '1', 5000.000000, NULL, NULL, NULL, NULL, NULL, '47', '10', 5, NULL, 'https://hardwarepasal.com/src/img/product/2020-09-25-00-59-31_6Oceq66vXfproduct.jpg', 'Home,Power Tools,Electric Planer', 1, '2021-06-21'),
	('991c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 1600 Watt Circular Saw CS1856', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '61', '10', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-00-46_lfBSpRgtY8product.jpg', 'Home,Power Tools,Power Saws,Circular Saw', 1, '2021-06-21'),
	('991ec240-9438-11eb-a210-00ff5ce25614', 'Ingco 1800 Watt Mitre Saw BMS18001', NULL, '1', 5000.000000, NULL, NULL, NULL, NULL, NULL, '62', '10', 20, NULL, 'https://hardwarepasal.com/src/img/product/2020-08-28-11-13-00_UvUn5MvRKVproduct.jpg', 'Home,Power Tools,Power Saws,Mitre Saw', NULL, NULL),
	('992c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 570 Watt Jig Saw JS57028', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '63', '10', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-07-24-05-00-46_zBRcESqVgbproduct.jpg', 'Home,Power Tools,Power Saws,Jigsaw', 1, '2021-06-21'),
	('992ec240-9438-11eb-a210-00ff5ce25614', 'Ingco 750 Watt Reciprocating Saw RS', NULL, '1', 5000.000000, NULL, NULL, NULL, NULL, NULL, '64', '10', 10, NULL, 'https://hardwarepasal.com/src/img/product/2020-11-07-17-22-47_N03p0gswcSproduct.jpg', 'Home,Power Tools,Power Saws,Reciprocating Saw', NULL, NULL),
	('993c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 750 Watt Water Pump VPM7508', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 1, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '65', '10', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-07-23-12-18-52_OpRiTGbp2qproduct.jpg', 'Home,Power Tools,Pumps,Peripheral Pump', 1, NULL),
	('993ec240-9438-11eb-a210-00ff5ce25614', 'Ingco 750 Watt Submersible Pump SPD', NULL, '1', 5000.000000, NULL, NULL, NULL, 1, NULL, '66', '10', 10, NULL, 'https://hardwarepasal.com/src/img/product/2021-06-11-14-40-55_IQZbysD3U6product.jpg', 'Home,Power Tools,Pumps,Submersible Pump', 1, '2021-06-21'),
	('994c2cc2-9435-11eb-a210-00ff5ce25614', 'Crompton 1HP Monoblock Water Pressu', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '67', '', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2018-09-24-05-32-38_dYLqSKeoktproduct.jpg', 'Home,Power Tools,Pumps,Crompton Pumps', 1, '2021-06-21'),
	('994ec240-9438-11eb-a210-00ff5ce25614', 'Ingco 7.0HP Gasoline Water Pump GWP', NULL, '1', 5000.000000, NULL, NULL, NULL, 1, NULL, '68', '10', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2020-10-29-11-45-25_GW5Dj6YFN0product.jpg', 'Home,Power Tools,Pumps,Gasoline Water Pump', 1, '2021-06-21'),
	('995c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 500Watt Laminate trimmer PLM5', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '50', '10', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2019-04-10-10-53-30_lDbqlZiC6iproduct.jpg', 'Home,Power Tools,Electric Trimmers', 1, '2021-06-21'),
	('995ec240-9438-11eb-a210-00ff5ce25614', 'Ingco 2000 Watt Angle Grinder AG200', NULL, '1', 5000.000000, NULL, NULL, NULL, NULL, NULL, '69', '10', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2021-03-18-07-54-55_eD65FQPdK2product.jpg', 'Home,Power Tools,Grinders & Cutters,Angle Grinder', 1, '2021-06-21'),
	('996c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 400 Watt Die Grinder PDG4003', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '70', '10', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-10-27-12-16-35_AT6RGyenlLproduct.webp', 'Home,Power Tools,Grinders & Cutters,Die Grinder', 1, '2021-06-21'),
	('996ec240-9438-11eb-a210-00ff5ce25614', 'Ingco 1400 Watt Marble Cutter MC140', NULL, '1', 5000.000000, NULL, 10, NULL, NULL, NULL, '71', '10', 10, NULL, 'https://hardwarepasal.com/src/img/product/2019-04-11-05-25-56_bkWAnAodszproduct.jpg', 'Home,Power Tools,Grinders & Cutters,Marble Cutter', 1, '2021-06-21'),
	('997c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 1400 Watt Angle Polisher AP14', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 9, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '72', '10', 30, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-04-06-04-52-11_nYP7sgoJfpproduct.jpg', 'Home,Power Tools,Grinders & Cutters,Angle Polisher', 1, '2021-06-21'),
	('997ec240-9438-11eb-a210-00ff5ce25614', 'Ingco 12A Battery Charger ING-CB160', NULL, '1', 5000.000000, NULL, 8, NULL, NULL, NULL, '52', '10', 10, NULL, 'https://hardwarepasal.com/src/img/product/2021-06-11-13-38-40_PEu95O2ybCproduct.jpg', 'Home,Power Tools,Battery Charger', 1, '2021-06-21'),
	('998c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 8” Bench Vice HBV088', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 7, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '53', '10', 10, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-09-25-02-42-48_999r4ixIBMproduct.jpg', 'Home,Power Tools,Bench Grinder', 1, '2021-06-21'),
	('998ec240-9438-11eb-a210-00ff5ce25614', 'Bushcon BCT-800 Digital Battery Cap', NULL, '1', 5000.000000, NULL, 6, NULL, NULL, NULL, '54', NULL, 10, NULL, 'https://hardwarepasal.com/src/img/product/2019-11-20-06-12-48_LwOxfyiukdproduct.jpg', 'Home,Power Tools,Battery Tester', 1, '2021-06-21'),
	('999c2cc2-9435-11eb-a210-00ff5ce25614', 'Milwaukee 50mm 12 Volt Battery Drai', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 5, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '55', '11', 10, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-03-29-09-24-16_HklcyzjpnUproduct.jpg', 'Home,Power Tools,Drain Cleaner', 1, NULL),
	('999ec240-9438-11eb-a210-00ff5ce25614', 'Ingco Armature AG7106-2-SP-22', NULL, '1', 5000.000000, NULL, 4, NULL, NULL, NULL, '77', '10', NULL, NULL, 'https://hardwarepasal.com/src/img/product/2020-09-25-12-21-23_dE2ZgTiTi8product.jpg', 'Home,Power Tools,Spare parts,Armature', 1, '2021-06-21'),
	('99aec240-9438-11eb-a210-00ff5ce25614', 'Ingco 1.5Ah Lithium Ion Battery Pac', NULL, '1', 5000.000000, NULL, 3, NULL, NULL, NULL, '58', '10', 10, NULL, 'https://hardwarepasal.com/src/img/product/2020-09-24-14-00-33_bPJZVruu0Qproduct.jpg', 'Home,Power Tools,Battery', 1, '2021-06-21'),
	('9d6c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 1400 Watt Mixer MX214008', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 2, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '59', '10', 10, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-09-25-02-04-39_DJAzyJowt0product.jpg', 'Home,Power Tools,Mixer', 1, '2021-06-21'),
	('dd6c2cc2-9435-11eb-a210-00ff5ce25614', 'Ingco 5.0kW Gasoline Generator GSE5', 'A1234', 'TWENTYFOURSEVEN - EXTRAMAN 14.4v Cordless Drill 128pcs Accessories / 14.4V CORDLESS DRILL 2 SPEED WITH 2 BATTERIES', 20000.000000, 20.000000, 1, 'f849d132-9483-11eb-a8b3-0242ac130003', 0, '8ca6ca7a-9483-11eb-a8b3-0242ac130003', '83', '10', 10, 'e94fddf6-9484-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-02-02-06-04-28_XWYlHqekyOproduct.jpg', 'Home,Power Tools,Generator,Gasoline Generator', 1, NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table test.product_images
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` varchar(100) NOT NULL,
  `previewImageSrc` varchar(250) DEFAULT NULL,
  `thumbnailImageSrc` varchar(250) DEFAULT NULL,
  `alt` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT 0,
  `productId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.product_images: ~62 rows (approximately)
/*!40000 ALTER TABLE `product_images` DISABLE KEYS */;
INSERT INTO `product_images` (`id`, `previewImageSrc`, `thumbnailImageSrc`, `alt`, `title`, `isDefault`, `productId`) VALUES
	('19c8ae84-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/bcaa02e833fa3c2f31e0f7f54d7c543a', 'https://cf.shopee.com.my/file/bcaa02e833fa3c2f31e0f7f54d7c543a', NULL, NULL, 1, '29aec240-9438-11eb-a210-00ff5ce25614'),
	('20c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-04-06-05-18-25_uATYsRie4Fproduct.png', 'https://hardwarepasal.com/src/img/product/2021-04-06-05-18-25_uATYsRie4Fproduct.png', NULL, NULL, 1, '3d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('21c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-04-17-04-29-25_dG0W4GXuMzproduct.jpg', 'https://hardwarepasal.com/src/img/product/2021-04-17-04-29-25_dG0W4GXuMzproduct.jpg', NULL, NULL, 1, '39aec240-9438-11eb-a210-00ff5ce25614'),
	('22c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2018-09-24-07-04-22_Gg8vVgntI0product.jpg', 'https://hardwarepasal.com/src/img/product/2018-09-24-07-04-22_Gg8vVgntI0product.jpg', NULL, NULL, 1, '59aec240-9438-11eb-a210-00ff5ce25614'),
	('23c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-01-03-09-28-34_TAEo4p1b4sproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-01-03-09-28-34_TAEo4p1b4sproduct.jpg', NULL, NULL, 1, '4d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('24c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-30-33_2xlp0XDvUEproduct.jpg', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-30-33_2xlp0XDvUEproduct.jpg', NULL, NULL, 1, '49aec240-9438-11eb-a210-00ff5ce25614'),
	('25c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-07-29-13-08-02_4IitLK22Cuproduct.jpeg', 'https://hardwarepasal.com/src/img/product/2020-07-29-13-08-02_4IitLK22Cuproduct.jpeg', NULL, NULL, 1, '69aec240-9438-11eb-a210-00ff5ce25614'),
	('26c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-04-06-05-22-55_xfoumWhGRkproduct.jpg', 'https://hardwarepasal.com/src/img/product/2021-04-06-05-22-55_xfoumWhGRkproduct.jpg', NULL, NULL, 1, '5d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('27c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2019-04-10-09-55-40_2pcQtbdZ83product.jpg', 'https://hardwarepasal.com/src/img/product/2019-04-10-09-55-40_2pcQtbdZ83product.jpg', NULL, NULL, 1, '6d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('29c8ae84-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/6843ecd62d55dada43cff94c72956286', 'https://cf.shopee.com.my/file/6843ecd62d55dada43cff94c72956286', NULL, NULL, 0, '29aec240-9438-11eb-a210-00ff5ce25614'),
	('30c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-51-43_lN3taIwSPOproduct.jpg', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-51-43_lN3taIwSPOproduct.jpg', NULL, NULL, 1, '79aec240-9438-11eb-a210-00ff5ce25614'),
	('31c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-04-17-10-14-46_lEeLF6WuWFproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-04-17-10-14-46_lEeLF6WuWFproduct.jpg', NULL, NULL, 1, '89aec240-9438-11eb-a210-00ff5ce25614'),
	('32c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-04-19-12-54-28_RIqZ17B6J2product.jpg', 'https://hardwarepasal.com/src/img/product/2020-04-19-12-54-28_RIqZ17B6J2product.jpg', NULL, NULL, 1, '7d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('33c8ae84-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/cb77fbc8bde935bc7e6d006679aaec63', 'https://cf.shopee.com.my/file/cb77fbc8bde935bc7e6d006679aaec63', NULL, NULL, 0, '2d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('34c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-08-23-00-54-47_2M9Yb8F8uCproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-08-23-00-54-47_2M9Yb8F8uCproduct.jpg', NULL, NULL, 1, '8d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('35c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2018-09-24-06-31-49_AKNTV7ahgGproduct.jpg', 'https://hardwarepasal.com/src/img/product/2018-09-24-06-31-49_AKNTV7ahgGproduct.jpg', NULL, NULL, 1, '916c2cc2-9435-11eb-a210-00ff5ce25614'),
	('36c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2018-09-24-06-24-29_SxKSdqPFNaproduct.jpg', 'https://hardwarepasal.com/src/img/product/2018-09-24-06-24-29_SxKSdqPFNaproduct.jpg', NULL, NULL, 1, '91aec240-9438-11eb-a210-00ff5ce25614'),
	('37c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-14-06-50_fRtKQ6UqSHproduct.jpg', 'https://hardwarepasal.com/src/img/product/2021-06-11-14-06-50_fRtKQ6UqSHproduct.jpg', NULL, NULL, 1, '926c2cc2-9435-11eb-a210-00ff5ce25614'),
	('38c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-02-11-07-08-28_cPRdb3JLGAproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-02-11-07-08-28_cPRdb3JLGAproduct.jpg', NULL, NULL, 1, '92aec240-9438-11eb-a210-00ff5ce25614'),
	('3938ae84-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/ef10743fb45909f653e9986f00d63e66', 'https://cf.shopee.com.my/file/ef10743fb45909f653e9986f00d63e66', NULL, NULL, 1, '2d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('39c83e84-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/e894620e7a1aa4e654838c10ecc1c88f', 'https://cf.shopee.com.my/file/e894620e7a1aa4e654838c10ecc1c88f', NULL, NULL, 0, '2d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('39c8ae84-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/523d1ab369cba7b63fca71e0071c8e37', 'https://cf.shopee.com.my/file/523d1ab369cba7b63fca71e0071c8e37', NULL, NULL, 0, '29aec240-9438-11eb-a210-00ff5ce25614'),
	('40c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-04-19-06-20-02_8z0U2EGV0zproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-04-19-06-20-02_8z0U2EGV0zproduct.jpg', NULL, NULL, 1, '936c2cc2-9435-11eb-a210-00ff5ce25614'),
	('41c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-07-29-12-49-27_Yj7s08Yc4fproduct.png', 'https://hardwarepasal.com/src/img/product/2020-07-29-12-49-27_Yj7s08Yc4fproduct.png', NULL, NULL, 1, '93aec240-9438-11eb-a210-00ff5ce25614'),
	('42c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-03-29-05-38-27_k61KVEWHJQproduct.PNG', 'https://hardwarepasal.com/src/img/product/2020-03-29-05-38-27_k61KVEWHJQproduct.PNG', NULL, NULL, 1, '946c2cc2-9435-11eb-a210-00ff5ce25614'),
	('43c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-03-29-05-47-26_WphFgOWcQ7product.PNG', 'https://hardwarepasal.com/src/img/product/2020-03-29-05-47-26_WphFgOWcQ7product.PNG', NULL, NULL, 1, '94aec240-9438-11eb-a210-00ff5ce25614'),
	('49c8ae84-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/1189d9a8d362fe05dcd3c80464cda1e7', 'https://cf.shopee.com.my/file/1189d9a8d362fe05dcd3c80464cda1e7', NULL, NULL, 0, '29aec240-9438-11eb-a210-00ff5ce25614'),
	('50c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-03-20-11-10-01_0QuURuW4Lrproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-03-20-11-10-01_0QuURuW4Lrproduct.jpg', NULL, NULL, 1, '956c2cc2-9435-11eb-a210-00ff5ce25614'),
	('51c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-10-27-12-42-23_Ce71ESmbjaproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-10-27-12-42-23_Ce71ESmbjaproduct.jpg', NULL, NULL, 1, '95aec240-9438-11eb-a210-00ff5ce25614'),
	('52c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-01-15-10-06-01_3qe3zjLLVjproduct.jpeg', 'https://hardwarepasal.com/src/img/product/2020-01-15-10-06-01_3qe3zjLLVjproduct.jpeg', NULL, NULL, 1, '966c2cc2-9435-11eb-a210-00ff5ce25614'),
	('53c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-07-23-11-57-20_twFF7VGHCOproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-07-23-11-57-20_twFF7VGHCOproduct.jpg', NULL, NULL, 1, '96aec240-9438-11eb-a210-00ff5ce25614'),
	('54c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-07-23-12-18-52_OpRiTGbp2qproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-07-23-12-18-52_OpRiTGbp2qproduct.jpg', NULL, NULL, 1, '993c2cc2-9435-11eb-a210-00ff5ce25614'),
	('55c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-14-40-55_IQZbysD3U6product.jpg', 'https://hardwarepasal.com/src/img/product/2021-06-11-14-40-55_IQZbysD3U6product.jpg', NULL, NULL, 1, '993ec240-9438-11eb-a210-00ff5ce25614'),
	('56c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2018-09-24-05-32-38_dYLqSKeoktproduct.jpg', 'https://hardwarepasal.com/src/img/product/2018-09-24-05-32-38_dYLqSKeoktproduct.jpg', NULL, NULL, 1, '994c2cc2-9435-11eb-a210-00ff5ce25614'),
	('57c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-10-29-11-45-25_GW5Dj6YFN0product.jpg', 'https://hardwarepasal.com/src/img/product/2020-10-29-11-45-25_GW5Dj6YFN0product.jpg', NULL, NULL, 1, '994ec240-9438-11eb-a210-00ff5ce25614'),
	('58c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2019-04-10-10-53-30_lDbqlZiC6iproduct.jpg', 'https://hardwarepasal.com/src/img/product/2019-04-10-10-53-30_lDbqlZiC6iproduct.jpg', NULL, NULL, 1, '995c2cc2-9435-11eb-a210-00ff5ce25614'),
	('59c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-03-18-07-54-55_eD65FQPdK2product.jpg', 'https://hardwarepasal.com/src/img/product/2021-03-18-07-54-55_eD65FQPdK2product.jpg', NULL, NULL, 1, '995ec240-9438-11eb-a210-00ff5ce25614'),
	('60c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-10-27-12-16-35_AT6RGyenlLproduct.webp', 'https://hardwarepasal.com/src/img/product/2020-10-27-12-16-35_AT6RGyenlLproduct.webp', NULL, NULL, 1, '996c2cc2-9435-11eb-a210-00ff5ce25614'),
	('61c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2019-04-11-05-25-56_bkWAnAodszproduct.jpg', 'https://hardwarepasal.com/src/img/product/2019-04-11-05-25-56_bkWAnAodszproduct.jpg', NULL, NULL, 1, '996ec240-9438-11eb-a210-00ff5ce25614'),
	('62c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-04-06-04-52-11_nYP7sgoJfpproduct.jpg', 'https://hardwarepasal.com/src/img/product/2021-04-06-04-52-11_nYP7sgoJfpproduct.jpg', NULL, NULL, 1, '997c2cc2-9435-11eb-a210-00ff5ce25614'),
	('63c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-38-40_PEu95O2ybCproduct.jpg', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-38-40_PEu95O2ybCproduct.jpg', NULL, NULL, 1, '997ec240-9438-11eb-a210-00ff5ce25614'),
	('64c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-23-33_sr4tJNTQCIproduct.jpg', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-23-33_sr4tJNTQCIproduct.jpg', NULL, NULL, 1, '976c2cc2-9435-11eb-a210-00ff5ce25614'),
	('65c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-09-25-02-42-48_999r4ixIBMproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-09-25-02-42-48_999r4ixIBMproduct.jpg', NULL, NULL, 1, '998c2cc2-9435-11eb-a210-00ff5ce25614'),
	('66c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2019-11-20-06-12-48_LwOxfyiukdproduct.jpg', 'https://hardwarepasal.com/src/img/product/2019-11-20-06-12-48_LwOxfyiukdproduct.jpg', NULL, NULL, 1, '998ec240-9438-11eb-a210-00ff5ce25614'),
	('67c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-03-29-09-24-16_HklcyzjpnUproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-03-29-09-24-16_HklcyzjpnUproduct.jpg', NULL, NULL, 1, '999c2cc2-9435-11eb-a210-00ff5ce25614'),
	('68c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-09-25-12-21-23_dE2ZgTiTi8product.jpg', 'https://hardwarepasal.com/src/img/product/2020-09-25-12-21-23_dE2ZgTiTi8product.jpg', NULL, NULL, 1, '999ec240-9438-11eb-a210-00ff5ce25614'),
	('69c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-09-24-14-00-33_bPJZVruu0Qproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-09-24-14-00-33_bPJZVruu0Qproduct.jpg', NULL, NULL, 1, '99aec240-9438-11eb-a210-00ff5ce25614'),
	('70c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-09-25-02-04-39_DJAzyJowt0product.jpg', 'https://hardwarepasal.com/src/img/product/2020-09-25-02-04-39_DJAzyJowt0product.jpg', NULL, NULL, 1, '9d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('71c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-02-02-06-04-28_XWYlHqekyOproduct.jpg', 'https://hardwarepasal.com/src/img/product/2021-02-02-06-04-28_XWYlHqekyOproduct.jpg', NULL, NULL, 1, 'dd6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('72c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-03-19-06-23-18_TYuR3pwUf3product.png', 'https://hardwarepasal.com/src/img/product/2021-03-19-06-23-18_TYuR3pwUf3product.png', NULL, NULL, 1, '97aec240-9438-11eb-a210-00ff5ce25614'),
	('73c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-14-16-15_QqGcVzywXmproduct.jpg', 'https://hardwarepasal.com/src/img/product/2021-06-11-14-16-15_QqGcVzywXmproduct.jpg', NULL, NULL, 1, '986c2cc2-9435-11eb-a210-00ff5ce25614'),
	('74c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-09-25-00-59-31_6Oceq66vXfproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-09-25-00-59-31_6Oceq66vXfproduct.jpg', NULL, NULL, 1, '98aec240-9438-11eb-a210-00ff5ce25614'),
	('75c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-00-46_lfBSpRgtY8product.jpg', 'https://hardwarepasal.com/src/img/product/2021-06-11-13-00-46_lfBSpRgtY8product.jpg', NULL, NULL, 1, '991c2cc2-9435-11eb-a210-00ff5ce25614'),
	('76c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-08-28-11-13-00_UvUn5MvRKVproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-08-28-11-13-00_UvUn5MvRKVproduct.jpg', NULL, NULL, 1, '991ec240-9438-11eb-a210-00ff5ce25614'),
	('77c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-07-24-05-00-46_zBRcESqVgbproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-07-24-05-00-46_zBRcESqVgbproduct.jpg', NULL, NULL, 1, '992c2cc2-9435-11eb-a210-00ff5ce25614'),
	('78c8ae84-9686-11eb-a8b3-0242ac130003', 'https://hardwarepasal.com/src/img/product/2020-11-07-17-22-47_N03p0gswcSproduct.jpg', 'https://hardwarepasal.com/src/img/product/2020-11-07-17-22-47_N03p0gswcSproduct.jpg', NULL, NULL, 1, '992ec240-9438-11eb-a210-00ff5ce25614'),
	('b8c8a718-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/d250c7e654675b6856389b848df1c138', 'https://cf.shopee.com.my/file/d250c7e654675b6856389b848df1c138', '', '', 1, '1d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('b8c8a9b6-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/02503723fa3fca48897457d7055d877d', 'https://cf.shopee.com.my/file/02503723fa3fca48897457d7055d877d', '', '', 0, '1d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('b8c8acea-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/a79850ebab244198bee41567435e1830', 'https://cf.shopee.com.my/file/a79850ebab244198bee41567435e1830', '', '', 0, '1d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('b8c8adbc-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/b800a495e593cc39d8ad3ba18db7bea5', 'https://cf.shopee.com.my/file/b800a495e593cc39d8ad3ba18db7bea5', '', '', 0, '1d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('b8c8ae84-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/61ed4edddde8cf6fc8b83005f6198d21', 'https://cf.shopee.com.my/file/61ed4edddde8cf6fc8b83005f6198d21', '', '', 0, '1d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('b9c8ae84-9686-11eb-a8b3-0242ac130003', 'https://cf.shopee.com.my/file/97a09922b14b62663508c6ed55f0656e', 'https://cf.shopee.com.my/file/97a09922b14b62663508c6ed55f0656e', NULL, NULL, 1, '19aec240-9438-11eb-a210-00ff5ce25614');
/*!40000 ALTER TABLE `product_images` ENABLE KEYS */;

-- Dumping structure for table test.state
CREATE TABLE IF NOT EXISTS `state` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.state: ~3 rows (approximately)
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`id`, `name`) VALUES
	('2dde3156-9efe-11eb-a8b3-0242ac130003', 'Johor'),
	('2dde33b8-9efe-11eb-a8b3-0242ac130003', 'Kuala Lumpur'),
	('2dde34bc-9efe-11eb-a8b3-0242ac130003', 'Putrajaya');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;

-- Dumping structure for table test.transfer_company
CREATE TABLE IF NOT EXISTS `transfer_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table test.transfer_company: ~3 rows (approximately)
/*!40000 ALTER TABLE `transfer_company` DISABLE KEYS */;
INSERT INTO `transfer_company` (`id`, `name`) VALUES
	(1, 'DHL'),
	(2, 'Haram Transfer'),
	(3, 'Al-fuad Transfer');
/*!40000 ALTER TABLE `transfer_company` ENABLE KEYS */;

-- Dumping structure for table test.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(200) DEFAULT NULL,
  `firstName` varchar(200) DEFAULT NULL,
  `lastName` varchar(200) DEFAULT NULL,
  `mobileNumber` varchar(200) DEFAULT NULL,
  `password` char(200) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.user: ~4 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `email`, `firstName`, `lastName`, `mobileNumber`, `password`, `dateOfBirth`, `gender`) VALUES
	('22fc8990-9e05-11eb-bd9d-00ff5ce25614', 'ammar.alziebak@gmail.com', 'ammar', 'alziebak', '1234567890', '$2b$10$SbMZ.rjVwaZXpzUfGN6pMuP/uV22/.7RcGtzHyuUsbs352tH0TgcK', NULL, 0),
	('4b27aa50-996a-11eb-bd9d-00ff5ce25614', 'ammar.alziebak@hotmail.com', 'Ammar', 'Alziebak', '1234567892', '$2b$10$ITIVtMKlKTnQZIJRcHh7y.7pnRCXuPnMIXEvDEw7swiYWY2v9a68O', '1987-04-12', 0),
	('c1e6b736-9454-11eb-a210-00ff5ce25614', 'test1@test1.com', NULL, NULL, NULL, '$2b$10$8lR9e8vjtFUVAVPncdF/qe.X9nfa9y9jRuGmpl.leRuNHQqCfNf3m', '2021-04-15', 0),
	('c2e25deb-93ef-11eb-a210-00ff5ce25614', 'mysql@mysql.com', NULL, NULL, NULL, '$2b$10$f.DDBe0RAGlTnNL7rjPOYO1RzOYtfJByrgboldAk6sIQhIVDpIf7y', '2021-04-15', 0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- Dumping structure for table test.variation
CREATE TABLE IF NOT EXISTS `variation` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `productId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.variation: ~5 rows (approximately)
/*!40000 ALTER TABLE `variation` DISABLE KEYS */;
INSERT INTO `variation` (`id`, `name`, `productId`) VALUES
	('1d6c2dd2-9435-11eb-a210-00ff5ce25614', 'POLE', '29aec240-9438-11eb-a210-00ff5ce25614'),
	('2d6c2dd2-9435-11eb-a210-00ff5ce25614', 'CURRENT (A)', '29aec240-9438-11eb-a210-00ff5ce25614'),
	('d16c2dd2-9435-11eb-a210-00ff5ce25614', 'Dimension', '19aec240-9438-11eb-a210-00ff5ce25614'),
	('dd6c2dd2-9435-11eb-a210-00ff5ce25614', 'Color', '1d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	('dd6c2ff2-9435-11eb-a210-00ff5ce25614', 'Size', '1d6c2cc2-9435-11eb-a210-00ff5ce25614');
/*!40000 ALTER TABLE `variation` ENABLE KEYS */;

-- Dumping structure for table test.variation_details
CREATE TABLE IF NOT EXISTS `variation_details` (
  `id` varchar(100) NOT NULL,
  `productId` varchar(100) DEFAULT NULL,
  `variation1Id` varchar(100) DEFAULT NULL,
  `variation2Id` varchar(100) DEFAULT NULL,
  `price` decimal(20,6) DEFAULT 0.000000,
  `usdPrice` decimal(20,6) DEFAULT 0.000000,
  `stock` int(11) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.variation_details: ~22 rows (approximately)
/*!40000 ALTER TABLE `variation_details` DISABLE KEYS */;
INSERT INTO `variation_details` (`id`, `productId`, `variation1Id`, `variation2Id`, `price`, `usdPrice`, `stock`) VALUES
	('a1884c66-9478-11eb-a8b3-0242ac130003', '29aec240-9438-11eb-a210-00ff5ce25614', '110a37fk-9476-11eb-a8b3-0242ac130003', '111a37fk-9476-11eb-a8b3-0242ac130003', 10000.000000, 0.000000, 9),
	('a2284c66-9478-11eb-a8b3-0242ac130003', '29aec240-9438-11eb-a210-00ff5ce25614', '110a37fk-9476-11eb-a8b3-0242ac130003', '222a37fk-9476-11eb-a8b3-0242ac130003', 12000.000000, 0.000000, 8),
	('a2884c66-9478-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', '480a363e-9476-11eb-a8b3-0242ac130003', '480a3580-9476-11eb-a8b3-0242ac130003', 15.000000, 3.000000, 5),
	('a2884ef0-9478-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', '480a37er-9476-11eb-a8b3-0242ac130003', '480a3580-9476-11eb-a8b3-0242ac130003', 15.000000, 3.000000, 7),
	('a2884fe0-9478-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', '480a37fk-9476-11eb-a8b3-0242ac130003', '480a3580-9476-11eb-a8b3-0242ac130003', 15.000000, 3.000000, 6),
	('a28850a8-9478-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', '480a363e-9476-11eb-a8b3-0242ac130003', '480a349a-9476-11eb-a8b3-0242ac130003', 10.000000, 2.000000, 3),
	('a2885166-9478-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', '480a37er-9476-11eb-a8b3-0242ac130003', '480a349a-9476-11eb-a8b3-0242ac130003', 10.000000, 2.000000, 2),
	('a2885224-9478-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', '480a37fk-9476-11eb-a8b3-0242ac130003', '480a349a-9476-11eb-a8b3-0242ac130003', 10.000000, 2.000000, 1),
	('a28852ec-9478-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', '480a363e-9476-11eb-a8b3-0242ac130003', '480a3274-9476-11eb-a8b3-0242ac130003', 5.000000, 1.000000, 0),
	('a2885670-9478-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', '480a37er-9476-11eb-a8b3-0242ac130003', '480a3274-9476-11eb-a8b3-0242ac130003', 5.000000, 1.000000, 9),
	('a2885738-9478-11eb-a8b3-0242ac130003', '1d6c2cc2-9435-11eb-a210-00ff5ce25614', '480a37fk-9476-11eb-a8b3-0242ac130003', '480a3274-9476-11eb-a8b3-0242ac130003', 5.000000, 1.000000, 8),
	('a3884c66-9478-11eb-a8b3-0242ac130003', '29aec240-9438-11eb-a210-00ff5ce25614', '680w37fk-9476-11eb-a8b3-0242ac130003', '111a37fk-9476-11eb-a8b3-0242ac130003', 9000.000000, 0.000000, 6),
	('a4884c66-9478-11eb-a8b3-0242ac130003', '29aec240-9438-11eb-a210-00ff5ce25614', '680w37fk-9476-11eb-a8b3-0242ac130003', '222a37fk-9476-11eb-a8b3-0242ac130003', 7000.000000, 0.000000, 7),
	('a5884c66-9478-11eb-a8b3-0242ac130003', '29aec240-9438-11eb-a210-00ff5ce25614', '681a37fk-9476-11eb-a8b3-0242ac130003', '111a37fk-9476-11eb-a8b3-0242ac130003', 5000.000000, 0.000000, 4),
	('a6884c66-9478-11eb-a8b3-0242ac130003', '29aec240-9438-11eb-a210-00ff5ce25614', '681a37fk-9476-11eb-a8b3-0242ac130003', '222a37fk-9476-11eb-a8b3-0242ac130003', 4000.000000, 0.000000, 3),
	('b6884c66-9478-11eb-a8b3-0242ac130003', '19aec240-9438-11eb-a210-00ff5ce25614', '580a37fk-9476-11eb-a8b3-0242ac130003', NULL, 1000.000000, 0.000000, 1),
	('c6884c66-9478-11eb-a8b3-0242ac130003', '19aec240-9438-11eb-a210-00ff5ce25614', '680a37fk-9476-11eb-a8b3-0242ac130003', NULL, 2000.000000, 0.000000, 2),
	('d6884c66-9478-11eb-a8b3-0242ac130003', '19aec240-9438-11eb-a210-00ff5ce25614', '780a37fk-9476-11eb-a8b3-0242ac130003', NULL, 3000.000000, 0.000000, 3),
	('e6884c66-9478-11eb-a8b3-0242ac130003', '19aec240-9438-11eb-a210-00ff5ce25614', '440a37fk-9476-11eb-a8b3-0242ac130003', NULL, 4000.000000, 0.000000, 4),
	('f6884c66-9478-11eb-a8b3-0242ac130003', '19aec240-9438-11eb-a210-00ff5ce25614', '380a37fk-9476-11eb-a8b3-0242ac130003', NULL, 5000.000000, 0.000000, 5),
	('g6884c66-9478-11eb-a8b3-0242ac130003', '19aec240-9438-11eb-a210-00ff5ce25614', '280a37fk-9476-11eb-a8b3-0242ac130003', NULL, 6000.000000, 0.000000, 6),
	('h6884c66-9478-11eb-a8b3-0242ac130003', '19aec240-9438-11eb-a210-00ff5ce25614', '180a37fk-9476-11eb-a8b3-0242ac130003', NULL, 7000.000000, 0.000000, 7);
/*!40000 ALTER TABLE `variation_details` ENABLE KEYS */;

-- Dumping structure for table test.variation_options
CREATE TABLE IF NOT EXISTS `variation_options` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `variationId` varchar(100) DEFAULT NULL,
  `imageId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.variation_options: ~20 rows (approximately)
/*!40000 ALTER TABLE `variation_options` DISABLE KEYS */;
INSERT INTO `variation_options` (`id`, `name`, `variationId`, `imageId`) VALUES
	('110a37fk-9476-11eb-a8b3-0242ac130003', '1P', '1d6c2dd2-9435-11eb-a210-00ff5ce25614', '29c8ae84-9686-11eb-a8b3-0242ac130003'),
	('111a37fk-9476-11eb-a8b3-0242ac130003', '10A', '2d6c2dd2-9435-11eb-a210-00ff5ce25614', NULL),
	('180a37fk-9476-11eb-a8b3-0242ac130003', '3.1mmX110mmX132mm', 'd16c2dd2-9435-11eb-a210-00ff5ce25614', NULL),
	('222a37fk-9476-11eb-a8b3-0242ac130003', '20A', '2d6c2dd2-9435-11eb-a210-00ff5ce25614', NULL),
	('280a37fk-9476-11eb-a8b3-0242ac130003', '2.0mmX82mmX155mm', 'd16c2dd2-9435-11eb-a210-00ff5ce25614', NULL),
	('380a37fk-9476-11eb-a8b3-0242ac130003', '2.0mmX82mmX154mm', 'd16c2dd2-9435-11eb-a210-00ff5ce25614', NULL),
	('440a37fk-9476-11eb-a8b3-0242ac130003', '3.0mmX66mmX124mm', 'd16c2dd2-9435-11eb-a210-00ff5ce25614', NULL),
	('480a3274-9476-11eb-a8b3-0242ac130003', 'S', 'dd6c2ff2-9435-11eb-a210-00ff5ce25614', NULL),
	('480a349a-9476-11eb-a8b3-0242ac130003', 'M', 'dd6c2ff2-9435-11eb-a210-00ff5ce25614', NULL),
	('480a3580-9476-11eb-a8b3-0242ac130003', 'L', 'dd6c2ff2-9435-11eb-a210-00ff5ce25614', NULL),
	('480a363e-9476-11eb-a8b3-0242ac130003', 'RED', 'dd6c2dd2-9435-11eb-a210-00ff5ce25614', 'b8c8adbc-9686-11eb-a8b3-0242ac130003'),
	('480a36fc-9476-11eb-a8b3-0242ac130003', 'GREEN', 'dd6c2dd2-9435-11eb-a210-00ff5ce25614', NULL),
	('480a37ba-9476-11eb-a8b3-0242ac130003', 'BLUE', 'dd6c2dd2-9435-11eb-a210-00ff5ce25614', 'b8c8ae84-9686-11eb-a8b3-0242ac130003'),
	('480a37er-9476-11eb-a8b3-0242ac130003', 'WHITE', 'dd6c2dd2-9435-11eb-a210-00ff5ce25614', 'b8c8acea-9686-11eb-a8b3-0242ac130003'),
	('480a37fk-9476-11eb-a8b3-0242ac130003', 'BLACK', 'dd6c2dd2-9435-11eb-a210-00ff5ce25614', 'b8c8a9b6-9686-11eb-a8b3-0242ac130003'),
	('580a37fk-9476-11eb-a8b3-0242ac130003', '3.0mmX56mmX130mm', 'd16c2dd2-9435-11eb-a210-00ff5ce25614', NULL),
	('680a37fk-9476-11eb-a8b3-0242ac130003', '3.0mmX40mmX177mm', 'd16c2dd2-9435-11eb-a210-00ff5ce25614', NULL),
	('680w37fk-9476-11eb-a8b3-0242ac130003', '2P', '1d6c2dd2-9435-11eb-a210-00ff5ce25614', '39c8ae84-9686-11eb-a8b3-0242ac130003'),
	('681a37fk-9476-11eb-a8b3-0242ac130003', '3P', '1d6c2dd2-9435-11eb-a210-00ff5ce25614', '49c8ae84-9686-11eb-a8b3-0242ac130003'),
	('780a37fk-9476-11eb-a8b3-0242ac130003', '0.5mmX53mmX125mm', 'd16c2dd2-9435-11eb-a210-00ff5ce25614', NULL);
/*!40000 ALTER TABLE `variation_options` ENABLE KEYS */;

-- Dumping structure for table test.warranty_period
CREATE TABLE IF NOT EXISTS `warranty_period` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table test.warranty_period: ~2 rows (approximately)
/*!40000 ALTER TABLE `warranty_period` DISABLE KEYS */;
INSERT INTO `warranty_period` (`id`, `name`) VALUES
	('8ca6ca7a-9483-11eb-a8b3-0242ac130003', '1 Month'),
	('8ca6cdc2-9483-11eb-a8b3-0242ac130003', '2 Month');
/*!40000 ALTER TABLE `warranty_period` ENABLE KEYS */;

-- Dumping structure for table test.wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `wishlistId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(100) NOT NULL,
  `productId` varchar(100) NOT NULL,
  PRIMARY KEY (`wishlistId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- Dumping data for table test.wishlist: ~5 rows (approximately)
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` (`wishlistId`, `userId`, `productId`) VALUES
	(13, '4b27aa50-996a-11eb-bd9d-00ff5ce25614', '49aec240-9438-11eb-a210-00ff5ce25614'),
	(22, '4b27aa50-996a-11eb-bd9d-00ff5ce25614', '3d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	(23, '4b27aa50-996a-11eb-bd9d-00ff5ce25614', '5d6c2cc2-9435-11eb-a210-00ff5ce25614'),
	(24, '4b27aa50-996a-11eb-bd9d-00ff5ce25614', '69aec240-9438-11eb-a210-00ff5ce25614'),
	(26, '4b27aa50-996a-11eb-bd9d-00ff5ce25614', '39aec240-9438-11eb-a210-00ff5ce25614');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;

-- Dumping structure for trigger test.before_insert_user
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER before_insert_user
  BEFORE INSERT ON user 
  FOR EACH ROW
  SET new.id = uuid()//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
