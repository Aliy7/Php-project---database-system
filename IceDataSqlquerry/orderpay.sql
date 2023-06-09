
CREATE TABLE orderpay (
    orderid INT(5),
    custid INT(5),
    date VARCHAR(10),
    cardnum VARCHAR(25),
    cardtype VARCHAR(25),
    totalpay DECIMAL(10,2),
    PRIMARY KEY (orderid),
    FOREIGN KEY (custid) REFERENCES cust(custid)
);

INSERT INTO `orderpay` VALUES(1, 316, '10/29/2013', 'xxxxxxxxxxxx3190', 'visa', 136.26);
INSERT INTO `orderpay` VALUES(2, 300, '08/17/2014', 'xxxxxxxxxxx9627', 'diners-club-enroute', 130.18);
INSERT INTO `orderpay` VALUES(3, 352, '01/09/2014', 'xxxxxxxxxxxx4680', 'bankcard', 147.76);
INSERT INTO `orderpay` VALUES(4, 352, '04/18/2014', 'xxxxxxxxxxxx4310', 'visa', 181.43);
INSERT INTO `orderpay` VALUES(5, 302, '03/26/2014', 'xxxxxxxxxxxx0420', 'visa', 99.65);
INSERT INTO `orderpay` VALUES(6, 304, '09/29/2013', 'xxxxxxxxxxxxxx9000', 'switch', 144.56);
INSERT INTO `orderpay` VALUES(7, 211, '08/19/2014', 'xxxxxxxxxxxx0320', 'china-unionpay', 136.99);
INSERT INTO `orderpay` VALUES(8, 265, '05/02/2014', 'xxxxxxxxxx3167', 'diners-club-carte-blanche', 119.72);
INSERT INTO `orderpay` VALUES(9, 345, '02/23/2014', 'xxxxxxxxxxxx0550', 'mastercard', 175.44);
INSERT INTO `orderpay` VALUES(10, 150, '06/16/2014', 'xxxxxxxxxxx0485', 'diners-club-enroute', 117.76);
INSERT INTO `orderpay` VALUES(11, 234, '11/24/2013', 'xxxxxxxxxxxxxx3000', 'switch', 114.14);
INSERT INTO `orderpay` VALUES(12, 302, '01/23/2014', 'xxxxxxxxxxxx4590', 'visa-electron', 145.13);
INSERT INTO `orderpay` VALUES(13, 316, '09/21/2013', 'xxxxxxxxxxxx3590', 'visa', 119.13);
INSERT INTO `orderpay` VALUES(14, 275, '02/08/2014', 'xxxxxxxxxxxx5500', 'visa', 131.62);
INSERT INTO `orderpay` VALUES(15, 211, '05/02/2014', 'xxxxxxxxxxxxxx8000', 'switch', 90.02);
INSERT INTO `orderpay` VALUES(16, 227, '10/16/2013', 'xxxxxxxxxxxx9380', 'visa', 133.38);
INSERT INTO `orderpay` VALUES(17, 319, '04/04/2014', 'xxxxxxxxxxx3134', 'diners-club-enroute', 117.64);
INSERT INTO `orderpay` VALUES(18, 277, '12/26/2013', 'xxxxxxxxxxxxx9200', 'china-unionpay', 159.52);
INSERT INTO `orderpay` VALUES(19, 311, '02/04/2014', 'xxxxxxxxxxxx1380', 'maestro', 140.19);
INSERT INTO `orderpay` VALUES(20, 181, '12/01/2013', 'xxxxxxxxxxx8711', 'maestro', 114.90);
INSERT INTO `orderpay` VALUES(21, 247, '04/22/2014', 'xxxxxxxxxxxx0470', 'visa', 150.22);
INSERT INTO `orderpay` VALUES(22, 128, '11/28/2013', 'xxxxxxxxxxxx7910', 'visa', 135.05);
INSERT INTO `orderpay` VALUES(23, 178, '01/19/2014', 'xxxxxxxxxxxx8770', 'visa', 130.61);
INSERT INTO `orderpay` VALUES(24, 161, '10/30/2013', 'xxxxxxxxxxxx6290', 'visa', 119.29);
INSERT INTO `orderpay` VALUES(25, 261, '09/13/2014', 'xxxxxxxxxxxx1980', 'visa', 175.19);
INSERT INTO `orderpay` VALUES(26, 165, '07/01/2014', 'xxxxxxxxxxxx3260', 'visa', 135.42);
INSERT INTO `orderpay` VALUES(27, 290, '05/20/2014', 'xxxxxxxxxxxx8370', 'visa', 126.86);
INSERT INTO `orderpay` VALUES(28, 159, '07/07/2014', 'xxxxxxxxxxxxxxx0000', 'maestro', 90.30);
INSERT INTO `orderpay` VALUES(29, 138, '03/04/2014', 'xxxxxxxxxxxx8620', 'visa', 111.27);
INSERT INTO `orderpay` VALUES(30, 316, '06/17/2014', 'xxxxxxxxxxxx9630', 'visa', 123.27);
INSERT INTO `orderpay` VALUES(31, 278, '01/28/2014', 'xxxxxxxxxxxx3880', 'visa', 100.77);
INSERT INTO `orderpay` VALUES(32, 182, '12/02/2013', 'xxxxxxxxxxxx1430', 'visa', 166.70);
INSERT INTO `orderpay` VALUES(33, 261, '04/14/2014', 'xxxxxxxxxxxx4450', 'visa', 140.33);
INSERT INTO `orderpay` VALUES(34, 350, '03/04/2014', 'xxxxxxxxxxxx1610', 'visa', 84.50);
INSERT INTO `orderpay` VALUES(35, 338, '07/11/2014', 'xxxxxxxxxx6419', 'diners-club-carte-blanche', 121.00);
INSERT INTO `orderpay` VALUES(36, 341, '12/26/2013', 'xxxxxxxxxxxx0860', 'visa', 135.53);
INSERT INTO `orderpay` VALUES(37, 351, '07/11/2014', 'xxxxxxxxxxxx6450', 'mastercard', 163.67);
INSERT INTO `orderpay` VALUES(38, 186, '03/08/2014', 'xxxxxxxxxxxx1120', 'visa', 205.82);
INSERT INTO `orderpay` VALUES(39, 249, '02/18/2014', 'xxxxxxxxxxxx5350', 'maestro', 115.98);
INSERT INTO `orderpay` VALUES(40, 277, '07/06/2014', 'xxxxxxxxxxxx3900', 'visa', 119.78);
INSERT INTO `orderpay` VALUES(41, 316, '07/06/2014', 'xxxxxxxxxxxx5490', 'visa', 142.09);
INSERT INTO `orderpay` VALUES(42, 167, '11/15/2013', 'xxxxxxxxxxxxx1700', 'laser', 99.96);
INSERT INTO `orderpay` VALUES(43, 319, '04/15/2014', 'xxxxxxxxxxxx5610', 'mastercard', 134.77);
INSERT INTO `orderpay` VALUES(44, 351, '11/09/2013', 'xxxxxxxxxxxx3100', 'visa', 124.94);
INSERT INTO `orderpay` VALUES(45, 351, '06/06/2014', 'xxxxxxxxxxxxxxx0000', 'laser', 107.71);
INSERT INTO `orderpay` VALUES(46, 306, '01/14/2014', 'xxxxxxxxxxxx2260', 'visa', 146.25);
INSERT INTO `orderpay` VALUES(47, 288, '07/12/2014', 'xxxxxxxxxxxxx1300', 'maestro', 164.04);
INSERT INTO `orderpay` VALUES(48, 350, '04/06/2014', 'xxxxxxxxxxxx3210', 'visa', 97.87);
INSERT INTO `orderpay` VALUES(49, 277, '03/19/2014', 'xxxxxxxxxxxx4750', 'visa', 113.90);
INSERT INTO `orderpay` VALUES(50, 133, '09/03/2014', 'xxxxxxxxxx7816', 'diners-club-carte-blanche', 136.50);
INSERT INTO `orderpay` VALUES(51, 204, '06/02/2014', 'xxxxxxxxxxx4904', 'americanexpress', 104.85);
INSERT INTO `orderpay` VALUES(52, 211, '08/10/2014', 'xxxxxxxxxxxx5630', 'mastercard', 130.64);
INSERT INTO `orderpay` VALUES(53, 157, '12/27/2013', 'xxxxxxxxxxxx8960', 'bankcard', 124.90);
INSERT INTO `orderpay` VALUES(54, 312, '11/13/2013', 'xxxxxxxxxxxx4750', 'visa', 107.19);
INSERT INTO `orderpay` VALUES(55, 316, '03/24/2014', 'xxxxxxxxxxxx5340', 'visa-electron', 133.66);
INSERT INTO `orderpay` VALUES(56, 133, '07/28/2014', 'xxxxxxxxxxx0160', 'americanexpress', 162.20);
INSERT INTO `orderpay` VALUES(57, 316, '10/25/2013', 'xxxxxxxxxx7145', 'diners-club-carte-blanche', 150.83);
INSERT INTO `orderpay` VALUES(58, 261, '04/30/2014', 'xxxxxxxxxxxx3540', 'visa', 128.46);
INSERT INTO `orderpay` VALUES(59, 181, '05/11/2014', 'xxxxxxxxxxxx7840', 'switch', 84.66);
INSERT INTO `orderpay` VALUES(60, 128, '10/14/2013', 'xxxxxxxxxxxxxx3000', 'china-unionpay', 105.50);
INSERT INTO `orderpay` VALUES(61, 150, '06/12/2014', 'xxxxxxxxxxxxxxx0000', 'switch', 151.70);
INSERT INTO `orderpay` VALUES(62, 133, '01/31/2014', 'xxxxxxxxxxxx0360', 'visa', 161.45);
INSERT INTO `orderpay` VALUES(63, 316, '12/30/2013', 'xxxxxxxxxxx2447', 'americanexpress', 143.04);
INSERT INTO `orderpay` VALUES(64, 316, '12/09/2013', 'xxxxxxxxxxxx8230', 'visa-electron', 150.84);
INSERT INTO `orderpay` VALUES(65, 351, '03/01/2014', 'xxxxxxxxxxxx2650', 'visa', 130.37);
INSERT INTO `orderpay` VALUES(66, 186, '02/24/2014', 'xxxxxxxxxxxx5650', 'visa', 143.89);
INSERT INTO `orderpay` VALUES(67, 180, '12/29/2013', 'xxxxxxxxxxxx6870', 'visa', 181.37);
INSERT INTO `orderpay` VALUES(68, 122, '03/28/2014', 'xxxxxxxxxxxx0750', 'visa-electron', 160.54);
INSERT INTO `orderpay` VALUES(69, 277, '09/24/2013', 'xxxxxxxxxxxx7060', 'visa', 124.41);
INSERT INTO `orderpay` VALUES(70, 338, '11/19/2013', 'xxxxxxxxxxxx0030', 'visa', 115.77);
INSERT INTO `orderpay` VALUES(71, 257, '10/15/2013', 'xxxxxxxxxxxx0330', 'visa', 168.98);
INSERT INTO `orderpay` VALUES(72, 151, '10/10/2013', 'xxxxxxxxxxxx8210', 'mastercard', 142.14);
INSERT INTO `orderpay` VALUES(73, 165, '11/23/2013', 'xxxxxxxxxxxx1270', 'visa', 160.77);
INSERT INTO `orderpay` VALUES(74, 131, '07/24/2014', 'xxxxxxxxxxxx1510', 'bankcard', 158.42);
INSERT INTO `orderpay` VALUES(75, 238, '02/05/2014', 'xxxxxxxxxxx9263', 'diners-club-enroute', 127.95);
INSERT INTO `orderpay` VALUES(76, 265, '07/13/2014', 'xxxxxxxxxxxx3240', 'visa', 131.07);
INSERT INTO `orderpay` VALUES(77, 227, '06/09/2014', 'xxxxxxxxxxx7881', 'maestro', 137.59);
INSERT INTO `orderpay` VALUES(78, 288, '03/12/2014', 'xxxxxxxxxxxx3510', 'switch', 83.87);
INSERT INTO `orderpay` VALUES(79, 256, '08/11/2014', 'xxxxxxxxxxxx9820', 'visa', 148.45);
INSERT INTO `orderpay` VALUES(80, 306, '12/25/2013', 'xxxxxxxxxxxx9680', 'visa', 154.35);
INSERT INTO `orderpay` VALUES(81, 351, '12/14/2013', 'xxxxxxxxxx5343', 'diners-club-international', 134.03);
INSERT INTO `orderpay` VALUES(82, 247, '05/09/2014', 'xxxxxxxxxxxx2770', 'visa', 116.38);
INSERT INTO `orderpay` VALUES(83, 320, '06/22/2014', 'xxxxxxxxxxxx0350', 'mastercard', 151.32);
INSERT INTO `orderpay` VALUES(84, 128, '02/03/2014', 'xxxxxxxxxxxx6650', 'visa', 202.25);
INSERT INTO `orderpay` VALUES(85, 340, '11/26/2013', 'xxxxxxxxxxxxxx5000', 'maestro', 160.91);
INSERT INTO `orderpay` VALUES(86, 238, '07/12/2014', 'xxxxxxxxxxxx8570', 'visa', 120.37);
INSERT INTO `orderpay` VALUES(87, 283, '07/31/2014', 'xxxxxxxxxxx4271', 'diners-club-enroute', 144.45);
INSERT INTO `orderpay` VALUES(88, 165, '10/10/2013', 'xxxxxxxxxxxx5550', 'mastercard', 138.30);
INSERT INTO `orderpay` VALUES(89, 338, '02/28/2014', 'xxxxxxxxxxxxxx8000', 'solo', 167.15);
INSERT INTO `orderpay` VALUES(90, 334, '07/22/2014', 'xxxxxxxxxxxx4290', 'visa', 146.56);
INSERT INTO `orderpay` VALUES(91, 201, '08/09/2014', 'xxxxxxxxxxxx1230', 'mastercard', 126.92);
INSERT INTO `orderpay` VALUES(92, 353, '10/23/2013', 'xxxxxxxxxxxx3430', 'switch', 129.22);
INSERT INTO `orderpay` VALUES(93, 227, '08/01/2014', 'xxxxxxxxxxxx0520', 'visa', 137.53);
INSERT INTO `orderpay` VALUES(94, 311, '09/15/2014', 'xxxxxxxxxxxx3610', 'instapayment', 132.65);
INSERT INTO `orderpay` VALUES(95, 159, '10/12/2013', 'xxxxxxxxxxxxx8000', 'laser', 103.99);
INSERT INTO `orderpay` VALUES(96, 140, '03/01/2014', 'xxxxxxxxxxxx9130', 'maestro', 121.57);
INSERT INTO `orderpay` VALUES(97, 234, '04/28/2014', 'xxxxxxxxxxxx1490', 'mastercard', 117.42);
INSERT INTO `orderpay` VALUES(98, 302, '03/28/2014', 'xxxxxxxxxxxx7800', 'bankcard', 80.70);
INSERT INTO `orderpay` VALUES(99, 320, '12/30/2013', 'xxxxxxxxxxxx5050', 'maestro', 144.98);
INSERT INTO `orderpay` VALUES(100, 351, '05/06/2014', 'xxxxxxxxxxxx1420', 'visa', 112.02);
INSERT INTO `orderpay` VALUES(101, 121, '10/23/2013', 'xxxxxxxxxxxx5200', 'maestro', 137.35);
INSERT INTO `orderpay` VALUES(102, 306, '01/26/2014', 'xxxxxxxxxxxxxx3000', 'solo', 86.43);
INSERT INTO `orderpay` VALUES(103, 228, '05/27/2014', 'xxxxxxxxxxxx0750', 'bankcard', 143.53);
INSERT INTO `orderpay` VALUES(104, 140, '04/02/2014', 'xxxxxxxxxxxx9230', 'visa', 95.14);
INSERT INTO `orderpay` VALUES(105, 182, '04/01/2014', 'xxxxxxxxxxxx4370', 'visa', 107.40);
INSERT INTO `orderpay` VALUES(106, 154, '03/15/2014', 'xxxxxxxxxxxxxx9000', 'maestro', 124.41);
INSERT INTO `orderpay` VALUES(107, 159, '02/16/2014', 'xxxxxxxxxxxx3360', 'mastercard', 157.75);
INSERT INTO `orderpay` VALUES(108, 204, '03/09/2014', 'xxxxxxxxxxxxxx2000', 'laser', 108.15);
INSERT INTO `orderpay` VALUES(109, 225, '10/15/2013', 'xxxxxxxxxxxx0860', 'visa', 127.47);
INSERT INTO `orderpay` VALUES(110, 283, '03/27/2014', 'xxxxxxxxxxxx4570', 'visa', 150.57);
INSERT INTO `orderpay` VALUES(111, 322, '04/04/2014', 'xxxxxxxxxxxx0780', 'visa-electron', 124.82);
INSERT INTO `orderpay` VALUES(112, 290, '08/05/2014', 'xxxxxxxxxxxx8130', 'visa', 130.56);
INSERT INTO `orderpay` VALUES(113, 202, '09/26/2013', 'xxxxxxxxxxxx7140', 'visa', 138.52);
INSERT INTO `orderpay` VALUES(114, 151, '06/13/2014', 'xxxxxxxxxxxx1070', 'mastercard', 114.45);
INSERT INTO `orderpay` VALUES(115, 311, '01/26/2014', 'xxxxxxxxxxxx2730', 'visa', 130.28);
INSERT INTO `orderpay` VALUES(116, 148, '04/02/2014', 'xxxxxxxxxxxx1210', 'visa', 114.90);
INSERT INTO `orderpay` VALUES(117, 341, '05/08/2014', 'xxxxxxxxxxxx3400', 'visa', 97.53);
INSERT INTO `orderpay` VALUES(118, 159, '06/26/2014', 'xxxxxxxxxxxxxx6000', 'maestro', 93.10);
INSERT INTO `orderpay` VALUES(119, 316, '02/10/2014', 'xxxxxxxxxxxx2480', 'visa-electron', 138.35);
INSERT INTO `orderpay` VALUES(120, 351, '03/11/2014', 'xxxxxxxxxxxx4040', 'visa', 104.65);
INSERT INTO `orderpay` VALUES(121, 261, '10/17/2013', 'xxxxxxxxxxx7197', 'diners-club-enroute', 124.98);
INSERT INTO `orderpay` VALUES(122, 341, '08/23/2014', 'xxxxxxxxxxxx8810', 'jcb', 122.25);
INSERT INTO `orderpay` VALUES(123, 311, '11/25/2013', 'xxxxxxxxxxxx6800', 'visa', 129.68);
INSERT INTO `orderpay` VALUES(124, 221, '06/09/2014', 'xxxxxxxxxxxx9220', 'visa', 91.98);
INSERT INTO `orderpay` VALUES(125, 307, '07/20/2014', 'xxxxxxxxxxxx8210', 'visa', 155.96);
