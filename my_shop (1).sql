-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2024 at 11:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(50) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_desc` varchar(250) NOT NULL,
  `product_cost` int(50) NOT NULL,
  `product_category` varchar(50) NOT NULL,
  `product_image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `product_name`, `product_desc`, `product_cost`, `product_category`, `product_image_name`) VALUES
(1, 'Twitter Post Scheduler', 'Schedule your tweets effortlessly.', 50, 'socialMedia', 'x.png'),
(2, 'Instagram Photo Editor', 'Edit and enhance your Instagram photos.', 30, 'socialMedia', 'in.png'),
(3, 'Facebook Ad Manager', 'Manage your Facebook ads effectively.', 100, 'socialMedia', 'fb.png'),
(4, 'Twitter Analytics Tool', 'Analyze your Twitter engagement.', 60, 'socialMedia', 'x.png'),
(5, 'Instagram Story Templates', 'Create stunning Instagram stories.', 20, 'socialMedia', 'in.png'),
(6, 'Facebook Video Creator', 'Create engaging videos for Facebook.', 40, 'socialMedia', 'fb.png'),
(7, 'Twitter Bot', 'Automate your Twitter interactions.', 90, 'socialMedia', 'x.png'),
(8, 'Instagram Hashtag Generator', 'Find the best hashtags for your posts.', 10, 'socialMedia', 'in.png'),
(9, 'Facebook Group Manager', 'Manage and grow your Facebook groups.', 50, 'socialMedia', 'fb.png'),
(10, 'Twitter Poll Creator', 'Create engaging polls for your followers.', 15, 'socialMedia', 'x.png'),
(17, 'samsung a03s', ' The Samsung Galaxy A03s is an affordable smartphone that combines practicality with essential features.', 30000, 'phones', 'phone1.jpg'),
(18, 'nokia', ' The Samsung Galaxy A03s is an affordable smartphone that combines practicality with essential features.', 54000, 'phones', 'phone2.jpg'),
(19, 'tecno spark', ' The tecno spark is an affordable smartphone that combines practicality with essential features.', 15000, 'phones', 'phone3.jpg'),
(20, 'nokia', ' The Samsung Galaxy A03s is an affordable smartphone that combines practicality with essential features.', 67000, 'phones', 'phone1.jpg'),
(21, 'tecno', ' The Samsung Galaxy A03s is an affordable smartphone that combines practicality with essential features.', 67000, 'phones', 'phone3.jpg'),
(22, 'nokia', ' The Samsung Galaxy A03s is an affordable smartphone that combines practicality with essential features.', 30000, 'phones', 'phone1.jpg'),
(23, 'iphone', ' The iphone is an affordable smartphone that combines practicality with essential features.', 67000, 'phones', 'phone2.jpg'),
(24, 'iphone', ' The Samsung Galaxy A03s is an affordable smartphone that combines practicality with essential features.', 67000, 'phones', 'phone2.jpg'),
(25, 'samsung', ' The Samsung Galaxy A03s is an affordable smartphone that combines practicality with essential features.', 67000, 'phones', 'phone1.jpg'),
(26, 'samsung', ' The Samsung Galaxy A03s is an affordable smartphone that combines practicality with essential features.', 30000, 'phones', 'phone2.jpg'),
(27, 'Dreamy Night Cream', 'A luxurious overnight moisturizer infused with hyaluronic acid and retinol, promoting hydration and reducing fine lines.', 45, 'Beauty', 'bed1.jpg'),
(28, 'Restorative Eye Serum', 'Lightweight serum targeting dark circles and puffiness with caffeine and peptides, featuring a cooling applicator.', 30, 'Beauty', 'bed2.jpg'),
(29, 'Overnight Hydration Mask', 'Intensive hydration mask with aloe vera and vitamin E, restoring moisture and leaving skin plump.', 28, 'Beauty', 'bed1.jpg'),
(30, 'Nourishing Lip Balm', 'Rich lip balm with shea butter and coconut oil, deeply moisturizing and repairing chapped lips.', 10, 'Beauty', 'bed2.jpg'),
(31, 'Soothing Body Lotion', 'Calming body lotion with chamomile and oatmeal, hydrating skin quickly without a greasy feel.', 20, 'Beauty', 'bed1.jpg'),
(32, 'Calming Facial Mist', 'Refreshing facial mist made with rose water and lavender, hydrating and soothing the skin.', 15, 'Beauty', 'bed2.jpg'),
(33, 'Sleepytime Hair Oil', 'Nourishing hair oil with argan and jojoba oils, repairing and hydrating hair overnight.', 25, 'Beauty', 'bed1.jpg'),
(34, 'Revitalizing Foot Cream', 'Intensive foot cream with peppermint and shea butter, softening and soothing tired feet.', 18, 'Beauty', 'bed2.jpg'),
(35, 'Gentle Cleansing Oil', 'Nourishing cleansing oil that removes makeup and impurities without stripping the skin.', 22, 'Beauty', 'bed1.jpg'),
(36, 'Essential Sleep Spray', 'Calming sleep spray infused with lavender and chamomile, promoting restful sleep when spritzed on pillows.', 12, 'Beauty', 'bed2.jpg'),
(37, 'Smart TV 55\"', 'A stunning 55-inch Smart TV with 4K resolution and HDR support for an immersive viewing experience.', 600, 'Electronics', 'alionskettle.jpg'),
(38, 'Wireless Headphones', 'High-quality wireless headphones with noise cancellation and up to 20 hours of battery life.', 200, 'Electronics', 'appl.jpg'),
(39, 'Bluetooth Speaker', 'Portable Bluetooth speaker with rich sound and waterproof design, perfect for outdoor use.', 80, 'Electronics', 'appl2.jpg'),
(40, 'Smartphone Pro X', 'Latest smartphone with a powerful processor, triple-camera system, and stunning display.', 1000, 'Electronics', 'alionskettle.jpg'),
(41, 'Laptop Air 13\"', 'Lightweight laptop with a 13-inch display, long battery life, and fast SSD storage.', 900, 'Electronics', 'appl.jpg'),
(42, 'Gaming Console', 'Next-gen gaming console with 4K gaming capability and a vast library of games.', 500, 'Electronics', 'appl2.jpg'),
(43, 'Smartwatch Series 6', 'Feature-rich smartwatch with fitness tracking, heart rate monitoring, and customizable watch faces.', 300, 'Electronics', 'alionskettle.jpg'),
(44, 'Digital Camera ZR', 'High-resolution digital camera with interchangeable lenses and advanced shooting modes.', 650, 'Electronics', 'appl.jpg'),
(45, 'Tablet Pro 12\"', 'Powerful tablet with a 12-inch display, perfect for work and play, compatible with stylus.', 400, 'Electronics', 'appl2.jpg'),
(46, 'Action Camera Ultra', 'Durable action camera with 4K recording and waterproof features for all your adventures.', 250, 'Electronics', 'alionskettle.jpg'),
(48, 'x', 'x', 150, 'phones', 'what.png'),
(49, 'Floral Maxi Dress', 'A flowing maxi dress featuring a vibrant floral print, perfect for summer outings or beach vacations. It has a cinched waist for a flattering silhouette.', 700, 'dresses', 'images (2).jpeg'),
(50, 'Floral Maxi Dress', 'A flowing maxi dress featuring a vibrant floral print, perfect for summer outings or beach vacations. It has a cinched waist for a flattering silhouette.', 700, 'dresses', 'images (2).jpeg'),
(51, ' Classic Little Black Dress', 'This timeless little black dress is crafted from soft, stretchy fabric with a fitted bodice and flared skirt, ideal for any formal occasion.', 900, 'dresses', 'images (4).jpeg'),
(52, 'Bohemian Wrap Dress', 'A chic wrap dress with bell sleeves and a playful print, designed for effortless style. Its adjustable tie allows for a customizable fit.', 1000, 'dresses', 'images.jpeg'),
(53, ' Elegant Evening Gown', 'This stunning evening gown features intricate beadwork and a plunging neckline, perfect for black-tie events and special occasions. ', 1000, 'dresses', 'alyssa-degarde-xhOPvP536sI-unsplash.jpg'),
(54, 'Casual Shirt Dress', 'A relaxed shirt dress made from breathable cotton, featuring a button-down front and a belted waist, great for everyday wear or casual outings. ', 600, 'dresses', 'burgess-milner-OYYE4g-I5ZQ-unsplash.jpg'),
(55, ' A-Line Midi Dress', 'A stylish A-line midi dress that flatters all body types, with a beautiful color palette and comfortable, lightweight fabric.', 2000, 'dresses', 'lance-reis-IqwNuJgA4Lc-unsplash.jpg'),
(56, ' Off-shoulder Party Dress', 'This flirty off-shoulder party dress is made from stretchy material, featuring a ruffled hem that adds a fun twist for nights out. ', 800, 'dresses', 'skg-photography-HH8RV6AniKM-unsplash.jpg'),
(57, 'Vintage-Inspired Tea Dress', 'A nostalgic tea dress with a fitted bodice and flowing skirt, adorned with polka dots, perfect for garden parties or brunch dates.', 6000, 'dresses', 'images (4).jpeg'),
(58, 'Chic Slip Dress', ' sleek satin slip dress that drapes beautifully on the body, suitable for layering or wearing alone for a minimalist look. ', 7000, 'dresses', 'images (3).jpeg'),
(59, 'Sporty Sundress', 'A fun and sporty sundress made from moisture-wicking fabric, featuring a racerback design and playful stripes, ideal for active days. ', 8000, 'dresses', 'images.jpeg'),
(60, ' Classic Leather Tote', ' A timeless leather tote bag with a spacious interior and sleek design, perfect for everyday use or work essentials. Features sturdy handles and a detachable shoulder strap', 10000, 'handbags', 'leisara-studio-EzzW1oNek-I-unsplash (1).jpg'),
(61, 'Stylish Crossbody Bag', 'This chic crossbody bag comes with an adjustable strap and multiple compartments for easy organization, ideal for day trips or nights out.', 8000, 'handbags', 'jane-nel-qE8LzD58u70-unsplash.jpg'),
(62, 'Elegant Clutch', 'A sophisticated clutch featuring intricate beading and a magnetic closure, perfect for formal events or evenings out.', 6000, 'handbags', 'fauzan-fathullah-SpxXRctFf08-unsplash.jpg'),
(63, 'Versatile Backpack', 'A trendy backpack made from durable canvas, equipped with multiple pockets and a padded laptop compartment, perfect for students and professionals alike.', 4500, 'handbags', 'daniel-velasquez-K0dPWVyZlrg-unsplash.jpg'),
(64, ' Bohemian Sling Ba', 'A unique sling bag with a colorful patchwork design and fringe detailing, perfect for casual outings and festivals.', 4900, 'handbags', 'daniel-velasquez-K0dPWVyZlrg-unsplash.jpg'),
(65, 'Chic Satchel', 'This structured satchel features a classic design with gold-tone hardware and a removable strap, making it suitable for both work and play. ', 3000, 'handbags', 'fauzan-fathullah-ZjWTjyBiiVA-unsplash.jpg'),
(66, 'Minimalist Bucket Bag', 'A stylish bucket bag made from faux leather, featuring a drawstring closure and adjustable strap for a laid-back yet trendy look.', 2000, 'handbags', 'wiser-by-the-mile-McO6MaDIFWA-unsplash.jpg'),
(67, 'Fun Mini Bag', ' A playful mini bag with a bold color and chain strap, perfect for carrying essentials during a night out or a special occasion. ', 7000, 'handbags', 'wiser-by-the-mile-SwWCo1k92M4-unsplash.jpg'),
(68, 'Classic Weekender Bag', 'A spacious weekender bag crafted from durable canvas, ideal for short trips or gym sessions, featuring a zip closure and comfortable handles.', 8900, 'handbags', 'jane-nel-qE8LzD58u70-unsplash.jpg'),
(69, 'Designer-Inspired Shoulder Bag', ' A trendy shoulder bag with a quilted design and gold chain strap, offering a luxurious look at an affordable price. ', 7000, 'handbags', 'wiser-by-the-mile-SwWCo1k92M4-unsplash.jpg'),
(70, 'Classic Cotton  Socks', 'Soft and breathable cotton crew socks that provide all-day comfort. Available in a variety of colors to match any outfit.', 600, 'socks', 'no-revisions-9LBb79X1OBU-unsplash.jpg'),
(71, 'Cozy Fleece Slipper Sock', 'Plush fleece slipper socks designed to keep your feet warm and cozy during cold nights. Non-slip grip on the soles for safety. ', 900, 'socks', 'haley-powers-QESaXJBiB8Y-unsplash.jpg'),
(72, ' Fun Patterned Ankle Socks', 'Colorful ankle socks featuring playful patterns and designs, perfect for adding a pop of fun to your everyday look.', 450, 'socks', 'nathan-dumlao-2auVEVreqKo-unsplash.jpg'),
(73, 'Performance Athletic Socks', 'Moisture-wicking athletic socks designed for maximum comfort and support during workouts. Arch support and cushioned soles. ', 300, 'socks', 'freestocks-RmrQTzKNe2M-unsplash.jpg'),
(74, 'Eco-Friendly Bamboo Socks', 'Sustainable bamboo socks that are soft, breathable, and naturally antibacterial. Ideal for everyday wear with a touch of eco-consciousness.', 470, 'socks', 'emily-rudolph--m0xspcr6Xw-unsplash.jpg'),
(75, 'Compression Soc', 'Knee-high compression socks designed to improve circulation and reduce fatigue, perfect for travel or long workdays. ', 530, 'socks', 'haley-powers-QESaXJBiB8Y-unsplash.jpg'),
(76, 'Holiday Themed Socks', ' Festive socks featuring holiday designs, great for celebrating the season. Made from a soft blend for extra comfort.', 200, 'socks', 'jisu-han-NofhlXIKnkg-unsplash.jpg'),
(77, 'Classic Dress Socks', 'Elegant dress socks made from fine cotton, suitable for formal occasions. Available in classic colors to complement any suit.', 400, 'socks', 'haley-powers-QESaXJBiB8Y-unsplash.jpg'),
(78, 'Kids\' Colorful Socks', 'Fun and vibrant socks for kids, featuring favorite cartoon characters and playful designs. Comfortable and durable for all-day play', 600, 'socks', 'freestocks-RmrQTzKNe2M-unsplash.jpg'),
(79, 'Lightweight Socks', 'Ultra-lightweight travel socks with moisture-wicking properties, perfect for keeping your feet comfortable on long journeys. ', 270, 'socks', 'ali-diaz-Tx7_T5TZNrY-unsplash.jpg'),
(80, 'Classic Baseball Cap', 'A timeless cotton baseball cap featuring an adjustable strap and a pre-curved visor, perfect for casual outings and sunny days.', 300, 'cap', 'CAP1.jpg'),
(81, 'Stylish Snapback Hat', 'A trendy snapback hat with a flat brim and bold graphic design, ideal for adding a streetwear vibe to any outfit. ', 4000, 'cap', 'CAP2 (another copy).jpg'),
(82, 'Cozy Beanie', ' A soft knit beanie designed to keep you warm in cooler weather. Available in various colors to match your style.', 289, 'cap', 'CAP3.jpg'),
(83, 'Outdoor Sun Hat', 'A wide-brim sun hat made from lightweight material, offering UV protection for outdoor activities like hiking and beach trips. ', 600, 'cap', 'wiser-by-the-mile-SwWCo1k92M4-unsplash.jpg'),
(84, 'Vintage Dad Hat', 'A relaxed-fit dad hat with an embroidered logo, providing a laid-back look that’s perfect for everyday wear. ', 500, 'cap', 'CAP4.jpg'),
(85, ' Performance Sports Cap', 'A moisture-wicking sports cap designed for active lifestyles, featuring ventilation holes for breathability during workouts.', 700, 'cap', 'CAP4 (copy).jpg'),
(86, ' Graphic Trucker Hat', 'A classic trucker hat with a mesh back and eye-catching graphic on the front, perfect for a casual day out.', 900, 'cap', 'CAP3 (another copy).jpg'),
(87, 'Fashionable Bucket Hat', 'A trendy bucket hat made from lightweight fabric, available in fun patterns, ideal for summer festivals and beach days. ', 600, 'cap', 'CAP1 (another copy).jpg'),
(88, 'Kids\' Cartoon Cap', ' Fun and colorful cap featuring beloved cartoon characters, designed for comfort and durability for little ones on the go. ', 700, 'cap', 'CAP1 (another copy).jpg'),
(89, 'Stylish Visor', 'A sporty visor cap with an adjustable strap and a breathable design, perfect for keeping the sun out of your eyes during outdoor activities. ', 400, 'cap', 'CAP2.jpg'),
(90, 'Classic Leather Belt', 'A timeless leather belt with a sleek design and a polished metal buckle, perfect for both casual and formal outfits. ', 300, 'belts', 'vetrivel-viswanathar-ohcZPgCEBqk-unsplash.jpg'),
(91, 'Casual Canvas Belt', 'A durable canvas belt featuring a sturdy clasp, ideal for everyday wear. Available in various colors to match your style. ', 400, 'belts', 'seeetz-qTv4ePux4ck-unsplash.jpg'),
(92, 'Woven Fabric Belt', 'A stylish woven fabric belt that adds a touch of texture to your outfit. Adjustable size for a comfortable fit.', 400, 'belts', 'seeetz-OTHeFuAhNZ0-unsplash.jpg'),
(93, 'Reversible Leather Belt', 'A versatile reversible belt that offers two colors in one. Crafted from high-quality leather, it’s perfect for any occasion.', 500, 'belts', 'seeetz-lrYEQiqbuz0-unsplash.jpg'),
(94, 'Casual Faux Leather Belt', 'An eco-friendly faux leather belt with a simple buckle, great for everyday casual outfits while being budget-friendly. ', 700, 'belts', 'seeetz-gr-4CjBmckI-unsplash.jpg'),
(95, 'Sporty Adjustable Belt', 'A lightweight adjustable belt designed for active lifestyles, featuring a quick-release buckle for easy wear during workouts. ', 800, 'belts', 'seeetz-eNEa7Gsfzzs-unsplash (copy).jpg'),
(96, '. Decorative Wide Belt', 'A fashionable wide belt with a statement buckle, perfect for cinching dresses or adding flair to oversized tops.', 800, 'belts', 'seeetz-5eifdK4c8lo-unsplash.jpg'),
(97, 'Men\'s Dress Belt', 'A classic dress belt made from genuine leather, featuring a sleek finish and a silver-tone buckle, ideal for formal wear.', 200, 'belts', 'seeetz-5eifdK4c8lo-unsplash.jpg'),
(98, 'Kids\' Character Belt', 'Fun and colorful belt featuring popular cartoon characters, designed for kids with an easy-to-use buckle for comfort and style.', 235, 'belts', 'seeetz-FDxEa7Ueyvc-unsplash.jpg'),
(99, 'Tactical Utility Belt', 'A rugged tactical belt made from durable nylon, featuring multiple attachment points, ideal for outdoor activities and work.', 600, 'belts', 'seeetz-Mf194wsFKZI-unsplash.jpg'),
(100, 'Tactical Utility Belt', 'A rugged tactical belt made from durable nylon, featuring multiple attachment points, ideal for outdoor activities and work.', 600, 'belts', 'seeetz-Mf194wsFKZI-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
