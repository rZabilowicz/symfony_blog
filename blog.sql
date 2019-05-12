-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 12 Maj 2019, 22:11
-- Wersja serwera: 10.1.36-MariaDB
-- Wersja PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `blog`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `user_id`, `content`, `created_at`) VALUES
(1, 1, NULL, 'asads', '2019-05-12 13:45:11'),
(2, 1, NULL, 'lol', '2019-05-12 14:01:39'),
(3, 1, NULL, 'SUPER EXTRA TEST', '2019-05-12 14:01:56'),
(4, 1, NULL, 'SUPER EXTRA TEST 2', '2019-05-12 14:37:30'),
(5, 2, NULL, 'elko', '2019-05-12 14:45:07'),
(6, 2, 1, 'test comment with user', '2019-05-12 14:50:19'),
(7, 2, 1, 'test user 2', '2019-05-12 14:53:19'),
(8, 6, 3, 'LOL', '2019-05-12 15:26:33'),
(9, 19, 3, 'and super extra comment', '2019-05-12 15:41:23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lead` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `post`
--

INSERT INTO `post` (`id`, `title`, `lead`, `content`, `created_at`) VALUES
(1, 'Eligendi dignissimos aut.', 'Ipsum sed omnis adipisci corrupti. Est esse consequatur id qui quo dignissimos. Et ipsa qui aut eum voluptas. Dicta doloribus atque minima hic voluptas odio. Voluptatem rerum quo in totam mollitia ad. Asperiores ea dolor ea ea quibusdam.', 'In minus magnam consequatur omnis aspernatur tempore. Ducimus omnis est et labore et. Minima qui dolor et. Qui in perferendis nulla velit veritatis ad assumenda. Ipsa sapiente suscipit sint rerum et placeat. Aut expedita quia dicta accusamus qui nulla ipsa. Repellendus necessitatibus molestiae et incidunt quam tempora. Eveniet expedita molestias neque rerum cupiditate tenetur. Culpa recusandae iusto et molestias consequatur aut. Est quis consequatur vel ad aut est. Ut et est fugiat ad suscipit aut sit ut. Ad aut cumque aut itaque alias consequuntur. Autem non aut rerum ratione tempore veritatis aut reprehenderit. Culpa velit aperiam ut.', '2019-04-29 18:31:04'),
(2, 'Qui sunt voluptas aperiam quia.', 'Non non perspiciatis amet voluptatem quis delectus sapiente eos. Esse in officiis harum ipsum quasi. Rerum soluta dolorem eos sint. Rerum deleniti est accusantium et qui.', 'Eos incidunt molestiae et aut tempora fugiat quia. Quia dicta inventore dicta cum quidem nemo nihil. Distinctio unde sunt nesciunt id. Quos ab quidem voluptatem voluptatem eveniet magnam sapiente voluptatem. Aspernatur et nihil amet quia quae perferendis et. Qui ut nobis voluptatem nihil. Et iusto fuga assumenda quia amet nihil. Autem quam quam accusantium maiores provident blanditiis ipsam. Facere quod architecto voluptatibus labore est exercitationem. Ipsa provident ullam omnis fugiat cumque. Sed est quo eos est officia. Pariatur earum enim vitae sit. Rerum qui eum amet iusto. Expedita nihil corporis voluptatum aliquam. In animi eveniet rerum magnam officia.', '2019-04-19 10:58:24'),
(3, 'Magni odio accusantium.', 'Fuga autem iure non voluptatem sed aut tempore. Maxime cupiditate blanditiis vel sit ut. Expedita eos assumenda odio at et itaque. Sint quae pariatur cumque harum consectetur soluta excepturi dolores.', 'Recusandae nostrum qui omnis. Eum et ipsa blanditiis et facere facere quia voluptatem. Quia labore omnis iste aut nihil. Nostrum similique cum odit qui alias numquam. Repellat rerum velit illum ipsam. Blanditiis voluptatum minus odit dolores. Asperiores officiis est accusamus. Cumque nostrum et omnis. Error quo et odit saepe vero deleniti. Beatae et enim asperiores sapiente omnis laudantium dolore. Sunt consequatur id nam recusandae illum sed alias quo. Repellendus vero tenetur quia voluptatem rem ut quia. Ut tenetur quia ullam dolore sed consequuntur. Ab omnis explicabo quisquam unde. Maiores quia ipsam officiis vel.', '2019-04-11 20:08:53'),
(4, 'Exercitationem voluptatibus ipsa et.', 'Rerum odit nihil autem est iusto praesentium. Commodi accusamus debitis dolorem quia vel quibusdam. Voluptatibus dolorum ut enim itaque.', 'Est id et voluptatem iste. Autem quae voluptates aut totam. Quo voluptatem asperiores quia totam veritatis vero consequatur laborum. Reprehenderit distinctio omnis amet dicta. Ab omnis temporibus ullam in soluta quo omnis. Enim et fugit aspernatur odit. Non consectetur nemo non eaque. Adipisci repellat nam autem repellendus dolorem voluptatem occaecati. Vitae aut et velit quasi quae itaque qui deleniti. Id omnis eum sed aut repellat. Voluptate placeat ipsum reprehenderit enim. Laboriosam quia distinctio dignissimos ut qui recusandae.', '2019-04-29 15:03:41'),
(5, 'Qui soluta.', 'Voluptatem impedit deserunt veritatis sit asperiores. Necessitatibus deleniti vel iusto voluptates ipsam. Necessitatibus velit quo pariatur.', 'Rerum nisi voluptatem nam non. Minima voluptatem incidunt voluptatum blanditiis magnam dolores. Voluptatibus consequatur aliquam non maiores nihil et voluptas. Quo iure id molestiae et fuga perferendis. Voluptatem possimus quidem maxime non explicabo. Esse est nesciunt fugit id dignissimos sapiente. Adipisci accusamus voluptatibus quo qui est a voluptatibus. Labore distinctio nisi et eveniet harum. Similique quidem aut quia ab. Dolor eum qui quasi sunt. Sed laudantium fuga exercitationem nisi esse. Eligendi et neque illum quod incidunt ut dignissimos dolorum. Impedit inventore sit et praesentium quia.', '2019-05-04 11:59:45'),
(6, 'Est quasi qui.', 'Recusandae et expedita non. Perspiciatis dolorem tenetur quia reiciendis qui qui. Deserunt et unde et nostrum. Quidem veniam consequuntur molestias at. In labore deleniti quos aut deserunt rerum labore.', 'Magnam et sed officiis cupiditate. Commodi odit sequi voluptatem voluptas. Blanditiis voluptates explicabo ratione aut. Dolores et veritatis aliquid sed veniam est. Excepturi corrupti omnis expedita eaque at. Fugiat quidem id nihil nulla quo minus voluptate. Velit ut officia minima et perspiciatis omnis ut iste. Reiciendis et aut eius dolorem adipisci minus eveniet. Occaecati perferendis corrupti quibusdam laudantium consequuntur. Expedita voluptatem molestiae placeat rem dolor. Provident ex quos impedit maiores. Numquam sed qui reiciendis dolor. Harum soluta deleniti rerum. Labore illo qui fuga et maxime neque omnis dignissimos. Doloremque accusantium omnis enim dolorem.', '2019-04-12 14:32:21'),
(7, 'Ea et similique.', 'Iure sint veniam perferendis. Ab fugit ipsa amet voluptatem omnis. Et non libero nihil ut culpa sit. Doloremque voluptate laboriosam debitis voluptatem unde necessitatibus consequatur.', 'Minima impedit repellendus delectus odio rerum quo placeat. Rerum sed qui et soluta. Praesentium culpa amet omnis explicabo possimus minus. Dolorem recusandae dolorem natus inventore rerum cumque qui. Cumque optio dicta consequuntur corrupti. Provident ullam et et ad nulla ut. Maxime ipsum quos inventore eum totam saepe. Et commodi vel beatae hic. Rerum et perspiciatis rem corrupti sunt sint. Quasi enim sed perspiciatis veniam labore et neque. Quia assumenda qui omnis eaque non. Ut et aperiam placeat. Ipsa quis itaque omnis qui officia dolore. Beatae incidunt nulla dolorem autem eius.', '2019-04-18 06:22:50'),
(8, 'Sed minima voluptate.', 'Dolores nisi omnis nisi quo dolores. Suscipit qui unde architecto facilis. Nemo nesciunt sit dicta quo.', 'Voluptas tempora a est eum. Fugit omnis voluptas dolorem hic magnam omnis repudiandae. In at explicabo dolores nesciunt velit ut. Quisquam perspiciatis temporibus molestiae qui consectetur nihil voluptatem reprehenderit. Rerum id delectus ea quo aut nostrum. Est quo vel dolorem quod quia fugit et amet. Nemo itaque corrupti aliquam et magnam qui. Quia est explicabo ut. Saepe non officiis sit illum architecto. Quidem possimus repudiandae alias mollitia molestias possimus suscipit. Quod ut quam minus nobis aut odit qui est. Nemo officiis voluptas et illo beatae eveniet voluptatem provident. Et ea sunt error aut animi repellendus.', '2019-05-04 01:51:43'),
(10, 'Ut est consectetur in quasi.', 'Corrupti occaecati ullam dolore aut hic non et consequatur. Voluptates quaerat numquam saepe ullam voluptates. Autem ullam officia quam perspiciatis sint. Ea omnis quam vitae aut.', 'Neque quisquam eos cumque. Voluptatem et molestias laboriosam fuga sint quas itaque. Dolor et qui perspiciatis et expedita asperiores aut et. Mollitia sunt ad ut totam eos beatae facilis. Maxime numquam quia suscipit ratione. Maiores perferendis delectus ipsa vero magni dolorum vero. Dolorem debitis architecto omnis est aspernatur qui et. Ab earum et labore minima deserunt. Ex id ducimus repudiandae nostrum eum mollitia occaecati sunt. Deserunt accusantium ipsum sit architecto illo magni ab. Numquam voluptates eaque illo ut dolores. Consectetur voluptatum deserunt recusandae nisi. Nostrum molestiae aut et cumque.', '2019-05-04 23:00:17'),
(11, 'Quibusdam beatae totam.', 'Corporis facilis dolorem harum quos. Aut tempore excepturi libero ut ipsum atque. Officiis rerum aut pariatur repellendus tenetur voluptates saepe sint. Dolores sed eum ut unde molestiae.', 'Atque nulla necessitatibus reiciendis. Similique doloribus veniam numquam facere non aut recusandae. Sed aut a veritatis in. Quia voluptates voluptas corporis corrupti et explicabo nihil. Cupiditate accusantium esse possimus. Ipsum iste deserunt dolorum nisi possimus dolor. Et aut adipisci molestiae nostrum qui aut. Corrupti ducimus perferendis quia dignissimos facilis asperiores. Est qui sint nisi sapiente dicta. Aut quo hic quia omnis. Sed quia voluptas voluptate nemo. Quibusdam similique eum mollitia repellendus temporibus qui. Animi sequi architecto soluta omnis incidunt voluptates.', '2019-04-17 00:47:34'),
(12, 'Illum cum qui qui.', 'Porro eos architecto repellat recusandae blanditiis. Fuga eum corrupti officia et iure. Nisi rerum praesentium sunt ex officiis exercitationem quo. Quia facilis atque odio rem enim vitae. Laudantium voluptatum pariatur qui. Dolor qui minus animi et.', 'Architecto qui id blanditiis fugit voluptatem ex laborum. Enim earum voluptatem itaque laboriosam. Voluptatem et et iure consequatur accusantium rerum possimus. Molestiae corrupti qui molestiae error sit quia nemo. Nam libero rerum sequi voluptas optio rem ut. Eum ut earum et molestias. Hic beatae mollitia expedita impedit ea consequatur eius. Totam et reprehenderit a fuga dolores non placeat veritatis. Rerum alias neque repellat fugit. Quaerat quia cumque aspernatur laudantium eaque. In doloremque maxime nemo nisi atque ducimus. Eum est sint sunt excepturi recusandae nobis aperiam. Harum necessitatibus cupiditate itaque aspernatur sit rerum nemo. Dolores et voluptatem sint rerum.', '2019-04-19 04:29:19'),
(13, 'Eos est non.', 'Animi ut consequatur excepturi beatae asperiores ab. Dolor non harum nisi voluptatibus. Deserunt vel vel quis magnam voluptatem quaerat. Similique dolore alias omnis dolorum dolorem enim. Consequatur et amet placeat porro optio.', 'Vitae possimus provident perspiciatis consequatur ad deserunt. Repellat laborum quasi in sit hic dolor aut. Velit ab reiciendis ipsa tempora qui dolorum. Ab maxime iure ut nostrum optio autem debitis soluta. Ipsa dolorum deleniti quis dolor exercitationem. Est at totam esse perferendis animi qui qui. Soluta et culpa quae vel maxime modi et qui. Dicta esse expedita nam sit nostrum ut. Quam ad sed accusantium perferendis. Amet id dolor beatae sunt. Architecto cumque magnam eveniet asperiores voluptatibus ducimus aspernatur. Eum vel sit ut quis accusantium. Reprehenderit sint repellendus esse repellat sequi aut aut.', '2019-04-18 19:18:13'),
(14, 'Non odio inventore sit.', 'Enim inventore non fugit sint unde quos fugiat sint. Qui hic voluptatem in aliquid esse velit. Vel eum excepturi sit laborum libero. Rerum laboriosam at doloremque maxime aut.', 'Enim veritatis accusamus ab. Eaque aut libero quam dicta qui quia dolorem. Cumque aut voluptatem mollitia eos officia doloremque. Repellendus dolorem sunt quidem aut. Pariatur tempore omnis quidem alias nemo aut cupiditate. Ut vel eum consequatur qui et. Rerum quas corrupti quo placeat. Et quidem quisquam maiores repudiandae quod inventore. Rem vitae maiores aut odio eveniet rerum. Eos quia aspernatur et id culpa. Perferendis accusamus eum ea velit cupiditate reiciendis voluptatem. Vitae maiores deleniti qui in ea qui. Beatae laboriosam quia et voluptas assumenda quibusdam. Unde modi maiores iure quia quo. Nulla voluptatem debitis nihil numquam voluptatem. Rerum consequuntur ea occaecati.', '2019-05-04 20:56:33'),
(15, 'Temporibus ut consequuntur.', 'Aut explicabo iure sunt ipsam qui. Non esse minus sunt hic sunt numquam alias. Iure dolores dicta excepturi laboriosam. Quae quis similique quas omnis ea sit exercitationem culpa. Nisi omnis et ipsam inventore nemo. At vitae omnis a culpa pariatur officiis.', 'Soluta culpa consectetur aut repellat. Ipsam architecto in vel amet qui esse omnis qui. Sint dolore quo maiores voluptas animi et. A nemo dolores optio voluptate natus. Incidunt aspernatur doloremque nostrum consequatur cum. Voluptas quia minima sunt ab. Laborum ad dolor sint eum. Cumque natus harum nemo est vel sed. Nobis labore aut voluptatum minima iste officia omnis. Suscipit dignissimos non dignissimos ducimus voluptas. Quo tenetur delectus eveniet nostrum ad similique libero. Architecto eius quasi voluptatem nostrum. Voluptas tenetur nihil qui ducimus omnis omnis.', '2019-04-21 23:03:12'),
(16, 'Ratione et.', 'Aut vero nisi nulla laboriosam ratione ipsam. Minus quas et quaerat reprehenderit laudantium magni sit. Quod fugit optio ut quia neque deserunt maiores. Deserunt est similique sunt voluptatem ut sequi aspernatur architecto.', 'Cum autem consequatur dolorum vitae autem delectus. Voluptatem est ullam voluptatem sunt vitae necessitatibus. Aut excepturi eligendi ut et aut dolorem. Consequatur veritatis dolor quibusdam sint. Reiciendis illum rerum ea qui. Aut optio qui beatae et non et. Molestias alias quibusdam ut. Et laboriosam laboriosam assumenda dolores. Soluta quasi repellat aut corrupti consequatur autem. Et molestiae reprehenderit corporis iure. Magni rerum inventore unde vitae esse aut perferendis quibusdam. Quia et et omnis et. Et iste quod velit tempore. Sunt voluptatem ducimus dicta sed. Accusamus in enim non debitis et. Quia dignissimos incidunt rerum ut porro.', '2019-05-02 08:42:18'),
(17, 'In autem aperiam.', 'Voluptatum eos debitis et. Voluptatibus officiis aut occaecati. Accusantium consequatur in blanditiis deleniti. Dicta odit maiores occaecati a. Sed et rerum est autem. Inventore aut ad eius consequuntur. Eaque ullam est quaerat est harum eos fuga quisquam.', 'Nihil eaque neque sunt deserunt sit nam. Aliquid excepturi optio ab. Aspernatur et unde ea. Laboriosam molestias accusantium eum hic est. Beatae et esse consequatur deserunt nam quia excepturi. Eligendi sit adipisci incidunt eaque accusantium odio magnam. Rerum saepe ipsum dicta aliquid. Id explicabo accusamus ut iste repellat deserunt vel molestiae. Animi dicta ut quo autem. Vel quia consequuntur repellendus sapiente quisquam. Rerum ex fugit dolor consequatur aut officia voluptas. Fuga ipsum omnis ut ipsum consequatur velit aliquam. Dolorum consequatur repellat incidunt alias odit maiores commodi.', '2019-04-23 21:20:00'),
(18, 'Quia magnam et.', 'Amet cupiditate quasi aliquid blanditiis. Et reiciendis earum distinctio. A voluptatem qui cupiditate ut. Dolorem ipsa ipsum quos beatae temporibus. Facere omnis aspernatur exercitationem sint provident quia et temporibus.', 'Doloribus veniam quia cupiditate sapiente repellendus possimus. Non officiis at beatae vitae saepe. Minus cum hic asperiores qui officiis ipsam sint. Sit non ipsa ut iure natus et. Fuga voluptas eligendi expedita quam itaque ad. Quidem necessitatibus recusandae magnam aliquam non. Molestiae magni omnis consequatur. Laudantium ab dolor excepturi enim corrupti qui vel. Sint aut consectetur et saepe vero. Laboriosam magni nesciunt aut soluta voluptatem. Illo facere illo et quidem qui. Enim illo sequi odit ipsa possimus harum qui. Facere ea omnis quod et quia. Ea ratione facere omnis quaerat dolorum sit. Sit repudiandae perspiciatis deleniti vel.', '2019-05-05 12:30:32'),
(19, 'Random title', 'Random text in lead section', 'Super extra content edited by admin from EasyAdmin Panel! yay!', '2019-04-16 03:42:00');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `confirmation_token`, `password_requested_at`, `roles`) VALUES
(1, 'user', 'user', 'roza0707id@gmail.com', 'roza0707id@gmail.com', 1, NULL, '$2y$13$BYpr/7/gWxJv6OQhoO.3UeMfGYHVQMwwro88ehIEfNzThZoQ1JY.2', '2019-05-12 16:05:25', NULL, NULL, 'a:0:{}'),
(3, 'admin', 'admin', 'roza0707idtest@gmail.com', 'roza0707idtest@gmail.com', 1, NULL, '$2y$13$fI7I3XZnOE6wrs61YmQ3/OYVFoB/EXpIMLfOTvbqNairE/qQEYr7C', '2019-05-12 16:26:27', NULL, NULL, 'a:1:{i:0;s:10:\"ROLE_ADMIN\";}');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526C4B89032C` (`post_id`),
  ADD KEY `IDX_9474526CA76ED395` (`user_id`);

--
-- Indeksy dla tabeli `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D64992FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649A0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_8D93D649C05FB297` (`confirmation_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `FK_9474526CA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
