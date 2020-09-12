-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2020 at 01:46 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', '2017-01-24 16:21:18', '10-09-2020 04:19:08 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, 'Vegetables', 'veg', '2017-01-24 19:17:37', '09-09-2017 10:00:00 AM'),
(4, 'FOODGRAINS', 'foodgrains', '2017-01-24 19:19:32', '09-09-2017 10:00:00 AM'),
(5, 'Bakery', 'test', '2017-01-24 19:19:54', '09-09-2017 10:00:00 AM'),
(6, 'SNACKS', 'snacks', '2017-02-20 19:18:52', '09-09-2017 10:00:00 AM'),
(7, 'KITCHEN', 'KITCHEN', '2017-01-24 19:17:37', '09-09-2020 10:00:00 AM'),
(8, 'BABY CARE', 'care for baby products', '2017-01-24 19:19:32', '09-09-2017 10:00:00 AM'),
(13, 'Covid Essentials', 'daily Essentials', '2020-09-09 19:19:07', '2020-09-10 00:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '2', 1, '2020-09-09 14:09:16', 'Internet Banking', NULL),
(8, 4, '25', 1, '2020-09-10 09:50:30', 'Internet Banking', 'in Process'),
(9, 4, '23', 1, '2020-09-10 10:00:50', 'COD', 'in Process'),
(10, 4, '24', 1, '2020-09-10 10:00:50', 'COD', NULL),
(11, 4, '28', 1, '2020-09-10 10:27:21', 'COD', NULL),
(12, 4, '30', 1, '2020-09-10 10:27:21', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36'),
(5, 8, 'in Process', 'Item confirmed.please wait for another response from our Team \r\nYourbasket.in ', '2020-09-10 09:51:57'),
(6, 8, 'Delivered', 'Item delivered.', '2020-09-10 09:52:52'),
(7, 8, 'in Process', 'Item confirmed.please wait for another response from our Team \r\nYourbasket.in ', '2020-09-10 09:56:15'),
(8, 9, 'in Process', 'bhai teher ja process me he', '2020-09-10 10:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(22, 13, 23, 'Dettol Hand wash Liquid', 'xyz ltd.', 42, 78, 'Liquid hand wash refil skincare<br>', '263970_20-dettol-hand-wash-liquid-refill-skincare.webp', '263970_20-dettol-hand-wash-liquid-refill-skincare.webp', '263970_20-dettol-hand-wash-liquid-refill-skincare.webp', 6, 'In Stock', '2020-09-09 19:45:02', NULL),
(23, 4, 14, 'SLV Bullet Original Sortex Kolam Rice 10 kg', 'xyz ltd.', 789, 942, 'slv bullet original&nbsp; sortex kolam rice<br>', 'rices.jfif', 'rices.jfif', 'rices.jfif', 10, 'In Stock', '2020-09-09 19:53:12', NULL),
(24, 4, 24, 'Fortune Rozana Basmati Rice 1kg', 'xyz ltd.', 66, 78, 'Fortune rozana basmati rice<br>', 'shopping.jfif', 'shopping.jfif', 'shopping.jfif', 0, 'In Stock', '2020-09-09 19:54:45', NULL),
(25, 4, 14, 'Daawat Rozana Mogra Basmati Rice 5kg', 'xyz ltd.', 322, 358, '(Daawat Rozana Mogra Basmati Rice 5kg) Broken Rice<br>', 'rice 5.jfif', 'rice 5.jfif', 'rice 5.jfif', 12, 'In Stock', '2020-09-09 19:57:21', NULL),
(26, 4, 14, 'Daawat Biryani Basmati Rice 5kg', 'xyz ltd.', 600, 941, 'Long Grain 5 kg<br>', 'rice4.jfif', 'rice4.jfif', 'rice4.jfif', 10, 'In Stock', '2020-09-09 19:58:51', NULL),
(27, 4, 24, 'Daawat Biryani Basmati Rice 1kg', 'xyz ltd.', 193, 220, 'dawat biryani basmati rice 1 kg<br>', 'rice3.png', 'rice3.png', 'rice3.png', 2, 'In Stock', '2020-09-09 20:00:03', NULL),
(28, 3, 25, 'Apple – Red Delicious / Washington, 4pcs', 'xyz.co', 192, 218, 'Apple – Red Delicious / Washington, 4pcs<br>', 'apple-red-delicious.jpg', 'apple-red-delicious11-405x330.jpg', 'apple-red-delicious.jpg', 0, 'In Stock', '2020-09-09 20:05:04', NULL),
(29, 3, 25, 'Pomegranate, 2 pcs (approx. 440 to 500 g)', 'xyz.co', 79, 98, 'Pomegranate, 2 pcs (approx. 440 to 500 g)<br>', 'pome22-405x330.jpg', 'pomogranate.png', 'pome22-405x330.jpg', 1, 'In Stock', '2020-09-09 20:27:48', NULL),
(30, 3, 25, 'Pineapple, 1 pc (Approx. 750-800g)', 'xyz ltd.', 63, 72, 'Pineapple, 1 pc (Approx. 750-800g)<br>', 'Pineapple2-11-405x330.jpg', 'Pineapple2-11-405x330.jpg', 'Pineapple2-11-405x330.jpg', 1, 'In Stock', '2020-09-09 20:29:14', NULL),
(32, 3, 25, ' Raw Mango, (500g)', 'xyz ltd.', 50, 70, '&nbsp;Raw Mango, (500g)<br>', 'mango11.jpg', 'raw-mango.jpg', 'mango11.jpg', 0, 'In Stock', '2020-09-09 20:31:31', NULL),
(33, 3, 13, ' Ginger, 100 g', 'xyz ltd.', 16, 22, '&nbsp;Ginger, 100 g<br>', 'ginger_22.jpg', 'Ginger_12.jpg', 'ginger_22.jpg', 0, 'In Stock', '2020-09-09 20:37:40', NULL),
(34, 3, 13, ' Curry Leaves, 100 g', 'xyz ltd.', 10, 13, '&nbsp;Curry Leaves, 100 g<br>', 'curly11.jpg', 'curry-leaves-500x500-1.jpg', 'curry-leaves-500x500-1.jpg', 0, 'In Stock', '2020-09-09 20:41:12', NULL),
(35, 3, 13, ' Mint Leaves, 100 g', 'xyz.co', 10, 13, '\r\n						\r\n\r\n				<font size=\"2\">Mint leavers 100g<br></font>', 'mint11.jpg', '266128_2200-732x549-1.jpg', '266128_2200-732x549-1.jpg', 0, 'In Stock', '2020-09-09 20:43:13', NULL),
(36, 3, 13, 'Sweet Corn, 2 pcs', 'xyz ltd.', 60, 78, 'Sweet Corn, 2 pcs<br>', 'sweet_corn_11.jpg', 'sweet-corn11.jpg', 'sweet_corn_11.jpg', 0, 'In Stock', '2020-09-09 20:45:48', NULL),
(37, 4, 24, 'Moong Daal 1 kg', 'xyz ltd.', 237, 345, 'Moong daal sudh desi maza<br>', 'index.jfif', 'index1.jfif', '2.jfif', 1, 'In Stock', '2020-09-09 20:51:46', NULL),
(38, 13, 23, 'oriley kn-95 Mask ', 'xyz', 95, 100, 'oriley kn-95 Mask <br>', '61ek69bhwiL._AC_UL320_.jpg', '61ek69bhwiL._AC_UL320_.jpg', '61ek69bhwiL._AC_UL320_.jpg', 0, 'In Stock', '2020-09-09 21:04:07', NULL),
(39, 13, 23, 'oriley kn-95 Mask FDa approved  2 pcs', 'applo.cg', 169, 200, 'Oriley k n-95 mask approved by the FDA and Disposable face mask with Nose pin for men and women<br>', '614jROg1U6L._AC_UL320_.jpg', '614jROg1U6L._AC_UL320_.jpg', '614jROg1U6L._AC_UL320_.jpg', 2, 'In Stock', '2020-09-09 21:07:55', NULL),
(40, 13, 23, 'Marcloire - Made in India', 'applo.cg', 200, 249, 'Marcloire - Made in India Sstandard 3 pics <br>', '81Dnk-RAs1L._AC_UL320_.jpg', '81Dnk-RAs1L._AC_UL320_.jpg', '81Dnk-RAs1L._AC_UL320_.jpg', 0, 'In Stock', '2020-09-09 21:09:44', NULL),
(41, 13, 23, 'Khadi Essentials Pure&Safe 5 Layered Reusable Washable N95', 'applo.cg', 1100, 1169, 'Khadi Essentials Pure&amp;Safe 5 Layered Reusable Washable N95 pack of 5<br>', '31Hh18SnUiL._AC_UL320_.jpg', '31Hh18SnUiL._AC_UL320_.jpg', '31Hh18SnUiL._AC_UL320_.jpg', 20, 'In Stock', '2020-09-09 21:13:16', NULL),
(42, 7, 17, 'Paak-Kala Evam Continental Vyanjan', 'Digvijay foods', 400, 420, 'Paak-Kala Evam Continental Vyanjan<br>', '71Rh3ndatYL._AC_UY218_.jpg', '71Rh3ndatYL._AC_UY218_.jpg', '71Rh3ndatYL._AC_UY218_.jpg', 0, 'In Stock', '2020-09-09 21:21:57', NULL),
(43, 7, 17, 'Paak-Kala Evam Continental Vyanjan', 'Digvijay foods', 400, 420, 'Paak-Kala Evam Continental Vyanjan<br>', '71Rh3ndatYL._AC_UY218_.jpg', '71Rh3ndatYL._AC_UY218_.jpg', '71Rh3ndatYL._AC_UY218_.jpg', 0, 'In Stock', '2020-09-09 21:22:03', NULL),
(44, 5, 15, 'Sweet fresh cookies(5)', 'freshcookies mart', 192, 200, 'Sweet fresh cookies(5)<br>', '81IRZI9W2DL._AC_UY218_.jpg', '81IRZI9W2DL._AC_UY218_.jpg', '81IRZI9W2DL._AC_UY218_.jpg', 1, 'In Stock', '2020-09-09 21:23:47', NULL),
(45, 5, 15, 'Sweet fresh cookies(5)', 'freshcookies mart', 192, 200, 'Sweet fresh cookies(5)<br>', '81IRZI9W2DL._AC_UY218_.jpg', '81IRZI9W2DL._AC_UY218_.jpg', '81IRZI9W2DL._AC_UY218_.jpg', 1, 'In Stock', '2020-09-09 21:23:55', NULL),
(46, 5, 15, 'Sweet fresh cookies(5)', 'freshcookies mart', 192, 200, 'Sweet fresh cookies(5)<br>', '81IRZI9W2DL._AC_UY218_.jpg', '81IRZI9W2DL._AC_UY218_.jpg', '81IRZI9W2DL._AC_UY218_.jpg', 1, 'In Stock', '2020-09-09 21:23:58', NULL),
(48, 7, 17, 'Swadisht Nasta Banana Sikhen', 'xyz.co', 213, 300, 'Swadisht Nasta Banana Sikhen<br>', '71fpRAqEDuL._AC_UY218_.jpg', '71fpRAqEDuL._AC_UY218_.jpg', '71fpRAqEDuL._AC_UY218_.jpg', 0, 'In Stock', '2020-09-09 21:25:48', NULL),
(52, 6, 16, 'Tong Garden Party Snacks & Salted Peanut Combo, 900 Gm', 'snacks man india', 560, 600, 'Tong Garden Party Snacks &amp; Salted Peanut Combo, 900 Gm<br>', '71tVnWKzuGL._AC_UL320_.jpg', '71tVnWKzuGL._AC_UL320_.jpg', '71tVnWKzuGL._AC_UL320_.jpg', 10, 'In Stock', '2020-09-09 21:28:50', NULL),
(53, 6, 16, 'Tong Garden Party Snacks & Salted Peanut Combo, 900 Gm', 'snacks man india', 300, 400, 'Tong Garden Party Snacks &amp; Salted Peanut Combo, 500 Gm<br>', '71tVnWKzuGL._AC_UL320_.jpg', '71tVnWKzuGL._AC_UL320_.jpg', '71tVnWKzuGL._AC_UL320_.jpg', 10, 'In Stock', '2020-09-09 21:28:54', NULL),
(55, 6, 16, 'Sunfest Dark Fantasy', 'choco mac.USA', 178, 200, 'Sunfest dark fantasy fills 600g<br>', '71wFB1Gvy4L._AC_UL320_.jpg', '71wFB1Gvy4L._AC_UL320_.jpg', '71wFB1Gvy4L._AC_UL320_.jpg', 0, 'In Stock', '2020-09-09 21:32:46', NULL),
(57, 6, 16, 'Sunfest Dark Fantasy', 'choco mac.USA', 178, 200, 'Sunfest dark fantasy fills 600g<br>', '71wFB1Gvy4L._AC_UL320_.jpg', '71wFB1Gvy4L._AC_UL320_.jpg', '71wFB1Gvy4L._AC_UL320_.jpg', 0, 'In Stock', '2020-09-09 21:33:03', NULL),
(58, 8, 19, 'Nestle Ceregrow Fortified ', 'Nestle.co.', 200, 250, 'Nestle Ceregrow Fortified&nbsp; Multigrain ccereal<br>', '81v37rha2FL._AC_UL320_.jpg', '81v37rha2FL._AC_UL320_.jpg', '81v37rha2FL._AC_UL320_.jpg', 2, 'In Stock', '2020-09-09 21:35:59', NULL),
(59, 8, 19, 'Nestle Ceregrow Fortified ', 'Nestle.co.', 200, 250, 'Nestle Ceregrow Fortified&nbsp; Multigrain ccereal<br>', '81v37rha2FL._AC_UL320_.jpg', '81v37rha2FL._AC_UL320_.jpg', '81v37rha2FL._AC_UL320_.jpg', 2, 'In Stock', '2020-09-09 21:36:04', NULL),
(60, 8, 19, 'Happa Organic Baby Food', 'happa.co', 150, 200, 'Happa organic Baby food <br>', '71DzkacEQGL._AC_UL320_.jpg', '71DzkacEQGL._AC_UL320_.jpg', '71DzkacEQGL._AC_UL320_.jpg', 1, 'In Stock', '2020-09-09 21:37:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 3, 'daily essentials', '2020-09-09 19:35:01', NULL),
(14, 4, 'Ocasional', '2020-09-09 19:35:08', NULL),
(15, 5, 'fresh', '2020-09-09 19:35:16', NULL),
(16, 6, 'Desi', '2020-09-09 19:35:25', NULL),
(17, 7, 'Cooking', '2020-09-09 19:35:43', NULL),
(19, 8, 'baby food', '2020-09-09 19:36:05', NULL),
(23, 13, 'Saftey', '2020-09-09 19:36:36', NULL),
(24, 4, 'daily', '2020-09-09 19:38:13', NULL),
(25, 3, 'Fruits', '2020-09-09 20:03:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'modi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-09 14:08:07', NULL, 1),
(25, 'modi@gmail.com', 0x3a3a3100000000000000000000000000, '2020-09-10 09:48:17', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(4, 'narendra modi ', 'modi@gmail.com', 7878787878, 'caacd35a900b68a8c4347d5c8564cc3d', 'haripur cross 3', 'Gujrat', 'Gandijiangar', 123456, 'haripur cross 3', 'Gujrat', 'Gandijiangar', 123456, '2020-09-09 14:07:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(2, 4, 28, '2020-09-10 10:24:36'),
(3, 4, 29, '2020-09-10 10:24:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
