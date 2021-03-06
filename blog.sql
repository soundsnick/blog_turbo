-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 19 2018 г., 00:31
-- Версия сервера: 10.1.29-MariaDB
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `title`, `description`, `content`, `date`) VALUES
(1, 'Секрет успеха', '\"Знаете в чем секрет успеха? Секрет в том чтобы никогда не сдаваться и идти к своей мечте сквозь любые беды, через любые преграды.\" ', '\"Знаете в чем секрет успеха? Секрет в том чтобы никогда не сдаваться и идти к своей мечте сквозь любые беды, через любые преграды.\" \r\n( из мюзикла \"Голоса большой страны\")\r\nОднако существует схема пути к реализации вашей мечты стать успешным.\r\n1. Фантазия. Именно. Вам надо думать о своей мечте. Совет: живите в фантазиях. Многие говорят, имейте высокую цель, но человечески достигаемую. Допустим, вы мечтаете подняться в пик вершины иерархии компании Google или же побывать на Марсе. Это вполне достижимые цели. Возможно вы будете самым первым человеком создавший звездолет колоссальной скорости которая может покорить дистанцию между красной планетой и нашей всего за 2 месяца.\r\n2. Ставьте цели. Представьте что большой пент-хаус который вы хотите построить это ваша мечта. Дом состоит из нескольких частей. Самая первая цель- это фундамент. Именно первый шаг будет держать всю схему. Фундамент тоже из нескольких частей. Их мы назовем \"действиями для достижения цели\". Первым делом готовите расствор, дальше идет каркас из дерева в который будет заливаться бетон. Но все это достаточно трудно будет конструировать без ПЛАНА. \r\nВозьмите ручку и лист и напишите все шаги для достижения цели. И соблюдайте ее. Тут у вас должен быть характер. Если у вас нету ее, выработайте ! Без нее вы останетесь ни с чем.\r\n3. Результат. Для достижения результата ее нужно поддерживать. Инвестируйте в свое дело. Не бывает плюс без минуса. Если вы сейчас подумали о лотереях, обратите внимание на то что лотерейный билет тоже стоит денег. Собирайте капитал, это может послужить первым шагом в пути к цели. И инвестируйте ее умом. Для этого делайте research (исследование). Изучите вашу нишу в мельчайших деталях и побыстрее, потому что кто- нибудь может занять вашу нишу и у вас будут не доброжелательные конкуренты. Но мы тут говорим об успехе не так-ли? Будут конкуренты, распатрошим. Но тут вам понадобится бешеная энергия и большие знания. Мне остается пожелать вам терпеливости и тактичности, а главное амбициозности. Удача и обстоятельства временные явления. Используйте их как рывки в вашем деле, но никак не полагайтесь на них.', '21.07.2017'),
(2, 'О шаблонности', 'Стереотипы. Они определяют стадо вы или нет. Сейчас все начнут идти против стереотипов не желая быть стадом. Однако стереотип - это хороший инструмент для того кто водит стадом и плохой капкан для вторых. Нужно иметь свое мнение.', 'Стереотипы. Они определяют стадо вы или нет. Сейчас все начнут идти против стереотипов не желая быть стадом. Однако стереотип - это хороший инструмент для того кто водит стадом и плохой капкан для вторых. Нужно иметь свое мнение. Но важный момент ! Проверенное мнение. Докажите себе сначала, что ваш взгляд на ту или иную вещь истинна. И проверяйте стереотипы на долю правды. Приведу пример, вы слышали что ребята из Google воруют дизайн у , допустим Apple. Это грубый пример просто. И вы сразу же начнете писать во всех социальных сетях что самая большая компания в мире, спустилась столь низко не проверив на подлинность информации.\r\nДелайте investigation. Всегда.', '10.08.2017'),
(3, 'Еще один пост об успехе', '\"Success is my only motherf*cking option and the failure is not\"\r\n(с) Eminem', '\"Success is my only motherf*cking option and the failure is not\"\r\n(с) Eminem\r\n\r\nУспех, приходит тем кто работает над собой день и ночь, не жалея себя. Толпа слабых людей ошибается, считая что успех настигает только избранных, что каждый будет тем, кем ему предначертано быть. \r\nЗабудьте про слово \"Судьба\". Судьба - есть отговорка. Только вы определяете кем вы станете в будущем. Будете ли вы выпивать дорогое вино в роскошном пентхаусе и занимать пост ген.директора или будете каждый день идти на работу не приносящую вам счастье ради неудовлетворящего жалования, зависит от вас.\r\nТак что будьте столь любезны, включите ваш мозг, встаньте с дивана и действуйте.', '16.09.2017'),
(4, 'Система и о том как она важна', 'Жизнь вне системы полна удовольствия, но не лучшая. Рано или поздно она вас настигнет. Отбросьте мысли что вы не в нем. Вы платите налоги, живете за деньги, каждый вас вздох это деньги.', 'Жизнь вне системы полна удовольствия, но не лучшая. Рано или поздно она вас настигнет. Отбросьте мысли что вы не в нем. Вы платите налоги, живете за деньги, каждый вас вздох это деньги. А эти деньги уходят в карман кто сидит на верху этой самой системы.. \r\nПоставьте себе цель: подняться по иерархической лестнице этой самой системы. Конечно, не всем стать президентом, однако лидером в своей сфере вы вполне можете подняться на максимум. Допустим, если вы IT-Startup\'ер имейте желание поднять свою компанию на одну планку с Google, Microsoft, Apple, если производите напитки, ваша цель - Coca-Cola, Dizzy. \r\nВы уже в системе если читаете этот пост(отшельники не сидят в интернете) , так что вам остается два выбора: так и жить с вашей рутинной программой или править системой и вложить свое в ее комфортизации для таких какими были когда-то вы.', '28.07.2017'),
(5, 'Надо думать чтобы жить подобающе', 'По истечении половины века ничего не изменилось....\r\nСейчас мы говорим о людях, которые не имеют собственного взгляда на те или иные вещи. О людях которые следуют за теми кто ими управляют (так называемыми \"Лидерами\").', 'По истечении половины века ничего не изменилось....\r\nСейчас мы говорим о людях, которые не имеют собственного взгляда на те или иные вещи. О людях которые следуют за теми кто ими управляют (так называемыми \"Лидерами\"). Почему такое случается?\r\nВсе из за того что люди не хотят напрягать себя мыслями. Самое легкое это следовать за теми кто их ведет и доверять им, хоть и не цельно зная их. Им не надо делать никаких лишних движении, искать ответа или даже импровизировать. Такие люди как \"стадо\" овец. Им говорят, они делают.\r\nИ порой даже удивляются как они оказались в глубине ямы. Прямо сейчас, подумайте немного. Представьте что вы тот \"Лидер\". Вы не можете бесконечно подниматься ввысь, ведь каждый делает ошибки. И ваши ошибки отражаются на тех кто следует за вами. \r\nЛюдям проще винить того кто их ведет, если тот делает малейшую ошибку. Но конечно же, не видят что \"вожаки\" делают ради них. Людям проще судить другие поступки, лежа на диване. Простой пример: представьте, что вы работаете на крупную компанию, и делаете свою ежедневную работу. Но в один момент компания разоряется и работники начинают выражать недовольства. \r\nОбоснуйте собственную компанию - когда вы уйдете в яму, вас будут судить тысяча. Но вы подниметесь обратно, и вас будут уважать и будут тянуться к вам. Потому что, вы сами достигли того чего достойны, и показали себя хорошим менеджером.', '21.09.2017'),
(6, 'О связи между верой и деньгами', 'Совокупность религии, бизнеса и менеджмента. \r\nНе буду обвинять век, ведь заработок на вере людей существовал везде и всегда.', 'Совокупность религии, бизнеса и менеджмента. \r\nНе буду обвинять век, ведь заработок на вере людей существовал везде и всегда. С времен Ивана Грозного с людей собирали дань во имя богов и для служителей церкви, объясняя отпущением всех грехов. Если рассуждать логически, как сборы средств ограниченных кругом человечества, могут гарантировать столь большой феноменон. \r\nТак же, известно что религия - легчайшая форма управления людьми. Во времена Советской ССР, в \"служители церкви\" посвящали военных людей КНБ со званиями. \r\nИ по сей день имеются признаки воздвигания политических целей через веру.', '22.09.2017'),
(7, 'Web 2.0', 'Ресурс Дистанция сообщает что Совет безопасности РФ считают необходимым разработать дополнительные правила для ОРИ. ', 'Ресурс Дистанция сообщает что Совет безопасности РФ считают необходимым разработать дополнительные правила для ОРИ. \r\nВ статье так же упоминается что правила обяжут всех социальных сетей и мессенджеров идентифицировать пользователей через ввод номера телефона. Закон будет рассмотрен в 2018 году. \r\nЭто можно считать таковым coming out\'ом, то есть открытым провозглашением того что анонимность и либеральность в сети превратились в миф, и возможно наше поколение будет рассказывать своим внукам, какие были Хорошие времена, в независимой сети. \r\nТут тоже можно считать что деспоты сидячие наверху, одержали очередную победу над простым народом. Они установили систему в Интернете, единственной платформе которая не контролировалась ими.(по-крайней мере об этом не провозглашалось). \r\nДумаю пора создавать Web 2.0 :)', '29.10.2017'),
(11, 'Идеальная любовь', 'О стремлении к идеальному и идеальной любви', 'Не знаю правильно ли говорить \"в наше то время\", ибо не знаком с ситуацией прошлого поколения. Люди тянутся к идеальному. Только вот к какому идеалу? Они стараются быть не таким каким видят идеальность они сами, чаще всего влияет внешняя сила. Если человеку нравится человек, он подсознательно или осознанно ведет исследование вкуса любимого человека. Почему? Хочет угодить, хочет быть тем самым идеальным человеком того кого любит. А почему? Потому что любит! Потому что хочет быть с неюним. Аналогичная ситуация и со средой обитаниякоммуникации. В последствии человек теряет себя. Человек больше не тот кем он был. Он не улучшил себя, а заменил кем то другим. Хотя верности и любви от любимойго, он своими руками, не осознавая этого, доверил ееего другому человеку. Это скорее бывает в сильной любви, иногда такая любовь бывает лишь однажды в жизни. Почему? Потому что часто человек ошибается в своих идеалах. Обретая что-то, чего хотелось всю жизнь, человек начинает скучать по старому, по настоящему. Надоедает сказка... И ты теряешь этого человека. Такова природа человека. Будьте самими собой, и вы встретите ту для кого станете идеалом', '02.03.2018');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
