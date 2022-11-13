-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 06 Paź 2022, 12:00
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `elhurt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `photoBig` text COLLATE utf8_polish_ci NOT NULL,
  `photoSmall` text COLLATE utf8_polish_ci NOT NULL,
  `photoAlt` text COLLATE utf8_polish_ci NOT NULL,
  `URI` text COLLATE utf8_polish_ci NOT NULL,
  `bannerType` text COLLATE utf8_polish_ci NOT NULL,
  `bannerContent` text COLLATE utf8_polish_ci NOT NULL,
  `position` int(11) NOT NULL,
  `visibility` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `banners`
--

INSERT INTO `banners` (`id`, `photoBig`, `photoSmall`, `photoAlt`, `URI`, `bannerType`, `bannerContent`, `position`, `visibility`) VALUES
(1, 'slide_01.jpg', 'slide_small2.jpg', 'Poznaj SEDNA', '', 'slider', '                        <div class=\"slider__text slider__text--big -title\"><p><strong>Poznaj SEDNA</strong> <br> Schneider Electric</p></div>\r\n                        <div class=\"slider__text slider__text--small\"><p>Sedna to osprzęt elektroinstalacyjny o wyrazistym kształcie oraz unikalnej formie.</p></div>', 3, 1),
(2, 'slide_02.png', 'slide_small.png', 'Philips HUE', '', 'slider', '                        <div class=\"slider__text slider__text--big -title\"><p><strong>Philips HUE</strong> <br> Oświetl swój dom</p></div>\r\n                        <div class=\"slider__text slider__text--small\"><p>Wyobraź sobie, że jednym dotknięciem wyłączasz wszystkie światła.</p></div>', 0, 0),
(3, 'slide_02.png', 'slide_small.png', 'Philips HUE', '', 'slider', '                        <div class=\"slider__text slider__text--big -title\"><p><strong>Philips HUE</strong> <br> Oświetl swój dom</p></div>\r\n                        <div class=\"slider__text slider__text--small\"><p>Wyobraź sobie, że jednym dotknięciem wyłączasz wszystkie światła.</p></div>', 1, 1),
(4, 'slide_01.jpg', 'img_02.jpg', 'Poznaj SEDNA', '', 'slider', '                        <div class=\"slider__text slider__text--big -title\"><p><strong>Poznaj SEDNA</strong> <br> Schneider Electric</p></div>\r\n                        <div class=\"slider__text slider__text--small\"><p>Sedna to osprzęt elektroinstalacyjny o wyrazistym kształcie oraz unikalnej formie.</p></div>', 2, 1),
(5, 'img_02.jpg', 'slide_small.png', 'banner', '', 'banner', '<p><strong>Pomoc eksperta</strong> <br> Doradzamy</p>', 1, 1),
(6, 'img_02.jpg', 'slide_small2.jpg', 'banner', '', 'banner', '<p><strong>Pomoc eksperta</strong> <br> Doradzamy</p>', 5, 1),
(7, 'img_03.jpg', 'slide_small2.jpg', 'banner', '', 'banner', '<p><strong>Szukaj wygodnie</strong> <br> Elhurt Plus</p>', 2, 1),
(8, 'img_02.jpg', 'slide_small.png', 'banner', '', 'banner', '<p><strong>Pomoc eksperta</strong> <br> Doradzamy</p>', 6, 1),
(9, 'img_03.jpg', 'slide_small2.jpg', 'banner', '', 'banner', '<p><strong>Szukaj wygodnie</strong> <br> Elhurt Plus</p>', 7, 1),
(10, 'img_04.jpg', 'slide_small.png', 'banner', '', 'banner', '<p><strong>Seria Unica</strong> <br> Wyjątkowy wzór</p>', 3, 1),
(12, 'img_04.jpg', 'slide_small.png', 'banner', '', 'banner', '<p><strong>Seria Unica</strong> <br> Wyjątkowy wzór</p>', 4, 1),
(13, 'whyUsBanner.png', '', 'Dlaczego my?', '', 'bannerBig', '        <p>\r\n            Początki działalności to rok 2002r i otwarcie hurtowni elektrycznej, oferującej podstawowe produkty do instalacji elektrycznych jak i również materiały używane w przemyśle wydobywczym. Firma dostarczała produkty trudno dostępne do kopalń, zakładów przemysłowych.\r\n        </p>', 1, 1),
(14, 'icon_07.png', '', 'small', '', 'bannerSmall', 'szybka wysyłka', 1, 1),
(15, 'icon_08.png', '', 'small', '', 'bannerSmall', 'szeroki asortyment', 2, 1),
(16, 'icon_09.png', '', 'small', '', 'bannerSmall', 'bezpieczne zwroty', 3, 1),
(17, 'banner.jpg', 'slide_01.jpg', 'Baner Kategorii', '', 'categoryBanner', '                        <div class=\"categoryBanner__text -title\">\r\n                            <p><strong>DJI Mavic Air 2</strong> <br> Fly More Combo</p>\r\n                        </div>', 0, 1),
(18, '', './photos/logo/schneider.png', 'Schneider Electric logo', '', 'logo', '', 0, 1),
(19, '', './photos/logo/wago.png', 'Wago logo', '', 'logo', '', 0, 1),
(20, '', './photos/logo/legrand.png', 'Legrand logo', '', 'logo', '', 0, 1),
(21, '', './photos/logo/kontakt.png', 'Kontakt Simon logo', '', 'logo', '', 0, 1),
(22, '', './photos/logo/karlik.png', 'Karlik logo', '', 'logo', '', 0, 1),
(23, '', './photos/logo/kanlux.png', 'Kanlux logo', '', 'logo', '', 0, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `uri` text COLLATE utf8_polish_ci NOT NULL,
  `higherCategory` int(11) DEFAULT NULL,
  `level` int(11) NOT NULL DEFAULT 2,
  `categoryType` text COLLATE utf8_polish_ci NOT NULL DEFAULT 'category' COMMENT 'category/producers',
  `idBanner` int(11) NOT NULL,
  `photoSmall` text COLLATE utf8_polish_ci NOT NULL,
  `description` text COLLATE utf8_polish_ci NOT NULL,
  `position` text COLLATE utf8_polish_ci NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0/1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id`, `name`, `uri`, `higherCategory`, `level`, `categoryType`, `idBanner`, `photoSmall`, `description`, `position`, `visibility`) VALUES
(0, 'root', 'root', NULL, 0, '', 0, '', '', '', 0),
(1, 'źródła światła', 'zrodla_swiatla', 0, 1, 'category', 17, './photos/img_06.jpg', 'Żarówki LED – nowoczesne źródła światła\r\nCzasy, kiedy żarówką nazywaliśmy prostą, szklaną bańkę z żarzącym się wolframowym drucikiem w środku, już dawno minęły. Dostępny dziś asortyment źródeł światła jest niezwykle bogaty i różnorodny – tak jak zróżnicowane są potrzeby i gusta użytkowników. W naszym sklepie oferujemy szeroki wybór produktów, które są odpowiedzią na wszystkie możliwe wymagania klientów, zarówno te wynikające z technologicznych specyfikacji urządzeń, jak i te czysto estetyczne.\r\nW naszej ofercie znajdują się żarówki dostosowane do najróżniejszych typów sprzętów, w których mogą być zamontowane. Dysponujemy źródłami światła zarówno o najbardziej rozpowszechnionych rodzajach gwintów, jak i tymi raczej nietypowymi. Żarówki E27, żarówki GU10 czy żarówki E14 – to typy gwinta stosowane w źródłach światła wykorzystujących różne technologie. W naszym sklepie oferujemy żarówki ledowe GU10 czy też żarówki ledowe E27, a także wiele innych.\r\n\r\nSzeroka oferta źródeł światła\r\nŻarówki LED, ze względu na coraz wyższą jakość światła oraz energooszczędność, stanowią podstawę asortymentu sklepu. Są one dostępne w trzech wariantach barwy światła: barwa zimna, barwa neutralna i barwa ciepła. Dzięki temu możemy dostosować ton oświetlenia do rodzaju wnętrza, do którego jest ono przeznaczone. Poza tradycyjnymi żarówkami ledowymi, o płaskim zakończeniu, w którym diody rozmieszczone są szeregowo, w sprzedaży są też dostępne takie wykorzystujące tę samą technologię, jednak w kształcie tradycyjnej „kulki”, który pozwala na lepsze, wielokierunkowe rozpraszanie światła. Istnieją już także ledowe żarówki ściemnialne, które pozwalają na płynną regulację natężenia światła. Ta właściwość oraz zastosowanie technologii LED pozwala na niemal siedmiokrotną oszczędność energii elektrycznej w porównaniu ze zużyciem tradycyjnej żarówki w tym samym czasie.\r\nCi, którzy szukają wyjątkowego wykończenia oprawy świetlnej swoich wnętrz, znajdą u nas również żarówki ozdobne. Firma Kanlux zadbała o elegancką formę swoich źródeł światła w kształcie płomyka, świeczki lub zaokrąglonej bańki.', '', 1),
(2, 'oświetlenie wewnętrzne', 'oswietlenie_wewnetrzne', 0, 1, 'category', 17, './photos/products/kanlux/kanlux-small/22432.jpg', 'Jakie wybrać oświetlenie do mieszkania?\r\nOświetlenie wewnętrzne, dostosowane do funkcji i charakteru pomieszczeń, decyduje o jakości życia i pracy. Tym ważniejsze jest odpowiednie dobranie modelu lampy do biura czy lampy do salonu. Producenci tego rodzaju elementów instalacji elektrycznej i wystroju wkładają dużo wysiłku w to, by projektowane i konstruowane przez nich urządzenia spelniały oczekiwania klientów w zakresie estetyki, jakości światła, wytrzymałości, a także bezpieczeństwa.\r\n\r\nW domowych wnętrzach często największy nacisk stawiamy na estetykę – chcemy, by oświetlenie do domu współgrało z poszczególnymi elementami wystroju i tworzyły z nimi spójną całość. Mnogość modeli lamp do salonu, lamp do łazienki czy lamp do kuchni, dostępnych w naszym sklepie pozwoli dobrać takie pasujące do każdego stylu wnętrza. Lampy sufitowe i kinkiety zapewnią jasne, ale i nastrojowe oświetlenie wnętrz, w których przebywamy najczęściej. Lampy wiszące pozwalają na równomierne rozpraszanie światła, a dobranie do nich żarówek o odpowiedniej mocy i barwie sprawi, że wnętrze nabierze przytulnego charakteru. Z kolei oczka sufitowe, czyli oświetlenie punktowe, czy też taśmy LED i plafony sprawdzą się w takich pomieszczeniach jak kuchnie i łazienki. Tam nierzadko potrzebujemy doświetlić blaty, umieszczone pod podwieszanymi szafkami, lub potrzebujemy punktowego źródła światła pod lustrem. Nic prostszego – wpuszczane w sufit punktowe lampki LED lub taśmy LED skutecznie rozjaśnią newralgiczne miejsca w naszych pomieszczeniach i zapewnią oszczędność energii elektrycznej.\r\n\r\nBezpieczne oświetlenie przestrzeni biurowych\r\nInne wymagania systemom oświetleniowym stawiają przestrzenie biurowe. Lampy do biura muszą być zarówno estetyczne – często utrzymane w stylu klasycznym lub minimalistycznym – jak i wytrzymałe oraz funkcjonalne. Wpuszczana w sufit oprawa sufitowa, punktowa lub wielokrotna, oprawy downlight lub plafoniera o prostym, geometrycznym kształcie i mocnym świetle jest w takich wnętrzach strzałem w dziesiątkę. Zaopatrzenie miejsc pracy w lampy stojące oraz lampki biurowe o regulowanym kącie padania światła i możliwości obrotu przy podstawie znacząco poprawia komfort. Nasz sklep oferuje oprawę oświetleniową do wszystkich rodzajów wnętrz, także dla przestrzeni użytkowych i handlowych. W takich miejscach potrzebne są lampy dostosowane do użytkowania w pomieszczeniach, w których może występować zapylenie, wysoka wilgotność powietrza lub wahania temperatur. Oprawy high-bay lub naświetlacze wewnętrzne stają na wysokości zadania w takich warunkach.\r\n\r\nŻeby zapewnić wysoki stopień bezpieczeństwa w przestrzeniach użytkowych, oferujemy także oświetlenie awaryjne i ewakuacyjne, a także oświetlenie schodowe oraz lampy z czujnikiem ruchu. Oświetlenie awaryjne to specjalna oprawa, wyposażona w akumulatory do pracy w systemie awaryjnym, wykonana z materiałów odpornych na uszkodzenia. Oprawy oświetleniowe dostępne w naszym sklepie zapewniają wysokie wrażenia estetyczne, komfort i najwyższy standard bezpieczeństwa.', '', 1),
(3, 'gniazdka, wyłączniki', 'gniazdka_wylaczniki', 0, 1, 'category', 17, './photos/products/simon/simon-small/CGZ1_01_11.png', 'Gniazdka elektryczne i wyłączniki\r\nOferujemy najwyższej klasy osprzęt elektryczny takich marek jak Kontakt-Simon, Ospel, Schneider Electric, Karlik, Berker by Hager czy Scame. W naszym asortymencie znajdą Państwo komponenty takie jak gniazda elektryczne, włączniki światła, kontakty elektryczne, gniazda podtynkowe (tam, gdzie niewskazana jest ingerencja w strukturę ścian, proponujemy mniej inwazyjne gniazda natynkowe), a także gniazda internetowe, ściemniacze, radia i głośniki. Wszystkie te części występują w szerokiej gamie kolorystycznej, umożliwiając dopasowanie do każdego stylu pomieszczenia. Do wyboru jest nie tylko kolor, lecz także ciekawe i nieoczywiste materiały – szkło, drewno, a także metale szlachetne.\r\n\r\nJaką wybrać serię gniazdek i wyłączników?\r\nWybór serii gniazdek i włączników to pierwszy krok w zakupie osprzętu elektrycznego. Klienci najchętniej decydują się na klasyczny, elegancki wygląd komponentów elektroinstalacyjnych. Seria Karlik DECO to ponadczasowy kształt i kolory, dopełnienie nowoczesnych wnętrz mieszkalnych oraz pomieszczeń biurowych. Produkty tej serii cechują się doskonałą jakością wykonania oraz trwałością. W ofercie znajdziemy ramki pojedyncze oraz wielokrotne, do montażu poziomo i pionowo, gniazda oraz łączniki, które można wzbogacić o podświetlenie za pomocą specjalnych modułów. Jeśli szukają Państwo naprawdę minimalistycznych rozwiązań, z pewnością warto spojrzeć na serię Karlik MINI, która mimo okrojonego wzornictwa cieszy się popularnością.\r\n\r\nKolejna seria to B.Kwadrat marki Berker. Produkty te, oprócz swojej prostej formy, wykazują niezwykłą trwałość i są chętnie wybierane do użytku w przestrzeni publicznej. Są odporne na chemikalia zawarte w chemii gospodarstwa domowego oraz na działanie wysokich temperatur i promieni UV, wszystko to dzięki zastosowaniu specjalnego duroplastu. W serii znajdziemy podstawowe części takie jak ramki, gniazdka elektryczne nowoczesne i gniazda czarne oraz bardziej zaawansowane elementy do obsługi inteligentnego systemu KNX.\r\n\r\nInne zasługujące na uwagę serie firmy Berker to R.Classic, K.1, K.5 oraz serie Q. Niewątpliwą zaletą marki jest także system montażowy one.platform. Również Schneider Asfora ma w swojej ofercie coś dla miłośników prostoty. Wysokiej jakości gniazda i łączniki idą w parze z atrakcyjną ceną. Oprócz standardowego wyposażenia dostępne są też gniazda antenowe, TV/R/SAT, łączniki do sterowania żaluzjami i ściemniacze obrotowe. Asfora to przede wszystkim 36 kombinacji kolorystycznych opartych na 6 głównych kolorach (biel, czerń, antracyt, brąz, krem i stal), 70 różnych funkcji, a wszystko to w bardzo eleganckiej formie. Na uwagę zasługuje też seria Ospel Sonata oferująca między innymi gniazdka szklane. To ciekawe i dyskretne rozwiązanie, a wykorzystane przy produkcji najnowocześniejsze technologie gwarantują trwałość produktu. Całość produkcji przebiega na terenie Polski. Cała kolekcja utrzymana jest w nowoczesnym stylu i proponuje proste, elegancko wykonane elementy. W ofercie znajdziemy produkty takie jak: ramki pojedyncze, ramki wielokrotne uniwersalnie montowane, łączniki, gniazda elektryczne czy puszki montażowe.\r\n\r\nNajczęściej wybierane produkty i kolekcje\r\nMiłośnicy wnętrz z klimatem i duszą chętnie decydują się na nietypowe wzornictwo i materiały, np. gniazda retro. Znajdziemy takie między innymi w ofercie serii Berker 1930. W naszym sklepie znajdą Państwo również bogatą ofertę najpopularniejszej marki na rynku – Kontakt Simon. Jest to firma z długoletnią tradycją. Powstała na początku ubiegłego stulecia i bardzo dynamicznie się rozwija, obecnie oferując jedne z najnowocześniejszych rozwiązań na skalę światową. Simon 54 Premium to bardzo nowoczesna linia profesjonalnych produktów elektroinstalacyjnych. Powstała z użyciem najlepszej jakości materiałów, jest niezawodna i wytrzymała. Wyróżnia się na tle innych produktów tego typu zwłaszcza szlachetną formą oraz bogatą kolorystyką. Paleta kolorów ramek i wewnętrznych klawiszy jest zaprojektowana tak, aby można je było dowolnie ze sobą łączyć. Dostępne są takie kolory jak chrom, inox, antracyt, srebrny, ciemny stalowy, biały, miedź rustykalna, kremowy, złoty i brąz. Wszystkie mogą mieć wykończenie matowe lub z połyskiem. Firma oferuje wiele więcej niż tylko standardowe gniazda czy ramki. W ofercie znajdują się zaawansowane moduły elektroniczne, takie jak zdalne sterowanie roletami, podświetlenia schodów, termoregulatory, gniazda USB i moduły Bluetooth. Dostępna jest technologia umożliwiająca montaż nie tylko nad- oraz podtynkowo, lecz także przypodłogowo lub instalacje wewnątrz mebli.\r\n\r\nOferta naszego sklepu skierowana jest zarówno do osób profesjonalnie zajmujących się elektroinstalacją, jak i do amatorów chcących jedynie odświeżyć wnętrze za pomocą nieoczywistych elementów. Dokonując wyboru elementów instalacji elektrycznych i elektronicznych, warto kierować się nie tylko dopasowaniem do pozostałych części wyposażenia. Należy zwrócić uwagę na trwałość i niezawodność, ponieważ tylko to jest w stanie zagwarantować funkcjonalność oraz, co ważne, bezpieczeństwo.', '', 1),
(4, 'automatyka, sterowanie', 'automatyka_sterowanie', 0, 1, 'category', 17, './photos/plc.webp', 'Oferujemy pełen zakres części, elementów oraz urządzeń, które przyczyniają się do wyeliminowania udziału człowieka w bezpośredniej pracy produkcyjnej. Są to więc systemy, które przejmują kontrolę nad sterowaniem maszynami oraz urządzeniami przemysłowymi.\r\n\r\nProponujemy zatem wysokiej jakości silniki krokowe, które z powodzeniem stosuje się nie tylko w automatyce, ale także mechanice, robotyce, systemach sterowania ruchem czy urządzeniach IT. Kolejnym istotnym elementem będą serwonapędy, których zadaniem jest kontrolowanie ruchu obrotowego. Wśród nich można znaleźć serwonapędy szczotkowe, serwonapędy bezszczotkowe czy zintegrowane.\r\n\r\nPolecamy także uniwersalne urządzenia mikroprocesowe przeznaczone do sterowania pracą maszyny, czyli sterowniki programowalne takich marek, jak Fatek, Array czy Simens.\r\n\r\nTrudno tu mówić o ukierunkowanej i skutecznej pracy bez akcesoriów typu panele operatorskie HMI, których zadaniem jest pośredniczenie w wymianie informacji pomiędzy maszyną a człowiekiem. Do ich niezbędnego działania będą stosowane sterowniki PLC.\r\n\r\nZasilanie maszyny to równie ważny proces, do którego potrzeba transformatorów. Posiadamy moduły zasilające, zasilacze impulsowe, transformatory toroidalne, a także dopełniające moduły bezpiecznikowe.\r\n\r\nZwracamy uwagę również na enkodery, liniały oraz systemy pomiaru drogi, które są przystosowane do zliczania i programowania określonych wartości. Ich zadaniem jest obliczenie wartości drogi, jaką przebył element czy dane narzędzie.', '', 1),
(5, 'rozdzielnie i aparatura', 'rozdzielnie_i_aparatura', 0, 1, 'category', 17, './photos/easy9.webp', 'Rozdzielnia elektryczna to centralna część układu elektrycznego. Pełni ona szereg różnych funkcji, składając się z rozmaitych elementów. Klasyczna skrzynka elektryczna obecna jest w każdym domu. Jednak rozdzielnie elektryczne są niezbędne również w przemyśle oraz w rozmaitych budynkach komercyjnych. Rozdzielnia, zwana również rozdzielnicą, to część układu odpowiadającą między innymi za jego bezpieczeństwo. Dlatego też musi odpowiadać najwyższym standardom. W naszej ofercie znajdziesz jedynie najwyższej jakości, sprawdzone rozdzielnice podtynkowe i natynkowe od renomowanych producentów.\r\n\r\nCo zawierają rozdzielnie elektryczne i jakie pełnią funkcje?\r\nWarto w tym miejscu zaznaczyć, że rozdzielnie elektryczne są bardzo różnorodne. W zależności od rodzaju i wielkości układu oraz od powierzonych rozdzielnicy zadań, może ona zawierać zróżnicowane elementy. Przede wszystkim jednak pełni zabezpieczenie dla przewodów, którymi ze skrzynki elektrycznej rozprowadzany jest prąd. W końcu głównym zadaniem rozdzielni elektrycznej jest przetwarzanie i rozdział energii, a następnie jej transport do obwodów i systemów istniejących w ramach danego układu elektrycznego. ', '', 1),
(6, 'materiały instalacyjne', 'materialy_instalacyjne', 0, 1, 'category', 17, './photos/products/wago/wago-small/221_413.jpg', 'W kategorii materiały elektroinstalacyjne można znaleźć wszystko, co jest potrzebne do instalacji zasilania w technologii budynkowej. Szeroki asortyment produktów obejmuje przełączniki, wtyczki sieciowe i złącza, akcesoria do instalacji kabli energetycznych, takie jak kanały kablowe do ukrywania przewodów elektrycznych, szyny montażowe i różne taśmy klejące. Dostępne są również odporne na warunki atmosferyczne materiały instalacyjne do stosowania na zewnętrz i w ogrodach.', '', 1),
(7, 'Schneider Electric', 'schneider_electric', 0, 1, 'producers', 18, '', 'Schneider Electric oferuje szeroki wybór osprzętu elektroinstalacyjnego. Poszczególne serie osprzętu wyróżniają się elegancją, bogactwem kolorów i zakresem funkcjonalności. W ofercie znajdziemy osprzęt pasujący do przestrzeni urządzonych w stylu industrialnym, jak również do wnętrz w klimacie retro, eco czy nowoczesnym.', '', 1),
(8, 'Kontakt Simon', 'kontakt_simon', 0, 1, 'producers', 21, '', 'Kontakt Simon to najpopularniejszy w Polsce producent osprzętu elektrycznego posiadający w ofercie gniazda elektryczne, wyłączniki i puszki podłogowe.\r\nDzięki wysokiej jakości i przystępnej cenie produkty tej marki możemy spotkać w wielu domach, a większość z nich produkowana jest od kilkudziesięciu lat w Polsce. Bogata oferta kolorystyczna i szlachetne materiały w takich seriach jak Simon 54 Premium czy Simon 82 Detail sprawiają, że z łatwością dopasujemy osprzęt elektryczny do dowolnego wnętrza.', '', 1),
(9, 'Legrand', 'legrand', 0, 1, 'producers', 20, '', '', '', 1),
(10, 'Berker', 'berker', 0, 1, 'producers', 0, '', '', '', 1),
(11, 'Hager', 'hager', 0, 1, 'producers', 0, '', '', '', 1),
(12, 'Ospel', 'ospel', 0, 1, 'producers', 0, '', '', '', 1),
(13, 'Kos', 'kos', 0, 1, 'producers', 0, '', 'Kos Elektro System działa na rynku od 1982, posiada ponad 37-letnie doświadczenie w produkcji wysokiej jakości gniazdek, włączników oraz systemów kontroli dostępu. Bogata, stale rozwijająca się oferta ukierunkowana na wymagających klientów to elementy realizacji misji firmy, ubranej w hasło: „Piękno wkomponowane w SYSTEM”', '', 1),
(14, 'Viplast', 'viplast', 0, 1, 'producers', 0, '', 'Polski producentem w branży elektroinstalacyjnej z zakładem produkcyjnym koło Nowego Sącza. Specjalizuje się w osprzęcie elektroinstalacyjnego oraz puszkach natynkowych.\r\n\r\n', '', 1),
(15, 'Sedna Design & Elements', 'sedna_design_&_elements', 7, 2, 'producers', 0, '', 'Wyjątkowy sposób na wyróżnienie się stylem', '', 1),
(17, 'Asfora', 'asfora', 7, 2, 'producers', 0, '', 'Osprzęt elektroinstalacyjny:36 kombinacji kolorystycznych,70 użytecznych funkcji, 6 kolorów, elegancka ramka. Osprzęt o klasycznym kształcie, łatwej, bezpiecznej instalacji. Jakość i przystępna cena.', '', 1),
(18, 'Odace', 'odace', 7, 2, 'producers', 0, '', 'Osprzęt elektroinstalacyjny: oryginalne wzornictwo, praktyczne rozwiązania; ramka z półką do ładowania telefonu, z klipsem, radio z głośnikiem. Szeroka funkcjonalność, duży wybór kolorowych ramek.', '', 1),
(19, 'Sedna', 'sedna', 7, 2, 'producers', 0, '', 'Sedna to osprzęt elektroinstalacyjny o wyrazistym kształcie oraz unikalnej formie. Charakteryzuje go elegancja ukryta w stonowanym designie. To doskonała propozycja dla osób ceniących piękno.', '', 1),
(20, 'Merten System M', 'merten_system_m', 7, 2, 'producers', 0, '', 'Ekskluzywny osprzęt elektroinstalacyjny Merten System M to design, technologia i inteligencja zintegrowane w jednym systemie. Osprzęt dostępny jest w różnych kolorach, materiałach i wersjach wykonania', '', 1),
(21, 'Unica', 'unica', 7, 2, 'producers', 0, '', 'Osprzęt elektroinstalacyjny o wyjątkowym wzorze i wysokiej jakości wykończenia. W ofercie osprzętu znajdziemy duży wybór kolorów, funkcjonalności. Osprzęt Unica wpasuję się do wnętrz w różnym stylu.', '', 1),
(22, 'Altira', 'altira', 7, 2, 'producers', 0, '', 'Osprzęt elektroinstalacyjny Altira to łączniki i gniazda o wymiarach 45x45mm. Nowoczesne wzornictwo osprzętu doskonale pasuje do wystroju wnętrz we wszystkich przestrzeniach biurowych, jak i domowych.', '', 1),
(23, 'Prima (IP 20)', 'prima_(ip_20)', 7, 2, 'producers', 0, '', 'Prima to natynkowa seria łączników i gniazd o IP20. Jest idealna do zastosowań w tych pomieszczeniach gospodarczych oraz budynkach, gdzie montaż osprzętu podtynkowego jest niemożliwy.', '', 1),
(24, 'Cedar', 'cedar', 7, 2, 'producers', 0, '', 'Cedar to seria natynkowych łączników i gniazd o podwyższonym stopniu ochrony IP44 idealna do instalacji w pomieszczeniach narażonych na działanie wilgoci, np w garażach.', '', 1),
(25, 'Cedar Plus', 'cedar_plus', 7, 2, 'producers', 0, '', 'Cedar Plus to natynkowa seria łączników i gniazd o stopniu ochrony IP 44. Przeznaczona jest do montażu w miejscach, gdzie produkty mogą być narażone na szkodliwe działanie wilgoci, pyłu lub wody.', '', 1),
(26, 'Merten Wandaloodporny', 'merten_wandaloodporny', 7, 2, 'producers', 0, '', 'Merten Wandaloodporny to niezniszczalna, solidna i zabezpieczona przed kradzieżą seria osprzętu elektroinstalacyjnego. Została ona stworzona, aby stawić czoła najcięższym wyzwaniom.', '', 1),
(27, 'Mureva Styl', 'mureva_styl', 7, 2, 'producers', 0, '', 'Mureva Styl to seria łączników i gniazd natynkowych przeznaczona do zastosowań zewnętrznych. Mureva Styl to łatwa i szybka instalacja oraz solidny osprzęt o nowoczesnym designie.', '', 1),
(28, 'Simon 100', 'simon_100', 8, 2, 'producers', 0, '', '', '', 1),
(29, 'Simon 82', 'simon_82', 8, 2, 'producers', 0, '', 'Charakterystycznym elementem tej serii jest unikalny kształt podstawy, który sprawia, że produkt „wychodzi ze ściany” w otaczającą go przestrzeń. To kolorowy detal wykonany z metalu lub drewna, który sprawia, że ta seria wyróżnia się na tle innych. Dwie linie ramek: Original i Select to produkty różniące się materiałem i wykończeniem.', '', 1),
(31, 'Simon 54', 'simon_54', 8, 2, 'producers', 0, '', 'Simon 54 Premium to nowoczesna linia osprzętu elektroinstalacyjnego oparta o nowe, niezawodne i przyjazne w montażu mechanizmy, wyróżniająca się szlachetną formą oraz bogatą kolorystyką. Paleta kolorów ramek i klawiszy została dobrana tak, by pasowały do siebie w każdym z 66 zestawień kolorystycznych.', '', 1),
(32, 'Simon Basic', 'simon_basic', 8, 2, 'producers', 0, '', 'Funkcjonalność i klasyczny wygląd to charakterystyczne cechy serii Simon Basic, która sprawdzi się w każdej przestrzeni. Paleta kolorystyczna umożliwia subtelne wkomponowanie łączników i gniazd w projekt mieszkania, lokalu, salonu czy biura.', '', 1),
(33, 'Simon 10', 'simon_10', 8, 2, 'producers', 0, '', 'Dobry stosunek ceny do jakości oraz prosty wygląd to cechy charakterystyczne tej serii. Simon 10 wyróżnia się mostkiem nieprzewodzącym prądu, wykonanym z wysokiej jakości tworzywa. Gwarantuje ono trwałość i bezpieczeństwo przy pracach montażowych. Warto wiedzieć, że ramkę można ściągnąć bez demontażu pokrywy lub klawisza. Simon 10 to klasyczne rozwiązanie, które doceni każdy zwolennik minimalizmu.', '', 1),
(34, 'Simon Akord', 'simon_akord', 8, 2, 'producers', 0, '', '', '', 1),
(35, 'Simon Aquaclick', 'simon_aquaclick', 8, 2, 'producers', 0, '', 'Simon Aquaclick to nowa seria natynkowych gniazd i włączników przeznaczonych do pomieszczeń gospodarczych jak i mieszkań. Seria występuje w 3 kolorach: białym, czarnym i szarym.', '', 1),
(36, 'Simon Aquarius (IP54)', 'simon_aquarius_(ip54)', 8, 2, 'producers', 0, '', '', '', 1),
(37, 'Valena Allure', 'valena_allure', 9, 2, 'producers', 0, '', 'Valena Allure to bardzo dobra jakość wykończenia o eleganckim i wyrafinowanym kształcie. Serie cechuje innowacyjne podświetlenie oraz możliwość instalacji mechanizmu w pierwszym etapie, a w kolejnym dokupienie ramki i klawiszy/plakietek. Możliwość odsunięcia momentu podjęcia decyzji koloru plakietki i ramki. Valena Allure daje możliwość wyboru spośród 23 kolorów ramek i 5 kolorów plakietek/klawiszy, co pozwala dopasować jej elementy do indywidualnych aranżacji pomieszczeń.', '', 1),
(38, 'Valena Life', 'valena_life', 9, 2, 'producers', 0, '', 'Valena Life wprowadza nowy styl i innowacyjne rozwiązania. Ta seria o klasycznych kształtach posiada kilka ciekawych detali, tworzących jej unikalny design. Dzięki specjalnej konstrukcji ramek uzyskano optyczny efekt lekkości, zaś delikatnie wklęsła powierzchnia klawiszy zapewnia wygodne przełączanie. Valena Life daje możliwość wyboru spośród 16 kolorów ramek i 3 kolorów plakietek/klawiszy, co pozwala dopasować jej elementy do indywidualnych aranżacji pomieszczeń.', '', 1),
(39, 'Celiane', 'celiane', 9, 2, 'producers', 0, '', 'Serię Celiane cechuje nowoczesne wzornictwo uzyskane przez połączenie uniwersalnych kształtów prostokąta i okręgu. Dostępnych jest ok. 100 mechanizmów dzięki którym można zrealizować ponad 250 różnych funkcji zapewniających komfort, bezpieczeństwo i komunikację.', '', 1),
(40, 'Sistena Life', 'sistena_life', 9, 2, 'producers', 0, '', 'Sistena Life zapewnia funkcjonalność spełniającą wymagania nowoczesnych instalacji łącząc wyjątkowo elegancki wygląd i zaawansowaną technologię.', '', 1),
(41, 'Valena', 'valena', 9, 2, 'producers', 0, '', 'Valena to seria osprzętu o prostym i eleganckim kształcie, którą można dopasować do pomieszczeń o różnych wystrojach. W ofercie dostępne są mechanizmy podświetlane, trzy kolory klawiszy, kolekcja 14 ramek oraz szeroki zakres funkcji.', '', 1),
(42, 'Niloe Selection', 'niloe_selection', 9, 2, 'producers', 0, '', 'Niloe Selection to nowy kształt ramki, przeciwodblaskowe wykończenie powierzchni a także rozbudowana oferta kolorystyczna. Seria dostępna jest teraz w pięciu kolorach: białym, perłowym, czarnym, srebrnym oraz stalowym. Gniazda i kontakty elektryczne Niloe Selection o wspomnianej kolorystyce niewątpliwie pasować będą do pomieszczeń utrzymanych w nowoczesnym stylu.', '', 1),
(43, 'Niloe Step', 'niloe_step', 9, 2, 'producers', 0, '', 'Niloe Step zaprojektowano aby podnieść estetykę wnętrza.  Wykończenie charakteryzuje nieprzemijająca atrakcyjność czerni oraz klasyczna linia kwadratu. Łączniki i gniazda dostępne są w kolorach: białym, czarnym, aluminium i stalowym.', '', 1),
(44, 'Niloe', 'niloe', 9, 2, 'producers', 0, '', 'Osprzęt Niloe to tradycyjne łączniki, gniazda i ramki w sześciu popularnych kolorach: białym, kremowym, popielatym, czerwonym, aluminium i grafit.', '', 1),
(45, 'Axolute', 'axolute', 9, 2, 'producers', 0, '', 'Axolute to seria osprzętu o wyjątkowej funkcjonalności i walorach estetycznych. Szeroki wybór funkcji i oryginalne wzory łączników wraz z paletą atrakcyjnych ramek dają możliwość tworzenia bardzo wielu wyjątkowych kompozycji.', '', 1),
(46, 'Cariva', 'cariva', 9, 2, 'producers', 0, '', 'Sprawdzona jakość w nowym stylu. Cariva to ciesząca się ogromną popularnością seria osprzętu, która łączy nowoczesną prostą formę z niezawodnością zapewniając pełna satysfakcję użytkowników i instalatorów. Do wyboru są dwa podstawowe kolory plakietek: biały i kremowy oraz 5 kolorów ramek: biały, kremowy, aluminiowy, złoty i beżowy.', '', 1),
(47, 'Suno', 'suno', 9, 2, 'producers', 0, '', 'Suno - prosta, ponadczasowa, neutralna forma, płynnie wtapiająca się w estetykę wnętrza. Stanowi połączenie solidności wykonania, niezawodności i wizualnej harmonii wyrażonej kolorami. Udostępniając pełną gamę tradycyjnych funkcji potrzebnych w domu oferuje jednocześnie zbiór unikalnych, dodatkowych rozwiązań rzadko spotykanych u innych producentów takich jak funkcje Smart Home. Suno daje możliwość wyboru spośród 10 kolorów ramek i 3 kolorów plakietek/klawiszy, co pozwala dopasować jego elementy do indywidualnych aranżacji pomieszczeń.', '', 1),
(48, 'Berker B.Kwadrat', 'berker_b.kwadrat', 10, 2, 'producers', 0, '', 'Ponad­czasową Serię Berker B.Kwadrat cechuje prostota i funk­cjonal­ność. Uniwer­salny design w połączeniu z rozbu­dowanym asor­ty­mentem sprawia, że seria ta dosko­nale sprawdzi się w każdym wnętrzu - począwszy od miesz­ka­nio­wych, aż po biurowe i komer­cyjne.', '', 1),
(49, 'Berker B.3', 'berker_b.3', 10, 2, 'producers', 0, '', 'Seria Berker B.3 to elegancki design w oprawie szlachet­nych materia­łów. Dzięki różnorod­ności dostęp­nych kolorów, seria ta może stać się uzupeł­nie­niem wyjąt­ko­wych aran­żacji, dosko­nale współgra z nowocze­snymi wnętrzami zarówno w biurach, jak i domach.', '', 1),
(50, 'Berker B.7', 'berker_b.7', 10, 2, 'producers', 0, '', 'Seria Berker B.7 dosko­nale sprawdzi się zarówno w klasycz­nych, jak i nowocze­snych wnętrzach. Ostry kontur w połączeniu z delikatną fakturą ramki sprawia, że łącz­niki dodają elegancji pomiesz­cze­niom.', '', 1),
(51, 'Berker Q.1', 'berker_q.1', 10, 2, 'producers', 0, '', 'Berker Q.1 to seria, której powierzchnia w dotyku przy­po­mina aksamit. Ta delikat­ność w połączeniu z klasycznym kształtem sprawia, że osprzęt ten dosko­nale kompo­nuje się zarówno z nowocze­snymi, jak i tradycyj­nymi wnętrzami.', '', 1),
(52, 'Berker Q.3', 'berker_q.3', 10, 2, 'producers', 0, '', 'Berker Q.3 to seria cechu­jąca się dużą wytrzyma­ło­ścią. Jest wyko­nana z duro­plastu - wyso­kiej jakości tworzywa, odpor­nego na czyn­niki takie jak: zadrapa­nia, uszko­dze­nia, chemi­kalia czy wysoką temperaturę. Ramki dostępne są w kilku kolorach. ', '', 1),
(53, 'Berker Q.7', 'berker_q.7', 10, 2, 'producers', 0, '', 'Berker Q.7 to seria cechu­jąca się dużą wytrzyma­ło­ścią. Jest wyko­nana z duro­plastu - wyso­kiej jakości tworzywa, odpor­nego na czyn­niki, takie jak zadrapania i uszko­dzenia mechaniczne. Ramki dostępne są w kilku wersjach kolorystycz­nych.', '', 1),
(54, 'Berker K.1', 'berker_k.1', 10, 2, 'producers', 0, '', 'Minima­lizm dosko­nale sprawdza się w nowocze­snych aran­żacjach. Mówi się, że mniej znaczy więcej. Seria Berker K.1 to proste formy zamknięte w wyso­kiej jakości tworzywie, które dosko­nale dopa­sują się do wielu wnętrz.', '', 1),
(55, 'Berker K.5', 'berker_k.5', 10, 2, 'producers', 0, '', 'Seria Berker K.5 poprzez swój design, prostą formę i wyko­nanie z wyso­kiej jakości stali szlachetnej lub alumi­nium, dosko­nale sprawdzi się w nowocze­snych wnętrzach oraz urzeknie użyt­kow­ników, którzy cenią sobie wysoką jakość i minima­lizm.', '', 1),
(56, 'Berker R.1', 'berker_r.1', 10, 2, 'producers', 0, '', 'Serię Berker R.1 charak­teryzuje ponad­czasowy design, delikatny i subtel­nielnie zaogrąglony kontur ramki oraz wysoka jakość. Dzięki różnorod­ności materiałów i kolorów, seria stanowi wspa­niały dodatek do każdego pomiesz­cze­nia.', '', 1),
(57, 'Berker R.3', 'berker_r.3', 10, 2, 'producers', 0, '', 'Berker R.3 jest kwin­tesencją kontrastu - prosto­kątny kontur ramki w połączeniu z zaokrąglonym elementem centralnym zapewnia wyjąt­kowy odbiór wizualny. Seria ta jest idealnie dopa­so­wana do montażu w kana­łach instalacyj­nych. Ozna­czone arty­kuły w połączeniu z kompletem uszczelek mogą być wyko­rzystane do podtyn­kowej bryzgosz­czelnej instalacji IP44.', '', 1),
(58, 'Berker R.8', 'berker_r.8', 10, 2, 'producers', 0, '', 'Seria Berker R.8 oferuje szklane ramki, tak smukłe by wyglądały na niemalże równe ze ścianą. Ich grubość wynosi zale­dwie 3 mili­metry. Sprawia to, że prezen­tują się niezwykle elegancko i nowocze­śnie. Co więcej, Berker R.8 można łączyć ze wszyst­kimi elemen­tami central­nymi serii Berker R.1 oraz Berker R.3.', '', 1),
(59, 'Berker Serie 1930', 'berker_serie_1930', 10, 2, 'producers', 0, '', 'Firmę Berker i szkołę Bauhaus łączy nie tylko ten sam rok założenia, ale także zami­łowanie do prostych form i czystej funk­cjonal­no­ści. Upodobanie to prze­jawia się w Serie 1930, której łącz­niki i gniazda ożywiają filozofię Bauhausu.', '', 1),
(60, 'Berker Serie 1930 Porzellan Made By Rosen­thal', 'berker_serie_1930_porzellan_made_by_rosen­thal', 10, 2, 'producers', 0, '', 'Berker Serie 1930 powstała we współ­pracy z najbar­dziej kreatywną marką niemiec­kiej porcelany Rosen­thal. Tym samym powrócono do korzeni klasycz­nych łącz­ników obro­to­wych, podob­nych do tych, używanych przez mistrzów Bauhausu.', '', 1),
(61, 'Berker Glas­serie', 'berker_glas­serie', 10, 2, 'producers', 0, '', 'Seria Berker Glas­serie wyko­nana z prze­zro­czystego szkła, została zapro­jek­to­wana we współ­pracy z wydziałem badań nad archi­tek­turą, na arty­stycznej uczelni Bauhaus w Dessau. Seria ta dosko­nale prezen­tuje się w klasycz­nych, ponad­czaso­wych wnętrzach.', '', 1),
(62, 'Berker R.classic', 'berker_r.classic', 10, 2, 'producers', 0, '', 'Berker R.classic to klasyczne łącz­niki obro­towe w nowocze­snym wydaniu. Płytki ze szlachet­nych materiałów z delikat­nymi kontu­rami pozbawione całko­wicie ramek, zostały zestawione z solidną podstawą z tworzywa, dostęp­nego w różnych kolorach.\r\n\r\n', '', 1),
(63, 'Berker TS', 'berker_ts', 10, 2, 'producers', 0, '', 'Berker TS to nie tylko niezwykły design. W tym programie możesz posługiwać się również inteligent­nymi syste­mami sterującymi: KNX, Berker.Net oraz tebis TX. Wybór kolorów i materiałów daje pełną swobodę Twojej kreatyw­ności w urządzaniu pomiesz­czeń.', '', 1),
(64, 'lumina soul', 'lumina_soul', 11, 2, 'producers', 0, '', 'Lumina soul to propo­zycja dla tych, którzy cenią proste rozwią­zania. Seria zapewnia pełną funk­cjonal­ność, a jednocze­śnie jest subtelnym dodat­kiem do każdego wnętrza.', '', 1),
(65, 'lumina intense', 'lumina_intense', 11, 2, 'producers', 0, '', 'Trzy klasyczne kolory, które otwie­rają nowe możliwości aran­żacji. Białe, srebrne i czarne akcesoria z serii lumina intense zapro­jek­to­waliśmy z myślą o osobach, które ocze­kują dosko­nałej harmo­nii.', '', 1),
(66, 'lumina passion', 'lumina_passion', 11, 2, 'producers', 0, '', 'Odkryj nowe możliwo­ści. Dzięki szlachetnym materiałom użytym do produkcji ramek, zwykły łącznik staje się wyjąt­kowym detalem, który zachwyci nawet najbar­dziej wyma­ga­jących twórców własnego stylu.', '', 1),
(67, 'Aria', 'aria', 12, 2, 'producers', 0, '', 'Seria Aria to połączenie nowoczesnego wzornictwa i idealnych proporcji. Oryginalności produktom dodają wewnętrzne ramki ozdobne. Dzięki nim można wprowadzać delikatne akcenty kolorystyczne, personalizując osprzęt zgodnie ze swoimi upodobaniami. Podświetlenie łączników w serii Aria jest nie tylko praktyczne, ale i ciekawe stylistycznie. Otaczająca klawisze ramka daje atrakcyjny wizualnie efekt, a do wyboru mamy aż 7 kolorów podświetleń.', '', 1),
(68, 'As', 'as', 12, 2, 'producers', 0, '', 'Seria As – geometryczna forma przełamana delikatnymi krzywiznami ramek. Jest to połączenie dynamicznego wzornictwa z neutralną kolorystyką, które sprawdzi się w każdym wnętrzu. Materiały najwyższej jakości i ponadczasowy design, pozwoliły stworzyć produkt, który przez wiele lat będzie ozdobą Twoich wnętrz.', '', 1),
(69, 'Karo', 'karo', 12, 2, 'producers', 0, '', 'Kolekcja Karo na pierwszy rzut oka przywodzi na myśl głownie klasyczne kształty i prostą formę, gdzie regularna linii została przełamana delikatnymi wypukłościami.  Obejmuje ona produkty, których wyraziste kształty mechanizmów kontrastują z subtelnymi liniami ramek. Seria Karo to wyważona propozycja dla osób, które chcą by osprzęt w ich domu stanowił dyskretną ozdobę ściany.', '', 1),
(70, 'Sonata', 'sonata', 12, 2, 'producers', 0, '', 'Kolekcja SONATA to odpowiadające najwyższym standardom technologicznym, a także kompleksowe i funkcjonalne rozwiązanie aranżacyjne. Ta modułowa seria opiera się ona na zdecydowanym i prostym w wyrazie kwadracie.', '', 1),
(71, 'Impresja', 'impresja', 12, 2, 'producers', 0, '', 'Seria Impresja charakteryzuje się dyskretną elegancją, nienarzucającymi się kształtami i wyszukanym wzornictwem. Daje wiele możliwości aranżacyjnych ze względu na bogatą kolorystykę.', '', 1),
(72, 'Kier', 'kier', 12, 2, 'producers', 0, '', 'Seria Kier to nowoczesne produkty kompaktowe. Komponowanie rozwiązań elektroinstalacyjnych dzięki temu jest bardzo proste, a dostępny asortyment pozwoli tworzyć wnętrza wyposażone we wszystkie udogodnienia.', '', 1),
(73, 'Dante', 'dante', 13, 2, 'producers', 0, '', 'Szkło, Kamień, Drewno, Metal', '', 1),
(74, 'Vena', 'vena', 13, 2, 'producers', 0, '', 'Tworzywo', '', 1),
(75, 'Vena2', 'vena2', 13, 2, 'producers', 0, '', 'Tworzywo, szkło akrylowe, drewno', '', 1),
(76, 'Vena Meta', 'vena_meta', 13, 2, 'producers', 0, '', 'Brąz, mosiądz, miedź, nowe srebro, stal', '', 1),
(77, 'KOALA', 'koala', 14, 2, 'producers', 0, '', '', '', 1),
(78, 'WESA', 'wesa', 14, 2, 'producers', 0, '', '', '', 1),
(79, 'ŻUK', 'zuk', 14, 2, 'producers', 0, '', '', '', 1),
(80, 'żarówki LED GU10', 'zarowki_led_gu10', 1, 2, 'category', 0, '', '', '', 1),
(81, 'żarówki LED E27', 'zarowki_led_e27', 1, 2, 'category', 0, '', '', '', 1),
(82, 'żarówki LED E14', 'zarowki_led_e14', 1, 2, 'category', 0, '', '', '', 1),
(83, 'żarówki LED G9', 'zarowki_led_g9', 1, 2, 'category', 0, '', '', '', 1),
(84, 'lampy sufitowe', 'lampy_sufitowe', 2, 2, 'category', 0, '', '', '', 1),
(85, 'kinkiety', 'kinkiety', 2, 2, 'category', 0, '', '', '', 1),
(86, 'oczka sufitowe', 'oczka_sufitowe', 2, 2, 'category', 0, '', '', '', 1),
(87, 'lampy stojące', 'lampy_stojace', 2, 2, 'category', 0, '', '', '', 1),
(88, 'lampki biurkowe', 'lampki_biurkowe', 2, 2, 'category', 0, '', '', '', 1),
(89, 'oprawy liniowe', 'oprawy_liniowe', 2, 2, 'category', 0, '', '', '', 1),
(90, 'plafony', 'plafony', 2, 2, 'category', 0, '', '', '', 1),
(91, 'oświetlenie awaryjne', 'oswietlenie_awaryjne', 2, 2, 'category', 0, '', '', '', 1),
(92, 'wyłączniki', 'wylaczniki', 3, 2, 'category', 0, '', '', '', 1),
(93, 'gniazda elektryczne', 'gniazda_elektryczne', 3, 2, 'category', 0, '', '', '', 1),
(94, 'ramki', 'ramki', 3, 2, 'category', 0, '', '', '', 1),
(95, 'puszki natynkowe', 'puszki_natynkowe', 3, 2, 'category', 0, '', '', '', 1),
(96, 'smart oświetlenie', 'smart_oswietlenie', 4, 2, 'category', 0, '', '', '', 1),
(97, 'alarmy', 'alarmy', 4, 2, 'category', 0, '', '', '', 1),
(98, 'kontrola temperatury', 'kontrola_temperatury', 4, 2, 'category', 0, '', '', '', 1),
(99, 'czujniki', 'czujniki', 4, 2, 'category', 0, '', '', '', 1),
(100, 'rozdzielnice', 'rozdzielnice', 5, 2, 'category', 0, '', '', '', 1),
(101, 'wyłączniki nadprądowe', 'wylaczniki_nadpradowe', 5, 2, 'category', 0, '', '', '', 1),
(102, 'wyłączniki różnicowoprądowe', 'wylaczniki_roznicowopradowe', 5, 2, 'category', 0, '', '', '', 1),
(103, 'ochronniki przepięć', 'ochronniki_przepiec', 5, 2, 'category', 0, '', '', '', 1),
(104, 'rozłączniki', 'rozlaczniki', 5, 2, 'category', 0, '', '', '', 1),
(105, 'lampki kontrolne', 'lampki_kontrolne', 5, 2, 'category', 0, '', '', '', 1),
(106, 'kable i przewody', 'kable_i_przewody', 6, 2, 'category', 0, '', '', '', 1),
(107, 'puszki', 'puszki', 6, 2, 'category', 0, '', '', '', 1),
(108, 'uchwyty kablowe', 'uchwyty_kablowe', 6, 2, 'category', 0, '', '', '', 1),
(109, 'zaciski WAGO', 'zaciski_wago', 6, 2, 'category', 0, '', '', '', 1),
(110, 'Kanlux', 'kanlux', 0, 1, 'producers', 23, '', 'Kanlux zajmuje się produkcją oświetlenia i źródeł światła, koncentrując się zarówno na energooszczędności, jak też niebanalnym designie. Produkty marki Kanlux od ponad 30 lat rozjaśniają Twój dzień i noc. Produkowane są w Polsce i za granicą.', '', 1),
(111, 'Karlik', 'karlik', 0, 1, 'producers', 22, '', 'karlik- polski producent osprzętu elektroinstalacyjnego', '', 1),
(112, 'junior', 'junior', 111, 2, 'producers', 0, '', 'seria natynkowego osprzętu', '', 1),
(113, 'Satel', 'satel', 0, 1, 'producers', 0, '', '', '', 1),
(114, 'Wago', 'wago', 0, 1, 'producers', 19, '', 'Od zawsze uważamy się za niezawodnego partnera dla przemysłu i jesteśmy świadomi odpowiedzialności, jaką bierzemy na swoje barki jako wiodący dostawca rozwiązań elektrotechnicznych i automatyki. Podejmujemy te wyzwania z pasją i zaangażowaniem, traktując je zarazem jako część naszej wizji i misji.', '', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `child_elements`
--

CREATE TABLE `child_elements` (
  `id` int(11) NOT NULL,
  `itemName` text COLLATE utf8_polish_ci NOT NULL,
  `uri` text COLLATE utf8_polish_ci NOT NULL,
  `idParent` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `visibility` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `child_elements`
--

INSERT INTO `child_elements` (`id`, `itemName`, `uri`, `idParent`, `position`, `visibility`) VALUES
(1, 'informacje o sklepie', '', 1, 1, 1),
(2, 'porady', '', 1, 2, 1),
(3, 'blog', '', 1, 3, 1),
(4, 'galeria inspiracji', '', 1, 4, 1),
(5, 'kontakt', '', 1, 5, 1),
(6, 'informacje o sklepie', '', 1, 6, 1),
(7, 'czas realizacji', '', 2, 1, 1),
(8, 'koszty przesyłki', '', 2, 2, 1),
(9, 'zamów próbkę', '', 2, 3, 1),
(10, 'szycie na wymiar', '', 2, 4, 1),
(11, 'czas realizacji', '', 2, 5, 1),
(12, 'koszty przesyłki', '', 2, 6, 1),
(13, 'logowanie', '', 3, 1, 1),
(14, 'rejestracja', '', 3, 2, 1),
(15, 'zamówienia', '', 3, 3, 1),
(16, 'ustawienia konta', '', 3, 4, 1),
(17, 'zmiana hasła', '', 3, 5, 1),
(18, 'schowek', '', 3, 6, 1),
(19, 'informacje o sklepie', '', 4, 1, 1),
(20, 'porady', '', 4, 2, 1),
(21, 'blog', '', 4, 3, 1),
(22, 'galeria inspiracji', '', 4, 4, 1),
(23, 'kontakt', '', 4, 5, 1),
(24, 'informacje o sklepie', '', 4, 6, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filters`
--

CREATE TABLE `filters` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `filterVisible` tinyint(1) NOT NULL COMMENT 'czy filtr widoczny na stronie?'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `filters`
--

INSERT INTO `filters` (`id`, `name`, `filterVisible`) VALUES
(8, 'kolor', 1),
(9, 'napięcie', 1),
(10, 'rozmiar', 1),
(11, 'temperatura barwowa', 0),
(12, 'moc', 0),
(13, 'strumień świetlny', 0),
(14, 'trwałość', 0),
(15, 'gwint', 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `filter_value`
--

CREATE TABLE `filter_value` (
  `id` int(11) NOT NULL,
  `idFilter` int(11) NOT NULL,
  `value` text COLLATE utf8_polish_ci NOT NULL,
  `filterColor` text COLLATE utf8_polish_ci NOT NULL,
  `filterValue` int(11) NOT NULL COMMENT 'wartości liczbowe'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `filter_value`
--

INSERT INTO `filter_value` (`id`, `idFilter`, `value`, `filterColor`, `filterValue`) VALUES
(10, 8, 'biały', '#ffffff', 0),
(11, 8, 'czarny', '#000000', 0),
(15, 8, 'czerwony', '#ff0000', 0),
(17, 9, '230V AC', '', 0),
(18, 9, '24V DC', '', 0),
(19, 9, '12V DC', '', 0),
(20, 10, 'S', '', 0),
(21, 10, 'M', '', 0),
(22, 10, 'L', '', 0),
(25, 11, '3000K', '', 0),
(26, 11, '4000K', '', 0),
(27, 11, '6500K', '', 0),
(28, 12, '7W', '', 0),
(29, 13, '370lm', '', 0),
(30, 14, '25 000h', '', 0),
(31, 15, 'GU10', '', 0),
(32, 15, 'E27', '', 0),
(33, 15, 'E14', '', 0),
(34, 15, 'G9', '', 0),
(35, 11, '6000K', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `flags`
--

CREATE TABLE `flags` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `color` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `flags`
--

INSERT INTO `flags` (`id`, `name`, `color`) VALUES
(1, 'promocja', '#F74137'),
(2, 'nowość', '#9BCB3B'),
(3, 'polecane', '#1BB0F7');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `parent_elements`
--

CREATE TABLE `parent_elements` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `section` text COLLATE utf8_polish_ci NOT NULL,
  `position` int(11) NOT NULL,
  `visibility` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `parent_elements`
--

INSERT INTO `parent_elements` (`id`, `name`, `section`, `position`, `visibility`) VALUES
(1, 'informacje', 'footer', 1, 1),
(2, 'informacje', 'footer', 2, 1),
(3, 'moje konto', 'footer', 3, 1),
(4, 'informacje', 'footer', 4, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `nazwa` text COLLATE utf8_polish_ci NOT NULL,
  `productCode` text COLLATE utf8_polish_ci NOT NULL,
  `price` float NOT NULL,
  `priceDiscounted` float NOT NULL,
  `stock` int(11) NOT NULL,
  `unit` text COLLATE utf8_polish_ci NOT NULL,
  `description` text COLLATE utf8_polish_ci NOT NULL,
  `idVideo` int(11) DEFAULT NULL,
  `visibility` text COLLATE utf8_polish_ci NOT NULL,
  `idVariantGroup` int(11) DEFAULT NULL,
  `variantName` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`id`, `nazwa`, `productCode`, `price`, `priceDiscounted`, `stock`, `unit`, `description`, `idVideo`, `visibility`, `idVariantGroup`, `variantName`) VALUES
(3, 'Gniazdo pojedyncze z uziemieniem Biały - Simon10', 'CGZ1.01/11', 7.2, 6.34, 142, 'szt.', 'Standardowe gniazdo elektryczne pojedyncze z bolcem uziemiającym. Montowane przy pomocy zacisków śrubowych. Dostarczane bez ramki, przystosowane do systemów ramkowych.', 1, '1', NULL, ''),
(4, 'Łącznik jednobiegunowy 10AX Biały - Simon10', 'CW1.01/11 ', 6.34, 6.74, 170, 'szt.', 'Standardowy wyłącznik pojedynczy wyposażony w jeden klawisz umożliwiający załączanie i wyłączanie w obrębie jednego obwodu. Stosowany w pomieszczeniach jako przełącznik oświetlenia. Do uzyskania klasy bryzgoszczelności IP-44 należy zastosować uszczelkę ramki, np. ramki 1-krotnej - CU1. (szczegóły w kategorii Akcesoria).', 1, '1', NULL, ''),
(5, 'Łącznik podwójny, świecznikowy 10AX Biały -  Simon10', 'CW5.01/11', 8.63, 8.11, 98, 'szt.', 'Łącznik wyposażony w dwa klawisze, umożliwiający stopniowe włączanie dwóch obwodów oświetleniowych. Używany najczęściej do załączania żyrandoli (podzielonych na 2 lub więcej stref). Do uzyskania klasy bryzgoszczelności IP-44 należy zastosować uszczelkę ramki, np. ramki 1-krotnej - CU1 oraz wkładkę uszczelniającą CU1W.', 1, '1', NULL, ''),
(6, 'Gniazdo podwójne z uziemieniem Biały - Simon10', 'CGZ2M.01/11', 8.31, 7.81, 54, 'szt.', 'Standardowe gniazdo elektryczne podwójne z bolcem uziemiającym. Montowane przy pomocy zacisków śrubowych. Dostarczane bez ramki, przystosowane do systemów ramkowych.', 1, '1', NULL, ''),
(7, 'Gniazdo bryzgoszczelne IP-44 z uszczelką Biały, klapka biała - Simon10', 'CGZ1B.01/11', 10.34, 9.72, 78, 'szt.', 'Gniazdo wtyczkowe z uziemieniem, bryzgoszczelne IP44, przystosowane do montażu w miejscach o podwyższonej wilgotności np. w łazience. Gniazdo posiada uszczelkę. Montowane przy pomocy zacisków śrubowych. Dostarczane bez ramki, przystosowane do systemów ramkowych.', 1, '1', NULL, ''),
(8, 'Gniazdo pojedyńcze z uziemieniem 2P+Z (KLAPKA DYMNA; BEZ PRZESŁON)', 'GHE-1d', 10.9, 8.9, 214, 'szt.', 'Produkty serii JUNIOR mogą być stosowane wszędzie tam, gdzie jest wysoki poziom zapylenia i wilgoci, również w przemyśle.', 1, '1', NULL, ''),
(9, 'Gniazdo podwójne z uziemieniem 2X(2P+Z), (KLAPKA DYMNA; BEZ PRZESŁON)', 'GHE-2d', 16.4, 15.98, 95, 'szt.', 'Produkty serii JUNIOR mogą być stosowane wszędzie tam, gdzie jest wysoki poziom zapylenia i wilgoci, również w przemyśle.', 1, '1', NULL, ''),
(10, 'Gniazdo potrójne z uziemieniem 3X(2P+Z), (KLAPKA DYMNA; BEZ PRZESŁON)', 'GHE-3d', 26.35, 25.99, 38, 'szt.', 'Produkty serii JUNIOR mogą być stosowane wszędzie tam, gdzie jest wysoki poziom zapylenia i wilgoci, również w przemyśle.', 1, '1', NULL, ''),
(11, 'Łącznik jednobiegunowy', 'WHE-1', 10.36, 8.44, 172, 'szt.', 'Produkty serii JUNIOR mogą być stosowane wszędzie tam, gdzie jest wysoki poziom zapylenia i wilgoci, również w przemyśle. ', 1, '1', NULL, ''),
(12, 'Łącznik świecznikowy', 'WHE-2', 14.13, 13.25, 42, 'szt.', 'Produkty serii JUNIOR mogą być stosowane wszędzie tam, gdzie jest wysoki poziom zapylenia i wilgoci, również w przemyśle.', 1, '1', NULL, ''),
(13, 'Żarówka LED RAPID E27 5,5W 500lm 4000K b.neutralna 230V Kanlux', '32920', 6.77, 6.49, 67, 'szt.', 'Źródła Kanlux RAPID E27 są LEDowym odpowiednikami tradycyjnych żarówek. Ich wersje Kanlux RAPID HI sięgają najwyższych mocy (nawet 1520 lumenów!). Wyróżniają się przede wszystkim: wysokim strumieniem świetlnym i szerokim kątem świecenia. Dodatkowym atutem tych źródeł jest hybrydowa konstrukcja obudowy.', 1, '1', NULL, ''),
(14, 'Żarówka LED IQ-LED E27 10,5W 1080lm 4000K b.neutralna 230V Kanlux', '27277', 9.49, 9.02, 32, 'szt.', 'IQ-LED Kanlux to magia światła, które powstało z połączenia pasji i technologii. W laboratorium Kanlux zmieniliśmy dobre emocje w dobre osiągnięcia — opracowaliśmy światło, które może towarzyszyć Ci przez długie lata. W Kanlux wierzymy, że jakość światła ma znaczenie, dlatego pracowaliśmy nad tym aby wybrać najwyższej klasy zasilacz i dopasować do niego wyjątkowej jakości diody LED. Dzięki temu efekt migotania w linii IQ-LED Kanlux został zniwelowany, a oświetlenie ma bardzo naturalną barwę i zapewnia pełne bezpieczeństwo fotobiologiczne dla Twoich oczu i skóry.', 1, '1', NULL, ''),
(15, 'Żarówka GU10 6W-NW LED 430lm 4000K b.neutralna Kanlux Miledo', '31234', 5, 4.99, 0, 'szt.', 'Źródła światła LED MIO to ekonomiczny i przyjazny dla środowiska zamiennik tradycyjnych żarówek. Lampa LED doda wnętrzu oryginalnego deasign-u oraz pozwoli na oszczędność energii elektrycznej. Doskonale sprawdzi się zarówno w domu jak i obiektach użyteczności publicznej.\r\n\r\n', 1, '1', NULL, ''),
(16, 'Żarówka LED DUN świeczka E14 4,5W 400lm 4000K b.neutralna 230V Kanlux', '23381', 5.74, 4.99, 12, 'szt.', 'arówka LED DUN odznacza się wysoką trwałością, która została uzyskana dzięki innowacyjnej technologii LED SMD. Źródło świetnie sprawdza się w warunkach domowych jak również biurach, sklepach i wszędzie tam gdzie potrzebne jest mocne doświetlenie.\r\n\r\n', 1, '1', NULL, ''),
(17, 'Żarówka LED GLASS G9 2W 200lm 6000K b.zimna 230V Kanlux', '26631', 7.99, 6.99, 54, 'szt.', 'Źródło światła G9 GLASS o mocy 2W, dzięki szklanej bańce przypomina tradycyjny halogen. Konstrukcja tego typu źródeł gwarantuje szeroki kąt emisji światła (320 stopni), dzięki czemu idealnie nadaje się do zastosowania we wszelkich oprawach i żyrandolach.\r\n\r\n', 1, '1', NULL, ''),
(18, 'Sufitowa oprawa punktowa BORD DLP-50-B Czarny Kanlux', '22552', 59.99, 52.99, 14, 'szt.', 'Oprawy BORD firmy Kanlux wyróżniają się łagodnymi krawędziami. Opływowy kształt nadaje im elegancji i subtelności. Nowoczesny design, elegancka prostota sprawiają, że oprawy te pasują zarówno do wnętrz mieszkalnych jak i komercyjnych: biura, sklepy, galerie. BORD oferują możliwość regulacji ułożenia źródła światła o 25 stopni, co pozwala na skierowanie strumienia światła w dowolnym kierunku. Ułatwia to wyeksponowanie wybranego przez nas przedmiotu.', 1, '1', NULL, ''),
(19, 'Oprawa ścienna JASMIN WE-W E27 Drewno-wenge Kanlux', '23756', 129.99, 124.99, 5, 'szt.', 'Kinkiety JASMIN to nowoczesne, starannie wykonane, drewniane oprawy, które dają możliwość ciekawej aranżacji pomieszczeń. Efektowna obudowa w kolorze wenge w połączeniu z satynowym szkłem, które zapewnia równomierne rozproszenie światła, nada niepowtarzalnego charakteru każdemu wnętrzu.', 1, '1', NULL, ''),
(20, 'Oprawa sufitowa DALLA CT-DTO50-B MR16 12V Czarny', '22432', 25.49, 22.99, 56, 'szt.', 'Sufitowa oprawa punktowa DALLA posiada zakres regulacji kąta świecenia, dzięki czemu można tworzyć w pomieszczeniu dowolne warunki oświetleniowe. Oprawa będzie idealnym uzupełnieniem głównego oświetlenia w salonie, kuchni lub sypialni. Jej okrągły kształt i czarny kolor pozwala na osiągnięcie nowoczesnego i eleganckiego wystroju', 1, '1', NULL, ''),
(21, 'Lampka biurkowa LED REXAR LED Czarny', '33071', 149.99, 144.99, 12, 'szt.', 'Lampka biurkowa Kanlux REXAR to minimalistyczny, elegancki design i mnóstwo funkcji. Możemy dowolnie regulować barwę światła i jego natężenie, a także skorzystać z portu USB. aby doładować urządzenie mobilne. Po skończonej pracy złożona lampka nie zajmie dużo miejsca i będzie pełnić funkcję minimalistycznej ozdoby.', 1, '1', 1, 'czarny'),
(22, 'produkt z bardzo długą nazwą który prawdopodobnie rozwali całą stronę, chyba że coś wymyślę i tak się nie stanie. Mam nadzieję, że się uda. Pozdrawiam wszystkich którzy to czytają, bo prawdopodobnie nie powinno być widać już tego fragmentu tekstu. :)', 'test-01-aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 12000.2, 120000, 123456789, 'szt.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris ac nisi lectus. Quisque at augue est. Integer viverra ornare laoreet. Vivamus vestibulum pharetra odio, nec molestie ipsum efficitur eget. Morbi ac orci pharetra, venenatis sapien sed, fermentum purus. In et malesuada justo. Aliquam interdum venenatis lectus, mattis finibus nisi egestas non. Integer bibendum dui ut leo pulvinar pharetra. Praesent elit libero, mattis quis blandit sagittis, tincidunt sed ligula.\r\n\r\nDuis ac mauris eu lacus accumsan ultrices. Pellentesque euismod tortor eu nunc consectetur vestibulum. Nulla ut nisl lobortis, pretium ante vitae, posuere ante. Nulla ornare a urna nec placerat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nunc enim massa, varius non semper id, vulputate dignissim justo. Proin a sem odio.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tincidunt, nunc volutpat pharetra condimentum, dui enim tincidunt risus, eu accumsan urna justo eget nisl. Morbi lacinia purus tempus mollis ullamcorper. Integer cursus euismod nisi, et porta tortor finibus at. Vivamus nibh lorem, pulvinar sit amet elementum vel, condimentum in ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean auctor euismod tortor sit amet tempus. Mauris ac turpis nulla. Ut venenatis suscipit tortor ut auctor. Nam posuere consequat nisl, eget auctor augue. Suspendisse suscipit elit at mattis convallis. Nulla nibh justo, commodo vitae urna nec, dapibus pretium quam. Suspendisse suscipit luctus augue, vitae porttitor tellus commodo quis.\r\n\r\nInteger viverra, nibh id porttitor aliquet, ligula ante viverra mauris, at eleifend lectus nibh nec mauris. Cras posuere fringilla orci in sodales. Aenean lorem lacus, ultrices vitae lacus sit amet, blandit ultricies nibh. Sed posuere laoreet elit eget molestie. Suspendisse a interdum urna. Phasellus ultricies non lectus ut efficitur. Maecenas egestas risus quis neque ullamcorper hendrerit.\r\n\r\nCras eget erat dictum, accumsan felis at, dictum lectus. Aenean porta quis ex in gravida. Curabitur ornare mattis sapien eget viverra. Pellentesque venenatis ligula eget neque blandit consectetur. Quisque ac neque dictum, rhoncus tellus at, convallis ante. Vestibulum rhoncus lobortis nulla sit amet dignissim. Morbi pretium tortor in sapien rutrum bibendum.\r\n\r\nVivamus iaculis lacinia pharetra. Donec id pretium magna. Vivamus velit mauris, dictum ut nisi at, vestibulum faucibus nibh. Morbi ut aliquam ligula. Suspendisse blandit lacus maximus erat cursus venenatis. Morbi dolor magna, convallis sed sodales sit amet, ornare quis nunc. Phasellus ullamcorper at leo a lacinia. Vestibulum consectetur, nisl non mollis placerat, tellus erat tempus dolor, a ornare tellus libero quis eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nDuis ac nulla lacus. Vestibulum sit amet nisi leo. Aenean nibh velit, tempor vitae varius fermentum, finibus convallis libero. Sed vulputate, elit vitae efficitur fermentum, nisl metus suscipit nisi, et tempus ex est ac odio. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In hac habitasse platea dictumst. Nulla facilisi. Vestibulum tempus vitae ante nec finibus. Sed vestibulum eget quam non venenatis. Pellentesque id nisl at diam interdum rhoncus eu id tortor. Donec porta condimentum ligula, eu lacinia lorem. Nunc pellentesque faucibus sapien, a elementum nisl iaculis vitae.', 1, '1', NULL, ''),
(24, 'System alarmowy Satel Integra 32', 'ZA21419', 4400, 4340, 3, 'szt.', 'Centrale należące do rodziny INTEGRA to najbardziej zaawansowane urządzenia w ofercie firmy SATEL. W skład rodziny wchodzi pięć central opartych na jednolitej architekturze sprzętowo-programowej, różniących się od siebie wielkością i możliwościami rozbudowy. Wszechstronność tych urządzeń pozwala stosować je nie tylko w systemach sygnalizacji włamania i napadu, ale także w systemach kontroli dostępu i inteligentnego zarządzania budynkiem.', 1, '1', NULL, ''),
(25, 'Złączka zaciskowa 3-torowa uniwersalna z dźwignią (0,14-4mm2) WAGO', '221-413', 1.6, 1.49, 3000, 'szt.', 'Złączki instalacyjne Wago serii 221- służą do łączenia przewodów elektrycznych jednodrutowych, linkowych oraz wielodrutowych. Szybkozłączki Wago charakteryzują się bardzo prostym i szybkim montażem: unosisz dźwignię, wprowadzasz odizolowany przewód, opuszczasz dźwignię - gotowe!', 1, '1', NULL, ''),
(26, 'Gniazdo pojedyncze z uziemieniem z ramką Biały Schneider Asfora', 'EPH2800121', 8.33, 7, 52, 'szt.', 'Gniazdo pojedyncze z uziemieniem w kolorze białym, serii Asfora, marki Schneider Electric, o numerze katalogowym EPH2800121.\r\n\r\nDługie i solidne zaczepy utrzymywane są za pomocą metalowych prowadnic w pozycji pionowej, co ułatwia montaż oraz zwiększa bezpieczeństwo podczas mocowania mechanizmu w puszce instalacyjnej. Zaciski w gniazdach zasilających oznaczone są w czytelny sposób oraz umieszczone są w jednej linii, dzięki czemu znacznie prostsze staje się ułożenie podłączonych kabli przed zamocowaniem gniazda w puszce instalacyjnej (zmniejszenie efektu prężenia przewodów). Zwarta i solidna zabudowa mechanizmu minimalizuje ryzyko przypadkowego kontaktu z elementami pod napięciem i uniemożliwia wypadanie elementów nawet przy całkowitym odkręceniu śrub zacisków. Dodatkowo, solidna ramka montażowa wykonana z galwanizowanego metalu posiada nacięcia ułatwiające pozycjonowanie.', 1, '1', NULL, ''),
(27, 'Gniazdo podwójne z uziemieniem do ramek wielokrotnych Biały Schneider Asfora', 'EPH9810221', 10.08, 8.47, 64, 'szt.', 'Gniazdo podwójne z uziemieniem do systemu ramkowego w kolorze białym, serii Asfora, marki Schneider Electric, o numerze katalogowym EPH9810221.\r\n\r\nDługie i solidne zaczepy utrzymywane są za pomocą metalowych prowadnic w pozycji pionowej, co ułatwia montaż oraz zwiększa bezpieczeństwo podczas mocowania mechanizmu w puszce instalacyjnej. Zaciski w gniazdach zasilających oznaczone są w czytelny sposób oraz umieszczone są w jednej linii, dzięki czemu znacznie prostsze staje się ułożenie podłączonych kabli przed zamocowaniem gniazda w puszce instalacyjnej (zmniejszenie efektu prężenia przewodów). Zwarta i solidna zabudowa mechanizmu minimalizuje ryzyko przypadkowego kontaktu z elementami pod napięciem i uniemożliwia wypadanie elementów nawet przy całkowitym odkręceniu śrub zacisków. Dodatkowo, solidna ramka montażowa wykonana z galwanizowanego metalu posiada nacięcia ułatwiające pozycjonowanie. Produkt może być instalowany w ramkach wielokrotnych.', 1, '1', NULL, ''),
(28, 'Łącznik jednobiegunowy z ramką (szybkozłącza) Biały Schneider Asfora', 'EPH0100121', 9.08, 7.63, 61, 'szt.', 'Łącznik jednobiegunowy w kolorze białym, serii Asfora, marki Schneider Electric, o numerze katalogowym EPH0100121.\r\n\r\nŁącznik może być wykorzystywany jako tradycyjny włącznik światła lub służyć do załączania innych urządzeń o maksymalnym poborze prądu do 10 AX. Podłączenie przewodów za pomocą zacisków bezgwintowych. Długie i solidne zaczepy utrzymywane są za pomocą metalowych prowadnic w pozycji pionowej, co ułatwia montaż oraz zwiększa bezpieczeństwo podczas mocowania mechanizmu w puszce instalacyjnej. Mechanizm posiada czytelny schemat oraz oznaczenie zacisków ułatwiające podłączenie. Dodatkowo, solidna ramka montażowa wykonana z galwanizowanego metalu posiada nacięcia ułatwiające pozycjonowanie.\r\n(Ramka będąca częścią zestawu może zostać zdemontowana i wykorzystana do montażu innych produktów z serii Asfora. Produkt po wyjęciu z ramki może być zamontowany w ramkach wielokrotnych.)', 1, '1', NULL, ''),
(29, 'Łącznik podwójny, świecznikowy z ramką (szybkozłącza) Biały Schneider Asfora', 'EPH0300121', 9.85, 9.01, 97, 'szt.', 'Łącznik świecznikowy w kolorze białym, serii Asfora, marki Schneider Electric, o numerze katalogowym EPH0300121.\r\n\r\nŁącznik może być wykorzystywany jako tradycyjny włącznik światła lub służyć do załączania innych urządzeń o maksymalnym poborze prądu do 10 AX. Podłączenie przewodów za pomocą zacisków bezgwintowych. Długie i solidne zaczepy utrzymywane są za pomocą metalowych prowadnic w pozycji pionowej, co ułatwia montaż oraz zwiększa bezpieczeństwo podczas mocowania mechanizmu w puszce instalacyjnej. Mechanizm posiada czytelny schemat oraz oznaczenie zacisków ułatwiające podłączenie. Dodatkowo, solidna ramka montażowa wykonana z galwanizowanego metalu posiada nacięcia ułatwiające pozycjonowanie.\r\n(Ramka będąca częścią zestawu może zostać zdemontowana i wykorzystana do montażu innych produktów z serii Asfora. Produkt po wyjęciu z ramki może być zamontowany w ramkach wielokrotnych.)', 1, '1', NULL, ''),
(30, 'Gniazdo pojedyncze z uziemieniem (szybkozłącza) Biały Legrand Valena Life', '753181', 25.93, 24.93, 21, 'szt.', 'Gniazdo pojedyncze z uziemieniem (szybkozłącza) w kolorze białym z serii Valena Life, marki Legrand.\r\n\r\nStandardowe gniazdo elektryczne z bolcem uziemiającym. Do kompletu wymagana ramka. Można stosować do systemów ramkowych wielokrotnych.', 1, '1', NULL, ''),
(31, 'Gniazdo podwójne z uziemieniem i przesłonami Biały Legrand Valena Life', '753190', 36.99, 35.99, 41, 'szt.', 'Gniazdo podwójne z uziemieniem i przesłonami w kolorze białym z serii Valena Life, marki Legrand.\r\n\r\nStandardowe gniazdo elektryczne podwójne z bolcem uziemiającym wyposażone w przesłony torów prądowych. Do kompletu wymagana ramka. Można stosować do systemów ramkowych wielokrotnych.\r\n\r\nPrzesłony torów prądowych to zaślepki, które uniemożliwiają włożenie do gniazdka innych przedmiotów niż wtyczka. Takie rozwiązanie jest szczególnie przydatne gdy chcemy uniemożliwić dostęp do gniazdka np. dzieciom.', 1, '1', NULL, ''),
(32, 'Gniazdo bryzgoszczelne z przesłonami IP-44 Biały Legrand Valena Life', '753179', 34.54, 34.1, 42, 'szt.', 'Gniazdo bryzgoszczelne z przesłonami IP-44 w kolorze białym z serii Valena Life, marki Legrand.\r\n\r\nGniazdo hermetyczne z klapką przystosowane do montażu w miejscach o podwyższonej wilgotności np. w łazience. Wyposażone w przesłony torów prądowych. Do kompletu wymagana ramka. Można stosować do systemów ramkowych wielokrotnych.\r\n\r\nPrzesłony torów prądowych to zaślepki, które uniemożliwiają włożenie do gniazdka innych przedmiotów niż wtyczka. Takie rozwiązanie jest szczególnie przydatne gdy chcemy uniemożliwić dostęp do gniazdka np. dzieciom.\r\n\r\n', 1, '1', NULL, ''),
(33, 'Łącznik jednobiegunowy Biały Legrand Valena Life', '752101', 21.37, 20.05, 43, 'szt.', 'Łącznik jednobiegunowy w kolorze białym z serii Valena Life, marki Legrand.\r\n\r\nStandardowy wyłącznik pojedynczy wyposażony w jeden klawisz umożliwiający załączanie i wyłączanie w obrębie jednego obwodu. Stosowany w pomieszczeniach jako przełącznik oświetlenia. Do kompletu wymagana ramka. Można stosować do systemów ramkowych wielokrotnych.', 1, '1', NULL, ''),
(34, 'Łącznik podwójny, świecznikowy Biały Legrand Valena Life', '752105', 27.27, 26.26, 26, 'szt.', 'Łącznik świecznikowy w kolorze białym z serii Valena Life, marki Legrand.\r\n\r\nŁącznik wyposażony w dwa klawisze, umożliwiający łączenie dwóch niezależnych obwodów oświetleniowych ze wspólnego (jednego) zasilania. Używany najczęściej do załączania żyrandoli (podzielonych na dwie strefy). Do kompletu wymagana ramka. Można stosować do systemów ramkowych wielokrotnych.\r\n\r\n', 1, '1', NULL, ''),
(35, 'Ramka pojedyncza Biały', 'CR1/11', 2.07, 1.95, 300, 'szt.', 'Ramka 1-krotna uniwersalna przystosowana do elementów z serii Simon 10.\r\n\r\nRamki uniwersalne umożliwiają montaż osprzętu zarówno w pionie jak i poziomie.\r\n\r\nAby uzyskać klasę bryzgoszczelności IP-44 należy zastosować uszczelkę ramki.', 1, '1', NULL, ''),
(36, 'Ramka podwójna Biały', 'CR2/11', 4.1, 3.85, 321, 'szt.', 'Ramka 2-krotna uniwersalna przystosowana do elementów z serii Simon 10.\r\n\r\nRamki uniwersalne umożliwiają montaż osprzętu zarówno w pionie jak i poziomie.\r\n\r\nAby uzyskać klasę bryzgoszczelności IP-44 należy zastosować uszczelkę ramki.', 1, '1', NULL, ''),
(37, 'Ramka potrójna Biały', 'CR3/11', 6.1, 5.73, 113, 'szt.', 'Ramka 3-krotna uniwersalna przystosowana do elementów z serii Simon 10.\r\n\r\nRamki uniwersalne umożliwiają montaż osprzętu zarówno w pionie jak i poziomie.\r\n\r\nAby uzyskać klasę bryzgoszczelności IP-44 należy zastosować uszczelkę ramki.', 1, '1', NULL, ''),
(38, 'Ramka poczwórna Biały', 'CR4/11', 9.7, 9.12, 54, 'szt.', 'Ramka 4-krotna uniwersalna przystosowana do elementów z serii Simon 10.\r\n\r\nRamki uniwersalne umożliwiają montaż osprzętu zarówno w pionie jak i poziomie.\r\n\r\nAby uzyskać klasę bryzgoszczelności IP-44 należy zastosować uszczelkę ramki.', 1, '1', NULL, ''),
(39, 'Lampka biurkowa LED REXAR LED Biały', '33070', 149.99, 144.99, 45, 'szt.', 'Lampka biurkowa Kanlux REXAR to minimalistyczny, elegancki design i mnóstwo funkcji. Możemy dowolnie regulować barwę światła i jego natężenie, a także skorzystać z portu USB aby doładować urządzenie mobilne. Po skończonej pracy złożona lampka nie zajmie dużo miejsca i będzie pełnić funkcję minimalistycznej ozdoby.', 1, '1', 1, 'biały'),
(40, 'Gniazdo pojedyncze z uziemieniem i przesłonami (zaciski śrubowe) Antracyt mat Berker B.Kwadrat', 'BZ-K-083', 26.96, 23.73, 32, 'szt.', 'Gniazdo pojedyncze z uziemieniem i przesłonami (zaciski śrubowe) w kolorze Antracyt mat, z serii B.Kwadrat, producenta Berker by Hager.\r\n\r\nStandardowe gniazdo elektryczne z bolcem uziemiającym wyposażone w przesłony torów prądowych. Do kompletu wymagana ramka. Można stosować do systemów ramkowych wielokrotnych.\r\n\r\nPrzesłony torów prądowych to zaślepki, które uniemożliwiają włożenie do gniazdka innych przedmiotów niż wtyczka. Takie rozwiązanie jest szczególnie przydatne gdy chcemy uniemożliwić dostęp do gniazdka np. dzieciom.\r\n\r\nMechanizmy gniazd Berker by Hager wyróżniają się funkcjonalnością oraz prostotą obsługi i montażu. Gniazda umożliwają łatwy dostęp do zacisków, które są z jednej strony. Profilowane zaciski ułatwiają podłączenie.\r\n\r\nMontaż gniazda do puszki za pomocą pazurków rozporowych lub wkrętów.\r\n\r\nProdukty wchodzące w skład zestawu dostarczane są oddzielnie.', 1, '1', NULL, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idCategory` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `product_categories`
--

INSERT INTO `product_categories` (`id`, `idProduct`, `idCategory`) VALUES
(1, 3, 33),
(2, 3, 93),
(3, 4, 33),
(4, 4, 92),
(5, 5, 33),
(6, 5, 92),
(7, 6, 33),
(8, 6, 93),
(9, 7, 33),
(10, 7, 93),
(12, 8, 93),
(11, 8, 112),
(13, 9, 93),
(14, 9, 112),
(16, 10, 93),
(15, 10, 112),
(18, 11, 92),
(17, 11, 112),
(20, 12, 92),
(19, 12, 112),
(21, 13, 81),
(22, 13, 110),
(23, 14, 81),
(24, 14, 110),
(25, 15, 80),
(31, 15, 110),
(27, 16, 82),
(28, 16, 110),
(29, 17, 83),
(30, 17, 110),
(32, 18, 84),
(33, 18, 110),
(92, 19, 85),
(91, 19, 110),
(93, 20, 86),
(94, 20, 110),
(40, 21, 88),
(41, 21, 110),
(44, 22, 107),
(46, 24, 97),
(45, 24, 113),
(47, 25, 109),
(49, 25, 114),
(52, 26, 17),
(51, 26, 93),
(54, 27, 17),
(55, 27, 93),
(57, 28, 17),
(58, 28, 92),
(60, 29, 17),
(61, 29, 92),
(63, 30, 38),
(64, 30, 93),
(67, 31, 38),
(65, 31, 93),
(69, 32, 38),
(70, 32, 93),
(72, 33, 38),
(73, 33, 92),
(75, 34, 38),
(76, 34, 92),
(78, 35, 33),
(79, 35, 94),
(81, 36, 33),
(82, 36, 94),
(84, 37, 33),
(85, 37, 94),
(87, 38, 33),
(88, 38, 94),
(89, 39, 88),
(90, 39, 110),
(95, 40, 48),
(96, 40, 93);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_filters`
--

CREATE TABLE `product_filters` (
  `id` int(11) NOT NULL,
  `idProduct` int(11) NOT NULL,
  `idFilterValue` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `product_filters`
--

INSERT INTO `product_filters` (`id`, `idProduct`, `idFilterValue`) VALUES
(4, 3, 10),
(20, 3, 17),
(13, 4, 10),
(21, 4, 17),
(14, 5, 10),
(22, 5, 17),
(3, 6, 10),
(23, 6, 17),
(1, 7, 10),
(24, 7, 17),
(5, 8, 10),
(25, 8, 17),
(2, 9, 10),
(26, 9, 17),
(6, 10, 10),
(27, 10, 17),
(12, 11, 10),
(28, 11, 17),
(15, 12, 10),
(29, 12, 17),
(18, 13, 10),
(30, 13, 17),
(76, 13, 26),
(70, 13, 32),
(19, 14, 10),
(31, 14, 17),
(77, 14, 26),
(71, 14, 32),
(16, 15, 10),
(32, 15, 17),
(78, 15, 26),
(72, 15, 31),
(17, 16, 10),
(33, 16, 17),
(79, 16, 26),
(73, 16, 33),
(75, 17, 10),
(34, 17, 17),
(74, 17, 34),
(80, 17, 35),
(11, 18, 11),
(35, 18, 17),
(81, 18, 31),
(10, 19, 11),
(36, 19, 17),
(82, 19, 32),
(8, 20, 11),
(61, 20, 19),
(83, 20, 31),
(7, 21, 11),
(37, 21, 17),
(55, 21, 25),
(56, 21, 26),
(57, 21, 27),
(58, 21, 28),
(59, 21, 29),
(60, 21, 30),
(9, 22, 15),
(40, 22, 22),
(41, 26, 10),
(42, 27, 10),
(43, 28, 10),
(44, 29, 10),
(45, 30, 10),
(48, 30, 10),
(46, 31, 10),
(47, 32, 10),
(50, 33, 10),
(49, 34, 10),
(51, 35, 10),
(52, 36, 10),
(53, 37, 10),
(54, 38, 10),
(62, 39, 10),
(63, 39, 17),
(64, 39, 25),
(65, 39, 26),
(66, 39, 27),
(67, 39, 28),
(68, 39, 29),
(69, 39, 30),
(85, 40, 11),
(84, 40, 17);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_flags`
--

CREATE TABLE `product_flags` (
  `idProduct` int(11) NOT NULL,
  `idFlag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `product_flags`
--

INSERT INTO `product_flags` (`idProduct`, `idFlag`) VALUES
(21, 1),
(21, 2),
(3, 1),
(18, 2),
(10, 1),
(13, 1),
(19, 2),
(16, 1),
(3, 3),
(13, 3),
(4, 3),
(21, 3),
(10, 3),
(18, 3),
(7, 3),
(20, 3),
(14, 3),
(5, 3),
(22, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `photoMedium` text COLLATE utf8_polish_ci NOT NULL,
  `photoSmall` text COLLATE utf8_polish_ci NOT NULL,
  `photoBig` text COLLATE utf8_polish_ci NOT NULL,
  `idProduct` int(11) NOT NULL,
  `alt` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `product_images`
--

INSERT INTO `product_images` (`id`, `photoMedium`, `photoSmall`, `photoBig`, `idProduct`, `alt`) VALUES
(1, '', './photos/products/simon/simon-small/CGZ1_01_11.png', './photos/products/simon/simon-big/CGZ1_01_11.png', 3, 'product image'),
(2, '', './photos/products/simon/simon-small/CW1_01_11.png', './photos/products/simon/simon-big/CW1_01_11.png', 4, 'product image'),
(3, '', './photos/products/simon/simon-small/CW5_01_11.png', './photos/products/simon/simon-big/CW5_01_11.png', 5, 'product image'),
(4, '', './photos/products/simon/simon-small/CGZ2M_01_11.png', './photos/products/simon/simon-big/CGZ2M_01_11.png', 6, 'product image'),
(5, '', './photos/products/simon/simon-small/CGZ1B_01_11.png', './photos/products/simon/simon-big/CGZ1B_01_11.png', 7, 'product image'),
(6, '', './photos/products/karlik/karlik-small/ghe-1d.png', './photos/products/karlik/karlik-big/ghe-1d.png', 8, 'product image'),
(7, '', './photos/products/karlik/karlik-small/ghe-2d.jpg', './photos/products/karlik/karlik-big/ghe-2d.jpg', 9, 'product image'),
(8, '', './photos/products/karlik/karlik-small/ghe-3d.jpg', './photos/products/karlik/karlik-big/ghe-3d.jpg', 10, 'product image'),
(9, '', './photos/products/karlik/karlik-small/whe-1.jpg', './photos/products/karlik/karlik-big/whe-1.jpg', 11, 'product image'),
(10, '', './photos/products/karlik/karlik-small/whe-2.jpg', './photos/products/karlik/karlik-big/whe-2.jpg', 12, 'product image'),
(11, '', './photos/products/kanlux/kanlux-small/33071-1.jpg', './photos/products/kanlux/kanlux-big/33071-1.jpg', 21, 'product image'),
(13, '', './photos/products/kanlux/kanlux-small/33071-3.jpg', './photos/products/kanlux/kanlux-big/33071-3.jpg', 21, 'product image'),
(14, '', './photos/products/kanlux/kanlux-small/33071-4.jpg', './photos/products/kanlux/kanlux-big/33071-4.jpg', 21, 'product image'),
(15, '', './photos/products/kanlux/kanlux-small/33071-5.jpg', './photos/products/kanlux/kanlux-big/33071-5.jpg', 21, 'product image'),
(16, '', './photos/products/kanlux/kanlux-small/33071-6.jpg', './photos/products/kanlux/kanlux-big/33071-6.jpg', 21, 'product image'),
(17, '', './photos/products/kanlux/kanlux-small/33071-7.jpg', './photos/products/kanlux/kanlux-big/33071-7.jpg', 21, 'product image'),
(18, '', './photos/products/kanlux/kanlux-small/33071-8.jpg', './photos/products/kanlux/kanlux-big/33071-8.jpg', 21, 'product image'),
(19, '', './photos/products/kanlux/kanlux-small/33071-9.jpg', './photos/products/kanlux/kanlux-big/33071-9.jpg', 21, 'product image'),
(20, '', './photos/products/kanlux/kanlux-small/33071-10.jpg', './photos/products/kanlux/kanlux-big/33071-10.jpg', 21, 'product image'),
(21, '', './photos/products/test/test-small/illdie.jpg', './photos/products/test/test-big/illdie.jpg', 22, ''),
(22, '', './photos/products/kanlux/kanlux-small/32920.jpg', './photos/products/kanlux/kanlux-big/32920.jpg', 13, ''),
(23, '', './photos/products/kanlux/kanlux-small/27277.jpg', './photos/products/kanlux/kanlux-big/27277.jpg', 14, ''),
(24, '', './photos/products/kanlux/kanlux-small/22552.jpg', './photos/products/kanlux/kanlux-big/22552.jpg', 18, ''),
(25, '', './photos/products/kanlux/kanlux-small/22432.jpg', './photos/products/kanlux/kanlux-big/22432.jpg', 20, ''),
(26, '', './photos/products/satel/satel-small/za21419.webp', './photos/products/satel/satel-big/za21419.webp', 24, 'product photo'),
(27, '', './photos/products/wago/wago-small/221_413.jpg', './photos/products/wago/wago-big/221_413.jpg', 25, 'product photo'),
(28, '', './photos/products/schneider/schneider-small/EPH2800121.jpg', './photos/products/schneider/schneider-big/EPH2800121.jpg', 26, 'product photo'),
(29, '', './photos/products/schneider/schneider-small/EPH9810221.jpg', './photos/products/schneider/schneider-big/EPH9810221.jpg', 27, 'product photo'),
(30, '', './photos/products/schneider/schneider-small/EPH0100121.jpg', './photos/products/schneider/schneider-big/EPH0100121.jpg', 28, 'product photo'),
(31, '', './photos/products/schneider/schneider-small/EPH0300121.jpg', './photos/products/schneider/schneider-big/EPH0300121.jpg', 29, 'product photo'),
(32, '', './photos/products/legrand/legrand-small/753181.jpg', './photos/products/legrand/legrand-big/753181.jpg', 30, 'product-photo'),
(33, '', './photos/products/legrand/legrand-small/753190.jpg', './photos/products/legrand/legrand-big/753190.jpg', 31, 'product photo'),
(34, '', './photos/products/legrand/legrand-small/753179.jpg', './photos/products/legrand/legrand-big/753179.jpg', 32, 'product photo'),
(35, '', './photos/products/legrand/legrand-small/752101.jpg', './photos/products/legrand/legrand-big/752101.jpg', 33, 'product photo'),
(36, '', './photos/products/legrand/legrand-small/752105.jpg', './photos/products/legrand/legrand-big/752105.jpg', 34, 'product photo'),
(37, '', './photos/products/simon/simon-small/CR1_11.png', './photos/products/simon/simon-big/CR1_11.png', 35, 'product photo'),
(38, '', './photos/products/simon/simon-small/CR2_11.png', './photos/products/simon/simon-big/CR2_11.png', 36, 'product photo'),
(39, '', './photos/products/simon/simon-small/CR3_11.png', './photos/products/simon/simon-big/CR3_11.png', 37, 'product photo'),
(40, '', './photos/products/simon/simon-small/CR4_11.png', './photos/products/simon/simon-big/CR4_11.png', 38, 'product photo'),
(41, '', './photos/products/kanlux/kanlux-small/33070.jpg', './photos/products/kanlux/kanlux-big/33070.jpg', 39, 'product photo'),
(42, '', './photos/products/kanlux/kanlux-small/33070-2.jpg', './photos/products/kanlux/kanlux-big/33070-2.jpg', 39, 'product photo'),
(43, '', './photos/products/kanlux/kanlux-small/33070-3.jpg', './photos/products/kanlux/kanlux-big/33070-3.jpg', 39, 'product photo'),
(44, '', './photos/products/kanlux/kanlux-small/33070-4.jpg', './photos/products/kanlux/kanlux-big/33070-4.jpg', 39, 'product photo'),
(45, '', './photos/products/kanlux/kanlux-small/33070-5.jpg', './photos/products/kanlux/kanlux-big/33070-5.jpg', 39, 'product photo'),
(46, '', './photos/products/kanlux/kanlux-small/33070-6.jpg', './photos/products/kanlux/kanlux-big/33070-6.jpg', 39, 'product photo'),
(47, '', './photos/products/kanlux/kanlux-small/33070-7.jpg', './photos/products/kanlux/kanlux-big/33070-7.jpg', 39, 'product photo'),
(48, '', './photos/products/kanlux/kanlux-small/33070-8.jpg', './photos/products/kanlux/kanlux-big/33070-8.jpg', 39, 'product photo'),
(49, '', './photos/products/kanlux/kanlux-small/33070-9.jpg', './photos/products/kanlux/kanlux-big/33070-9.jpg', 39, 'product photo'),
(50, '', './photos/products/berker/berker-small/BZ-K-083.jpg', './photos/products/berker/berker-big/BZ-K-083.jpg', 40, 'product photo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `variant_group`
--

CREATE TABLE `variant_group` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `variant_group`
--

INSERT INTO `variant_group` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `video` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `maskPhoto` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `video`
--

INSERT INTO `video` (`id`, `video`, `maskPhoto`) VALUES
(1, '<iframe width=\"790\" height=\"444\" src=\"https://www.youtube.com/embed/i_pNvRzNCvs\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', './photos/img_02.jpg');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `higherCategory` (`higherCategory`);

--
-- Indeksy dla tabeli `child_elements`
--
ALTER TABLE `child_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategory` (`idParent`);

--
-- Indeksy dla tabeli `filters`
--
ALTER TABLE `filters`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `filter_value`
--
ALTER TABLE `filter_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributeId` (`idFilter`);

--
-- Indeksy dla tabeli `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `parent_elements`
--
ALTER TABLE `parent_elements`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVideo` (`idVideo`),
  ADD KEY `idVarinatGroup` (`idVariantGroup`);

--
-- Indeksy dla tabeli `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`,`idCategory`),
  ADD KEY `idSubcategory` (`idCategory`);

--
-- Indeksy dla tabeli `product_filters`
--
ALTER TABLE `product_filters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productId` (`idProduct`,`idFilterValue`),
  ADD KEY `idattribute_value` (`idFilterValue`);

--
-- Indeksy dla tabeli `product_flags`
--
ALTER TABLE `product_flags`
  ADD KEY `idFlag` (`idFlag`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indeksy dla tabeli `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idProduct` (`idProduct`);

--
-- Indeksy dla tabeli `variant_group`
--
ALTER TABLE `variant_group`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT dla tabeli `child_elements`
--
ALTER TABLE `child_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `filters`
--
ALTER TABLE `filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `filter_value`
--
ALTER TABLE `filter_value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT dla tabeli `flags`
--
ALTER TABLE `flags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `parent_elements`
--
ALTER TABLE `parent_elements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT dla tabeli `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT dla tabeli `product_filters`
--
ALTER TABLE `product_filters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT dla tabeli `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT dla tabeli `variant_group`
--
ALTER TABLE `variant_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`higherCategory`) REFERENCES `categories` (`id`);

--
-- Ograniczenia dla tabeli `child_elements`
--
ALTER TABLE `child_elements`
  ADD CONSTRAINT `child_elements_ibfk_1` FOREIGN KEY (`idParent`) REFERENCES `parent_elements` (`id`);

--
-- Ograniczenia dla tabeli `filter_value`
--
ALTER TABLE `filter_value`
  ADD CONSTRAINT `filter_value_ibfk_1` FOREIGN KEY (`idFilter`) REFERENCES `filters` (`id`);

--
-- Ograniczenia dla tabeli `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`idVideo`) REFERENCES `video` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`idVariantGroup`) REFERENCES `variant_group` (`id`);

--
-- Ograniczenia dla tabeli `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_categories_ibfk_2` FOREIGN KEY (`idCategory`) REFERENCES `categories` (`id`);

--
-- Ograniczenia dla tabeli `product_filters`
--
ALTER TABLE `product_filters`
  ADD CONSTRAINT `product_filters_ibfk_1` FOREIGN KEY (`idFilterValue`) REFERENCES `filter_value` (`id`),
  ADD CONSTRAINT `product_filters_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`);

--
-- Ograniczenia dla tabeli `product_flags`
--
ALTER TABLE `product_flags`
  ADD CONSTRAINT `product_flags_ibfk_1` FOREIGN KEY (`idFlag`) REFERENCES `flags` (`id`),
  ADD CONSTRAINT `product_flags_ibfk_2` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`);

--
-- Ograniczenia dla tabeli `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`idProduct`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
