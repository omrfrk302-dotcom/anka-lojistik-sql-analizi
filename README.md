# Anka Lojistik — SQL Personel ve Maaş Analizi

**Tür:** Kurgusal eğitim / portföy projesi  
**Araçlar:** SQLite · DBeaver · SQL  
**Veri:** 48 kurgusal personel kaydı, 6 departman, 5 şehir  
**Kapsam:** Derslerde tamamlanan **5 uygulama + 3 final raporu = 8 SQL analizi**  
**SQL sorgularının yazarı:** Proje sahibi  
**Geri bildirim ve son sürüm kontrolü:** ChatGPT desteğiyle

## Çalışmanın nasıl hazırlandığı

Bu projedeki **sekiz SQL sorgusunun ilk sürümlerini kendim yazdım**. Dersler boyunca sorgularımı DBeaver'da çalıştırdım, aldığım geri bildirimlerle hatalarımı tespit edip öğrendim. Bu depoda, üzerinde çalıştığım sorguların son ve düzeltilmiş hâlleri bulunuyor. **Sorgu yazma emeği bana aittir**; eğitim senaryoları ve kurgusal veri seti ChatGPT desteğiyle hazırlanmıştır.

## Projenin amacı

Kurgusal bir lojistik şirketinin personel kayıtlarını inceleyip insan kaynakları ve finans yöneticilerinin karar sorularına SQL sorguları aracılığıyla yanıt vermek. Filtreleme, gruplama, koşullu toplulaştırma, sıralama ve ilk N kayıt analizi uygulanmıştır.

## İçerik: sekiz sorgunun tamamı

| No | Rapor | İş sorusu | Sonuç CSV |
|---|---|---|---|
| 1 | Görev 1 — Ankara’da aktif ve 50.000 TL üstü maaş alan ilk 5 personel | `01_ankara_yuksek_maas.csv` | [`sonuclar/01_ankara_yuksek_maas.csv`](sonuclar/01_ankara_yuksek_maas.csv) |
| 2 | Görev 2 — Aktif personelin departman bazında maaş toplamı ve sayısı | `02_departman_maliyet.csv` | [`sonuclar/02_departman_maliyet.csv`](sonuclar/02_departman_maliyet.csv) |
| 3 | Görev 3 — En az 3 aktif çalışanı olan şehirlerin maaş ortalaması | `03_sehir_personel_ortalama.csv` | [`sonuclar/03_sehir_personel_ortalama.csv`](sonuclar/03_sehir_personel_ortalama.csv) |
| 4 | Görev 4 — Aktif maaş toplamı en az 200.000 TL olan departmanlar | `04_departman_butce_esigi.csv` | [`sonuclar/04_departman_butce_esigi.csv`](sonuclar/04_departman_butce_esigi.csv) |
| 5 | Görev 5 — Ankara/İstanbul’da 60.000 TL ve üstü aktif personelden ilk 5 | `05_ankara_istanbul_ust_maas.csv` | [`sonuclar/05_ankara_istanbul_ust_maas.csv`](sonuclar/05_ankara_istanbul_ust_maas.csv) |
| 6 | Final 1 — Şirket genelinde aktif personel sayısı ve maaş istatistikleri | `06_final_sirket_ozeti.csv` | [`sonuclar/06_final_sirket_ozeti.csv`](sonuclar/06_final_sirket_ozeti.csv) |
| 7 | Final 2 — En az 3 aktif personeli olan departmanların maliyetleri | `07_final_departman_analizi.csv` | [`sonuclar/07_final_departman_analizi.csv`](sonuclar/07_final_departman_analizi.csv) |
| 8 | Final 3 — Aktif maaş toplamı 300.000 TL’yi aşan şehirler | `08_final_sehir_analizi.csv` | [`sonuclar/08_final_sehir_analizi.csv`](sonuclar/08_final_sehir_analizi.csv) |

Tamamı **[`sorgular/analizler.sql`](sorgular/analizler.sql)** dosyasında sırayla yer alır. İlk beş sorgu derslerde çözülen uygulamalar, sonraki üç sorgu final raporlarıdır. Sorgular proje sahibinin çalışmalarıdır; burada eğitim sırasında yapılan düzeltmelerin ardından oluşan son sürümler yer almaktadır.

## Veri tablosu

`anka_calisanlar` alanları: `id`, `ad_soyad`, `departman`, `pozisyon`, `sehir`, `maas`, `ise_giris_tarihi`, `aktif`.

- `aktif = 1`: aktif çalışan; `aktif = 0`: ayrılmış çalışan.
- `maas`: TL cinsinden aylık maaş tutarı; işveren toplam maliyeti (SGK, yan hak vb.) değildir.
- Bütün şirket ve çalışan verileri **kurgusaldır**; gerçek iş tecrübesi veya gerçek şirket verisi olarak sunulmamalıdır.

## Özet sonuçlar

- Toplam personel kaydı: **48**
- Aktif çalışan sayısı: **42**
- Aktif çalışanların aylık maaş toplamı: **2.345.000 TL**
- Aktif çalışanların ortalama aylık maaşı: **55.833,33 TL**
- En yüksek toplam departman maaş gideri: **Bilgi Teknolojileri, 495.000 TL**
- En yüksek aktif personel sayısı: **Operasyon, 9 kişi**
- 300.000 TL üstü şehir aylık maaş toplamları: **Ankara 1.072.000 TL**, **İstanbul 631.000 TL**

## Kurulum ve çalıştırma

1. DBeaver'da SQLite bağlantısı açın.
2. `veri/anka_calisanlar.sql` dosyasının tümünü **Execute SQL Script** ile çalıştırın.
3. `SELECT COUNT(*) FROM anka_calisanlar;` sorgusu **48** dönmelidir.
4. `sorgular/analizler.sql` dosyasını açın. İncelemek istediğiniz raporun SQL kısmını seçip çalıştırın.
5. Çıktıyı `sonuclar/` klasöründeki ilgili CSV dosyasıyla karşılaştırın.

**Not:** Veri betiği `INSERT OR IGNORE` kullanır; mevcut kayıtları tekrar eklemez. Kayıtlar daha önce değiştirilmişse rapor sonuçları farklı olabilir.

## Öğrenilen SQL yetkinlikleri

`SELECT`, `FROM`, `WHERE`, `AND`, `OR`, `COUNT`, `SUM`, `AVG`, `AS`, `GROUP BY`, `HAVING`, `ORDER BY`, `ASC`, `DESC`, `LIMIT`; eşik koşulları (`>`, `>=`) ve toplu rapor yorumlama.

## Klasör yapısı

```text
Anka_Lojistik_SQL_Portfoy_TAM/
├── README.md
├── veri/
│   └── anka_calisanlar.sql
├── sorgular/
│   └── analizler.sql      # 5 uygulama + 3 final = 8 sorgu
└── sonuclar/
    ├── 01_ankara_yuksek_maas.csv
    ├── 02_departman_maliyet.csv
    ├── 03_sehir_personel_ortalama.csv
    ├── 04_departman_butce_esigi.csv
    ├── 05_ankara_istanbul_ust_maas.csv
    ├── 06_final_sirket_ozeti.csv
    ├── 07_final_departman_analizi.csv
    └── 08_final_sehir_analizi.csv
```

## Geliştirme adımları

Bu portföy çalışması daha sonra SQL `JOIN` ile çok tablolı analiz, Excel/PivotTable ve gösterge paneli çalışmalarıyla genişletilebilir.
