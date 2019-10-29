-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 29 2019 г., 07:09
-- Версия сервера: 5.7.25
-- Версия PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `post`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1572357387),
('m191028_125909_create_user_table', 1572357391),
('m191028_130038_create_post_table', 1572357391);

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `text` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id`, `title`, `text`) VALUES
(1, 'Google планирует приобрести Fitbit ', 'Alphabet уже давно интересуется возможной покупкой Fitbit, но последние отчеты показывают, что родитель Google представил официальное предложение для носимой компании. '),
(2, 'Apple представили AirPods нового поколения', 'Главным внешним отличием станут вакуумные насадки, которые так же будут способствовать регуляции шума. Они будут выпущены в трех размерах, чтобы покупатели смогли выбрать более подходящий для себя. '),
(3, 'Смарт-часы Xiaomi Mi Watch похожи на Apple Watch', 'Новинка под предварительным названием Xiaomi Mi Watch, оснащённая с «цифровой коронкой», напоминает внешним обликом смарт-часы Apple Watch, хотя её корпус немного толще и менее округлый.'),
(4, 'Xiaomi Redmi K30', 'Інтернет-джерела опублікували неофіційні рендери потужних смартфонів Xiaomi Redmi K30 і Redmi K30 Pro, анонс яких очікується на початку наступного року – імовірно, в січні.'),
(5, 'Binance US запустила торги криптовалютой WAVES', 'Напомним, что площадка Binance US начала работу в сентября текущего года и в настоящий момент поддерживает такие криптовалюты как BTC, ETH, XRP, BNB, LTC, ADA, ETC, XLM, BAT, ZRX, а также DOGE.');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'alexey@gmail.com', '$2y$13$JfZ21COVOfb5qEQT3J77Ve7ccCPySpHzd6JNELGzkjQTMo94rvU3i');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
