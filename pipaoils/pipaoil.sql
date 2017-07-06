-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 25. srp 2015, 16:25
-- Verze serveru: 5.6.17
-- Verze PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `pipaoil`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `adresa`
--

CREATE TABLE IF NOT EXISTS `adresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ulice` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `cp` varchar(15) COLLATE utf8_czech_ci NOT NULL,
  `mesto` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `psc` varchar(5) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabulky `clanky`
--

CREATE TABLE IF NOT EXISTS `clanky` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nadpis` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `text` varchar(10000) COLLATE utf8_czech_ci NOT NULL,
  `aktivni` bit(1) NOT NULL DEFAULT b'1',
  `abstrakt` varchar(200) COLLATE utf8_czech_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=8 ;

--
-- Vypisuji data pro tabulku `clanky`
--

INSERT INTO `clanky` (`id`, `nadpis`, `text`, `aktivni`, `abstrakt`) VALUES
(1, 'Pokus', '<p>V&iacute;tejte v na&scaron;em internetov&eacute;m obchod? www.PiPaOils.cz Na&scaron;&iacute; snahou je nejen poskytnout V&aacute;m kvalitn&iacute; zbož&iacute; za co nejp?&iacute;zniv?j&scaron;&iacute; ceny, ale tak&eacute; zajistit profesion&aacute;ln&iacute; p?&iacute;stup, vytvo?it si dlouhodob&yacute; vztah se z&aacute;kazn&iacute;ky a partnery a nad&aacute;le jej rozv&iacute;jet.Klademe d?raz na maxim&aacute;ln&iacute; uspokojen&iacute; pot?eb z&aacute;kazn&iacute;ka a na kvalitu poskytovan&yacute;ch služeb ve v&scaron;ech oblastech p?soben&iacute; firmy. V??&iacute;me v budouc&iacute; &uacute;sp?&scaron;nou spolupr&aacute;ci a t?&scaron;&iacute;me se na kontakt s V&aacute;mi. Pro velkoobchodn&iacute; ceny n&aacute;s kontaktujte na adrese info@pipaoils.cz P?ejeme V&aacute;m p?&iacute;jemn&yacute; n&aacute;kup ! T&yacute;m PiPa Oils</p>', b'1', '<p>V&iacute;tejte v na&scaron;em internetov&eacute;m obchod?.</p>'),
(2, 'Clanek 2', 'Hlavní text', b'0', 'abstrakt'),
(3, 'Clanek 3 ', '<p>Hlavni text clanku</p>', b'1', '<p>Abstrakt 2</p>'),
(4, 'Všeobecné Dodací a obchodní podmínky', '<h1 style="text-align: center;"><strong><br /></strong></h1>\r\n<h2 class="page-title">Dodac&iacute; podm&iacute;nky</h2>\r\n<div class="entry-content">\r\n<p>Zbož&iacute; je dod&aacute;v&aacute;no v&iacute;ce zp?soby dle va&scaron;eho v&yacute;b?ru:</p>\r\n<ul>\r\n<li>Dob&iacute;rkou&nbsp;&ndash; rozv&aacute;žka v pracovn&iacute; dobu do dvou dn?, zbož&iacute; lze zaplatit p?i p?evzet&iacute; od kur&yacute;ra.</li>\r\n<li>Platbou p?edem&nbsp;&ndash; Platbu p?edem vol&iacute;te, když chcete zaplatit zbož&iacute; p?es internetov&eacute; nakovnictv&iacute; a p?i p?evzet&iacute; nic nehrad&iacute;te.</li>\r\n<li>Osobn&iacute; odb?r &ndash; osobn&iacute; odb?r na prodejn? ve Vysok&eacute; M&yacute;t? je zdarma.</li>\r\n</ul>\r\n<p>CEN&Iacute;K P?EPRAVY</p>\r\n<table border="0" cellspacing="2" cellpadding="2">\r\n<tbody>\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td>Osobn&iacute; odb?r na prodejn?</td>\r\n<td>0K?</td>\r\n</tr>\r\n<tr>\r\n<td>DPD -&nbsp;platba p?edem</td>\r\n<td>89K?</td>\r\n</tr>\r\n<tr>\r\n<td>DPD -&nbsp;na dob&iacute;rku</td>\r\n<td>119K?</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Kontakty na dopravce:</p>\r\n<ul>\r\n<li>www.dpd.cz</li>\r\n</ul>\r\n<p>Dopravce telefonicky avizuje ?as dod&aacute;n&iacute; vždy p?edem v den doru?en&iacute;.</p>\r\n</div>\r\n<h2>Obchodn&iacute; podm&iacute;nky</h2>\r\n<div class="p"><strong>&Uacute;vodn&iacute; ustanoven&iacute;</strong>&nbsp;<br />Tyto obchodn&iacute; podm&iacute;nky plat&iacute; pro&nbsp;n&aacute;kup v&nbsp;internetov&eacute;m obchod?&nbsp;<a href="http://www.PiPaOils.cz/" target="_blank">www.PiPaOils.cz.</a>&nbsp;Podm&iacute;nky bl&iacute;že vymezuj&iacute; a&nbsp;up?es?uj&iacute; pr&aacute;va a&nbsp;povinnosti prod&aacute;vaj&iacute;c&iacute;ho (provozovatel) a&nbsp;kupuj&iacute;c&iacute;ho (z&aacute;kazn&iacute;k).&nbsp;<br /><br />Objedn&aacute;vka a&nbsp;uzav?en&iacute; kupn&iacute; smlouvy&nbsp;<br />Ve&scaron;ker&eacute; objedn&aacute;vky podan&eacute; prost?ednictv&iacute;m internetov&eacute;ho obchodu (eshopu), e-mailu ?i telefonu jsou z&aacute;vazn&eacute;. Pod&aacute;n&iacute;m objedn&aacute;vky kupuj&iacute;c&iacute; stvrzuje, že se&nbsp;sezn&aacute;mil s&nbsp;t?mito obchodn&iacute;mi podm&iacute;nkami jakož i&nbsp;reklama?n&iacute;m ?&aacute;dem a&nbsp;že s&nbsp;nimi souhlas&iacute;.&nbsp;<br />Objedn&aacute;vka je n&aacute;vrhem kupn&iacute; smlouvy. Kupn&iacute; smlouva vznik&aacute; v&nbsp;okamžiku p?evzet&iacute; objednan&eacute;ho zbož&iacute; kupuj&iacute;c&iacute;m.&nbsp;<br />Podm&iacute;nkou platnosti elektronick&eacute; objedn&aacute;vky je vypln?n&iacute; ve&scaron;ker&yacute;ch formul&aacute;?em p?edepsan&yacute;ch &uacute;daj? a&nbsp;n&aacute;ležitost&iacute;, v&nbsp;p?&iacute;pad? objedn&aacute;vky p?es e-mail je objedn&aacute;vka platn&aacute; v&nbsp;p?&iacute;pad? uveden&iacute; v&scaron;ech &uacute;daj? požadovan&yacute;ch k n&aacute;kupu na&nbsp;t?chto str&aacute;nk&aacute;ch.&nbsp;<br />M&iacute;stem dod&aacute;n&iacute; zbož&iacute; je adresa uveden&aacute; kupuj&iacute;c&iacute;m v&nbsp;objedn&aacute;vkov&eacute;m formul&aacute;?i, adresa uveden&aacute; v&nbsp;objedn&aacute;vkov&eacute;m e-mailu nebo udan&aacute; telefonicky.&nbsp;<br />Vlastnick&eacute; pr&aacute;vo ke zbož&iacute; p?ech&aacute;z&iacute; na&nbsp;kupuj&iacute;c&iacute;ho, pod podm&iacute;nkou zaplacen&iacute; kupn&iacute; ceny, jeho p?evzet&iacute;m.&nbsp;<br />Vypln?n&iacute;m z&aacute;vazn&eacute; objedn&aacute;vky v&nbsp;r&aacute;mci na&scaron;eho internetov&eacute;ho obchodu, kupuj&iacute;c&iacute; d&aacute;v&aacute; prod&aacute;vaj&iacute;c&iacute;mu souhlas k shromaž?ov&aacute;n&iacute; a&nbsp;archivov&aacute;n&iacute; osobn&iacute;ch &uacute;daj? o&nbsp;kupuj&iacute;c&iacute;m a&nbsp;o jeho n&aacute;kupech.&nbsp;<br /><br /><strong>Reklamace</strong>&nbsp;<br />P?&iacute;padn&eacute; reklamace budou vy?&iacute;zeny v&nbsp;souladu s&nbsp;reklama?n&iacute;m ?&aacute;dem internetov&eacute;ho obchodu na&nbsp;str&aacute;nk&aacute;ch&nbsp;<a href="http://www.PiPaOils.cz" target="_blank">www.PiPaOils.cz</a>&nbsp;a&nbsp;pr&aacute;vn&iacute;m ?&aacute;dem platn&yacute;m v&nbsp;?R. Zbož&iacute; lze reklamovat u&nbsp;provozovatele dle podm&iacute;nek reklama?n&iacute;ho ?&aacute;du na&nbsp;adrese&nbsp;<a href="mailto:info@pipaoils.cz">info@pipaoils.cz</a>&nbsp;<br />V&yacute;m?na nebo vr&aacute;cen&iacute; zbož&iacute; je možn&eacute; pouze v&nbsp;p?&iacute;pad? vr&aacute;cen&iacute; bez zn&aacute;mek už&iacute;v&aacute;n&iacute; v&nbsp;p?vodn&iacute;m stavu, neporu&scaron;en&eacute;m obalu a&nbsp;s ve&scaron;ker&yacute;m p?&iacute;slu&scaron;enstv&iacute;m.&nbsp;<br /><br /><strong>Odstoupen&iacute; od kupn&iacute; smlouvy (Vr&aacute;cen&iacute; zbož&iacute;)</strong>&nbsp;<br />Kupuj&iacute;c&iacute; (soukrom&aacute; osoba, nikoli firma s&nbsp;I?) m&aacute; pr&aacute;vo podle odstavce 6 novely ob?ansk&eacute;ho z&aacute;kon&iacute;ku ?.367/2000 odstoupit od smlouvy do 14ti dn? od p?evzet&iacute; zbož&iacute;. Pokud se&nbsp;tak rozhodne, mus&iacute; nepo&scaron;kozen&eacute; zbož&iacute;, bez zn&aacute;mek už&iacute;v&aacute;n&iacute; nebo opot?ebov&aacute;n&iacute;, v&nbsp;p?vodn&iacute;m obalu poslat zp?t v&nbsp;uveden&eacute; lh?t? (ur?uj&iacute;c&iacute; je datum odesl&aacute;n&iacute;). Po obdržen&iacute; vr&aacute;cen&eacute;ho zbož&iacute;, prod&aacute;vaj&iacute;c&iacute; obratem z&aacute;kazn&iacute;kovi vr&aacute;t&iacute; zp?t odpov&iacute;daj&iacute;c&iacute; ?&aacute;stku p?edem dohodnut&yacute;m zp?sobem, nej?ast?ji na&nbsp;z&aacute;klad? kupuj&iacute;c&iacute;m potvrzen&eacute;ho dobropisu.&nbsp;<br /><br /><strong>Pr&aacute;va a&nbsp;povinnosti prod&aacute;vaj&iacute;c&iacute;ho</strong>&nbsp;<br />Prod&aacute;vaj&iacute;c&iacute; m&aacute; povinnost vy?&iacute;dit z&aacute;vaznou objedn&aacute;vku, odeslat objednan&eacute; zbož&iacute; a&nbsp;dodat na&nbsp;adresu kupuj&iacute;c&iacute;ho v&nbsp;term&iacute;nu, kter&yacute; kupuj&iacute;c&iacute;mu sd?l&iacute; p?i&nbsp;potvrzen&iacute; objedn&aacute;vky. P?i p?evzet&iacute; zbož&iacute; obdrž&iacute; kupuj&iacute;c&iacute; ke zbož&iacute; vždy da?ov&yacute; doklad, d&aacute;le pokud to charakter zbož&iacute; vyžaduje ?esk&yacute; manu&aacute;l a&nbsp;z&aacute;ru?n&iacute; list. Technick&eacute; a&nbsp;bezpe?nostn&iacute; listy dod&aacute;me na&nbsp;vyž&aacute;d&aacute;n&iacute;.&nbsp;<br />Ve&scaron;ker&eacute; osobn&iacute; &uacute;daje poskytnut&eacute; p?i&nbsp;registraci jsou d?v?rn&eacute;.&nbsp;<br />Prod&aacute;vaj&iacute;c&iacute; m&aacute; povinnost vymazat registrovan&eacute;ho z&aacute;kazn&iacute;ka z&nbsp;datab&aacute;ze v&nbsp;p?&iacute;pad?, že o&nbsp;to z&aacute;kazn&iacute;k p&iacute;semn? pož&aacute;d&aacute;.&nbsp;<br />Prod&aacute;vaj&iacute;c&iacute; m&aacute; pr&aacute;vo odm&iacute;tnout objedn&aacute;vku, pokud kupuj&iacute;c&iacute; opakovan? nepln&iacute; sv?j z&aacute;vazek odebrat zbož&iacute; a&nbsp;zaplatit kupn&iacute; cenu.&nbsp;<br />Prod&aacute;vaj&iacute;c&iacute; m&aacute; pr&aacute;vo od kupn&iacute; smlouvy (z&aacute;vazn&eacute; objedn&aacute;vky) odstoupit, stane-li se&nbsp;pln?n&iacute; nemožn&yacute;m, nedohodne-li se&nbsp;s&nbsp;kupuj&iacute;c&iacute;m na&nbsp;nov&eacute;m pln?n&iacute;. V p?&iacute;pad?, že kupuj&iacute;c&iacute; zaplatil objednan&eacute; zbož&iacute; p?edem a&nbsp;odstoup&iacute;-li od smlouvy z&nbsp;v&yacute;&scaron;e uveden&eacute;ho d?vodu, vr&aacute;t&iacute; prod&aacute;vaj&iacute;c&iacute; kupuj&iacute;c&iacute;mu celou ?&aacute;stku nejpozd?ji do 5 dn? od doru?en&iacute; p&iacute;semn&eacute;ho odstoupen&iacute; od smlouvy.&nbsp;<br /><br /><br /></div>\r\n<p><span style="font-family: helvetica;">&nbsp;</span></p>', b'1', '<p><strong>V&scaron;eobecn&eacute; Dodac&iacute; a obchodn&iacute; podm&iacute;nky pro n&aacute;kup v&nbsp;eshopu <span style="color: #fc0202;">PiPa Oils</span></strong></p>');

-- --------------------------------------------------------

--
-- Struktura tabulky `detailobjednavky`
--

CREATE TABLE IF NOT EXISTS `detailobjednavky` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jmeno` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `prijmeni` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `datum` date NOT NULL,
  `adresaid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adresaid` (`adresaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabulky `kategorie`
--

CREATE TABLE IF NOT EXISTS `kategorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jmeno` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `zkratka` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `aktivni` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=10 ;

--
-- Vypisuji data pro tabulku `kategorie`
--

INSERT INTO `kategorie` (`id`, `jmeno`, `zkratka`, `aktivni`) VALUES
(1, 'Motorové oleje', 'mo', b'1'),
(2, 'P?evodové oleje', 'prevod', b'1'),
(3, 'Aditiva a ošetřujicí přípravky', 'aditiva', b'1'),
(4, 'Maziva', 'maziva', b'1'),
(9, 'dfsasd', 'fasd', b'0');

-- --------------------------------------------------------

--
-- Struktura tabulky `komentare`
--

CREATE TABLE IF NOT EXISTS `komentare` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nadpis` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `text` varchar(1000) COLLATE utf8_czech_ci NOT NULL,
  `aktivni` bit(1) NOT NULL DEFAULT b'1',
  `autor` varchar(100) COLLATE utf8_czech_ci NOT NULL DEFAULT 'anonym',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabulky `objednavky`
--

CREATE TABLE IF NOT EXISTS `objednavky` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `produktid` int(11) NOT NULL,
  `zakaznikid` int(11) NOT NULL,
  `detailid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `produktid` (`produktid`),
  KEY `zakaznikid` (`zakaznikid`),
  KEY `detailid` (`detailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabulky `produkty`
--

CREATE TABLE IF NOT EXISTS `produkty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nazev` varchar(100) COLLATE utf8_czech_ci NOT NULL,
  `cena` decimal(19,2) NOT NULL,
  `popis` varchar(500) COLLATE utf8_czech_ci DEFAULT NULL,
  `pocet` int(11) DEFAULT NULL,
  `aktivni` bit(1) NOT NULL DEFAULT b'1',
  `categoryid` int(11) NOT NULL,
  `komentaid` int(11) DEFAULT NULL,
  `popisdlouhy` varchar(10000) COLLATE utf8_czech_ci DEFAULT NULL,
  `soubor` mediumblob,
  PRIMARY KEY (`id`),
  KEY `categoryid` (`categoryid`),
  KEY `komentaid` (`komentaid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=20 ;

--
-- Vypisuji data pro tabulku `produkty`
--

INSERT INTO `produkty` (`id`, `nazev`, `cena`, `popis`, `pocet`, `aktivni`, `categoryid`, `komentaid`, `popisdlouhy`, `soubor`) VALUES
(2, 'Millers Oils Diesel Power ECOMAX 500ml', '499.00', '<p>Vysoce v&yacute;konn&aacute; aditivace nafty pro zv&yacute;&scaron;enou efektivitu spalov&aacute;n&iacute;, ?istotu spalovac&iacute;ho prostoru, redukci emis&iacute; a ochranu motoru p?ed negativn&iacute;mi vlivy biosložky.</p>', 25, b'1', 3, NULL, '', NULL),
(3, 'Millers Oils Diesel Injector Cleaner, ?isti? vst?ik? naftových motor? 250 ml', '179.00', 'Velice ú?inný, vysoce koncentrovaný ?istící prost?edek ur?ený pro odstra?ování úsad z vst?ikovacích systém? naftových agregát?. ', 10, b'1', 3, NULL, 'Diesel Injector Cleaner\r\n \r\n \r\n\r\nVelice ú?inný, vysoce koncentrovaný ?istící prost?edek ur?ený pro odstra?ování úsad z vst?ikovacích systém? naftových agregát?. \r\n\r\nAPLIKACE: \r\nP?idejte jednorázov? do nádrže p?ed tankováním. Jedno balení 250 ml pro ošet?ení 60-ti litr? nafty. P?i silném zne?išt?ní je pro zvýšení ú?innosti možné dávkování zdvojnásobit. \r\n\r\nUŽIVATELSKÉ VÝHODY: \r\n• Odstra?uje efekty špatného chodu motoru jako nap?. cukání, zhasínání a špatnou odezvu na sešlápnutí plynového pedálu. \r\n• P?ispívá k hladšímu chodu a nižší hlu?nosti motoru. \r\n• Pomáhá navrátit p?vodní výkonové parametry motoru, zlepšuje akceleraci. \r\n• Razantní snížení emisí a kou?ivosti. \r\n• Pln? kompatibilní se standardní naftou, s naftou se zvýšeným bio podílem i s bio naftou. \r\n• Vyvinuto, vyrobeno a baleno v Anglii - originál firmy Millers Oils Ltd.\r\n\r\nCHARAKTERISTIKA: \r\nHustota p?i 15°C: 0.832 \r\nBod vzplanutí: >65°C \r\n\r\nSkladujte mimo p?ímé slune?ní zá?ení a zdroje tepla.', NULL),
(4, 'DPF Cleaner & Regenerator 250ml', '259.00', 'Specializovaný naftový aditiv snižující teplotu nutnou pro zahájení a efektivní dokončení regenerace filtru pevných částic (DPF). Zamezuje tak neefektivním a nedokončeným průběhům regenerace DPF, nadm', 10, b'1', 3, NULL, 'DPF Cleaner & Regenerator\r\n \r\n \r\n\r\nPOPIS:\r\n\r\nSpecializovaný naftový aditiv snižující teplotu nutnou pro zahájení a efektivní dokončení regenerace filtru pevných částic (DPF). Zamezuje tak neefektivním a nedokončeným průběhům regenerace DPF, nadměrnému hromadění nespálených částic sazí a riziku zablokování filtru. Filtr pevných částic je udržován čistý a funguje efektivněji.\r\n\r\n \r\n\r\nAPLIKACE:\r\n\r\nPřidejte jednorázově do nádrže před tankováním. Jedno balení 250 ml pro ošetření 60-ti litrů nafty. Jako prevenci před problémy s filtrem pevných částic doporučujeme aplikovat každých3.000 km. Může být používáno častěji, pokud problémy s filtrem pevných částic přetrvávají a dochází k jeho výraznějšímu ucpávání.\r\n\r\n \r\n\r\nUŽIVATELSKÉ VÝHODY:\r\n\r\nKrátké jízdy a provoz vozu stylem „start – stop“ jsou doprovázeny nižšími teplotami výfukových zplodin, díky čemuž k regeneraci DPF nedochází vůbec nebo pouze v omezené neefektivní míře a filtr pevných částic je zanášen nespálenými sazemi. Snižuje se tak výkonnost motoru a často dochází k rozsvěcování chybových hlášení palubního počítače.\r\n\r\n \r\n\r\nDPF Cleaner & Regenerator těmto problémům zamezuje a poskytuje:\r\n\r\n• Rychlou jednorázovou aplikaci pro rychlý a efektivní výsledek bez vysokých nákladů na demontáž a obnovu.\r\n\r\n• Snížení teploty nutné pro zahájení a efektivnímu dokončení regenerace filtru pevných částic (DPF).\r\n\r\n• Vyčištění filtru pevných částic a vstřikovacího systému, čímž přispívá ke snížení spotřeby paliva, redukci emisí a navrácení původního výkonu motoru.\r\n\r\n• Možnost bezpečného provozu vozu na krátkých tratích a stylem „start – stop“.\r\n\r\n \r\n\r\n• Plně kompatibilní se standardní naftou, s naftou se zvýšeným bio podílem i s bio naftou.\r\n\r\n• Vyvinuto, vyrobeno a baleno v Anglii - originál firmy Millers Oils Ltd.\r\n\r\nCHARAKTERISTIKA:\r\n\r\nHustota při 15°C:  0.810\r\n\r\nBod vzplanutí:     75°C\r\n\r\n \r\n\r\nBALENÍ:\r\n\r\nLáhev 250 ml', NULL),
(5, 'TRX Synth 75w90 GL4/5 5l', '2071.00', 'Vysoce výkonný plně syntetický převodový olej poskytující maximální ochranu převodovek a diferenciálů, přispívající rovněž ke snížení spotřeby paliva.', 5, b'1', 2, NULL, 'Vysoce výkonný plně syntetický převodový olej poskytující maximální ochranu převodovek a diferenciálů, přispívající rovněž ke snížení spotřeby paliva. \r\n\r\nAPLIKACE: \r\nPro použití v převodovkách a zadních osách osobních a lehkých dodávkových automobilů, kde je požadován převodový olej špičkové kvality. \r\n\r\nUŽIVATELSKÉ VÝHODY: \r\n• Jeho použití efektivně přispívá ke snížení spotřeby paliva. \r\n• Zajišťuje vynikající ochranu proti opotřebení a korozi. \r\n• Přispívá k velice snadnému řazení převodů. \r\n• Předchází závadám plynoucích z vysokých provozních teplot a vysokého zatížení převodového ústrojí. \r\n• Umožňuje maximální přípustné prodloužení výměnných intervalů. \r\n• Vyvinuto, vyrobeno a baleno v Anglii – originál firmy Millers Oils Ltd. \r\n\r\nVÝKONOVÝ PROFIL: \r\n• API GL4, GL5 \r\n• ZF TE-ML 02 \r\n• ZF TE-ML 05 \r\n\r\nCHARAKTERISTIKA: \r\nSAE viskozita: 75w90 \r\nHustota při 15°C: 0.867 \r\nKinematická viskozita při 100°C: 14.2cSt \r\nKinematická viskozita při  40°C: 98.8cSt \r\nViskozitní index: 147 \r\nBod skápnutí: -48°C \r\nBod vzplanutí: 200°C', NULL),
(6, 'TRX Synth 75w80 GL5 5l', '1404.00', 'Špičkový plně syntetický převodový olej. Poskytuje maximální ochranu pro moderní manuální převodovky a diferenciály konstruované s ohledem na snižování spotřeby paliva.', 5, b'1', 2, NULL, 'TRX Synth 75w80 GL5 \r\nŠpičkový plně syntetický převodový olej. Poskytuje maximální ochranu pro moderní manuální převodovky a diferenciály konstruované s ohledem na snižování spotřeby paliva. \r\n\r\nAPLIKACE: \r\nPro použití v převodovkách a zadních osách osobních a lehkých dodávkových automobilů, kde je požadován vysoce výkonný plně syntetický převodový olej viskozity 75w80. Pro mnohé aplikace dle doporučení výrobců automobilů včetně BMW, Mercedes-Benz, Chrysler, Fiat, Nissan, PSA Group, Renault, Volkswagen Group, Vauxhall / Opel, Alfa Romeo, Land Rover, Mini, Dodge, Ford a Volvo. \r\n\r\nUŽIVATELSKÉ VÝHODY: \r\n\r\n    Díky sníženému tření a odporu přispívá jeho použití velice efektivně ke snížení spotřeby paliva.\r\n    Přispívá k velice snadnému řazení převodů.\r\n    Předchází závadám plynoucích z vysokých provozních teplot a vysokého zatížení převodového ústrojí.\r\n    Díky vysoké míře ochrany umožňuje maximální přípustné prodloužení výměnných intervalů.\r\n    Vyvinuto, vyrobeno a baleno v Anglii – originál firmy Millers Oils Ltd.\r\n\r\n\r\nVÝKONOVÝ PROFIL: \r\n• API GL4, GL5 \r\n\r\nCHARAKTERISTIKA: \r\nSAE viskozita: 75w80 \r\nHustota při 15°C: 0.857 \r\nKinematická viskozita při 100°C: 8.7cSt \r\nKinematická viskozita při 40°C: 46.0cSt \r\nViskozitní index: 171 \r\nBrookfield Viscosity při -40°C: 133, 000 cP \r\nBod skápnutí: <-40°C \r\nBod vzplanutí: >200°C', NULL),
(7, 'Brake and Clutch Cleaner 400 ml', '135.00', 'Vysoce výkonný univerzální čistič a odmašťovač na bázi isopropanolu a dalších rozpouštědel. Výborně proniká i do těsných míst.', 5, b'1', 4, NULL, 'Vysoce výkonný univerzální čistič a odmašťovač na bázi isopropanolu a dalších rozpouštědel. Výborně proniká i do těsných míst. \r\n\r\nAPLIKACE: \r\nPro efektivní čištění a odmašťování součástí brzd, spojek, převodovek apod. \r\n\r\nUŽIVATELSKÉ VÝHODY: \r\nVýkonný čistič poskytující \r\n\r\n    rychlé odpaření bez zanechání nečistot\r\n    snadné čištění součástí\r\n    minimální míru toxicity ve srovnání s jinými produkty\r\n    silný účinek pro odstranění mastnoty, brzdného pachu a brzdové kapaliny\r\n    prevenci před pískáním brzd\r\n\r\n\r\nBALENÍ: \r\n400 ml sprej', NULL),
(8, 'Carburetor Cleaner 400ml', '135.00', 'Rozpouštědlový čistič vhodný pro odstraňování odolných úsad na bázi gumy, oleje a tuků z karburátorů a vstřikovacích systémů.', 5, b'1', 4, NULL, 'Rozpouštědlový čistič vhodný pro odstraňování odolných úsad na bázi gumy, oleje a tuků z karburátorů a vstřikovacích systémů. \r\n\r\nAPLIKACE: \r\nMotory s přímým vstřikem paliva – nastříkejte vstupy sacího potrubí a otevřete konec PCV ventilu. \r\nKarburátorové motory – nastříkejte vnější část karburátoru, odstraňte vzduchový filtr a nastříkejte škrtící klapku a sací otvory. \r\n\r\nUŽIVATELSKÉ VÝHODY: \r\n\r\n    Pomáhá navrátit ztracený výkon a snížit spotřebu paliva.\r\n    Odstraňuje úsady vzniklé při spalování.\r\n    Vhodné i pro systémy vybavené katalyzátorem nebo lambda sondou.\r\n    Pomáhá bojovat s problémem nečistot benzínu, který může vést k zablokování trysek a ztrátě výkonu.\r\n\r\n\r\nBALENÍ: \r\n400 ml sprej', NULL),
(9, 'Deltaplex 2 EP Grease 500g kelímek', '289.00', 'Vazelína na bázi lithiového komplexu pro vysoce výkonné aplikace. Červená barva. NLGI třída 2. ', 5, b'1', 4, NULL, 'APLIKACE: \r\nVhodná pro všechny druhy ložisek včetně ložisek kol a univerzálních kloubových spojení. \r\nProvozní teploty od -20°C do +150°C. \r\n\r\nUŽIVATELSKÉ VÝHODY: \r\n\r\n    Vysokotlaká aditiva poskytují ochranu před extrémní zátěží a poskytují excelentní mazací schopnosti\r\n    v širokém rozpětí provozních teplot.\r\n    Vysoká odolnost proti vodě a dobrá ochrana proti korozi pro ochranu mazacích systémů a ložisek.\r\n    Vyvinuto, vyrobeno a baleno v Anglii – originál firmy Millers Oils Ltd.\r\n\r\n\r\nCHARAKTERISTIKA: \r\nVzhled: jemná lepivá vazelína červené barvy \r\nZhušťovací médium: komplex lithiových mýdel \r\nPracovní penetrace (IP50): od 265 do 295 \r\nNLGI třída: 2 \r\nBod skápnutí (IP132): 250°C min \r\nČtyřkuličkový test (IP239): 450 Kg \r\nTimken zátěžový test: 20 kg \r\nEMCOR korozní test (IP220): 0:0 \r\nViskozita základového oleje při 40°C: 180 c St mm2/s \r\nProvozní teploty: od -20°C do +150°C. \r\nTest koroze mědi (IP112): prošlo \r\nZákladový olej: minerální olej', NULL),
(13, 'Millers Oils Diesel Power ECOMAX 500ml', '499.00', 'Vysoce výkonná aditivace nafty pro zvýšenou efektivitu spalování, ?istotu spalovacího prostoru, redukci emisí a ochranu motoru p?ed negativními vlivy biosložky. ', 9, b'1', 3, NULL, NULL, NULL),
(14, 'Millers Oils Diesel Power ECOMAX 500ml', '499.00', 'Vysoce výkonná aditivace nafty pro zvýšenou efektivitu spalování, ?istotu spalovacího prostoru, redukci emisí a ochranu motoru p?ed negativními vlivy biosložky. ', 9, b'1', 2, NULL, NULL, NULL),
(16, 'Millers Oils Nanodrive EE Transmission 75w90 5l', '2384.00', '<p>Vysoce v&yacute;konn&yacute;,&nbsp;pln? syntetick&yacute;,&nbsp;low-friction&nbsp;p?evodov&yacute; olej.</p>', 5, b'1', 2, NULL, '<p>Vysoce v&yacute;konn&yacute; pln? syntetick&yacute; low-friction p?evodov&yacute; olej. Sestaven s&nbsp;ohledem na&nbsp;pln?n&iacute; n&aacute;ro?n&yacute;ch požadavk? sou?asn&yacute;ch p?evodovek a&nbsp;rozvodovek s&nbsp;dal&scaron;&iacute;m p?&iacute;nosem ve&nbsp;form? aditivace nano?&aacute;sticemi pro&nbsp;razantn&iacute; sn&iacute;žen&iacute; t?en&iacute;, opot?eben&iacute; sou?&aacute;st&iacute; transmis&iacute; a&nbsp;sn&iacute;žen&iacute; spot?eby paliva. Sou?&aacute;st ?ady produkt? Millers Oils NANODRIVE Low Friction Technology.&nbsp;<br /><br /><strong>APLIKACE:</strong>&nbsp;<br />Pro použit&iacute; v&nbsp;p?evodovk&aacute;ch a&nbsp;rozvodovk&aacute;ch osobn&iacute;ch a&nbsp;lehk&yacute;ch dod&aacute;vkov&yacute;ch automobil?, kde je požadov&aacute;n p?evodov&yacute; olej &scaron;pi?kov&eacute; kvality, razantn&iacute;m zp?sobem p?isp&iacute;vaj&iacute;c&iacute; ke sn&iacute;žen&iacute; n&aacute;klad? na&nbsp;provoz automobilu.&nbsp;<br /><br /><strong>UŽIVATELSK&Eacute; V&Yacute;HODY:</strong>&nbsp;<br />Aditivace nano?&aacute;sticemi poskytuje n&aacute;sleduj&iacute;c&iacute; v&yacute;hody:&nbsp;</p>\r\n<ul>\r\n<li>Sn&iacute;žen&iacute; t?en&iacute; mezi kovov&yacute;mi komponenty pom&aacute;h&aacute; absorbovat extr&eacute;mn&iacute; tlaky a&nbsp;r&aacute;zy.</li>\r\n<li>Laboratorn&iacute; testy potvrzuj&iacute; redukci t?en&iacute; o&nbsp;50% p?isp&iacute;vaj&iacute;c&iacute; ke sn&iacute;žen&eacute;mu opot?eben&iacute; sou?&aacute;st&iacute; o&nbsp;63% ve&nbsp;srovn&aacute;n&iacute; se&nbsp;standardn&iacute;m pln? syntetick&yacute;m p?evodov&yacute;m olejem 75w90.</li>\r\n<li>V&yacute;razn&eacute; sn&iacute;žen&iacute; posuvn&eacute;ho i&nbsp;valiv&eacute;ho t?en&iacute; ve&nbsp;srovn&aacute;n&iacute; s&nbsp;jin&yacute;mi p?evodov&yacute;mi oleji specifikace 75w90.</li>\r\n<li>P?isp&iacute;v&aacute; k velice snadn&eacute;mu ?azen&iacute; p?evod?.</li>\r\n<li>Vy&scaron;&scaron;&iacute; v&yacute;kon a&nbsp;krout&iacute;c&iacute; moment.</li>\r\n<li>Vy&scaron;&scaron;&iacute; spolehlivost p?evodov&eacute;ho &uacute;stroj&iacute;, ochrana proti opot?eben&iacute; sou?&aacute;st&iacute; a&nbsp;sn&iacute;žen&iacute; rizika mechanick&eacute; z&aacute;vady.</li>\r\n<li>Celkov&eacute; provozn&iacute; n&aacute;klady se&nbsp;sn&iacute;ž&iacute; d&iacute;ky niž&scaron;&iacute; spot?eb? paliva a&nbsp;del&scaron;&iacute; životnosti komponent?.</li>\r\n<li>Vyvinuto, vyrobeno a&nbsp;baleno v&nbsp;Anglii &ndash; origin&aacute;l firmy Millers Oils Ltd.</li>\r\n</ul>\r\n<p><br /><strong>V&Yacute;KONOV&Yacute; PROFIL:</strong>&nbsp;<br />&bull; API GL4, GL5&nbsp;<br /><br /><strong>CHARAKTERISTIKA:</strong>&nbsp;<br />SAE viskozita: 75w90&nbsp;<br />Hustota p?i&nbsp;15&deg;C: 0.877&nbsp;<br />Kinematick&aacute; viskozita p?i&nbsp;100&deg;C: 17.85cSt&nbsp;<br />Kinematick&aacute; viskozita p?i&nbsp; 40&deg;C: 108cSt&nbsp;<br />Viskozitn&iacute; index: 183&nbsp;<br />Brookfield viskozita p?i&nbsp;-40&deg;C: 48, 000 cP&nbsp;<br />Bod sk&aacute;pnut&iacute;: -45&deg;C&nbsp;<br />Bod vzplanut&iacute;: &gt;200&deg;C</p>', NULL),
(17, 'XF LONGLIFE 0w30', '1621.00', '<p>Vysoce v&yacute;konn&yacute; pln? syntetick&yacute; motorov&yacute; olej vhodn&yacute; pro nejnov?j&scaron;&iacute; benz&iacute;nov&eacute; a naftov&eacute; motory automobil? Volvo.</p>', 4, b'1', 1, NULL, '<div class="rte">\r\n<p>Vysoce v&yacute;konn&yacute; pln? syntetick&yacute; motorov&yacute; olej vhodn&yacute; pro nejnov?j&scaron;&iacute; benz&iacute;nov&eacute; a naftov&eacute; motory automobil? Volvo.<em></em></p>\r\n<p><em><br /></em><strong>APLIKACE:</strong><em>&nbsp;<br /></em>Sestaven pro modern&iacute; benz&iacute;nov&eacute; a naftov&eacute; agreg&aacute;ty Volvo. Olej t&eacute;to specifikace je vyžadov&aacute;n i pro mnoh&eacute; motory Dacia, Honda, Mazda, Mitsubishi a n?kter&eacute; modely Renault.</p>\r\n<p><em>&nbsp;</em></p>\r\n<p><strong>UŽIVATELSK&Eacute; V&Yacute;HODY:<em>&nbsp;<br /></em></strong>&bull; &Scaron;pi?kov&aacute; kvalita tohoto oleje zaru?uje sn&iacute;žen&iacute; opot?eben&iacute; sou?&aacute;st&iacute; motoru a&nbsp;z&aacute;rove? p?isp&iacute;v&aacute; k niž&scaron;&iacute; spot?eb? pohonn&yacute;ch hmot.&nbsp;<br />&bull; Optim&aacute;ln&iacute; viskozita oleje je udržov&aacute;na i&nbsp;za extr&eacute;mn&iacute;ch provozn&iacute;ch podm&iacute;nek, ?&iacute;mž je zaji&scaron;t?na maxim&aacute;ln&iacute; ochrana motoru.<em></em></p>\r\n<p>&bull; Sestaven pro pln?n&iacute; požadavk? Volvo na snižov&aacute;n&iacute; spot?eby paliva.</p>\r\n<p>&bull; Vyvinuto, vyrobeno a baleno v Anglii &ndash; origin&aacute;l firmy Millers Oils Ltd.<em><br /><br /></em><strong>V&Yacute;KONOV&Yacute; PROFIL:</strong><em>&nbsp;<br /></em>&bull; ACEA A5/B5-10</p>\r\n<p>&bull; API SL, CF<br /><em><br /></em><strong>CHARAKTERISTIKA:</strong><em>&nbsp;<br /></em>SAE viskozita: 0w30&nbsp;<br />Hustota p?i&nbsp;15&deg;C: 0.849<br />Kinematick&aacute; viskozita p?i&nbsp;100&deg;C: 10.19cSt&nbsp;<br />Kinematick&aacute; viskozita p?i&nbsp; 40&deg;C: 52.93cSt&nbsp;<br />Viskozitn&iacute; index: 185<br />Bod sk&aacute;pnut&iacute;: -50&deg;C<br />Bod vzplanut&iacute;: 224&deg;C<br />Viskozita p?i&nbsp;studen&eacute;m startu-35&deg;C (CCS): 5,820cP&nbsp;</p>\r\n<p>TBN: 10.13 mg KOH/gm</p>\r\n</div>', NULL),
(18, 'Millers Oils XF LONGLIFE 5w40 5l', '1221.00', '<p>Vysoce v&yacute;konn&yacute; pln? syntetick&yacute; motorov&yacute; olej kategorie Mid SAPS vhodn&yacute; pro&nbsp;modern&iacute; benz&iacute;nov&eacute; a&nbsp;naftov&eacute; agreg&aacute;ty. Vhodn&yacute; pro&nbsp;&scaron;irok&yacute; rozsah použit&iacute; v?etn? motor? typu ?erpadlo&ndash;tryska (PD).</p>', 6, b'1', 1, NULL, '<div class="rte">\r\n<p><strong>Postupn? nahrazuje oleje XFE-PD 5w40, XFS 5w40 a XFD 5w40</strong><br /><br />Vysoce v&yacute;konn&yacute; pln? syntetick&yacute; motorov&yacute; olej vhodn&yacute; pro&nbsp;modern&iacute; benz&iacute;nov&eacute; a&nbsp;naftov&eacute; agreg&aacute;ty. Vhodn&yacute; pro&nbsp;&scaron;irok&yacute; rozsah použit&iacute; v?etn? motor? typu ?erpadlo&ndash;tryska (PD).&nbsp;<br /><br /><strong>APLIKACE:</strong>&nbsp;<br />Vhodn&yacute; pro&nbsp;benz&iacute;nov&eacute; a&nbsp;naftov&eacute; motory s&nbsp;emisn&iacute;mi parametry Euro IV a&nbsp;V - s&nbsp;nebo bez ?&aacute;sticov&yacute;ch filtr? (DPF) &ndash; v?etn? motor? typu ?erpadlo&ndash;tryska (PD). Zejm&eacute;na doporu?en pro&nbsp;vozy s&nbsp;variabiln&iacute;mi servisn&iacute;mi intervaly a&nbsp;dal&scaron;&iacute; aplikace vyžaduj&iacute;c&iacute; vysoce v&yacute;konn&yacute; olej p?isp&iacute;vaj&iacute;c&iacute; k &uacute;spo?e paliva.&nbsp;<br /><br /><strong>UŽIVATELSK&Eacute; V&Yacute;HODY:</strong>&nbsp;</p>\r\n<ul>\r\n<li>Maxim&aacute;ln&iacute; ochrana motoru je zaru?ena i&nbsp;p?i extr&eacute;mn&iacute;ch provozn&iacute;ch podm&iacute;nk&aacute;ch a&nbsp;v dlouh&yacute;ch servisn&iacute;ch intervalech.</li>\r\n<li>&Scaron;pi?kov&aacute; kvalita tohoto oleje zaru?uje sn&iacute;žen&iacute; opot?eben&iacute; sou?&aacute;st&iacute; motoru a&nbsp;z&aacute;rove? p?isp&iacute;v&aacute; k niž&scaron;&iacute; spot?eb? pohonn&yacute;ch hmot.</li>\r\n<li>Vynikaj&iacute;c&iacute; mazac&iacute; schopnosti jsou zaji&scaron;t?ny p?i&nbsp;n&iacute;zk&yacute;ch i&nbsp;vysok&yacute;ch provozn&iacute;ch teplot&aacute;ch.</li>\r\n<li>N&iacute;zk&yacute; obsah sulf&aacute;tov&eacute;ho popela, s&iacute;ry a&nbsp;fosforu (low SAPS) pro&nbsp;použit&iacute; ve&nbsp;vozech vybaven&yacute;ch katalyz&aacute;tory a&nbsp;filtry pevn&yacute;ch ?&aacute;stic.</li>\r\n<li>Jedn&iacute;m typem oleje viskozity 5w40 pokryjete v?t&scaron;inu aktu&aacute;ln&iacute;ch norem v&yacute;robc? automobil?.</li>\r\n<li>Vyvinuto, vyrobeno a&nbsp;baleno v&nbsp;Anglii &ndash; origin&aacute;l firmy Millers Oils Ltd.</li>\r\n</ul>\r\n<p><br /><strong>V&Yacute;KONOV&Yacute; PROFIL:</strong>&nbsp;<br />&bull; API SN, CF&nbsp;<br />&bull; ACEA C3-10&nbsp;<br />&bull; MB 229.31, MB 229.51&nbsp;<br />&bull; VW 502.00 / 505.01&nbsp;<br />&bull; Ford M2C917-A&nbsp;<br />&bull; BMW Longlife 04&nbsp;<br />&bull; Porsche A40&nbsp;<br />&bull; GM / Opel Dexos 2</p>\r\n<p>&nbsp;</p>\r\n<p><strong>CHARAKTERISTIKA:</strong></p>\r\n<p>SAE viskozita: 5w40&nbsp;<br />Hustota p?i&nbsp;15&deg;C: 0.848&nbsp;<br />Kinematick&aacute; viskozita p?i&nbsp;100&deg;C: 13.9cSt&nbsp;<br />Kinematick&aacute; viskozita p?i&nbsp; 40&deg;C: 82.6cSt&nbsp;<br />Viskozitn&iacute; index: 173&nbsp;<br />Bod sk&aacute;pnut&iacute;: -39 &deg;C&nbsp;<br />Bod vzplanut&iacute;: &gt; 200 &deg;C&nbsp;<br />Viskozita p?i&nbsp;studen&eacute;m startu -30&deg;C (CCS): 6, 600cP max</p>\r\n</div>', NULL),
(19, 'Millers Oils EE NANODRIVE LONGLIFE ECO 5w30 5l', '1532.00', '<p>Vysoce v&yacute;konn&yacute; pln? syntetick&yacute; low-friction motorov&yacute; olej pro&nbsp;nejmodern?j&scaron;&iacute; benz&iacute;nov&eacute; a&nbsp;naftov&eacute; motory Ford.</p>', 4, b'1', 1, NULL, '<div class="rte">\r\n<p>Vysoce v&yacute;konn&yacute; pln? syntetick&yacute; low-friction motorov&yacute; olej pro benz&iacute;nov&eacute; a naftov&eacute; agreg&aacute;ty. Sestaven s ohledem na pln?n&iacute; n&aacute;ro?n&yacute;ch požadavk? sou?asn&yacute;ch motor? s dal&scaron;&iacute;m p?&iacute;nosem ve form? aditivace nano?&aacute;sticemi pro razantn&iacute; sn&iacute;žen&iacute; t?en&iacute;, opot?eben&iacute; sou?&aacute;st&iacute; motoru a sn&iacute;žen&iacute; spot?eby paliva. Sou?&aacute;st ?ady produkt? Millers Oils NANODRIVE Low Friction Technology.<br /><br /><strong>APLIKACE:</strong><br />Doporu?en pro nejmodern?j&scaron;&iacute; benz&iacute;nov&eacute; a naftov&eacute; agreg&aacute;ty Ford spl?uj&iacute;c&iacute; emisn&iacute; normy Euro IV/V. Zp?tn? kompatibiln&iacute; s p?edchoz&iacute; specifikac&iacute; Ford M2C 913B.<br /><br /><strong>UŽIVATELSK&Eacute; V&Yacute;HODY:</strong><br />Aditivace nano?&aacute;sticemi poskytuje n&aacute;sleduj&iacute;c&iacute; v&yacute;hody:</p>\r\n<ul>\r\n<li>V&yacute;razn&eacute; sn&iacute;žen&iacute; t?en&iacute; - až o 47% ve srovn&aacute;n&iacute; s jin&yacute;mi oleji specifikace Eco 5w30.</li>\r\n<li>Niž&scaron;&iacute; opot?eben&iacute; sou?&aacute;st&iacute; a prodlužen&iacute; životnosti zat?žovan&eacute;ho agreg&aacute;tu - až o 50% ve srovn&aacute;n&iacute; s jin&yacute;mi oleji specifikace Eco 5w30.</li>\r\n<li>Koeficient t?en&iacute; p?i zah?&aacute;t&iacute; motoru rapidn? kles&aacute;, což v&yacute;razn? p?isp&iacute;v&aacute; ke sn&iacute;žen&iacute; spot?eby paliva a redukci v&yacute;fukov&yacute;ch zplodin.</li>\r\n<li>Vy&scaron;&scaron;&iacute; v&yacute;kon a krout&iacute;c&iacute; moment.</li>\r\n<li>Vy&scaron;&scaron;&iacute; spolehlivost motoru, ochrana proti opot?eben&iacute; sou?&aacute;st&iacute; a sn&iacute;žen&iacute; rizika mechanick&eacute; z&aacute;vady.</li>\r\n<li>Celkov&eacute; provozn&iacute; n&aacute;klady se sn&iacute;ž&iacute; d&iacute;ky niž&scaron;&iacute; spot?eb? paliva a del&scaron;&iacute; životnosti komponent?.</li>\r\n<li>Vyvinuto, vyrobeno a baleno v Anglii &ndash; origin&aacute;l firmy Millers Oils Ltd.</li>\r\n</ul>\r\n<p><br /><strong>V&Yacute;KONOV&Yacute; PROFIL:</strong></p>\r\n<ul>\r\n<li>ACEA A5 / B5-10</li>\r\n<li>API SL, CF</li>\r\n<li>Ford&nbsp;M2C913-D, M2C913-C, M2C913-B</li>\r\n<li>Renault RN0700</li>\r\n</ul>\r\n<p><br /><strong>CHARAKTERISTIKA:</strong><br />SAE viskozita: 5w30<br />Hustota p?i 15&deg;C: 0.858<br />Kinematick&aacute; viskozita p?i 100&deg;C: 11.25cSt<br />Kinematick&aacute; viskozita p?i&nbsp; 40&deg;C: 67.9cSt<br />Viskozitn&iacute; index: 159<br />Bod sk&aacute;pnut&iacute;: -42&deg;C<br />Bod vzplanut&iacute;: &gt;200&deg;C<br />Viskozita p?i studen&eacute;m startu -30&deg;C (CCS): 6, 600cP</p>\r\n</div>', NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `roleuzivatelu`
--

CREATE TABLE IF NOT EXISTS `roleuzivatelu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `autorita` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktura tabulky `uzivatele`
--

CREATE TABLE IF NOT EXISTS `uzivatele` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jmeno` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `heslo` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `aktivni` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=7 ;

--
-- Vypisuji data pro tabulku `uzivatele`
--

INSERT INTO `uzivatele` (`id`, `jmeno`, `heslo`, `aktivni`) VALUES
(1, 'admin', 'admin', b'1'),
(2, 'root', 'root', b'1'),
(3, 'admin', 'admin', b'1'),
(4, 'root', 'root', b'1'),
(5, 'admin', 'admin', b'1'),
(6, 'root', 'root', b'1');

-- --------------------------------------------------------

--
-- Struktura tabulky `zakaznik`
--

CREATE TABLE IF NOT EXISTS `zakaznik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jmeno` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `prijmeni` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `telefon` varchar(20) COLLATE utf8_czech_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_czech_ci DEFAULT NULL,
  `adresaid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `adresaid` (`adresaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=1 ;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `detailobjednavky`
--
ALTER TABLE `detailobjednavky`
  ADD CONSTRAINT `detailobjednavky_ibfk_1` FOREIGN KEY (`adresaid`) REFERENCES `adresa` (`id`);

--
-- Omezení pro tabulku `objednavky`
--
ALTER TABLE `objednavky`
  ADD CONSTRAINT `objednavky_ibfk_1` FOREIGN KEY (`produktid`) REFERENCES `produkty` (`id`),
  ADD CONSTRAINT `objednavky_ibfk_2` FOREIGN KEY (`zakaznikid`) REFERENCES `zakaznik` (`id`),
  ADD CONSTRAINT `objednavky_ibfk_3` FOREIGN KEY (`detailid`) REFERENCES `detailobjednavky` (`id`);

--
-- Omezení pro tabulku `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `produkty_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `kategorie` (`id`),
  ADD CONSTRAINT `produkty_ibfk_2` FOREIGN KEY (`komentaid`) REFERENCES `komentare` (`id`);

--
-- Omezení pro tabulku `roleuzivatelu`
--
ALTER TABLE `roleuzivatelu`
  ADD CONSTRAINT `roleuzivatelu_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `uzivatele` (`id`);

--
-- Omezení pro tabulku `zakaznik`
--
ALTER TABLE `zakaznik`
  ADD CONSTRAINT `zakaznik_ibfk_1` FOREIGN KEY (`adresaid`) REFERENCES `adresa` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
