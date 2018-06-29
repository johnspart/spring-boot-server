-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pát 29. čen 2018, 12:54
-- Verze serveru: 10.1.13-MariaDB
-- Verze PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `react_spring`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Vypisuji data pro tabulku `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(28),
(28),
(28);

-- --------------------------------------------------------

--
-- Struktura tabulky `tbl1_article`
--

CREATE TABLE `tbl1_article` (
  `id` bigint(20) NOT NULL,
  `content` text COLLATE utf8_bin,
  `date` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `author` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Vypisuji data pro tabulku `tbl1_article`
--

INSERT INTO `tbl1_article` (`id`, `content`, `date`, `name`, `path`, `author`) VALUES
(1, 'Ahoj svete', '27.01.2018', 'Kazdodeni zivot', 'home/blog', 1),
(2, 'Je obecně známou věcí, že člověk bývá při zkoumání grafického návrhu rozptylován okolním textem, pokud mu dává nějaký smysl. Úkolem Lorem Ipsum je pak nahradit klasický smysluplný text vhodnou bezvýznamovou alternativou s relativně běžným rozložením slov. To jej dělá narozdíl od opakujícího se "Tady bude text. Tady bude text..." mnohem více čitelnějším. V dnešní době je Lorem Ipsum používáno spoustou DTP balíků a webových editorů coby výchozí model výplňového textu. Ostatně si zkuste zadat frázi "lorem ipsum" do vyhledavače a sami uvidíte. Během let se objevily různé varianty a odvozeniny od klasického Lorem Ipsum, někdy náhodou, někdy účelně (např. pro pobavení čtenáře).', '05.03.2018', 'React + Spring boot + Rest API', 'home/blog', 2),
(3, 'lorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrollorem lorem lorem lrol', '05.04.2018', 'Treti clanek', 'home/blog', 1);

-- --------------------------------------------------------

--
-- Struktura tabulky `tbl2_users`
--

CREATE TABLE `tbl2_users` (
  `id` bigint(20) NOT NULL,
  `lastname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_active` bit(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Vypisuji data pro tabulku `tbl2_users`
--

INSERT INTO `tbl2_users` (`id`, `lastname`, `name`, `is_active`) VALUES
(1, 'Klasik', 'Standa', b'1'),
(2, 'Omacka', 'Pepa', b'1'),
(3, 'Klima', 'Petr', b'1');

-- --------------------------------------------------------

--
-- Struktura tabulky `tbl3_role`
--

CREATE TABLE `tbl3_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabulky `tbl4_user_role`
--

CREATE TABLE `tbl4_user_role` (
  `id_user` bigint(20) NOT NULL,
  `id_role` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabulky `tbl5_comment`
--

CREATE TABLE `tbl5_comment` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `id_article` bigint(20) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_user` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Vypisuji data pro tabulku `tbl5_comment`
--

INSERT INTO `tbl5_comment` (`id`, `date`, `id_article`, `text`, `id_user`) VALUES
(1, '2018-03-04 13:26:17', 1, 'Je to nuda', 1),
(2, '2018-03-05 15:11:57', 2, 'Mas naprostou pravdu', 2),
(3, '2018-03-06 12:36:23', 1, 'ahojsvete', 1),
(4, '2018-03-06 12:55:33', 1, 'Myslim ze se mi to podarilo', 2),
(5, '2018-03-06 13:08:56', 1, 'ahoj svete dva', 2),
(6, '2018-03-06 13:35:19', 1, 'bla bla', 1),
(8, '2018-03-06 15:42:51', 1, 'Hello World!', 1),
(9, '2018-04-08 16:46:04', 1, 'Hello World! wrote by Standa', 1),
(10, '2018-04-08 18:29:33', 1, 'Hello World! wrote by Standa 2', 1),
(11, '2018-04-08 18:29:40', 1, 'Hello World! wrote by Standa 2', 1),
(12, '2018-04-08 18:29:54', 1, 'Hello World! wrote by Standa 2', 1),
(13, '2018-04-08 18:33:28', 1, 'Ahoj jak se vede? já mylsím že kecáš hrozn? moc', 1),
(14, '2018-04-08 18:49:04', 1, 'Klika', 1),
(15, '2018-04-08 18:49:48', 2, 'A ješt? jeden koment sem', 1),
(16, '2018-04-08 19:36:35', 2, 'Ahoj', 1),
(17, '2018-04-08 20:08:19', 3, 'Muj prvni komentar', 1),
(18, '2018-04-09 19:26:21', 3, 'kkk', 1),
(19, '2018-04-09 19:35:49', 3, 'jhjkhjkhj', 1),
(20, '2018-04-09 19:36:25', 3, 'hjhjhj', 1),
(21, '2018-04-09 19:42:26', 3, 'toto je komentar z pondeli', 1),
(22, '2018-04-09 19:43:17', 3, 'A dalsi komentar', 1),
(23, '2018-04-09 19:50:46', 3, 'kukuc', 1),
(24, '2018-04-09 19:51:04', 1, 'kukukac', 1),
(25, '2018-04-09 19:55:17', 1, 'hunrz', 1),
(26, '2018-06-24 12:11:11', 1, 'Novy komentar je tu a ja si mylslim ze to muze byt pravda ze se prida', 3),
(27, '2018-06-24 12:12:33', 2, 'novy komentar', 3);

-- --------------------------------------------------------

--
-- Struktura tabulky `tbl6_definition`
--

CREATE TABLE `tbl6_definition` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `text` text COLLATE utf8_bin,
  `id_en_category` bigint(20) DEFAULT NULL,
  `id_user` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabulky `tbl7_en_category`
--

CREATE TABLE `tbl7_en_category` (
  `id` bigint(20) NOT NULL,
  `cat1` bigint(20) DEFAULT NULL,
  `cat2` bigint(20) DEFAULT NULL,
  `cat3` bigint(20) DEFAULT NULL,
  `cat4` bigint(20) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Struktura tabulky `tbl8_en_comment`
--

CREATE TABLE `tbl8_en_comment` (
  `id` bigint(20) NOT NULL,
  `date` datetime DEFAULT NULL,
  `id_definition` bigint(20) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_user` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `tbl1_article`
--
ALTER TABLE `tbl1_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK152ta7wloixk1bxak098ss43k` (`author`);

--
-- Klíče pro tabulku `tbl2_users`
--
ALTER TABLE `tbl2_users`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `tbl3_role`
--
ALTER TABLE `tbl3_role`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `tbl5_comment`
--
ALTER TABLE `tbl5_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKc9tjn2dunxm3xmwohsxk9fndb` (`id_user`),
  ADD KEY `FK93ks9ts5l51kknpyk92q6wha7` (`id_article`);

--
-- Klíče pro tabulku `tbl6_definition`
--
ALTER TABLE `tbl6_definition`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKt8j30qw293e3c16kmhx8q9jg` (`id_en_category`),
  ADD KEY `FK9d08dlgk39tvg95l1shi7aon2` (`id_user`);

--
-- Klíče pro tabulku `tbl7_en_category`
--
ALTER TABLE `tbl7_en_category`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `tbl8_en_comment`
--
ALTER TABLE `tbl8_en_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK71g1m9b7vinbpdsqkdq82htsv` (`id_user`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `tbl3_role`
--
ALTER TABLE `tbl3_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pro tabulku `tbl5_comment`
--
ALTER TABLE `tbl5_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
