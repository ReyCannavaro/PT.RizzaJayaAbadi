SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `card_layanan` (
  `id` int(99) NOT NULL,
  `kota_berangkat` varchar(99) NOT NULL,
  `kota_tujuan` varchar(99) NOT NULL,
  `content` varchar(255) NOT NULL,
  `link_wa` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `card_layanan` (`id`, `kota_berangkat`, `kota_tujuan`, `content`, `link_wa`) VALUES
(1, 'Surabaya', 'Banyuwangi', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 'https://wa.me/6285203950777'),
(2, 'Banyuwangi', 'Surabaya', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 'https://wa.me/6281234740000'),
(3, 'Banyuwangi', 'Malang', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 'https://wa.me/6281234740000'),
(4, 'Malang', 'Banyuwangi', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 'https://wa.me/6281234629368');

CREATE TABLE `kirim_pesan` (
  `id` int(99) NOT NULL,
  `nama` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `nomor_telp` varchar(255) NOT NULL,
  `pesan` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `kirim_pesan` (`id`, `nama`, `email`, `nomor_telp`, `pesan`) VALUES
(1, 'Fadhil', 'fayyadhfadhil@gmail.com', '+6281217724973', 'Websitenya bagus, saya sangat menyukainya. Saya ');

CREATE TABLE `kontak_kami` (
  `id` int(99) NOT NULL,
  `title` varchar(99) NOT NULL,
  `isi` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `kontak_kami` (`id`, `title`, `isi`) VALUES
(1, 'Alamat', 'Dusun Krajan, Sraten, Kec. Cluring, Kab. Banyuwangi, Jawa Timur 68482'),
(2, 'Nomor Handphone', '+6281234740000'),
(3, 'E-mail', 'nurlatif102@gmail.com'),
(4, 'Jadwal Kerja', 'Setiap Hari\r\n08.30 - 16.00');

CREATE TABLE `media_sosial` (
  `id` int(99) NOT NULL,
  `media` varchar(99) NOT NULL,
  `username` varchar(99) NOT NULL,
  `link` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `media_sosial` (`id`, `media`, `username`, `link`) VALUES
(1, 'tiktok', 'jayaabaditravel', 'https://www.tiktok.com/@jayaabaditravel'),
(2, 'Instagram', 'jayaabaditravel', 'https://www.instagram.com/jayaabaditravel'),
(3, 'Facebook', 'jayaabaditravel', 'https://www.facebook.com/share/1CbTUiMue1/'),
(4, 'WhatsApp', '+6281234740000', 'https://wa.me/6281234740000');

CREATE TABLE `rute_layanan` (
  `id` int(99) NOT NULL,
  `kota_berangkat` varchar(99) NOT NULL,
  `kota_tujuan` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `rute_layanan` (`id`, `kota_berangkat`, `kota_tujuan`) VALUES
(1, 'Surabaya', 'Banyuwangi'),
(2, 'Banyuwangi', 'Surabaya'),
(3, 'Banyuwangi', 'Malang'),
(4, 'Malang', 'Banyuwangi');

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(2, 'fayyadhkyud', '12345678', 'user'),
(3, 'admin', '12345678', 'admin');

ALTER TABLE `card_layanan`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `kirim_pesan`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `kontak_kami`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `media_sosial`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `rute_layanan`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `card_layanan`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `kirim_pesan`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `kontak_kami`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `media_sosial`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `rute_layanan`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;