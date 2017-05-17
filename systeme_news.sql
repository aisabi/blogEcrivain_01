-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:8888
-- Généré le :  Mer 17 Mai 2017 à 15:49
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
(7, 31, 'Martine', 'Oui c\'est bien. ', '2017-05-17 11:17:08');

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
(25, 'José', 'Lecture', 'Le système, dans sa genèse, part d\'une idée de base simple, et très vite son succès fut tel qu\'il a su devenir indispensable pour certains constructeurs et utilisateurs.\r\n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Carmen', 'Flamenco', 'L\'histoire du flamenco d\'hier et d\'aujourd\'hui ! bonne lecture.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'joe', 'La mer', '<p><strong>Principium autem</strong> unde latius se funditabat, emersit ex negotio tali. Chilo ex vicario et coniux eius Maxima nomine, questi apud Olybrium ea tempestate urbi praefectum, vitamque suam venenis petitam adseverantes inpetrarunt ut hi, quos suspectati sunt, ilico rapti conpingerentur in vincula, organarius Sericus et Asbolius palaestrita et aruspex Campensis.</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'John', 'La montagne', '<p>Praesent nec volutpat quam, vitae aliquam orci. Duis eget vulputate dui. Nam at ante et lacus viverra interdum ac nec risus. Nulla sit amet diam iaculis, tempus augue et, convallis purus. Proin elementum maximus nisi, non aliquet ipsum ornare sed. Suspendisse potenti. Morbi id blandit enim.</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Claire', 'L\'eau', '<p>Principium autem unde latius se funditabat, emersit ex negotio tali. Chilo ex vicario et coniux eius Maxima nomine, questi apud Olybrium ea tempestate urbi praefectum, vitamque suam venenis petitam adseverantes inpetrarunt ut hi, quos suspectati sunt, ilico rapti conpingerentur in vincula, organarius Sericus et Asbolius palaestrita et aruspex Campensis.</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Jack', 'Le poker', '<p>Principium autem unde latius se funditabat, emersit ex negotio tali. Chilo ex vicario et coniux eius Maxima nomine, questi apud Olybrium ea tempestate urbi praefectum, vitamque suam venenis petitam adseverantes inpetrarunt ut hi, quos suspectati sunt, ilico rapti conpingerentur in vincula, organarius Sericus et Asbolius palaestrita et aruspex Campensis.</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Jean', 'Bossa Nova', '<p>Praesent euismod vel felis eu hendrerit. Nulla quis laoreet nisl. Etiam non nisl <strong>fringilla</strong>, pulvinar odio sed, molestie dui. Aliquam mollis massa ut libero tincidunt lobortis. Phasellus tempus quis velit a bibendum. Ut malesuada lacus at urna pharetra, eget consectetur justo semper.</p>', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
