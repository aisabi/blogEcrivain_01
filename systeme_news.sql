-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8888
-- Généré le :  Ven 26 Mai 2017 à 15:05
-- Version du serveur :  5.6.28
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `systeme_news`
--

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `id_billet` int(11) NOT NULL,
  `auteur` varchar(255) NOT NULL,
  `commentaire` text NOT NULL,
  `date_commentaire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `id_billet`, `auteur`, `commentaire`, `date_commentaire`) VALUES
(1, 2, 'wei2', 'c\'est mon premier commentaire ! ', '2017-05-02 14:00:00'),
(2, 26, 'wei2', 'c\'est mon premier commentaire ! ', '2017-05-02 14:00:00'),
(3, 26, 'tony', 'super cet article !', '2017-05-02 17:00:00'),
(4, 30, 'Cactus', 'Très bel épisode ! ', '2017-05-16 09:21:04'),
(5, 30, 'Martine', 'Vivement la suite ! ', '2017-05-16 09:21:38'),
(6, 31, 'Pollux', 'Intéressant comme chapitre !', '2017-05-17 09:18:00'),
(7, 31, 'Martine', 'Oui c\'est bien. ', '2017-05-17 11:17:08'),
(8, 31, 'hulk', 'hello', '0000-00-00 00:00:00'),
(9, 31, 'superman', 'hello !', '0000-00-00 00:00:00'),
(10, 0, 'soleil ', 'hello ', '0000-00-00 00:00:00'),
(11, 0, 'fleur', 'ça marche ?', '0000-00-00 00:00:00'),
(12, 0, 'pierre', 'test', '0000-00-00 00:00:00'),
(13, 31, 'Pierre', 'ceci est un commentaire', '0000-00-00 00:00:00'),
(14, 30, 'joe', 'test ', '0000-00-00 00:00:00'),
(15, 31, 'tonio', 'et la date ?', '0000-00-00 00:00:00'),
(16, 27, 'Dom', 'test', '0000-00-00 00:00:00'),
(17, 27, 'Caro', 'la montagne c\'est mieux !', '2017-05-21 16:02:04'),
(18, 27, 'Spoke', 'hello', '2017-05-22 16:33:22'),
(19, 30, 'Paulo', 'Test ajout', '2017-05-22 16:41:44'),
(20, 26, 'captain Kirke', 'Test', '2017-05-22 16:54:44'),
(21, 24, 'Popeye', 'hello ça va ?', '2017-05-22 16:56:06'),
(22, 24, 'Minnie', 'ouais ça va !', '2017-05-22 19:52:43'),
(23, 33, 'hello', 'ça va ?', '2017-05-22 19:57:53'),
(24, 24, 'tea', 'test', '2017-05-23 14:58:53'),
(25, 24, 'Pluto', 'hello', '2017-05-23 15:02:04'),
(26, 24, 'plutoo', 'super', '2017-05-23 15:06:55'),
(27, 24, 'plutooo', 'testt', '2017-05-23 15:09:23'),
(28, 24, 'orange', 'bjr !', '2017-05-23 15:10:50'),
(29, 24, 'citron', 'hello', '2017-05-23 15:11:26'),
(30, 24, 'hihi', 'hello !', '2017-05-23 15:12:41'),
(31, 24, 'tets', 'test', '2017-05-23 15:14:52'),
(32, 24, 'pseudo', 'salut !!', '2017-05-23 15:15:50'),
(33, 24, 'vito', 'helllo', '2017-05-23 15:16:26'),
(34, 24, 'vita', 'hi', '2017-05-23 15:17:29'),
(35, 38, 'pollux', 'super épisode !', '2017-05-23 18:50:55'),
(36, 37, 'mug', 'hello !', '2017-05-25 11:24:21'),
(37, 38, 'mickey', 'hello', '2017-05-25 19:15:15'),
(38, 38, 'chloé', 'yep ! ', '2017-05-25 20:15:52');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `auteur` varchar(30) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `contenu` text NOT NULL,
  `dateAjout` datetime NOT NULL,
  `dateModif` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `auteur`, `titre`, `contenu`, `dateAjout`, `dateModif`) VALUES
(1, 'Warren Buffet', 'L\'investisseur très intelligent', 'Dans ce livre Benjamin Graham retrace les fondamentaux qui ont été les siens lors de l\'investissement sur les places financières américaines notamment le Dow Jones et le SP500 (Standard & Poor). Ce livre est indispensable pour comprendre les méthodes d\'investissement fondamental basées sur la valeur. \r\n\r\nWarren Buffet', '2017-03-13 18:58:59', '2017-03-14 17:43:16'),
(2, 'Jean Forteroche', 'Inversion des courbes', '<p style="text-align: left;">L\'inversion des courbes est le second opus de ce livre &eacute;crit sur l\'Alaska. Il sera notamment consacrer &agrave; expliquer le mouvement des plaques autour de la zone et des cons&eacute;quences qu\'il pourrait engendrer dans les si&egrave;cles &agrave; venir. Pour ce faire nous allons d\'abord tester le bold du <strong>tiny mice</strong>. Apparemment &ccedil;a fonctionne donc on va en rester l&agrave; ! ;-)</p>', '2017-04-05 16:17:43', '2017-04-05 16:17:43'),
(3, 'Joe', 'Les Dalton', 'In aliquam hendrerit ipsum, ac cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec non nunc diam. Nullam dictum lorem ipsum, et aliquam eros placerat a. Sed tristique porttitor lectus, cursus vestibulum erat consectetur sed. Aliquam mattis, nisl et sollicitudin condimentum, ipsum est gravida neque, id lobortis enim nibh vel nulla. Aliquam vitae eleifend nisl. ', '2017-04-20 21:23:50', '2017-04-20 21:23:50'),
(4, 'Pierre', 'Envoi ', '<div id="TheTexte" class="Texte" lang="zxx">\n<p>Hacque adfabilitate confisus cum eadem postridie feceris, ut incognitus haerebis et repentinus, hortatore illo hesterno clientes numerando, qui sis vel unde venias diutius ambigente agnitus vero tandem et adscitus in amicitiam si te salutandi adsiduitati dederis triennio indiscretus et per tot dierum defueris tempus, reverteris ad paria perferenda, nec ubi esses interrogatus et quo tandem miser discesseris, aetatem omnem frustra in stipite conteres summittendo.</p>\n</div>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Paul', 'Le retour', '<p>&nbsp;Para&icirc;t qu\'elle est en ville, la petite tortionnaire dont le coeur est marbr&eacute; et qui punit nos chairs j\'ai entendu des vieux rire de nos troubles idiots <br />nous traiter d\'imb&eacute;ciles, de jeunes fous de chiots Para&icirc;t qu\'elle tourne crue, qu\'elle nous cassera les reins nous cramera la saintet&eacute; et qu\'on aura l\'air fins j\'ai crach&eacute; j\'ai su&eacute;, j\'en ai rien eu &agrave; battre alors j\'y suis all&eacute; j\'ai battu mon c&oelig;ur pl&acirc;tre J\'ai saut&eacute; dans les flaques, me suis voulu plus grand</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Paul', 'Le retour', '<p>&nbsp;Para&icirc;t qu\'elle est en ville, la petite tortionnaire dont le coeur est marbr&eacute; et qui punit nos chairs j\'ai entendu des vieux rire de nos troubles idiots nous traiter d\'imb&eacute;ciles, de jeunes fous de chiots Para&icirc;t qu\'elle tourne crue, qu\'elle nous cassera les reins nous cramera la saintet&eacute; et qu\'on aura l\'air fins j\'ai crach&eacute; j\'ai su&eacute;, j\'en ai rien eu &agrave; battre <br />alors j\'y suis all&eacute; j\'ai battu mon c&oelig;ur pl&acirc;tre <br />J\'ai saut&eacute; dans les flaques, me suis voulu plus grand</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Rafel', 'Acquisitions', 'Dans ce tout premier chapitre, je vais vous présenter ce que j\'appelle l\'« univers Android ». ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Carmen', 'Flamenco', 'L\'histoire du flamenco d\'hier et d\'aujourd\'hui ! bonne lecture.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'joe', 'La mer', '<p><strong>Principium autem</strong> unde latius se funditabat, emersit ex negotio tali. Chilo ex vicario et coniux eius Maxima nomine, questi apud Olybrium ea tempestate urbi praefectum, vitamque suam venenis petitam adseverantes inpetrarunt ut hi, quos suspectati sunt, ilico rapti conpingerentur in vincula, organarius Sericus et Asbolius palaestrita et aruspex Campensis.</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Jack', 'Le poker', '<p>Principium autem unde latius se funditabat, emersit ex negotio tali. Chilo ex vicario et coniux eius Maxima nomine, questi apud Olybrium ea tempestate urbi praefectum, vitamque suam venenis petitam adseverantes inpetrarunt ut hi, quos suspectati sunt, ilico rapti conpingerentur in vincula, organarius Sericus et Asbolius palaestrita et aruspex Campensis.</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Jean-Paul', 'Bossa Nova', '<p>Bonjour Hello Praesent euismod vel felis eu hendrerit. Nulla quis laoreet nisl. Etiam non nisl <strong>fringilla</strong>, pulvinar odio sed, molestie dui. Aliquam mollis massa ut libero tincidunt lobortis. Phasellus tempus quis velit a bibendum. Ut malesuada lacus at urna pharetra, eget consectetur justo semper.</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'James', 'La nuit', '<p><em><strong>La nuit</strong></em>, tous les chats sont de sortie ! La nuit, tous les chats sont de sortie ! La nuit, tous les chats sont de sortie ! La nuit, tous les chats sont de sortie ! La nuit, tous les chats sont de sortie ! La nuit, tous les chats sont de sortie ! La nuit, tous les chats sont de sortie !</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Wiliam', '* Le jour *', '<p>&nbsp;Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !&nbsp; Le jour et la nuit !</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Victor', 'Le givre', '<p><em><strong>c\'est givr&eacute; !</strong></em> c\'est givr&eacute; ! c\'est givr&eacute; ! c\'est givr&eacute; ! c\'est givr&eacute; ! c\'est givr&eacute; ! c\'est givr&eacute; ! c\'est givr&eacute; ! c\'est givr&eacute; ! c\'est givr&eacute; ! c\'est givr&eacute; ! c\'est givr&eacute; !</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Victoria', 'La brume', '<p><em><strong>C\'est brumeux !</strong> </em>C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux ! C\'est brumeux !</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'William', 'Le jour :-)', '<p>:-) Il y a du <span style="text-decoration: underline;"><em><strong>soleil</strong></em></span> ! Il y a du soleil ! Il y a du soleil ! Il y a du soleil ! Il y a du soleil ! Il y a du soleil ! Il y a du soleil ! Il y a du soleil ! Il y a du soleil !</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Harry', 'Hello !', '<p>Bonjour, dans cet &eacute;pisode, notre h&eacute;ros se trouve embourb&eacute; dans la neige depuis 2 heures. Parviendra-il &agrave; trouver un moyen de se sortir de ce mauvais pas ?</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
