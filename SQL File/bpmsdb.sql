-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2023 at 02:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 9750573937, 'tester1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2022-05-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblbook`
--

CREATE TABLE `tblbook` (
  `ID` int(10) NOT NULL,
  `UserID` int(10) DEFAULT NULL,
  `AptNumber` int(10) DEFAULT NULL,
  `AptDate` date DEFAULT NULL,
  `AptTime` time DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(250) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbook`
--

INSERT INTO `tblbook` (`ID`, `UserID`, `AptNumber`, `AptDate`, `AptTime`, `Message`, `BookingDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(10, 13, 246396032, '2023-12-04', '09:30:00', 'I want to do hair spa', '2023-12-03 14:58:47', 'come tomorrow', 'Selected', '2023-12-03 15:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontact`
--

CREATE TABLE `tblcontact` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(200) DEFAULT NULL,
  `LastName` varchar(200) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcontact`
--

INSERT INTO `tblcontact` (`ID`, `FirstName`, `LastName`, `Phone`, `Email`, `Message`, `EnquiryDate`, `IsRead`) VALUES
(7, 'tharshini', 't', 8300743286, 'haritharshinibscit@gmail.com', 'Your service is good', '2023-12-03 15:14:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(20, 13, 25, 724396216, '2023-12-03 15:09:42'),
(21, 13, 34, 724396216, '2023-12-03 15:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials &amp; fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '        BMC Market, 2nd Floor, Thisaiyanvlilai, Thirunelveli, TamilNadu(IND)- 627 657', 'ananthavallisri@gmail.com', 9750573937, NULL, '10:00 AM to 7:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServiceDescription` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServiceDescription`, `Cost`, `Image`, `CreationDate`) VALUES
(1, 'Normal Facial', 'Essentially, a facial treatment usually includes steaming, exfoliation, and extraction. Other providers will incorporate facial masks, peels, and facial massages. It essentially depends on the package you purchase and your provider.', 1200, '1a9c9968130e405b518ffbc084690d351701614799.jpg', '2022-05-24 22:37:38'),
(2, 'Fruit Facial', 'Fruit facials contain certain fruit acid like glycolic acid, alpha hydroxyl acid, citric acid, phenolic acid, vitamins and minerals in it. These acids are antiblemish, antiwrinkle and help your skin to exfoliate, it highly detoxifies your skin, it excretes out all the toxins and it hydrates your face', 1000, 'How-To-Do-Fruit-Facial-At-Home.jpg', '2022-05-24 22:37:53'),
(3, 'Charcol Facial', 'Activated charcoal is created from bone char, coconut shells, peat, petroleum coke, coal, olive pits, bamboo, or sawdust. It is in the form of a fine black dust that is produced when regular charcoal is activated by exposing it to very high temperatures. This is done to alter its internal structure and increase its surface area to increase absorbability. The charcoal that you get after it has undergone this process is very porous.', 1000, 'b9fb9d37bdf15a699bc071ce49baea531652852364.jpg', '2022-05-24 22:37:10'),
(6, 'Normal Menicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 1000, 'The-Dummys-Guide-To-Using-A-Manicure-Kit_OI.jpg', '2022-05-24 22:37:01'),
(7, 'Normal Pedicure', 'A luxurious treatment including a soak and moisturizing exfoliation, cuticle work, nails clipped and filed, hard skin is removed (pedicure) and a renewing mask is applied. A short massage and your nails are buffed and ready to paint.', 1200, '1e6ae4ada992769567b71815f124fac51652852492.jpg', '2022-05-24 22:37:19'),
(8, 'U-Shape Hair Cut', 'The back and sides are cut in a U-shape which is more rounded and softer, versus a V-cut that has more extreme angles and points', 750, '5ed7fdf97d87bbe637a0dfca1f783e4f1701770528jpeg', '2022-05-24 22:37:38'),
(12, 'Body Spa', 'It is typically a massage spa therapy that helps reduce pain. The technique involves using fingertips, palm, elbow, or even feet to apply firm pressure on certain body parts or acupoint to encourage blood flow and promote healing', 1500, 'efc1a80c391be252d7d777a437f868701652852477.jpg', '2022-05-19 01:38:27'),
(18, 'Golden Facial', 'A gold facial is just as refreshing for the skin and is composed of products containing a hint of gold. These include a scrub, face mask and cream. 24k gold is the main component of this facial, often mixed with other anti-inflammatory ingredients including aloe vera, saffron, and rose water, to name a few.', 1200, '1ff3ee2abe789d75ba327f554626fbca1701608128.jpg', '2023-12-03 12:55:28'),
(19, 'Strawberry Facial', 'Fruits like strawberries, oranges, grapes and kiwi have several defensive properties that protect your skin from free radicals like pollution and sun damage while adding a natural glow.', 1100, 'fc41b360751c76a7659ba577a312680e1701608731.jpg', '2023-12-03 12:58:59'),
(20, 'Metal Facial', 'Face rolling can stimulate your lymphatic system and stimulate blood flow. Adding a face rolling tool made from materials like jade, rose or quartz to your beauty routine can help ease tension and reduce inflammation in the skin.', 1200, 'b1500d2a3ea1641fdc5a2ceeac020c301701608493.jpg', '2023-12-03 13:01:33'),
(21, 'Platinum Facial', 'The platinum facial, incorporates 4 essential treatments. Exfoliation, Oxygenation, product infusion, Skin tightening/contouring.', 1200, '3a0ab4cc07d15c0312dfd5339ca7dcd51701611032.jpg', '2023-12-03 13:14:14'),
(22, 'Silver Facial', 'Nourishes the skin from within and lends it a healthy glow. It evens out skin tone, nourishes dry, patchy skin to a reveal clear, luminous, youthful complexion.', 1200, '95fbd11f31d0ecda8763e827ff9a17981701611278.jpg', '2023-12-03 13:15:16'),
(23, 'Pimple Facial', 'Acne is a common skin condition that happens when hair follicles under the skin become clogged. Sebum—oil that helps keep skin from drying out—and dead skin cells plug the pores, which leads to outbreaks of lesions, commonly called pimples or zits.', 1400, 'e09c54f0cd01b6c9da7c17aeffbf3ce91701612972.jpg', '2023-12-03 13:15:26'),
(24, 'Black Neck Facial', 'Dark neck, or black neck, is a common condition that may appear as a band or line of skin around the back and sides of the neck that is darker than the surrounding skin. It is not contagious and is generally benign (not harmful), but it may be a sign of an underlying health condition.', 1500, '156fac86322e6624d6119b4bd9f190041701611745jpeg', '2023-12-03 13:15:31'),
(25, 'Straight Hair Cut', 'Depending on the thickness of your hair and your face shape, the best cuts for straight hair can range from a sleek bob to long layers. Those with a round face, for example, might opt for a shorter cut with side bangs. Angular bobs are popular because the cut falls into place with little to no hair maintenance needed.', 500, '77e0d7d7bfc934adb3c2e40f031bca521701611824.jpg', '2023-12-03 13:15:34'),
(26, 'V-Shape Hair Cut', 'The V-shaped haircut is a popular look, especially for long hair. Instead of having even tips, your hair is cut into layers on ends forming a “V”, which you can best show off when you let your hair down. It\'s a refreshing way to add dimension and movement to long hair without creating an overly layered look.', 750, '3ece84917a18f5a641332ace1cfc54b91701612028jpeg', '2023-12-03 13:15:37'),
(27, 'Feather Hair Cut', 'A beautifully layered hairstyle for ladies known as a feather cut resembles the layering of bird feathers. Since the airy feathery hairstyles are a highly textured variant of a layered cut, they are usually cut in a V shape with a razor.', 1500, '9e044ea0ed5817381b189680f392bafe1701612168jpeg', '2023-12-03 13:15:39'),
(29, 'Threading', 'Threading is a type of hair removal that originated in India, Iran, and central Asia. Threading practitioners use a twisted cotton thread to remove several hairs at a time. It is mostly used for hair removal on the face, including eyebrows, upper lip, chin, and cheeks.', 100, 'a35de166f3cd110217f42458b23a95cd1701612676jpeg', '2023-12-03 13:15:45'),
(31, 'Mehandi ', 'Mehandi is the traditional art of painting the hands, feet or body with a paste made from the powdered, dried leaves of the henna plant.', 1000, '1a338e394c19e9a15ad6a12bcc6351101701612818jpeg', '2023-12-03 13:15:49'),
(33, 'Hair Curling', 'If the follicle angles into the dermis this will lead to a curve which will curl as it grows. It\'s because of this curving that curly hair generally is drier than straight hair as the curving makes it more difficult for sebum to travel the length of the hair. So the curlier the hair, the drier it will be.', 2500, '81e6e31bc70a96be3b8670324c7e134d1701612857jpeg', '2023-12-03 13:15:54'),
(34, 'Hair Smoothing', 'Hair smoothening is a salon treatment that involves the use of chemicals to alter the structure of the hair. It is designed to make hair smoother, shinier, and more manageable by reducing frizz and taming unruly curls or waves.', 3000, '1532a0b0b46d690de7fd81527c477a831701612914jpeg', '2023-12-03 13:15:56'),
(35, 'Baby Cutting', 'The best baby girl hair-cutting style for a toddler depends on her face shape, hair type, and season. Usually, bob-cuts, pixie cuts, bangs, or medium-length cuts suit most toddler girls.', 600, 'd970a8b3408dc73f511efcf4f7ebe4691701613019jpeg', '2023-12-03 13:15:58'),
(36, 'Bridal Makeup', 'Bridal makeup is a special type of makeup that is applied to a bride on her wedding day. It aims to enhance the bride\'s natural beauty and create a look that is both timeless and elegant. Bridal makeup typically focuses on creating a flawless complexion, accentuating the eyes, and enhancing the lips.', 6000, '3488c692c0604835c9b3374c7282b7661701613110jpeg', '2023-12-03 13:16:01'),
(37, 'Normal Makeup', 'Normal makeup is what you would use on a daily basis. It\'s regular makeup that your skin is comfortable with. It comes in different formulas and can be tweaked to suit your skin\'s needs. So if you have dry skin, a dewy formula would be better, whilst if you have oily skin a mattefying formula would be better.', 3000, 'a659cef5f3dfe473dd1bb521acb54c5d1701614574jpeg', '2023-12-03 13:16:03'),
(38, 'Party Makeup', 'Party makeup is just a step above the regular makeup you do every day. Also, party makeup usually looks consistent throughout the skin. This means we\'ll only use one shade of foundation to even out the skin tone. Makeup is an art form, and there is no set pattern or makeup rules that will work for everyone.', 5000, '2ad5dd788a80052d3b86b7e93803a8de1701613173jpeg', '2023-12-03 13:16:05'),
(39, 'Dandruff Treatment', 'Dandruff arises from ill-maintenance of the scalp, and scalp is what these Salons target. They exfoliate your scalp and cleanse it, so as to reduce dandruff. This also reduces excess oil from the scalp and stop dandruff buildup from the scalp.', 2500, 'ec69b16b942395498b0e957352a17f551701614609jpeg', '2023-12-03 13:16:07'),
(40, 'Hair Treatment', 'Hot oil treatments provide instant shine resulting in silky hair that feels nourished and smooth. Typically left the oils on the hair for about 12-20 minutes and then rinsed out, this professional salon hair treatment can do wonders for both dry and oily hair as well as damaged hair in no time flat.', 2000, '6c6d2971c8efaf4447c068504b634d331701614646jpeg', '2023-12-03 13:16:09'),
(42, 'Hair Coloring', 'Hair coloring works by coating each strand with color (non-permanent color) or by penetrating each hair cuticle, entering the hair cortex, and bonding with the hair (permanent color). While non-permanent hair color can be shampooed out eventually, permanent color, as the name suggests, permanently colors the hair.', 1750, 'fe32945e5630ef74b6602090eab0aac81701614672jpeg', '2023-12-03 13:16:13'),
(43, 'Henna Conditioner', 'Henna is an ancient medicinal plant that\'s been used as a natural dye for over 4,000 years. Its antifungal and antimicrobial properties may be beneficial for the hair and scalp, particularly for premature graying and reducing dandruff.', 800, '03ac9f4679d415a70cb51099be0af5ce1701614697jpeg', '2023-12-03 13:16:16'),
(44, 'Laser Treatment', 'Laser skin rejuvenation is a popular cosmetic procedure that uses laser technology to improve the appearance of the skin. The laser light is absorbed by the skin, which helps to stimulate collagen production and accelerate cell turnover.', 2500, '2340e26c30e9ba845e68a3c8c0d24ad61701614725.jpg', '2023-12-03 13:34:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(120) DEFAULT NULL,
  `LastName` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Password`, `RegDate`) VALUES
(13, 'Hari', 'Tharshini', 8300743286, 'haritharshinibscit@gmail.com', '60a9dc545e8b0714428e5ab2416af70b', '2023-12-03 14:50:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbook`
--
ALTER TABLE `tblbook`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcontact`
--
ALTER TABLE `tblcontact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbook`
--
ALTER TABLE `tblbook`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblcontact`
--
ALTER TABLE `tblcontact`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
