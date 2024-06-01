/*
 Navicat Premium Data Transfer

 Source Server         : LOCAL
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : bd_ventas

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 08/06/2021 19:54:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for clientes
-- ----------------------------
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `correo` varchar(128) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `celular` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of clientes
-- ----------------------------
INSERT INTO `clientes` VALUES (1, 'Marcelo Quiroga', 'marcelo@mail.com', '77712345');
INSERT INTO `clientes` VALUES (2, 'Caleb Benitez', 'benitez@mail.org', '70012345');
INSERT INTO `clientes` VALUES (3, 'Ursula Gonzales', 'nec@lacus.ca', '79112345');
INSERT INTO `clientes` VALUES (5, 'Juan Carlos Arce', 'conejo@mail.com', '71512345');
INSERT INTO `clientes` VALUES (6, 'Halee Kirby', 'tiam@tempor.com', '72012345');
INSERT INTO `clientes` VALUES (7, 'Marco Perez', 'marco@mail.com', '71526789');
INSERT INTO `clientes` VALUES (8, 'Pedro Marquez', 'peter@mail.com', '72054578');
INSERT INTO `clientes` VALUES (9, 'Juan de Arco', 'juanita@mail.com', '77112456');
INSERT INTO `clientes` VALUES (10, 'Luis Callejas', 'lucho@mial.com', '77122456');
INSERT INTO `clientes` VALUES (16, 'Marcelo Martins', 'marcelo@mail.com', '70012345');
INSERT INTO `clientes` VALUES (17, 'Juan Capriles', 'capri@mail.com', '78945612');

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(32) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `precio` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of productos
-- ----------------------------
INSERT INTO `productos` VALUES (1, 'iPhone 4s', 'Que viene desde Apple', 200);
INSERT INTO `productos` VALUES (2, 'iPhone 5', 'iPhone 5 from Apple', 150);
INSERT INTO `productos` VALUES (3, 'iPhone 5s', 'iPhone 5s is too expensive.', 300.8);
INSERT INTO `productos` VALUES (4, 'iPad Air', 'iPad Air is thin like samurai!', 250);
INSERT INTO `productos` VALUES (5, 'HTC One', 'Best of 2013', 250);
INSERT INTO `productos` VALUES (6, 'God', 'God is not on sale. Sorry.', 132);
INSERT INTO `productos` VALUES (7, 'Lenovo 2020', 'This sword is so sharp that it can slice itself. Good for slicing jellies.', 2000);
INSERT INTO `productos` VALUES (8, 'Latitude e6420', 'Built by ultimate killing machines. For ultimate killing hobies.', 50);
INSERT INTO `productos` VALUES (9, 'Toshiba xd456', 'This jacket could save you from heart attack. And maybe heartbreaks.', 50000);
INSERT INTO `productos` VALUES (10, 'Dell vostro 456', 'This helps you brighten things in the dark.', 650);

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES (1, 'Admin', 'Istrador', 'admin@mail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b');
INSERT INTO `usuarios` VALUES (2, 'Marco', 'Miranda', 'marco@mail.com', '12345');

-- ----------------------------
-- Table structure for ventas
-- ----------------------------
DROP TABLE IF EXISTS `ventas`;
CREATE TABLE `ventas`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `producto_id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ventas
-- ----------------------------
INSERT INTO `ventas` VALUES (1, 1, 3, '2019-02-08');
INSERT INTO `ventas` VALUES (2, 10, 5, '2018-01-08');
INSERT INTO `ventas` VALUES (4, 7, 2, '2014-07-08');
INSERT INTO `ventas` VALUES (5, 5, 8, '2019-05-07');
INSERT INTO `ventas` VALUES (15, 5, 1, '2021-05-18');

SET FOREIGN_KEY_CHECKS = 1;
