-- ANKA LOJISTIK A.S. | 48 kayitlik KURGUSAL egitim veri seti
-- Tum sorgular SQLite / DBeaver uyumludur.
-- Ilk 5 uygulama ve sonraki 3 final raporu dahil: TOPLAM 8 RAPOR.
-- Bu projedeki 8 SQL sorgusunun ilk surumleri proje sahibi tarafindan yazilmistir.
-- Derslerde alinan geri bildirimlerle sorgular kontrol edilip son halleri bu dosyada toplanmistir.
-- Veri seti ve calisma senaryolari egitim amacli hazirlanmis kurgusal iceriktir.
-- Sorgulari secip tek tek calistirarak sonucunu gorebilirsiniz.

-- 01. Görev 1 — Ankara’da aktif ve 50.000 TL üstü maaş alan ilk 5 personel
SELECT
    ad_soyad,
    departman,
    maas
FROM anka_calisanlar
WHERE sehir = 'Ankara'
  AND aktif = 1
  AND maas > 50000
ORDER BY maas DESC
LIMIT 5;


-- 02. Görev 2 — Aktif personelin departman bazında maaş toplamı ve sayısı
SELECT
    departman,
    COUNT(*) AS personel_sayisi,
    SUM(maas) AS toplam_maas
FROM anka_calisanlar
WHERE aktif = 1
GROUP BY departman
ORDER BY toplam_maas DESC;


-- 03. Görev 3 — En az 3 aktif çalışanı olan şehirlerin maaş ortalaması
SELECT
    sehir,
    COUNT(*) AS personel_sayisi,
    AVG(maas) AS ortalama_maas
FROM anka_calisanlar
WHERE aktif = 1
GROUP BY sehir
HAVING COUNT(*) >= 3
ORDER BY ortalama_maas DESC;


-- 04. Görev 4 — Aktif maaş toplamı en az 200.000 TL olan departmanlar
SELECT
    departman,
    SUM(maas) AS toplam_maas,
    AVG(maas) AS ortalama_maas
FROM anka_calisanlar
WHERE aktif = 1
GROUP BY departman
HAVING SUM(maas) >= 200000
ORDER BY toplam_maas DESC;


-- 05. Görev 5 — Ankara/İstanbul’da 60.000 TL ve üstü aktif personelden ilk 5
SELECT
    ad_soyad,
    sehir,
    departman,
    maas
FROM anka_calisanlar
WHERE (sehir = 'Ankara' OR sehir = 'İstanbul')
  AND aktif = 1
  AND maas >= 60000
ORDER BY maas DESC
LIMIT 5;


-- 06. Final 1 — Şirket genelinde aktif personel sayısı ve maaş istatistikleri
SELECT
    COUNT(*) AS personel_sayisi,
    SUM(maas) AS toplam_maas,
    AVG(maas) AS ortalama_maas
FROM anka_calisanlar
WHERE aktif = 1;


-- 07. Final 2 — En az 3 aktif personeli olan departmanların maliyetleri
SELECT
    departman,
    COUNT(*) AS personel_sayisi,
    SUM(maas) AS toplam_maas,
    AVG(maas) AS ortalama_maas
FROM anka_calisanlar
WHERE aktif = 1
GROUP BY departman
HAVING COUNT(*) >= 3
ORDER BY toplam_maas DESC;


-- 08. Final 3 — Aktif maaş toplamı 300.000 TL’yi aşan şehirler
SELECT
    sehir,
    COUNT(*) AS personel_sayisi,
    SUM(maas) AS toplam_maas
FROM anka_calisanlar
WHERE aktif = 1
GROUP BY sehir
HAVING SUM(maas) > 300000
ORDER BY toplam_maas DESC;

