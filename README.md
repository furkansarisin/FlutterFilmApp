# Movie Recommendation App

Bu uygulama, kullanıcılara film önerilerinde bulunmak için geliştirilmiş bir mobil uygulamadır. Flutter kullanılarak geliştirilmiştir ve `Provider` paketi ile state management yapılmaktadır.

## Özellikler

- Film listesi görüntüleme
- Film detaylarını görüntüleme
- Light ve Dark tema desteği
- REST API üzerinden film verilerini çekme
- Animasyonlu geçişler

## Kurulum

1. [Flutter](https://flutter.dev/docs/get-started/install) SDK'sını kurun.
2. Bu projeyi bilgisayarınıza klonlayın:
    ```sh
    git clone https://github.com/furkansarisin/Film-Tavsiye-Uygulamas-.git
    ```
3. Proje dizinine gidin:
    ```sh
    cd Film-Tavsiye-Uygulamas-
    ```
4. Gerekli paketleri indirin:
    ```sh
    flutter pub get
    ```
5. Uygulamayı çalıştırın:
    ```sh
    flutter run
    ```

## Kullanılan Paketler

- `provider`: State management için kullanıldı.
- `http`: API çağrıları için kullanıldı.

## Proje Yapısı

- **lib**
  - **models**
    - `movie.dart`: Film modelini tanımlar.
  - **providers**
    - `movie_provider.dart`: Filmlerle ilgili verileri yönetir.
  - **screens**
    - `home_page.dart`: Ana sayfa.
    - `movie_list_screen.dart`: Film listesi sayfası.
    - `movie_detail_page.dart`: Film detayları sayfası.
  - **main.dart**: Uygulamanın giriş noktası.

## API

Filmler [Mocki.io](https://mocki.io) üzerinden alınmaktadır. Kullanılan API endpoint: `https://mocki.io/v1/5f3633cc-5116-4b11-89d7-d21f17ce4735`.

## Ekran Görüntüleri

### Ana Sayfa
![Ana Sayfa](screenshots/home_page.png)

### Film Detayları
![Film Detayları](screenshots/movie_detail_page.png)

## Katkıda Bulunma

Katkıda bulunmak isterseniz, lütfen bir pull request gönderin veya bir issue açın.


