# Kontrol Sistemleri — Deney 1

**Kontrol Sistemleri** dersi kapsamında hazırlanan 1. deneyin MATLAB çözümleri. Deneyde MATLAB'ın temel kullanımı, polinomların ve transfer fonksiyonlarının tanımlanması ile sistemlerin dürtü, basamak ve keyfi girişlere verdiği zaman yanıtlarının incelenmesi ele alınmaktadır.

## Deneyin Amacı

- MATLAB'da vektör ve matris oluşturmayı öğrenmek
- Polinomları katsayı vektörleriyle ifade etmek
- `tf` komutu ile transfer fonksiyonu modelleri oluşturmak
- `impulse`, `step` ve `lsim` komutlarıyla sistem yanıtlarını elde etmek ve yorumlamak

## Gereksinimler

- MATLAB (R2016b veya üzeri önerilir)
- **Control System Toolbox** (`tf`, `impulse`, `step`, `lsim` komutları için)

## Dosya Yapısı

### Föy Uygulamaları

| Dosya | İçerik |
|---|---|
| `Foy_1_Vektor_Matris.m` | Satır/sütun vektörü ve matris tanımlama |
| `Foy_2_Polinom_TransferFonksiyon.m` | Polinom tanıtma ve `tf` ile transfer fonksiyonu oluşturma |
| `Foy_3_SistemYaniti.m` | Örnek bir sistemin dürtü, basamak ve sinüzoidal giriş yanıtları |

### Sorular

| Dosya | İçerik |
|---|---|
| `Soru1_Polinomlar.m` | P1(s)–P4(s) polinomlarının katsayı vektörleriyle tanımlanması |
| `Soru2_TransferFonksiyonlari.m` | G1(s)–G5(s) transfer fonksiyonlarının oluşturulması |
| `Soru3_G1_Durtu_Basamak.m` … `Soru3_G5_Durtu_Basamak.m` | Her bir sistemin 15 saniyelik dürtü ve basamak yanıtları |
| `Soru4_Sinuzoidal_Giris.m` | G5(s) sistemine 2 V tepe, 1 Hz sinüzoidal giriş uygulanması |

## İncelenen Transfer Fonksiyonları

| Sistem | Transfer Fonksiyonu |
|---|---|
| G1(s) | −7 / (s + 25) |
| G2(s) | 3s / s² |
| G3(s) | (s² − 1) / (s³ + 8s²) |
| G4(s) | (2s³ + s² + 6) / (s⁵ + 14s² + 5s + 2) |
| G5(s) | (8s + 20) / (s⁴ + 6s³ + 13s² + 12s + 4) |

## Kullanılan Temel Komutlar

```matlab
p   = [1 0 0 2 -4];          % Polinom: s^4 + 2s - 4
G   = tf([1 2], [1 3 2]);    % Transfer fonksiyonu: (s + 2) / (s^2 + 3s + 2)

impulse(G, Tfinal);          % Dürtü yanıtı
step(G, Tfinal);             % Basamak yanıtı
lsim(G, u, t);               % Keyfi giriş u(t) için yanıt
```

## Çalıştırma

1. Depoyu klonlayın:
   ```bash
   git clone https://github.com/beriltatli/kontrol-sistemleri-deney1.git
   ```
2. MATLAB'da klasörü çalışma dizini olarak açın.
3. İstediğiniz betiği çalıştırın, örneğin:
   ```matlab
   Soru3_G5_Durtu_Basamak
   ```

Her betik bağımsızdır; `clc; clear;` ile başladığı için herhangi bir sırada çalıştırılabilir.

