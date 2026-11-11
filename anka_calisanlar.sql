-- ANKA LOJISTIK A.S. | TAMAMEN KURGUSAL ORNEK SIRKET
-- SQLite / DBeaver egitim veri seti. Tum adlar ve maaslar kurgusaldir.
-- Bu script mevcut personel tablonuza dokunmaz.
-- Tekrar calistirildiginda ayni ID numaralarini yeniden eklemez.

CREATE TABLE IF NOT EXISTS anka_calisanlar (
    id INTEGER PRIMARY KEY,
    ad_soyad TEXT NOT NULL,
    departman TEXT NOT NULL,
    pozisyon TEXT NOT NULL,
    sehir TEXT NOT NULL,
    maas INTEGER NOT NULL,
    ise_giris_tarihi TEXT NOT NULL,
    aktif INTEGER NOT NULL CHECK (aktif IN (0, 1))
);

INSERT OR IGNORE INTO anka_calisanlar
    (id, ad_soyad, departman, pozisyon, sehir, maas, ise_giris_tarihi, aktif)
VALUES
    (1, 'Ayşe Yılmaz', 'Finans', 'Finans Uzmanı', 'Ankara', 56000, '2022-03-15', 1),
    (2, 'Mert Aksoy', 'Finans', 'Muhasebe Uzmanı', 'Ankara', 48000, '2023-07-10', 1),
    (3, 'Selin Demir', 'Finans', 'Finans Müdürü', 'İstanbul', 90000, '2018-02-05', 1),
    (4, 'Emre Şahin', 'Finans', 'Muhasebe Uzmanı', 'İzmir', 45000, '2024-04-19', 1),
    (5, 'Elif Koç', 'Finans', 'Bütçe Analisti', 'Ankara', 62000, '2021-06-03', 1),
    (6, 'Berk Arslan', 'Finans', 'Finans Asistanı', 'Bursa', 34000, '2025-09-22', 1),
    (7, 'Zeynep Kaya', 'Finans', 'Finans Uzmanı', 'Ankara', 53000, '2022-11-14', 0),
    (8, 'Can Yıldız', 'Finans', 'Muhasebe Sorumlusu', 'İstanbul', 59000, '2020-01-20', 1),
    (9, 'Deniz Çelik', 'Satış', 'Satış Temsilcisi', 'Ankara', 42000, '2024-02-12', 1),
    (10, 'Ece Aydın', 'Satış', 'Satış Uzmanı', 'İstanbul', 54000, '2021-10-25', 1),
    (11, 'Burak Özkan', 'Satış', 'Bölge Satış Müdürü', 'İzmir', 82000, '2019-08-08', 1),
    (12, 'İrem Kurt', 'Satış', 'Satış Temsilcisi', 'Ankara', 39000, '2025-05-15', 1),
    (13, 'Kerem Polat', 'Satış', 'Müşteri Yöneticisi', 'Bursa', 58000, '2022-09-01', 1),
    (14, 'Derya Öztürk', 'Satış', 'Satış Uzmanı', 'Ankara', 51000, '2023-01-17', 0),
    (15, 'Onur Güneş', 'Satış', 'Satış Temsilcisi', 'İstanbul', 43000, '2024-07-22', 1),
    (16, 'Sude Kılıç', 'Satış', 'Satış Operasyon Uzmanı', 'Konya', 47000, '2023-12-04', 1),
    (17, 'Ahmet Korkmaz', 'Lojistik', 'Depo Sorumlusu', 'Ankara', 46000, '2020-05-06', 1),
    (18, 'Mehmet Aslan', 'Lojistik', 'Depo Personeli', 'Ankara', 32000, '2025-02-24', 1),
    (19, 'Fatma Çetin', 'Lojistik', 'Sevkiyat Uzmanı', 'İstanbul', 44000, '2023-04-18', 1),
    (20, 'Yusuf Yalçın', 'Lojistik', 'Lojistik Müdürü', 'Ankara', 76000, '2018-11-11', 1),
    (21, 'Melis Ergin', 'Lojistik', 'Planlama Uzmanı', 'Bursa', 52000, '2022-01-31', 1),
    (22, 'Ömer Kaplan', 'Lojistik', 'Depo Personeli', 'Konya', 33000, '2024-10-09', 0),
    (23, 'Aslı Uçar', 'Lojistik', 'Sevkiyat Uzmanı', 'Ankara', 45000, '2022-06-07', 1),
    (24, 'Tuna Bulut', 'Lojistik', 'Depo Personeli', 'İzmir', 35000, '2025-03-12', 1),
    (25, 'Nazlı Yıldırım', 'İnsan Kaynakları', 'İK Uzmanı', 'Ankara', 55000, '2021-03-23', 1),
    (26, 'Oğuz Şimşek', 'İnsan Kaynakları', 'İK Asistanı', 'İstanbul', 38000, '2024-12-01', 1),
    (27, 'Gizem Toprak', 'İnsan Kaynakları', 'İK Müdürü', 'Ankara', 85000, '2017-09-05', 1),
    (28, 'Tolga Keskin', 'İnsan Kaynakları', 'İşe Alım Uzmanı', 'Bursa', 50000, '2023-05-29', 1),
    (29, 'Ceren Taş', 'İnsan Kaynakları', 'Eğitim Uzmanı', 'İzmir', 49000, '2022-08-16', 0),
    (30, 'Eren Karaca', 'İnsan Kaynakları', 'İK Uzmanı', 'Ankara', 52000, '2022-12-12', 1),
    (31, 'Pelin Bozkurt', 'Bilgi Teknolojileri', 'Yazılım Geliştirici', 'Ankara', 78000, '2021-01-11', 1),
    (32, 'Arda Özdemir', 'Bilgi Teknolojileri', 'BT Destek Uzmanı', 'Ankara', 49000, '2024-06-14', 1),
    (33, 'Nehir Yavuz', 'Bilgi Teknolojileri', 'Veri Analisti', 'İstanbul', 69000, '2022-02-22', 1),
    (34, 'Kaan Işık', 'Bilgi Teknolojileri', 'Sistem Yöneticisi', 'Ankara', 74000, '2020-10-30', 1),
    (35, 'Buse Şen', 'Bilgi Teknolojileri', 'BT Müdürü', 'İstanbul', 98000, '2018-07-02', 1),
    (36, 'Yiğit Acar', 'Bilgi Teknolojileri', 'BT Destek Uzmanı', 'Konya', 47000, '2025-01-13', 0),
    (37, 'İlayda Dinç', 'Bilgi Teknolojileri', 'Veri Analisti', 'Ankara', 66000, '2023-03-21', 1),
    (38, 'Umut Ekinci', 'Bilgi Teknolojileri', 'Yazılım Test Uzmanı', 'İzmir', 61000, '2023-08-09', 1),
    (39, 'Hande Sarı', 'Operasyon', 'Operasyon Uzmanı', 'Ankara', 49000, '2022-05-04', 1),
    (40, 'Barış Kılıç', 'Operasyon', 'Operasyon Müdürü', 'İstanbul', 81000, '2019-02-13', 1),
    (41, 'Sinem Erol', 'Operasyon', 'Planlama Sorumlusu', 'Ankara', 57000, '2021-04-28', 1),
    (42, 'Cem Yılmaz', 'Operasyon', 'Operasyon Asistanı', 'Bursa', 36000, '2025-07-07', 1),
    (43, 'Esra Doğan', 'Operasyon', 'Kalite Uzmanı', 'İzmir', 54000, '2022-10-18', 1),
    (44, 'Hakan Ay', 'Operasyon', 'Operasyon Uzmanı', 'Ankara', 50000, '2023-02-09', 0),
    (45, 'Bahar Aksu', 'Operasyon', 'Raporlama Uzmanı', 'Ankara', 61000, '2020-12-02', 1),
    (46, 'Furkan Tekin', 'Operasyon', 'Operasyon Asistanı', 'Konya', 37000, '2024-11-25', 1),
    (47, 'Sibel Yılmaz', 'Operasyon', 'Kalite Uzmanı', 'İstanbul', 55000, '2022-07-19', 1),
    (48, 'Volkan Kılıç', 'Operasyon', 'Operasyon Uzmanı', 'Bursa', 51000, '2021-11-22', 1);

-- VERI KONTROLU: 48 kayit gorunmeli
SELECT COUNT(*) AS toplam_kayit FROM anka_calisanlar;

-- TABLOYU GORUNTULE:
SELECT * FROM anka_calisanlar LIMIT 5;
