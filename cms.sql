-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 05 Lut 2018, 12:37
-- Wersja serwera: 10.1.26-MariaDB
-- Wersja PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `cms`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(1) NOT NULL,
  `imie` varchar(20) COLLATE utf8_bin NOT NULL,
  `nazwisko` varchar(20) COLLATE utf8_bin NOT NULL,
  `login` varchar(32) COLLATE utf8_bin NOT NULL,
  `password` varchar(60) COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL,
  `admin` int(1) NOT NULL,
  `aktywacja` varchar(20) COLLATE utf8_bin NOT NULL,
  `Sprawdzenie` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `imie`, `nazwisko`, `login`, `password`, `email`, `admin`, `aktywacja`, `Sprawdzenie`) VALUES
(1, 'Marcin', 'Chwedoruk', 'admin', '$2y$10$hSR84N.6jJaFlWNfX2UpYeNCjFYIQs1FoZJ4ukZjL3wu1udC4MfNi', 'admin123@wp.pl', 1, '', 0),
(2, 'Adam', 'ÅšlotaÅ‚a', 'admin2', '$2y$10$h8kndKsQRE8/kVjvkO8eOexAhtnX7tvpf/dqpSP69L3huRbi1bCwy', 'admin@wp.pl', 0, '', 0),
(4, 'Adam', 'Kupka', 'asd', '$2y$10$RmOGmX67cCdOa/cvSCqUheZ4My8XJuA5aifRHcW7.p0wqWm18LZ6.', 'asd@wp.pl', 0, '5a7833fb1006a', 0),
(11, 'Bartosz', 'Kupka', 'admin222', '$2y$10$guxAjsS7bQLSpRI.xX0y0eXQ2KzWKtw1YWlMdRyjQ2V4UZLW3rwUi', 'bartekkupka222@gmail.com', 0, '5a78410d569d1', 0);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
