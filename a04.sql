-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 23 2016 г., 09:10
-- Версия сервера: 10.1.8-MariaDB
-- Версия PHP: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `a04`
--

-- --------------------------------------------------------

--
-- Структура таблицы `friends`
--

CREATE TABLE `friends` (
  `id` int(100) NOT NULL,
  `myid` text NOT NULL,
  `fid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `friends`
--

INSERT INTO `friends` (`id`, `myid`, `fid`) VALUES
(2, '24', '16'),
(3, '24', '15'),
(4, '24', '18'),
(5, '25', '15'),
(6, '25', '15'),
(7, '25', '18'),
(8, '25', '18'),
(9, '26', '18'),
(10, '26', '18'),
(11, '26', '18'),
(12, '', '15'),
(13, '26', '15'),
(14, '27', '15'),
(15, '27', '16'),
(16, '16', '18'),
(17, '30', '16'),
(18, '18', '16'),
(19, '18', '26'),
(20, '31', '16'),
(21, '16', '31'),
(22, '32', '26');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `message` text NOT NULL,
  `id` int(100) NOT NULL,
  `fid` int(100) NOT NULL,
  `myid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`message`, `id`, `fid`, `myid`) VALUES
('dfghjkfghjkl;lsdjhsjdgjwedf', 2, 18, 16),
('dfghjkfghjkl;lsdjhsjdgjwedf', 3, 18, 16),
('ghvbn', 4, 31, 16),
('addfdfs', 5, 26, 32);

-- --------------------------------------------------------

--
-- Структура таблицы `regis`
--

CREATE TABLE `regis` (
  `id` int(200) NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `bday` varchar(100) NOT NULL,
  `src` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `regis`
--

INSERT INTO `regis` (`id`, `login`, `password`, `mail`, `name`, `surname`, `city`, `gender`, `bday`, `src`) VALUES
(26, 'beyza', '1234', 'beyza@mm', 'Venera', 'Kali', 'Almaty', 'female', '2003-06-12', 'user_image/rabstol_net_despicable_me_10.jpg'),
(27, 'aruzhan', 'ospan', 'aruzhan@mail.com', 'Aruzhan', 'Ospan', 'Almatyu', 'male', '2003-04-12', 'user_image/balloon_flight_plant_91681_1920x1080.jpg'),
(28, 'test', 'test', 'test@test', 'test', 'test', 'test', 'male', '1900-01-01', 'user_image/20151229_185158.jpg'),
(30, 'aida', '1234', 'aida.ktl@mail.ru', 'xdfgvhbjn', 'hygfds', 'yhtgrfeds', 'male', '1999-08-12', ''),
(31, 'whale', '1998', 'akzharkyn.duldul@ce.sdu.edu.kz', 'Akzharkyn', 'Duldul', 'Almaty', 'female', '2016-08-20', 'user_image/balloon_flight_plant_91681_1920x1080.jpg'),
(32, 'ardakagai', '12345', 'arda.@mail.ru', 'Ardak', 'Shalkarbaiuly', 'Almaty', 'male', '1987-03-12', '');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `surname`, `gender`) VALUES
(14561, 'Nurgul', ' Aisarieva ', 'Female'),
(14581, ' Meiramgul ', 'Gubaidullina ', 'Female'),
(14604, 'Serik', 'Almakhan', 'Male'),
(14614, ' Beknur ', ' Aldeken', 'Male'),
(14619, ' Zholdasbek', 'Aliakbar', 'Male'),
(14663, ' Kamila', ' Kusainova ', 'Female'),
(14685, ' Roman', ' Lavrik ', 'Male'),
(14696, ' Akerke', ' Maglum', 'Female'),
(14703, 'Dastan', 'Beisenkhan', 'Male'),
(14716, ' Kamila', 'Moldakulova', 'Female'),
(14733, ' Shoakbar', 'Gairatov ', 'Female'),
(14847, 'Bauyrzhan ', ' Yerezhepov ', 'Male'),
(14855, 'Zhunissali ', ' Shanabek ', 'Male'),
(14885, ' Venera', 'Kali', 'Female'),
(14943, 'Almas', 'Ahmet', 'Male'),
(14953, ' Gulim', ' Askat', 'Female'),
(14983, 'Farid ', ' Kopzhassarrov', 'Male'),
(14994, ' Marat', ' Aitbayev', 'Male'),
(15020, 'Aidar ', 'Shamshit ', 'Male'),
(15021, 'Aidana', ' Nurabayeva ', 'Female'),
(15069, ' Kassymkhan ', 'Torgayev', 'Male'),
(15152, 'Timur', 'Borgalinov', 'Male');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `regis`
--
ALTER TABLE `regis`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `regis`
--
ALTER TABLE `regis`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
