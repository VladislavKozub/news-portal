-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 22, 2019 at 04:43 PM
-- Server version: 5.6.41
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `idcategory` int(10) UNSIGNED NOT NULL,
  `title` varchar(80) COLLATE utf8_bin NOT NULL,
  `description` varchar(255) COLLATE utf8_bin NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`idcategory`, `title`, `description`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 'Экономика', 'Economy news from all around the world', '2015-08-02 11:12:51', 'web', '0000-00-00 00:00:00', 'web'),
(2, 'Спорт', 'Are you a sports fanatic?', '2015-08-02 11:13:10', 'web', '0000-00-00 00:00:00', 'web'),
(3, 'Технологии', 'All the cutting edge technology news', '2015-08-02 11:13:34', 'web', '0000-00-00 00:00:00', 'web'),
(4, 'Мировые', 'What\'s going on out there?', '2015-08-02 11:13:51', 'web', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `idpost` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `body` text COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`idpost`, `iduser`, `title`, `body`, `image`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(2, 1, 'Interesting dummy news item', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse imperdiet, velit sit amet molestie luctus, tellus metus dictum purus, sit amet pretium massa orci at metus. Etiam elementum fermentum vulputate. Nunc accumsan mauris quis odio elementum, maximus bibendum erat congue. Nunc consequat nisi a accumsan placerat. Pellentesque laoreet at tellus ac tincidunt. Ut maximus, nisi nec eleifend tempor, justo magna imperdiet nunc, vel dictum nisl eros non leo. In dapibus egestas turpis ut suscipit. Mauris aliquam egestas ligula, id efficitur mi ultrices ac. Duis urna velit, gravida at imperdiet at, blandit et justo. In faucibus vel nulla porttitor suscipit. Duis ultrices porttitor felis quis ultricies. Curabitur pellentesque, sem a malesuada tincidunt, velit leo dapibus mauris, ut ornare augue metus nec ipsum. Donec pharetra odio nec pretium luctus. Phasellus varius eget mauris a vestibulum. Donec ut lacinia mauris. Aliquam vitae ipsum elementum, hendrerit tellus vel, iaculis nibh.\r\n\r\nInteger rhoncus eget est non vehicula. In tellus dolor, sodales eu gravida ut, pharetra id lectus. Pellentesque tristique volutpat est commodo scelerisque. Vivamus luctus maximus lacus at fringilla. Aliquam id ligula venenatis, viverra augue vitae, cursus ante. Pellentesque vitae augue viverra, scelerisque sem ac, pretium neque. Vestibulum enim neque, tempus non ligula viverra, gravida placerat nibh. Nullam luctus varius tincidunt. Integer tempus laoreet placerat. Sed in augue eu diam volutpat scelerisque. Phasellus ut dolor sed erat facilisis dictum quis sit amet sapien. Nullam lobortis diam eget dapibus tristique. Sed at leo est. Maecenas sit amet mollis mauris. Etiam porttitor ligula id lectus interdum, sed ornare purus consectetur. Mauris feugiat nisl a urna pharetra, eget egestas ante fermentum.\r\n\r\nMorbi id sem at sem hendrerit tincidunt. Ut id euismod sem. Integer scelerisque enim vel metus placerat, a feugiat enim ornare. Morbi et hendrerit lorem, ut accumsan lacus. Vivamus aliquam molestie dignissim. Aliquam interdum consequat tortor in efficitur. Phasellus bibendum pretium nisl non laoreet. Nulla non neque dignissim risus vestibulum tincidunt. Integer pretium tincidunt urna, in consectetur sem sagittis dignissim.', 'fc940d1d16cc6ff28f97fa4dcd0859ef.jpg', '2019-02-02 13:09:54', 'web', '0000-00-00 00:00:00', 'web'),
(4, 1, 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse imperdiet, velit sit amet molestie luctus, tellus metus dictum purus, sit amet pretium massa orci at metus. Etiam elementum fermentum vulputate. Nunc accumsan mauris quis odio elementum, maximus bibendum erat congue. Nunc consequat nisi a accumsan placerat. Pellentesque laoreet at tellus ac tincidunt. Ut maximus, nisi nec eleifend tempor, justo magna imperdiet nunc, vel dictum nisl eros non leo. In dapibus egestas turpis ut suscipit. Mauris aliquam egestas ligula, id efficitur mi ultrices ac. Duis urna velit, gravida at imperdiet at, blandit et justo. In faucibus vel nulla porttitor suscipit. Duis ultrices porttitor felis quis ultricies. Curabitur pellentesque, sem a malesuada tincidunt, velit leo dapibus mauris, ut ornare augue metus nec ipsum. Donec pharetra odio nec pretium luctus. Phasellus varius eget mauris a vestibulum. Donec ut lacinia mauris. Aliquam vitae ipsum elementum, hendrerit tellus vel, iaculis nibh.\r\n\r\nInteger rhoncus eget est non vehicula. In tellus dolor, sodales eu gravida ut, pharetra id lectus. Pellentesque tristique volutpat est commodo scelerisque. Vivamus luctus maximus lacus at fringilla. Aliquam id ligula venenatis, viverra augue vitae, cursus ante. Pellentesque vitae augue viverra, scelerisque sem ac, pretium neque. Vestibulum enim neque, tempus non ligula viverra, gravida placerat nibh. Nullam luctus varius tincidunt. Integer tempus laoreet placerat. Sed in augue eu diam volutpat scelerisque. Phasellus ut dolor sed erat facilisis dictum quis sit amet sapien. Nullam lobortis diam eget dapibus tristique. Sed at leo est. Maecenas sit amet mollis mauris. Etiam porttitor ligula id lectus interdum, sed ornare purus consectetur. Mauris feugiat nisl a urna pharetra, eget egestas ante fermentum.\r\n\r\nMorbi id sem at sem hendrerit tincidunt. Ut id euismod sem. Integer scelerisque enim vel metus placerat, a feugiat enim ornare. Morbi et hendrerit lorem, ut accumsan lacus. Vivamus aliquam molestie dignissim. Aliquam interdum consequat tortor in efficitur. Phasellus bibendum pretium nisl non laoreet. Nulla non neque dignissim risus vestibulum tincidunt. Integer pretium tincidunt urna, in consectetur sem sagittis dignissim.', 'e1c7c82a13ee7328dbc83ba712d3cebb.jpg', '2019-02-02 13:14:33', 'web', '0000-00-00 00:00:00', 'web'),
(5, 1, 'New milestone in space technology', 'Sed convallis nunc quis felis commodo, eget ornare magna dignissim. Cras felis tellus, mollis id nisl a, hendrerit tincidunt sapien. Phasellus lectus nulla, aliquam eu egestas eget, fermentum porta felis. Etiam non convallis quam. Donec pellentesque ac libero a ornare. Vivamus sollicitudin rutrum nibh, nec pulvinar lectus mollis quis. Sed aliquet tristique elementum. Donec rhoncus elit lacus, eu sodales nulla mattis non. Nam molestie neque sit amet nulla porttitor sodales. Fusce eleifend non metus a pretium. Curabitur sed facilisis orci. Phasellus sollicitudin, ligula non tristique vestibulum, diam enim molestie orci, sed porta risus felis nec libero. Duis efficitur diam vel libero eleifend lobortis.\r\n\r\nIn hac habitasse platea dictumst. Fusce at massa augue. Nunc maximus non velit sit amet commodo. Vivamus condimentum risus dolor, vel semper lectus ultricies at. In quis nisi eleifend, laoreet augue at, porttitor tortor. Pellentesque purus libero, mattis vel magna a, rhoncus scelerisque turpis. Mauris sagittis elit ac rutrum commodo. Duis sit amet nulla nec augue porttitor sodales. Cras quis bibendum neque, in accumsan sapien. Duis facilisis molestie arcu, at ultricies odio posuere non.\r\n\r\nPhasellus iaculis enim dui, eu vestibulum mi elementum sit amet. Suspendisse ut odio odio. Aliquam ante dolor, luctus ut vestibulum nec, porta at dolor. Fusce pretium vitae nisi non vehicula. Suspendisse ac rhoncus odio. Mauris aliquam libero velit. Vestibulum consequat elit tortor, id tincidunt nisi venenatis et. Cras congue ante tristique, vulputate nulla non, efficitur nibh. Vestibulum sodales est vel orci maximus scelerisque. Nulla placerat congue cursus. Donec tempus id risus vel commodo. Nullam ornare ullamcorper urna, interdum laoreet est efficitur id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nProin lacinia erat in lorem feugiat, id vulputate ante efficitur. Sed eget rhoncus dolor, at laoreet purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris condimentum lorem eget dui iaculis, sit amet pellentesque risus porttitor. Pellentesque ornare felis arcu, sed vehicula sapien porta vel. Ut a fermentum metus. Donec nec tincidunt sem. Vivamus et turpis in ex pulvinar suscipit. Maecenas eget nunc consectetur, aliquam risus vel, posuere dolor.', '8bae3d185031e7a374a8a1430a6b120c.jpg', '2019-02-02 14:28:50', 'web', '0000-00-00 00:00:00', 'web'),
(6, 1, 'Recent world news', 'Sed convallis nunc quis felis commodo, eget ornare magna dignissim. Cras felis tellus, mollis id nisl a, hendrerit tincidunt sapien. Phasellus lectus nulla, aliquam eu egestas eget, fermentum porta felis. Etiam non convallis quam. Donec pellentesque ac libero a ornare. Vivamus sollicitudin rutrum nibh, nec pulvinar lectus mollis quis. Sed aliquet tristique elementum. Donec rhoncus elit lacus, eu sodales nulla mattis non. Nam molestie neque sit amet nulla porttitor sodales. Fusce eleifend non metus a pretium. Curabitur sed facilisis orci. Phasellus sollicitudin, ligula non tristique vestibulum, diam enim molestie orci, sed porta risus felis nec libero. Duis efficitur diam vel libero eleifend lobortis.\r\n\r\nPhasellus iaculis enim dui, eu vestibulum mi elementum sit amet. Suspendisse ut odio odio. Aliquam ante dolor, luctus ut vestibulum nec, porta at dolor. Fusce pretium vitae nisi non vehicula. Suspendisse ac rhoncus odio. Mauris aliquam libero velit. Vestibulum consequat elit tortor, id tincidunt nisi venenatis et. Cras congue ante tristique, vulputate nulla non, efficitur nibh. Vestibulum sodales est vel orci maximus scelerisque. Nulla placerat congue cursus. Donec tempus id risus vel commodo. Nullam ornare ullamcorper urna, interdum laoreet est efficitur id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n\r\nProin lacinia erat in lorem feugiat, id vulputate ante efficitur. Sed eget rhoncus dolor, at laoreet purus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris condimentum lorem eget dui iaculis, sit amet pellentesque risus porttitor. Pellentesque ornare felis arcu, sed vehicula sapien porta vel. Ut a fermentum metus. Donec nec tincidunt sem. Vivamus et turpis in ex pulvinar suscipit. Maecenas eget nunc consectetur, aliquam risus vel, posuere dolor.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae nulla massa. Mauris a nisl at nibh auctor ultricies eget vel est. Mauris pulvinar mi dapibus consequat malesuada. Phasellus quis velit magna. Suspendisse dictum feugiat vestibulum. Quisque tempus sit amet mi vel rhoncus. Nulla blandit ut leo et tincidunt. Suspendisse feugiat turpis nec imperdiet euismod. Quisque arcu justo, luctus luctus erat in, faucibus vulputate nisl. Quisque convallis scelerisque augue, eu suscipit neque maximus ut. Pellentesque id interdum ex. Cras lacinia egestas libero id fringilla.', 'b5a853912c131ac654b2b6050b08e0bc.jpg', '2019-02-02 14:30:04', 'web', '0000-00-00 00:00:00', 'web'),
(8, 2, 'YouTube будет показывать округленное количество подписчиков канала', 'Видеохостинг YouTube заявил о том, что унифицирует показ количества подписчиков каналов. Как сообщается в блоге хостинга, с августа этого года во всех случаях будет показано округленное число, а не точное.\r\n\r\nНапример, если у канала 4227 подписчиков, пользователи будут видеть 4,2К до тех пор, пока оно не достигнет отметки в 4300. Вместе с тем, для каналов, количество подписчиков которых не достигло тысячи, все еще будет показано точное число.\r\n\r\nYouTube отмечает, что уже сейчас в некоторых случаях округляет число подписчиков; в дальнейшем сервис распространит эту практику на все каналы. После внедрения нововведения точное количество подписчиков будут видеть только владельцы каналов.\r\n\r\nРанее YouTube принял решение помечать СМИ, которые получают государственное финансирование. Отмечается, что целью нововведения является обеспечение пользователей дополнительной информацией, которая поможет им лучше понять источник новостей, которые они собираются посмотреть.', 'c1050385dac6f8d7b0cf37981b81a845.jpg', '2019-02-02 23:15:49', 'web', '0000-00-00 00:00:00', 'web'),
(9, 2, 'Боевой флот Китая стал крупнейшим в мире', 'В настоящий момент Китай обладает большим количеством боевых кораблей, чем США.\r\n\r\nВМС Китая смогли достигнуть численности в 300 кораблей – на 13 больше, чем у ВМС США.\r\n\r\nКак сообщает Popular mechanics, аналитический проект ChinaPower представил сравнение ВМС Китая с флотами нескольких других морских держав. С тремя сотнями боевых кораблей флот Китая является крупнейшим в мире.\r\n\r\nУ США – 287 кораблей, у России – 83 корабля, у Великобритании – 75 кораблей, у Австралии – 48 кораблей.\r\n\r\nТем не менее, ВМС Китая испытывают острую нехватку платформ для проекции силы (к примеру - авианосцев). Значительная часть китайского флота приходится на корабли, не предназначенные для проведения операций вдалеке от родных берегов. Китай обладает всего одним авианосцем, в то время как у США их 11.\r\n\r\nПо общему тоннажу судов флот США по прежнему опережает китайский флот с большим отрывом.', '11_1530082104.jpg', '2019-02-02 23:16:48', 'web', '0000-00-00 00:00:00', 'web'),
(10, 1, 'Астарта не будет выплачивать дивиденды', 'Агропромхолдинг «Астарта» не планирует выплачивать дивиденды за 2018 год.\r\n\r\nТакое решение приняло собрание акционеров, которое состоялось 17 мая 2019 г., сообщается на Варшавской фондовой бирже.\r\n\r\n«Годовое общее собрание акционеров компании решило утвердить чистый убыток в размере €21,11 млн, который будет передан в нераспределенную прибыль, и не распределять дивиденды», — говорится в сообщении.\r\n\r\nКроме того, акционеры назначили Гусейна Арслана неисполнительным директором компании.\r\n\r\nДля справки: «Астарта» — вертикально интегрированный агропромышленный холдинг, осуществляющий деятельность в Полтавской, Винницкой, Хмельницкой, Тернопольской, Житомирской, Черниговской, Черкасской и Харьковской областях. В состав холдинга входят восемь сахарных заводов, агрохозяйства с земельным банком около 250 тыс. га и молочные фермы. В 2014 году холдинг ввел в эксплуатацию завод по переработке сои в Полтавской области (ООО «Глобинский перерабатывающий завод»).', '87cb4f851dd57cf637e999b598af3fd6.jpg', '2019-02-02 23:20:43', 'web', '0000-00-00 00:00:00', 'web'),
(11, 1, 'В Ингушетии пройдут соревнования парашютистов', 'Экстремалы соберутся в начале июня в Новом Реданте\r\n\r\nМагас, 19 мая. В селе Новый Редант Малгобекского района Республик Ингушетия пройдут международные соревнования по парашютному спорту. 1 и 2 июня сюда съедутся экстремалы-иностранцы и российские парашютисты. Такое воздушное первенство пройдёт в Ингушетии уже в восьмой раз. \r\n\r\nПо данным пресс-службы Министерства спорта Ингушетии, республику на этих соревнованиях представят юниоры.\r\n\r\nОрганизаторами мероприятия выступила Федерация парашютного спорта России и Министерство по физической культуре и спорту Республики Ингушетия.\r\n\r\nСвоё участие уже подтвердили спортсмены из Белоруссии, Германии, Хорватии, Черногории, Украины, Боснии и Герцеговины, Сербии, а также семнадцати субъектов Российской Федерации.', '3ad37c710061a2afaf43da7d751a10c5.jpg', '2019-02-02 23:21:07', 'web', '0000-00-00 00:00:00', 'web'),
(13, 1, 'Стройка Шулявского путепровода может остановиться: названа причина\r\n', 'Антимонопольный комитет Украины (АМКУ) на 149,93 млн грн. оштрафовал две компании, которые входят в корпорацию \"Укрбуд\": ООО \"Северно-украинский строительный альянс\" и ООО \"Спецбуд-Плюс\". Причина штрафа - сговор в тендерах на реконструкцию Национального института сердечно-сосудистой хирургии им.Н.Амосова и гимназии им. Бойченко (оба – Киев).\r\n\r\nОб этом говорится в сообщении АМКУ.\r\n\r\nКроме штрафа, компаниям запрещено участвовать в тендерах в течение ближайших трех лет.\r\n\r\nКиевское областное территориальное отделение АМКУ выяснило, что указанные компании входят в одну корпорацию \"Укрбуд\", предоставляли друг другу финансовую помощь, выполняли работы для одних и тех же подрядчиков, использовали одинаковый IP-адрес для налоговой отчетности и входа в систему \"клиент-банк\", а также действовали синхронно во времени.\r\n\r\nШтраф \"Северно-украинского строительного альянса\" составил 71,45 млн грн. (56,16 млн грн. – по тендеру за реконструкцию института и 15,29 млн грн. – гимназии), а \"Спецбуд-Плюс\" оштрафован на 78,48 млн грн. (63,19 млн грн. и 15,29 млн грн. соответственно), отмечают в Комитете.\r\n\r\nАгентство \"Интерфакс-Украина\" со ссылкой на сообщение АМКУ уточнило, что через две недели будет принято решение по тендеру на реконструкцию Шулявского путепровода, в котором также принимали участие компании корпорации \"Укрбуд\".\r\n\r\nВ \"Северо-украинском строительном альянсе\" заявили о несогласии с таким решением АМКУ и считают его неправомерным.\r\n\r\n\"Предприятие не вступало в сговор с участниками тендеров, в которых участвовало. По каждому из пунктов, которые Киевским областным территориальным отделением АМКУ представлены в качестве доказательств, неоднократно предоставлены аргументированные объяснения, которые, к сожалению, были полностью проигнорированы коллегией\", - подчеркивают в компании.\r\n\r\nНаложение такого штрафа может привести к банкротству ООО \"Северо-украинский строительный альянс\", отмечают в компании. Если это произойдет, то инфраструктурные проекты не будут реализованы.\r\n\r\nЭто касается не только указанных в решении АМКУ объектов, но и реконструкции Шулявского путепровода в Киеве, где генподрядчиком также является \"Северо-украинский строительный альянс\".\r\n\r\nВ компании намерены отстаивать свою правовую позицию в порядке, предусмотренном действующим законодательством Украины.\r\n\r\nКак сообщал \"Апостроф. Экономика\", Антимонопольный комитет Украины (АМКУ) открыл дело в отношении 20 облгазов, подконтрольных олигарху Дмитрию Фирташу, из-за подозрений в нарушении антимонопольного законодательства.', '13d1e5723f65b47bcda6bf0b6dadfb79.jpg', '2019-02-02 23:22:04', 'web', '0000-00-00 00:00:00', 'web'),
(14, 1, 'В Украине насчитали более 150 тысяч айтишников', 'За год количество ІТ-специалистов в Украине, зарегистрированных как предприниматели, выросло на 23% и составило 154 тысячи человек (125 тысяч годом ранее). Об этом сообщает портал DOU со ссылкой на статистику Минюста по IT-ФЛП.\r\n\r\nОтмечается, что рост произошел по всем видам деятельности и почти во всех регионах страны. Однако более половины новых ІТ-ФЛП приходится на Киевскую, Харьковскую и Львовскую области. \r\n\r\nОсновным видом деятельности ІТ-ФЛП остается Компьютерное программирование - по такому коду зарегистрировано 102 тысяч специалистов.\r\n\r\nТакже популярны Консультирование по вопросам информатизации (24 тыс.) и Обработка данных (почти 19 тыс.). Последний за год вырос почти на четверть.\r\n\r\nВ прошлом году количество ІТ-специалистов росло во всех регионах страны, за исключением Крыма (количество зарегистрированных там айтишников за год уменьшилось на 1%).\r\n\r\nЛидерами по темпам роста в 2018 году стали небольшие области. Наибольший прирост количества ІТ-ФЛП зафиксирован в Черкасской, Полтавской и Хмельницкой областях, где количество зарегистрированных айтишников возросло на треть (28%).\r\n\r\nНаименьший прирост количества ІТ-специалистов прогнозируемо состоялся в Донецкой и Луганской областях, хотя даже они, несмотря на сложную военно-политическую ситуацию, продемонстрировали рост (на 12% и 8% соответственно).\r\n\r\nТакже меньше других регионов были темпы прироста в Херсонской (16%), Николаевской (17%) и Закарпатской областях (18%).\r\n\r\nНесмотря на очень разные темпы прироста ІТ-специалистов в различных регионах, рейтинг областей по количеству айтишников почти не изменился: только Полтавской области удалось опередить Житомирскую по количеству ІТ-ФЛП, а Ровенской - Херсонскую.\r\n\r\nНесомненным лидером по количеству ІТ-специалистов остается Киев и Киевская область — здесь зарегистрировано почти 30% всех ІТ-ФЛП.\r\n\r\nНа втором месте остается Харьковская область (там зарегистрировано 14% всех ІТ-специалистов). На третьем, как и год назад, - Львовская (10%).\r\n\r\nПри этом 75% ІТ-специалистов зарегистрировано в крупных городах с населением более 100 тысяч жителей (фактически, это уровень областных центров).\r\n\r\nДоля женщин среди ІТ-специалистов растет, хотя и очень медленно: в прошлом году среди ІТ -ФЛП было 24% женщин, а в этом году - 25%.\r\n\r\nОтметим, по итогам 2018 года IT-индустрия в Украине заняла второе место по объему экспорта, продав заграницу продукции на 4,5 миллиарда долларов.', '379e99ee725266b4f20ca09730809e77.jpg', '2019-02-02 23:22:21', 'web', '0000-00-00 00:00:00', 'web'),
(15, 1, 'Украинцы \"променяли\" отечественные тепличные огурцы на импортные', 'Пока в Украине стремительно дорожают овощи, промышленные теплицы страны только в феврале начали собирать первый урожай огурцов 2019 года. Маркетинговый год начался с опозданием минимум на две недели, а площади под \"зимними\" теплицами в очередной раз сократились, на этот раз – сразу на 15%. Если еще в 2018 году, общая площадь \"зимних теплиц\" составляла около 210 га, то к 2019 году Украина вошла с 180 га, пишет \"Инфо-Шувар\".\r\n\r\n\"Сокращение площадей и относительно позднее начало сезона связано с достаточно сложными условиями ведения тепличного бизнеса в Украине – конкуренция с импортом не уменьшается, а себестоимость украинского огурца, наоборот, растет\", - пояснила СЕО компании-владельца тепличного комбината Мария Антонова.\r\n\r\nПо ее словам, неплохо чувствуют себя только владельцы современных тепличных комплексов, но их доля в структуре общей полощет \"зимних\" теплиц не превышает 50%.\r\n\r\n\"В теплицах старого типа расходы на отопление очень высокие, с учетом постоянно растущих тарифов на газ, понятно, что в таких комплексах выращивать огурец с удовлетворительной себестоимостью все труднее\", - отметила Антонова.\r\n\r\nЗато потребление тепличного огурца в Украине растет и этим, прежде всего, пользуются импортеры. В 2018 году Украина импортировала 12,6 тыс. тонн огурцов, сообщают эксперты. Для сравнения, год назад импорт составлял 9,2 тыс. тонн, а в 2016 году в страну было ввезено 9 тыс. тонн огурцов. Турция остается главным торговым партнером для Украины на этом рынке.', '7150fd0c30dad701609e72ab70185fe3.jpg', '2019-02-02 23:35:18', 'web', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `idpost_category` int(10) UNSIGNED NOT NULL,
  `idpost` int(10) UNSIGNED NOT NULL,
  `idcategory` int(10) UNSIGNED NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`idpost_category`, `idpost`, `idcategory`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(2, 4, 2, '2015-08-02 12:14:33', 'web', '0000-00-00 00:00:00', 'web'),
(3, 5, 3, '2015-08-02 13:28:51', '1', '0000-00-00 00:00:00', 'web'),
(4, 6, 4, '2015-08-02 13:30:04', '1', '0000-00-00 00:00:00', 'web'),
(5, 2, 1, '2015-08-02 14:11:19', 'web', '0000-00-00 00:00:00', 'web'),
(7, 8, 3, '2015-08-02 22:15:49', '2', '0000-00-00 00:00:00', 'web'),
(8, 9, 4, '2015-08-02 22:16:49', '2', '0000-00-00 00:00:00', 'web'),
(9, 10, 1, '2015-08-02 22:20:43', '1', '0000-00-00 00:00:00', 'web'),
(10, 11, 2, '2015-08-02 22:21:07', '1', '0000-00-00 00:00:00', 'web'),
(12, 13, 1, '2015-08-02 22:22:04', '1', '0000-00-00 00:00:00', 'web'),
(13, 14, 3, '2015-08-02 22:22:21', '1', '0000-00-00 00:00:00', 'web'),
(14, 15, 1, '2015-08-02 22:35:19', '1', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `idpost_tag` int(10) UNSIGNED NOT NULL,
  `idpost` int(10) UNSIGNED NOT NULL,
  `idtag` int(10) UNSIGNED NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`idpost_tag`, `idpost`, `idtag`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(4, 2, 3, '2015-08-02 12:11:51', 'web', '0000-00-00 00:00:00', 'web'),
(5, 4, 4, '2015-08-02 12:14:33', 'web', '0000-00-00 00:00:00', 'web'),
(6, 5, 5, '2015-08-02 13:28:51', '1', '0000-00-00 00:00:00', 'web'),
(7, 5, 6, '2015-08-02 13:28:51', '1', '0000-00-00 00:00:00', 'web'),
(8, 6, 7, '2015-08-02 13:30:04', '1', '0000-00-00 00:00:00', 'web'),
(11, 8, 10, '2015-08-02 22:15:49', '2', '0000-00-00 00:00:00', 'web'),
(12, 9, 2, '2015-08-02 22:16:49', '2', '0000-00-00 00:00:00', 'web'),
(13, 11, 8, '2015-08-02 22:21:07', '1', '0000-00-00 00:00:00', 'web'),
(14, 15, 3, '2015-08-02 22:35:19', '1', '0000-00-00 00:00:00', 'web'),
(15, 15, 1, '2015-08-02 22:35:19', '1', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `idprofile` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `last_name` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`idprofile`, `iduser`, `first_name`, `last_name`, `display_name`, `gravatar_email`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 1, 'Ashiqur', 'Rahman', 'Rony', 'ashiquebd@gmail.com', '2015-07-31 23:51:05', 'web', '0000-00-00 00:00:00', 'web'),
(2, 2, 'John', 'Doe', 'John', 'ashiquebd@gmail.com', '2015-08-02 22:12:21', 'web', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `idtag` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) COLLATE utf8_bin NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) COLLATE utf8_bin DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`idtag`, `title`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 'news', '2015-08-02 11:38:11', 'web', '0000-00-00 00:00:00', 'web'),
(2, 'world', '2015-08-02 11:38:11', 'web', '0000-00-00 00:00:00', 'web'),
(3, 'economy', '2015-08-02 12:09:54', 'web', '0000-00-00 00:00:00', 'web'),
(4, 'sport', '2015-08-02 12:14:33', 'web', '0000-00-00 00:00:00', 'web'),
(5, 'space', '2015-08-02 13:28:50', '1', '0000-00-00 00:00:00', 'web'),
(6, 'science', '2015-08-02 13:28:51', '1', '0000-00-00 00:00:00', 'web'),
(7, 'war', '2015-08-02 13:30:04', '1', '0000-00-00 00:00:00', 'web'),
(8, 'sports', '2015-08-02 22:14:55', '2', '0000-00-00 00:00:00', 'web'),
(9, 'lorem', '2015-08-02 22:14:55', '2', '0000-00-00 00:00:00', 'web'),
(10, 'technology', '2015-08-02 22:15:49', '2', '0000-00-00 00:00:00', 'web');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `iduser` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(80) CHARACTER SET latin1 NOT NULL DEFAULT 'web',
  `edit_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` varchar(80) CHARACTER SET latin1 DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`iduser`, `email`, `password`, `code`, `status`, `add_date`, `added_by`, `edit_date`, `edited_by`) VALUES
(1, 'mosrur@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', '7dbff75ae15cd0ea7bfc3ca16c4f33cc', 1, '2015-07-31 22:48:58', 'web', '2018-07-31 18:19:27', 'web'),
(2, 'ashique.bd@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', '35367ceb7f3407415758d005595402c4', 1, '2015-08-02 22:10:25', 'web', '2018-08-02 16:13:32', 'web'),
(3, 'a.shiquebd@gmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', 'f3e4617f035724c8876c8908f4d36d1c', 1, '2015-08-02 22:30:24', 'web', '2018-08-02 16:33:18', 'web'),
(4, 'dev.test.1711@gmail.com', '876745abdc5095b01d5e5986c09bfb5f', 'a9f602c347c0df4dff25777203b3fe8a', 1, '2019-05-21 13:02:40', 'web', '0000-00-00 00:00:00', 'web');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idcategory`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`idpost`),
  ADD KEY `FK_posts_user` (`iduser`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`idpost_category`),
  ADD KEY `FK_post_categories_post` (`idpost`),
  ADD KEY `FK_post_categories_category` (`idcategory`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`idpost_tag`),
  ADD KEY `FK_post_tags_post` (`idpost`),
  ADD KEY `FK_post_tags_tag` (`idtag`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`idprofile`),
  ADD KEY `unique_iduser` (`iduser`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`idtag`),
  ADD UNIQUE KEY `unique_title` (`title`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `unique_email` (`email`),
  ADD UNIQUE KEY `unique_code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `idcategory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `idpost` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `idpost_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `idpost_tag` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `idprofile` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `idtag` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_posts_user` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD CONSTRAINT `FK_post_categories_category` FOREIGN KEY (`idcategory`) REFERENCES `categories` (`idcategory`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_post_categories_post` FOREIGN KEY (`idpost`) REFERENCES `posts` (`idpost`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `FK_post_tags_post` FOREIGN KEY (`idpost`) REFERENCES `posts` (`idpost`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_post_tags_tag` FOREIGN KEY (`idtag`) REFERENCES `tags` (`idtag`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `FK_profiles_users` FOREIGN KEY (`iduser`) REFERENCES `users` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
