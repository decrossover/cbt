-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.4.13-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win64
-- HeidiSQL Versi:               11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- membuang struktur untuk table el-candy.absen_siswa
CREATE TABLE IF NOT EXISTS `absen_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `absen` varchar(2) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `foto` varchar(255) NOT NULL,
  `tgl` datetime NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel el-candy.absen_siswa: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `absen_siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `absen_siswa` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.agenda
CREATE TABLE IF NOT EXISTS `agenda` (
  `id_agenda` int(11) NOT NULL AUTO_INCREMENT,
  `id_kursus` int(11) NOT NULL DEFAULT 0,
  `id_mapel` varchar(50) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `kegiatan` mediumtext DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL,
  `siswa_hadir` varchar(50) DEFAULT NULL,
  `siswa_absen` varchar(50) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel el-candy.agenda: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.banksoal
CREATE TABLE IF NOT EXISTS `banksoal` (
  `id_banksoal` int(11) NOT NULL AUTO_INCREMENT,
  `nama_banksoal` varchar(50) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `guru` int(11) NOT NULL,
  `jml_pg` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL DEFAULT 0,
  `tampil_pg` int(5) DEFAULT NULL,
  `tampil_esai` int(5) NOT NULL DEFAULT 0,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL DEFAULT 0,
  `level` varchar(100) NOT NULL,
  `opsi` int(1) DEFAULT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(2) DEFAULT NULL,
  `kkm` int(3) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_banksoal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.banksoal: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `banksoal` DISABLE KEYS */;
/*!40000 ALTER TABLE `banksoal` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.berita
CREATE TABLE IF NOT EXISTS `berita` (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text DEFAULT NULL,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tgl_ujian` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.berita: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `berita` DISABLE KEYS */;
/*!40000 ALTER TABLE `berita` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.file
CREATE TABLE IF NOT EXISTS `file` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_banksoal` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status` int(1) DEFAULT 0,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=304 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel el-candy.file: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.guru
CREATE TABLE IF NOT EXISTS `guru` (
  `id_guru` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(20) NOT NULL,
  `nuptk` varchar(20) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `no_kk` varchar(20) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `tempat` varchar(30) NOT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `nama_ibu` varchar(128) NOT NULL,
  `foto` varchar(128) NOT NULL,
  `jenkel` varchar(1) NOT NULL,
  `agama` varchar(30) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(4) NOT NULL,
  `rw` varchar(4) NOT NULL,
  `dusun` varchar(128) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kodepos` varchar(10) NOT NULL,
  `npwp` varchar(20) NOT NULL,
  `nama_npwp` varchar(30) NOT NULL,
  `status_kawin` varchar(20) NOT NULL,
  `nama_pasangan` varchar(100) NOT NULL,
  `pekerjaan_pasangan` varchar(100) NOT NULL,
  `status_pegawai` varchar(30) NOT NULL,
  `nigk` varchar(30) NOT NULL,
  `jenis_ptk` varchar(50) NOT NULL,
  `sk_pengangkatan` varchar(30) NOT NULL,
  `tmt_pengangkatan` date DEFAULT NULL,
  `lembaga_pengangkat` varchar(20) NOT NULL,
  `sumber_gaji` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `walas` varchar(50) NOT NULL,
  `mapel` varchar(100) NOT NULL,
  `chatid` varchar(50) NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.guru: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `guru` DISABLE KEYS */;
/*!40000 ALTER TABLE `guru` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.jawaban
CREATE TABLE IF NOT EXISTS `jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_banksoal` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) NOT NULL DEFAULT 0,
  `ragu` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.jawaban: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `jawaban` DISABLE KEYS */;
/*!40000 ALTER TABLE `jawaban` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.jawaban_tugas
CREATE TABLE IF NOT EXISTS `jawaban_tugas` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) DEFAULT NULL,
  `id_tugas` int(11) DEFAULT NULL,
  `jawaban` longtext DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_dikerjakan` datetime DEFAULT NULL,
  `tgl_update` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nilai` varchar(5) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel el-candy.jawaban_tugas: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `jawaban_tugas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jawaban_tugas` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.jenis
CREATE TABLE IF NOT EXISTS `jenis` (
  `id_jenis` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.jenis: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `jenis` DISABLE KEYS */;
/*!40000 ALTER TABLE `jenis` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.jurusan
CREATE TABLE IF NOT EXISTS `jurusan` (
  `id_jurusan` varchar(10) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `status` int(1) DEFAULT 0,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.jurusan: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `jurusan` DISABLE KEYS */;
/*!40000 ALTER TABLE `jurusan` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.kelas
CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level_kelas` varchar(20) NOT NULL,
  `nama_kelas` varchar(30) NOT NULL,
  `status` int(1) DEFAULT 0,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.kelas: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `kelas` DISABLE KEYS */;
/*!40000 ALTER TABLE `kelas` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.komentar
CREATE TABLE IF NOT EXISTS `komentar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL DEFAULT 0,
  `id_materi` int(11) NOT NULL DEFAULT 0,
  `komentar` text NOT NULL,
  `jenis` tinyint(2) NOT NULL DEFAULT 0,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel el-candy.komentar: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `komentar` DISABLE KEYS */;
/*!40000 ALTER TABLE `komentar` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.komentar_balas
CREATE TABLE IF NOT EXISTS `komentar_balas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_komentar` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `balas` text DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `tgl` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel el-candy.komentar_balas: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `komentar_balas` DISABLE KEYS */;
/*!40000 ALTER TABLE `komentar_balas` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.kursus
CREATE TABLE IF NOT EXISTS `kursus` (
  `id_kursus` int(11) NOT NULL AUTO_INCREMENT,
  `id_guru` int(11) DEFAULT NULL,
  `id_mapel` varchar(30) DEFAULT NULL,
  `kelas` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_kursus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='kursus aktif';

-- Membuang data untuk tabel el-candy.kursus: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `kursus` DISABLE KEYS */;
/*!40000 ALTER TABLE `kursus` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.level
CREATE TABLE IF NOT EXISTS `level` (
  `id_level` varchar(5) NOT NULL,
  `nama_level` varchar(50) NOT NULL,
  `status` int(1) DEFAULT 0,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.level: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `level` DISABLE KEYS */;
/*!40000 ALTER TABLE `level` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.mapel
CREATE TABLE IF NOT EXISTS `mapel` (
  `id_mapel` varchar(30) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `status` int(1) DEFAULT 0,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.mapel: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `mapel` DISABLE KEYS */;
/*!40000 ALTER TABLE `mapel` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.materi
CREATE TABLE IF NOT EXISTS `materi` (
  `id_materi` int(255) NOT NULL AUTO_INCREMENT,
  `id_kursus` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `pertemuan` int(11) NOT NULL,
  `nama_mapel` varchar(255) NOT NULL,
  `kd` varchar(255) NOT NULL,
  `materi` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_buka` datetime NOT NULL,
  `tgl_tutup` datetime NOT NULL,
  `komentar` int(1) NOT NULL,
  `jawab` int(1) NOT NULL,
  `kuis` int(1) NOT NULL,
  PRIMARY KEY (`id_materi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel el-candy.materi: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `materi` DISABLE KEYS */;
/*!40000 ALTER TABLE `materi` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.materi_log
CREATE TABLE IF NOT EXISTS `materi_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `log` varchar(100) NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.materi_log: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `materi_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `materi_log` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.nilai
CREATE TABLE IF NOT EXISTS `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_banksoal` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `id_jenis` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(10) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(1) DEFAULT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.nilai: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.nilai_quiz
CREATE TABLE IF NOT EXISTS `nilai_quiz` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_materi` int(11) DEFAULT NULL,
  `nilai` float DEFAULT NULL,
  `benar` int(2) DEFAULT NULL,
  `salah` int(2) DEFAULT NULL,
  `jawaban` text DEFAULT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel el-candy.nilai_quiz: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `nilai_quiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `nilai_quiz` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.pengumuman
CREATE TABLE IF NOT EXISTS `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.pengumuman: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `pengumuman` DISABLE KEYS */;
INSERT INTO `pengumuman` (`id_pengumuman`, `type`, `judul`, `user`, `text`, `date`) VALUES
	(1, 'siswa', 'INFO PEMBELAJARAN DARING', 0, '<p>SELAMA MASA PANDEMI PEMBELAJARAN', '2020-07-19 06:48:37');
/*!40000 ALTER TABLE `pengumuman` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.ruang
CREATE TABLE IF NOT EXISTS `ruang` (
  `id_ruang` varchar(10) NOT NULL,
  `nama_ruang` varchar(30) NOT NULL,
  `status` int(1) DEFAULT 0,
  PRIMARY KEY (`id_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.ruang: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `ruang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ruang` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.server
CREATE TABLE IF NOT EXISTS `server` (
  `id_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.server: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
/*!40000 ALTER TABLE `server` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.sesi
CREATE TABLE IF NOT EXISTS `sesi` (
  `id_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.sesi: ~1 rows (lebih kurang)
/*!40000 ALTER TABLE `sesi` DISABLE KEYS */;
INSERT INTO `sesi` (`id_sesi`, `nama_sesi`, `status`) VALUES
	('1', '1', 1);
/*!40000 ALTER TABLE `sesi` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.session
CREATE TABLE IF NOT EXISTS `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.session: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
/*!40000 ALTER TABLE `session` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.setting
CREATE TABLE IF NOT EXISTS `setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `nama_sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `provinsi` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `header` text DEFAULT NULL,
  `header_kartu` text DEFAULT NULL,
  `nama_ujian` text DEFAULT NULL,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `url_host` varchar(50) DEFAULT NULL,
  `token_api` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `db_versi` varchar(10) DEFAULT NULL,
  `bot_token` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.setting: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`id_setting`, `aplikasi`, `kode_sekolah`, `nama_sekolah`, `jenjang`, `kepsek`, `nip`, `alamat`, `kecamatan`, `kota`, `provinsi`, `telp`, `fax`, `web`, `email`, `logo`, `header`, `header_kartu`, `nama_ujian`, `versi`, `ip_server`, `waktu`, `server`, `id_server`, `url_host`, `token_api`, `sekolah_id`, `npsn`, `db_versi`, `bot_token`) VALUES
	(1, 'CANDY SCHOOL', 'K0248', 'SMK HS AGUNG', 'SMP', 'Subur Taufiq, SE', '-', 'jalan baru\r\n', 'Karang Bahagia                                    ', 'Bekasi', 'JAWA BARAT', '021 123 123 123', '021 95878050', 'candycbt.sch.id', 'candycbt@gmail.com', 'logo1.png', 'logo21.png', 'KARTU PESERTA', 'Penilaian Tengah Semester', '2.5', 'http://192.168.0.200/candycbt', 'Asia/Jakarta', 'pusat', 'SR01', 'ujian.smkhsagung.sch.id', 'VKLuYN7LwjjwuU', '8cce47df-aae7-4274-83cb-5af3093eab56', '69787351', '2.8.1', '967384972:AAH8aCl83ps879P-EU7LVG4dc4KOXwC9WX8');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.sinkron
CREATE TABLE IF NOT EXISTS `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int(11) DEFAULT NULL,
  PRIMARY KEY (`nama_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel el-candy.sinkron: ~4 rows (lebih kurang)
/*!40000 ALTER TABLE `sinkron` DISABLE KEYS */;
INSERT INTO `sinkron` (`nama_data`, `data`, `jumlah`, `tanggal`, `status_sinkron`) VALUES
	('DATA1', 'siswa', '629', '2020-04-12 07:53:57', 1),
	('DATA2', 'bank soal', '33', '2020-04-12 08:02:36', 1),
	('DATA3', 'soal', '880', '2020-04-12 08:02:36', 1),
	('DATA4', 'jadwal', '', '', 0);
/*!40000 ALTER TABLE `sinkron` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.siswa
CREATE TABLE IF NOT EXISTS `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(11) DEFAULT NULL,
  `jurusan` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenkel` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `asal_sekolah` varchar(150) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `desa` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `kode_pos` int(10) DEFAULT NULL,
  `tinggal` varchar(100) DEFAULT NULL,
  `transportasi` varchar(100) DEFAULT NULL,
  `jarak` varchar(100) DEFAULT NULL,
  `waktu` varchar(100) DEFAULT NULL,
  `tinggi` varchar(100) DEFAULT NULL,
  `berat` varchar(100) DEFAULT NULL,
  `anak_ke` varchar(100) DEFAULT NULL,
  `saudara` varchar(100) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` varchar(50) DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nik_ayah` varchar(16) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tgl_lahir_ayah` date DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nik_ibu` varchar(16) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tgl_lahir_ibu` date DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` varchar(50) DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tgl_lahir_wali` date DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `tunggakan` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `online` int(1) DEFAULT 0,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `nama_kip` varchar(200) DEFAULT NULL,
  `no_kip` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.siswa: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `siswa` DISABLE KEYS */;
/*!40000 ALTER TABLE `siswa` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.soal
CREATE TABLE IF NOT EXISTS `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_banksoal` int(11) NOT NULL,
  `id_materi` int(11) NOT NULL,
  `nomor` int(5) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `pilA` longtext DEFAULT NULL,
  `pilB` longtext DEFAULT NULL,
  `pilC` longtext DEFAULT NULL,
  `pilD` longtext DEFAULT NULL,
  `pilE` longtext DEFAULT NULL,
  `kunci` varchar(1) DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `file1` mediumtext DEFAULT NULL,
  `fileA` mediumtext DEFAULT NULL,
  `fileB` mediumtext DEFAULT NULL,
  `fileC` mediumtext DEFAULT NULL,
  `fileD` mediumtext DEFAULT NULL,
  `fileE` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel el-candy.soal: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `soal` DISABLE KEYS */;
/*!40000 ALTER TABLE `soal` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.soal_opsi
CREATE TABLE IF NOT EXISTS `soal_opsi` (
  `id_opsi` int(11) NOT NULL AUTO_INCREMENT,
  `id_soal` int(11) DEFAULT NULL,
  `opsi` text DEFAULT NULL,
  `benar` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_opsi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel el-candy.soal_opsi: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `soal_opsi` DISABLE KEYS */;
/*!40000 ALTER TABLE `soal_opsi` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.token
CREATE TABLE IF NOT EXISTS `token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.token: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` (`id_token`, `token`, `time`, `masa_berlaku`) VALUES
	(1, 'VGGPDF', '2020-04-04 23:29:17', '00:15:00');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.tugas
CREATE TABLE IF NOT EXISTS `tugas` (
  `id_tugas` int(11) NOT NULL AUTO_INCREMENT,
  `id_kursus` int(11) NOT NULL,
  `id_guru` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tugas` mediumtext NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `tgl_buka` datetime NOT NULL,
  `tgl_tutup` datetime NOT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `komentar` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_tugas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel el-candy.tugas: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `tugas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tugas` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.tugas_jawab
CREATE TABLE IF NOT EXISTS `tugas_jawab` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tugas` int(11) DEFAULT NULL,
  `id_materi` int(11) DEFAULT NULL,
  `id_siswa` int(11) DEFAULT NULL,
  `jawaban` text DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  `tgl` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Membuang data untuk tabel el-candy.tugas_jawab: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `tugas_jawab` DISABLE KEYS */;
/*!40000 ALTER TABLE `tugas_jawab` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.ujian
CREATE TABLE IF NOT EXISTS `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `id_jurusan` varchar(10) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_banksoal` int(5) NOT NULL,
  `id_jenis` varchar(10) DEFAULT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int(1) NOT NULL,
  `acakopsi` int(1) DEFAULT NULL,
  `token` int(1) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `hasil` int(1) DEFAULT NULL,
  `reset` int(1) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel el-candy.ujian: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `ujian` DISABLE KEYS */;
/*!40000 ALTER TABLE `ujian` ENABLE KEYS */;

-- membuang struktur untuk table el-candy.user
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `nama_user` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `is_active` int(1) DEFAULT 0,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `bidang_studi` varchar(50) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(30) DEFAULT NULL,
  `ahli_lab` varchar(10) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_suami` varchar(50) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `ptk_id` varchar(50) DEFAULT NULL,
  `password2` text DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;

-- Membuang data untuk tabel el-candy.user: ~0 rows (lebih kurang)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id_user`, `nip`, `jabatan`, `nama_user`, `username`, `password`, `level`, `is_active`, `no_ktp`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `agama`, `no_hp`, `email`, `alamat_jalan`, `rt_rw`, `dusun`, `kelurahan`, `kecamatan`, `kode_pos`, `nuptk`, `bidang_studi`, `jenis_ptk`, `tgs_tambahan`, `status_pegawai`, `status_aktif`, `status_nikah`, `sumber_gaji`, `ahli_lab`, `nama_ibu`, `nama_suami`, `nik_suami`, `pekerjaan`, `tmt`, `keahlian_isyarat`, `kewarganegaraan`, `npwp`, `foto`, `ptk_id`, `password2`, `ruang`) VALUES
	(280, NULL, NULL, 'CANDY SCHOOL', 'admin', '$2y$10$bmdPNph6A/2Hze30oN7BdO0vugAEGPyFBnMw.513fEQHglrg/dzTa', 'bendahara', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
