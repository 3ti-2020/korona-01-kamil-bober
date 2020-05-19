-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Maj 2020, 14:00
-- Wersja serwera: 10.1.37-MariaDB
-- Wersja PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `bober`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `europejskie`
--

CREATE TABLE `europejskie` (
  `car_id` int(7) NOT NULL,
  `model` varchar(25) NOT NULL,
  `moc` varchar(7) NOT NULL,
  `rocznik` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `europejskie`
--

INSERT INTO `europejskie` (`car_id`, `model`, `moc`, `rocznik`) VALUES
(1, 'BMW E46 M3 GTR', '420', '2001'),
(2, 'BMW E92 M3', '420', '2005'),
(3, 'BMW E38 740i', '286', '2000'),
(4, 'BMW G15', '530', '2018'),
(5, 'BMW G15', '530', '2018');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `japonskie`
--

CREATE TABLE `japonskie` (
  `Model_j` varchar(25) NOT NULL,
  `Moc_j` varchar(6) NOT NULL,
  `car_id_j` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `japonskie`
--

INSERT INTO `japonskie` (`Model_j`, `Moc_j`, `car_id_j`) VALUES
('Toyota Supra Mk3', '280', 1),
('Toyota Supra Mk4', '324', 2),
('Datsun Fairlady 240Z', 'Du?o', 3),
('Datsun 240Z', '151', 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `europejskie`
--
ALTER TABLE `europejskie`
  ADD PRIMARY KEY (`car_id`);

--
-- Indeksy dla tabeli `japonskie`
--
ALTER TABLE `japonskie`
  ADD KEY `Moc` (`Moc_j`),
  ADD KEY `car_id` (`car_id_j`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `europejskie`
--
ALTER TABLE `europejskie`
  MODIFY `car_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT dla tabeli `japonskie`
--
ALTER TABLE `japonskie`
  MODIFY `car_id_j` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
