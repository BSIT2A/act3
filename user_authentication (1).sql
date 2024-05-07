-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 03:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_authentication`
--

-- --------------------------------------------------------

--
-- Table structure for table `research_submissions`
--

CREATE TABLE `research_submissions` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `technical_critic` varchar(100) DEFAULT NULL,
  `technical_adviser` varchar(100) DEFAULT NULL,
  `research_title` varchar(255) DEFAULT NULL,
  `abstract` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `research_submissions`
--

INSERT INTO `research_submissions` (`id`, `name`, `middle_name`, `last_name`, `technical_critic`, `technical_adviser`, `research_title`, `abstract`) VALUES
(1, 'gyles', 'delosreyes', 'blanco', 'henry balanza', 'marc luigi timola', 'research repository', 'Love, that captivating force that propels us into the depths of euphoria or plunges us into the abyss of despair, is a journey fraught with uncertainties and insecurities. Such is the plight of many souls who find themselves enamored by someone they perceive as beyond their reach. In the kaleidoscope of emotions, there exists a poignant narrative of unspoken affection, where the heart yearns to express its devotion yet falters under the weight of perceived inadequacy. This essay delves into the complex labyrinth of loving a girl deemed too beautiful, grappling with the belief that she deserves better.\r\n\r\nAt the core of this emotional turmoil lies a profound sense of unworthiness. The object of affection, radiant and resplendent, appears as a celestial being, untouchable in her allure. Every glance, every smile, ignites a flame within the heart of the admirer, a flame that both illuminates and scorches. The beauty of the beloved becomes a mirror reflecting the perceived deficiencies of the admirer. In the eyes of the beholder, she is a masterpiece, while he sees himself as mere brushstrokes upon the canvas of life.\r\n\r\nThe fear of rejection looms large, casting a shadow over the prospect of confession. How can one profess love to someone so exquisite, so ethereal, without fearing dismissal? The mind conjures a myriad of scenarios, each ending in heartache and humiliation. Thus, silence becomes a shield, a defense mechanism against the sting of unrequited affection. The unspoken words weigh heavily on the soul, a burden too heavy to bear yet too precious to relinquish.\r\n\r\nIn the midst of this internal struggle, the notion of deservingness emerges as a relentless tormentor. The girl, perceived as a paragon of beauty and virtue, is elevated to an unattainable pedestal. She deserves nothing but the best, a prince among men who can match her in every aspect. And therein lies the crux of the dilemma - the belief that she deserves better than the admirer, better than the flawed, imperfect soul who dares to love her from afar.\r\n\r\nYet, love knows no bounds, recognizes no barriers. It is a force that defies reason, transcends logic. The heart, in its infinite wisdom, cares not for superficial notions of worthiness or deservability. It beats to its own rhythm, guided by the magnetic pull of affection. For the admirer, loving the girl becomes an act of surrender, a relinquishing of control in the face of overwhelming emotion.\r\n\r\nIn the tapestry of love, vulnerability becomes a source of strength rather than weakness. It is the willingness to lay bare one\'s heart, to expose the rawness of emotion to the object of affection. For in that vulnerability lies the possibility of connection, of shared understanding and mutual appreciation. The girl, in her beauty and grace, may see beyond the facade of inadequacy and recognize the depth of love that resides within the admirer\'s soul.\r\n\r\nIn conclusion, the journey of loving a girl deemed too beautiful is a tumultuous odyssey fraught with self-doubt and inner turmoil. Yet, it is also a testament to the transformative power of love, capable of transcending perceived barriers and bridging the gap between hearts. While the fear of inadequacy may linger, it is ultimately overshadowed by the profoundness of affection. And in that affection lies the hope that, despite all odds, love may find its way into the light, illuminating the path towards a shared future of happiness and fulfillment.'),
(2, 'ginalyn', 'p', 'david', 'hanagi', 'berta', 'onepiece', 'Love, that captivating force that propels us into the depths of euphoria or plunges us into the abyss of despair, is a journey fraught with uncertainties and insecurities. Such is the plight of many souls who find themselves enamored by someone they perceive as beyond their reach. In the kaleidoscope of emotions, there exists a poignant narrative of unspoken affection, where the heart yearns to express its devotion yet falters under the weight of perceived inadequacy. This essay delves into the complex labyrinth of loving a girl deemed too beautiful, grappling with the belief that she deserves better. At the core of this emotional turmoil lies a profound sense of unworthiness. The object of affection, radiant and resplendent, appears as a celestial being, untouchable in her allure. Every glance, every smile, ignites a flame within the heart of the admirer, a flame that both illuminates and scorches. The beauty of the beloved becomes a mirror reflecting the perceived deficiencies of the admirer. In the eyes of the beholder, she is a masterpiece, while he sees himself as mere brushstrokes upon the canvas of life. The fear of rejection looms large, casting a shadow over the prospect of confession. How can one profess love to someone so exquisite, so ethereal, without fearing dismissal? The mind conjures a myriad of scenarios, each ending in heartache and humiliation. Thus, silence becomes a shield, a defense mechanism against the sting of unrequited affection. The unspoken words weigh heavily on the soul, a burden too heavy to bear yet too precious to relinquish. In the midst of this internal struggle, the notion of deservingness emerges as a relentless tormentor. The girl, perceived as a paragon of beauty and virtue, is elevated to an unattainable pedestal. She deserves nothing but the best, a prince among men who can match her in every aspect. And therein lies the crux of the dilemma - the belief that she deserves better than the admirer, better than the flawed, imperfect soul who dares to love her from afar. Yet, love knows no bounds, recognizes no barriers. It is a force that defies reason, transcends logic. The heart, in its infinite wisdom, cares not for superficial notions of worthiness or deservability. It beats to its own rhythm, guided by the magnetic pull of affection. For the admirer, loving the girl becomes an act of surrender, a relinquishing of control in the face of overwhelming emotion. In the tapestry of love, vulnerability becomes a source of strength rather than weakness. It is the willingness to lay bare one\'s heart, to expose the rawness of emotion to the object of affection. For in that vulnerability lies the possibility of connection, of shared understanding and mutual appreciation. The girl, in her beauty and grace, may see beyond the facade of inadequacy and recognize the depth of love that resides within the admirer\'s soul. In conclusion, the journey of loving a girl deemed too beautiful is a tumultuous odyssey fraught with self-doubt and inner turmoil. Yet, it is also a testament to the transformative power of love, capable of transcending perceived barriers and bridging the gap between hearts. While the fear of inadequacy may linger, it is ultimately overshadowed by the profoundness of affection. And in that affection lies the hope that, despite all odds, love may find its way into the light, illuminating the path towards a shared future of happiness and fulfillment.'),
(3, 'dsa', 'asd', 'dsa', 'sadsa', 'dasdad', 'asdasdasd', 'x labyrinth of loving a girl deemed too beautiful, grappling with the belief that she deserves better. At the core of this emotional turmoil lies a profound sense of unworthiness. The object of affection, radiant and resplendent, appears as a celestial being, untouchable in her allure. Every glance, every smile, ignites a flame within the heart of the admirer, a flame that both illuminates and scorches. The beauty of the beloved becomes a mirror reflecting the perceived deficiencies of the admirer. In the eyes of the beholder, she is a masterpiece, while he sees himself as mere brushstrokes upon the canvas of life. The fear of rejection looms large, casting a shadow over the prospect of confession. How can one profess love to someone so exquisite, so ethereal, without fearing dismissal? The mind conjures a myriad of scenarios, each ending in heartache and humiliation. Thus, silence becomes a shield, a defense mechanism against the sting of unrequited affection. The unspoken words weigh heavily on the soul, a burden too heavy to bear yet too precious to relinquish. In the midst of this internal struggle, the notion of deservingness emerges as a relentless tormentor. The girl, perceived as a paragon of beauty and virtue, is elevated to an unattainable pedestal. She deserves nothing but the best, a p'),
(4, 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', ', grappling with the belief that she deserves better. At the core of this emotional turmoil lies a profound sense of unworthiness. The object of affection, radiant and resplendent, appears as a celestial being, untouchable in her allure. Every glance, every smile, ignites a flame within the heart of the admirer, a flame that both illuminates and scorches. The beauty of the beloved becomes a mirror reflecting the perceived deficiencies of the admirer. In the eyes of the beholder, she is a masterpiece, while he sees himself as mere brushstrokes upon the canvas of life. The fear of rejection looms large, casting a shadow over the prospect of confession. How can one profess love to someone so exquisite, so ethereal, without fearing dismissal? The mind conjures a myriad of scenarios, each ending in heartache and humiliation. Thus, silence becomes a shield, a defense mechanism against the sting of unrequited affection. The unspoken words weigh heavily on the soul, a burden too heavy to bear yet too precious to relinquish. In the midst of this internal struggle, the notion of deservingness emerges as a relentless tormentor. The girl, perceived as a paragon of beauty and virtue, is elevated to an unattainable pedestal. She deserves nothing but the best, a prince among men who can match her in every aspect. And therein lies the crux of the dilemma - the belief that she deserves better than the admirer, better than the flawed, imperfect soul who dares to love her from afar. Yet, love knows no bounds, recognizes no barriers. It is a force that defies reason, transcends logic. The heart, in its infinite wisdom, cares not for superficial notions of worthiness or deservability. It beats to its own rhythm, guided by the magnetic pull of affection. For the admirer, loving the girl becomes an act of surrender, a relinquishing of control in the face of overwhelming emotion. In the tapestry of love, vulnerability becomes a source of strength rather than weakness. It is the willingness to lay bare one\'s heart, to expose the rawness of emotion to the object of affection. For in that vulnerability lies the possibility of connection, of shared understanding and mutual appreciation. The girl, in her beauty and grace, may see beyond the facade of inadequacy and recognize the depth of love that resides within the admirer\'s soul. In conclusion, the journey of loving a girl deemed too beautiful is a tumultuous odyssey fraught with self-doubt and inner turmoil. Yet, it is also a testament to the transformative power of love, capable of transcending perceived barriers and bridging the gap between hearts. While the fear of inadequacy may linger, it is ultimately overshadowed by the profoundness of affection. And in that affection lies the hope that, despite all odds, love may find its way into the light, illu'),
(5, 'awaw', 'awaw', 'awaw', 'awaw', 'awaw', 'awaw', 'affection. The unspoken words weigh heavily on the soul, a burden too heavy to bear yet too precious to relinquish. In the midst of this internal struggle, the notion of deservingness emerges as a relentless tormentor. The girl, perceived as a paragon of beauty and virtue, is elevated to an unattainable pedestal. She deserves nothing but the best, a prince among men who can match her in every aspect. And therein lies the crux of the dilemma - the belief that she deserves better than the admirer, better than the flawed, imperfect soul who dares to love her from afar. Yet, love knows no bounds, recognizes no barriers. It is a force that defies reason, transcends logic. The heart, in its infinite wisdom, cares not for superficial notions of worthiness or deservability. It beats to its own rhythm, guided by the magnetic pull of affection. For the admirer, loving the girl becomes an act of surrender, a relinquishing of control in the face of overwhelming emotion. In the tapestry of love, vulnerability becomes a source of strength rather than weakness. It is the willingness to lay bare one\'s heart, to expose the rawness of emotion to the object of affection. For in that vulnerability lies the possibility of connection, of shared understanding and mutual appreciation. The girl, in her beauty and grace, may see beyond the facade of inadequacy and recognize the depth of love that resides within the admirer\'s soul. In conclusion, the journey of loving a girl deemed too beautiful is a tumultuous odyssey fraught with self-doubt and inner turmoil. Yet, it is also a testament to the transformative power of love, capable of transcending perceived barriers and bridging the gap between hearts. While the fear of inadequacy may linger, it is ultimately overshadowed by the profoundness of affection. And in that affection lies the hope that, despite all odds, love may find its way into the light, illuminating the path towards a shared future of happiness and fulfillment.	Edit\r\n\r\nDelete\r\nginalyn	p	david	hanagi	berta	onepiece	Love, that captivating force that propels us into the depths of euphoria or plunges us into the abyss of despair, is a journey fraught with uncertainties and insecurities. Such is the plight of many souls who find themselves enamored by someone they perceive as beyond their reach. In the kaleidoscope of emotions,'),
(6, 'meow', 'meow', 'meow', 'meow', 'meow', 'meow', 'meowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeowmeow\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`) VALUES
(1, 'try', 'try', 'admin'),
(2, 'usah', 'usah', 'user'),
(3, 'user', 'user', 'user'),
(4, 'admin', 'admin', 'admin'),
(5, 'nuynoy', '1', 'admin'),
(6, 'ayoo', 'ayoo', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `research_submissions`
--
ALTER TABLE `research_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `research_submissions`
--
ALTER TABLE `research_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;