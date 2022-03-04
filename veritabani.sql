-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Mar 2022, 11:01:16
-- Sunucu sürümü: 10.4.22-MariaDB
-- PHP Sürümü: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `veritabani`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('musfatmin@gmail.com', 'musat4526');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('621e364439510', '621e36443abcf'),
('621e36443bfdc', '621e36443c341'),
('621e36444e64b', '621e36444efae'),
('621e364461373', '621e3644616ea'),
('621e364462788', '621e364462ad9'),
('621e39f225e3d', '621e39f226f63'),
('621e39f22855b', '621e39f2288a5'),
('621e39f229d3f', '621e39f22a06c'),
('621e39f22b200', '621e39f22b560'),
('621e39f22cb29', '621e39f22ce58'),
('621f3bbb92e67', '621f3bbb9332e'),
('621f3bbba5926', '621f3bbba5cb1'),
('621f3bbbb8699', '621f3bbbc9fdb'),
('621f3bbbcb6f6', '621f3bbbcbfdd'),
('621f3bbbcd104', '621f3bbbcd4cd'),
('621f3bbbce8bb', '621f3bbbcefd3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `konu` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `konu`, `feedback`, `date`, `time`) VALUES
('621e36f836b3c', 'Mehmet Sarı', 'mehmets@gmail.com', 'Test cevap', '4 şıklı cevaplar değil de 5 şıklı cevap olsa güzel olur.', '2022-03-01', '04:08:40pm'),
('621e3eaa3cdcd', 'Ali Genç', 'samumud07@outlook.com', 'Sınavlar', 'Sınav sayısı artırılabilir...', '2022-03-01', '04:41:30pm');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `skor` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `history`
--

INSERT INTO `history` (`email`, `eid`, `skor`, `level`, `sahi`, `wrong`, `date`) VALUES
('aysey@gmail.com', '621e33d1a0193', 20, 5, 1, 4, '2022-03-01 15:11:48'),
('mehmets@gmail.com', '621e381f923b1', 80, 5, 4, 1, '2022-03-01 15:22:29'),
('mehmets@gmail.com', '621e33d1a0193', 20, 5, 1, 4, '2022-03-01 15:22:50'),
('samumud07@outlook.com', '621e381f923b1', 20, 5, 1, 4, '2022-03-01 15:39:38'),
('samumud07@outlook.com', '621e33d1a0193', 60, 5, 3, 2, '2022-03-01 15:39:56'),
('aysey@gmail.com', '621e381f923b1', 60, 5, 3, 2, '2022-03-02 09:43:12'),
('aysey@gmail.com', '621f3ad373d22', 80, 6, 5, 1, '2022-03-02 09:43:45'),
('yunuss@gmail.com', '621f3ad373d22', 64, 6, 4, 2, '2022-03-02 09:54:51'),
('yunuss@gmail.com', '621e381f923b1', 40, 5, 2, 3, '2022-03-02 09:55:06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('621e364439510', ' Generics', '621e36443abcf'),
('621e364439510', 'Abstract classes', '621e36443abd0'),
('621e364439510', 'Interfaces', '621e36443abd1'),
('621e364439510', 'Collection', '621e36443abd2'),
('621e36443bfdc', '1', '621e36443c340'),
('621e36443bfdc', '0', '621e36443c341'),
('621e36443bfdc', '2', '621e36443c342'),
('621e36443bfdc', '3', '621e36443c343'),
('621e36444e64b', 'Class', '621e36444efab'),
('621e36444e64b', 'ClassName', '621e36444efac'),
('621e36444e64b', 'class()', '621e36444efad'),
('621e36444e64b', 'class', '621e36444efae'),
('621e364461373', 'HashMap', '621e3644616e7'),
('621e364461373', 'List', '621e3644616e9'),
('621e364461373', 'Set', '621e3644616ea'),
('621e364461373', 'Collection', '621e3644616eb'),
('621e364462788', 'ArrayList', '621e364462ad7'),
('621e364462788', 'LinkedList', '621e364462ad8'),
('621e364462788', 'AbstractList', '621e364462ad9'),
('621e364462788', 'None', '621e364462ada'),
('621e39f225e3d', 'Yalnız I', '621e39f226f5f'),
('621e39f225e3d', 'I ve III', '621e39f226f63'),
('621e39f225e3d', ' II ve III', '621e39f226f64'),
('621e39f225e3d', 'I, II ve III', '621e39f226f65'),
('621e39f22855b', 'İnkılâpları gerçekleştirmek', '621e39f2288a0'),
('621e39f22855b', 'Çağdaşlaşmak', '621e39f2288a4'),
('621e39f22855b', 'Tek parti rejimi kurmak', '621e39f2288a5'),
('621e39f22855b', 'Yenilikleri halka benimsetmek', '621e39f2288a6'),
('621e39f229d3f', 'İstanbul Hükûmeti’nin İtilâf devletleriyle iş birliği yapması', '621e39f22a068'),
('621e39f229d3f', 'İstanbul Hükûmeti’nin Lozan görüşmelerine çağırılmas', '621e39f22a06a'),
('621e39f229d3f', 'Sadrazam Tevfik Paşa’nın TBMM başkanlığına Lozan görüşmeleriyle ilgili olarak telgraf çekmesi', '621e39f22a06b'),
('621e39f229d3f', 'Saltanat yanlılarının Meclis’te çoğunluğu sağlamaları', '621e39f22a06c'),
('621e39f22b200', 'Musul', '621e39f22b55c'),
('621e39f22b200', 'Yabancı okullar', '621e39f22b560'),
('621e39f22b200', 'Dış borçlar', '621e39f22b561'),
('621e39f22b200', 'Mübadele', '621e39f22b562'),
('621e39f22cb29', 'Takvim ve saat sisteminin değiştirilmesi', '621e39f22ce58'),
('621e39f22cb29', 'Medenî Kanun’un kabûlü', '621e39f22ce59'),
('621e39f22cb29', 'Türk Tarih Kurumu’nun açılması', '621e39f22ce5a'),
('621e39f22cb29', 'Türk harflerinin kabûlü', '621e39f22ce5b'),
('621f3bbb92e67', 'Hayatımızı kolaylaştırmak', '621f3bbb93328'),
('621f3bbb92e67', 'Hızlı haberleşmeyi sağlamak', '621f3bbb9332c'),
('621f3bbb92e67', 'Bilgiye kolay ulaşmayı sağlamak', '621f3bbb9332d'),
('621f3bbb92e67', 'Maliyeti artırmak', '621f3bbb9332e'),
('621f3bbba5926', 'Asayiş Dairesi Başkanlığı', '621f3bbba5cad'),
('621f3bbba5926', 'Haberleşme Daire Başkanlığı', '621f3bbba5caf'),
('621f3bbba5926', 'Sosyal Hizmetler Daire Başkanlığı', '621f3bbba5cb0'),
('621f3bbba5926', 'Bilişim Suçlarıyla Mücadele Daire Başkanlığı', '621f3bbba5cb1'),
('621f3bbbb8699', 'Windows 8', '621f3bbbc9fd5'),
('621f3bbbb8699', 'Office Word', '621f3bbbc9fd9'),
('621f3bbbb8699', 'İnternet Explorer   ', '621f3bbbc9fda'),
('621f3bbbb8699', 'Trojan', '621f3bbbc9fdb'),
('621f3bbbcb6f6', ' İnternet Explorer   ', '621f3bbbcbfd9'),
('621f3bbbcb6f6', 'Paint', '621f3bbbcbfdd'),
('621f3bbbcb6f6', ' Chromec', '621f3bbbcbfde'),
('621f3bbbcb6f6', 'Edge', '621f3bbbcbfdf'),
('621f3bbbcd104', 'Winamp', '621f3bbbcd4ca'),
('621f3bbbcd104', 'Kaspersky', '621f3bbbcd4cc'),
('621f3bbbcd104', 'Winrar', '621f3bbbcd4cd'),
('621f3bbbcd104', 'Microsoft Excel', '621f3bbbcd4ce'),
('621f3bbbce8bb', 'Windows 7 ', '621f3bbbcefd3'),
('621f3bbbce8bb', 'Media Center', '621f3bbbcefd5'),
('621f3bbbce8bb', 'Winrar  ', '621f3bbbcefd6'),
('621f3bbbce8bb', 'Google', '621f3bbbcefd7');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('621e33d1a0193', '621e364439510', 'Aşağıdakilerden hangisi tip günveliğini garanti eder?', 4, 1),
('621e33d1a0193', '621e36443bfdc', 'Java’da dizilerin index numarası kaçtan başlar?', 4, 2),
('621e33d1a0193', '621e36444e64b', 'Hangi anahtar kelime ile sınıf oluşturulur?', 4, 3),
('621e33d1a0193', '621e364461373', 'Aşağıdakilerden hangisinde HashSet dahili olarak kullanılır?', 4, 4),
('621e33d1a0193', '621e364462788', 'Vector aşağıdakilerden hangisinin genişletmesidir?', 4, 5),
('621e381f923b1', '621e39f225e3d', '1789’da Fransız İhtilali sonucunda ortaya çıkan milliyetçilik fikri, içerisinde farklı ulusları barındıran imparatorluklarda \r\nbirtakım sıkıntıların baş göstermesine neden olmuştur. Bazı Avrupalı devletlerin kışkırtmasıyla Osmanlı Devleti içerisinde bulunan Sırp, Rum, Bulgar gibi uluslar Osmanlıya karşı ayaklanmışlar ve bağımsızlıklarını ilan etmişlerdir. Buna \r\nkarşılık milliyetçilik fikri, Türk ulusunu da etkilemiş ve Kurtuluş Savaşı’nın kazanılmasında önemli bir rol oynamıştır.\r\nYukarıdaki bilgiler dikkate alındığında;\r\nI. Osmanlı Devleti’nin çok uluslu bir yapıya sahip olduğu,\r\nII. Avrupalı devletlerin Osmanlı Devleti’ne karşı dostça tavırlar sergilediği,\r\nIII. Milliyetçilik fikrinin Millî Mücadele’nin başarıya ulaşmasında etkili olduğu,\r\nyargılarından hangilerine ulaşılabilir', 4, 1),
('621e381f923b1', '621e39f22855b', 'Aşağıdakilerden hangisi, Halk Fırkası’nın kuruluş amaçlarından değildir?', 4, 2),
('621e381f923b1', '621e39f229d3f', 'Aşağıdakilerden hangisi, saltanatın kaldırılmasının sebeplerinden olamaz?', 4, 3),
('621e381f923b1', '621e39f22b200', 'Lozan Antlaşması’nda çözüme kavuşturulan, ancak daha sonra yeniden gündemi işgâl eden ve Türk Hükûmeti’nin iç sorun olarak değerlendirip yabancı devletlerle görüşmeyi reddettiği olay, aşağıdakilerden hangisidir?', 4, 4),
('621e381f923b1', '621e39f22cb29', 'Aşağıdakilerden hangisi, Türk Devleti’nin uluslar arası ekonomik ilişkilerini düzenleyen bir yeniliktir?', 4, 5),
('621f3ad373d22', '621f3bbb92e67', 'Hangisi Bilgi Teknolojilerinin faydalarından değildir?', 4, 1),
('621f3ad373d22', '621f3bbba5926', 'Bilişim teknolojileri kullanılarak işlenen suçların soruşturulması ve dijital delillerin incelenmesi için Emniyet Genel Müdürlüğünün hangi birimi kurulmuştur?', 4, 2),
('621f3ad373d22', '621f3bbbb8699', 'Aşağıdakilerden hangisi zararlı yazılımlardandır?', 4, 3),
('621f3ad373d22', '621f3bbbcb6f6', 'Aşağıdakilerden hangisi internet tarayıcı programı değildir', 4, 4),
('621f3ad373d22', '621f3bbbcd104', 'Aşağıdakilerden hangisi dosya ve klasörleri sıkıştırmak için kullanılır.', 4, 5),
('621f3ad373d22', '621f3bbbce8bb', 'Aşağıdakilerden hangisi bir işletim sistemidir? ', 4, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('621e33d1a0193', 'Java Testi', 20, 0, 5, 5, '5 dakika süreniz vardır.', 'javatesti', '2022-03-01 14:55:13'),
('621e381f923b1', 'Tarih Sınavı', 20, 0, 5, 4, '5 soru 4 dakikanız vardır.', 'tarihsınavı', '2022-03-01 15:13:35'),
('621f3ad373d22', 'Bilişim Sınavı', 16, 0, 6, 8, '6 soru 8 dakika vardır başarılar', 'bilisim', '2022-03-02 09:37:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `skor` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `rank`
--

INSERT INTO `rank` (`email`, `skor`, `time`) VALUES
('aysey@gmail.com', 160, '2022-03-02 09:43:45'),
('mehmets@gmail.com', 100, '2022-03-01 15:22:50'),
('samumud07@outlook.com', 80, '2022-03-01 15:39:56'),
('yunuss@gmail.com', 104, '2022-03-02 09:55:06');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `okul` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`name`, `gender`, `okul`, `email`, `mob`, `password`) VALUES
('Ayşe Yılmaz', 'F', 'İTÜ', 'aysey@gmail.com', 5734568, '01cfcd4f6b8770febfb40cb906715822'),
('Mehmet Sarı', 'M', 'SDÜ', 'mehmets@gmail.com', 5789563, '827ccb0eea8a706c4c34a16891f84e7b'),
('Ali Genç', 'M', 'SDÜ', 'samumud07@outlook.com', 5064789, 'fcea920f7412b5da7be0cf42b8c93759'),
('Yunus Selvi', 'M', 'MAKÜ', 'yunuss@gmail.com', 5412565841, '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `email` (`email`,`password`);

--
-- Tablo için indeksler `rank`
--
ALTER TABLE `rank`
  ADD UNIQUE KEY `email` (`email`,`skor`,`time`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
