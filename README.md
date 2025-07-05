application.properties Yapılandırma Rehberi

Bu dosya, Spring Boot uygulamanızın çalışma zamanındaki davranışlarını kontrol eden anahtar/değer çiftlerini içerir. Veritabanı bağlantısından sunucu portuna kadar birçok ayar buradan yönetilir.

1. Veritabanı Bağlantı Ayarları (spring.datasource.*)

Bu bölüm, uygulamanızın hangi veritabanına, hangi kullanıcı bilgileriyle bağlanacağını belirtir.

spring.datasource.url: Veritabanının adresi, portu ve servis adı.

spring.datasource.username: Veritabanı kullanıcı adı.

spring.datasource.password: Veritabanı şifresi.

spring.datasource.driver-class-name: Kullanılacak JDBC sürücüsü.

2. JPA & Hibernate Ayarları (spring.jpa.*)

Bu bölüm, veritabanı tablolarının nasıl yönetileceğini kontrol eder. En önemli ayarlar ddl-auto ve show-sql'dir.

spring.jpa.properties.hibernate.dialect: Hibernate'in, Java kodunu (Entity sınıflarını) veritabanına özel SQL diline (bu durumda Oracle) nasıl çevireceğini söyler.

spring.jpa.show-sql=true: Hibernate tarafından oluşturulan tüm SQL sorgularını konsolda gösterir. Hata ayıklama için çok kullanışlıdır.

spring.jpa.properties.hibernate.format_sql=true: Konsolda gösterilen SQL sorgularını daha okunaklı olacak şekilde formatlar.

En Önemli Ayar: spring.jpa.hibernate.ddl-auto

Bu ayar, uygulama başladığında veritabanı şemasına (tablolara) ne olacağını belirler.

create: Uygulama her başladığında, mevcut tüm tabloları siler ve sıfırdan yeniden oluşturur. Tüm verileriniz kaybolur. Geliştirme aşamasının en başında kullanılır.

update: (Sizin şu anki ayarınız) Uygulama başladığında veritabanını kontrol eder. Eğer tablolar yoksa oluşturur. Eğer kodunuzdaki @Entity sınıfına yeni bir alan eklediyseniz, tablodaki eksik sütunu ekler. Mevcut tablolara ve verilere dokunmaz. Geliştirme için en yaygın kullanılan ayardır.

validate: Veritabanındaki tabloların, kodunuzdaki @Entity sınıflarıyla birebir uyuşup uyuşmadığını kontrol eder. Eğer bir uyuşmazlık varsa, hata verir ve uygulama başlamaz.

none: Veritabanı şemasına hiçbir şekilde dokunmaz. Genellikle canlı (production) ortamlarda kullanılır.

3. Veri Yükleme Ayarları (spring.sql.init.*)

Bu bölüm, src/main/resources/data.sql dosyasının ne zaman çalıştırılacağını kontrol eder.

En Önemli Ayar: spring.sql.init.mode

always: (Sizin şu anki ayarınız) Uygulama her başladığında data.sql dosyasını çalıştırır.

never: data.sql dosyasını hiçbir zaman çalıştırmaz. Veriler bir kez yüklendikten sonra bu ayara geçmek, verilerin tekrar tekrar eklenmesini önler.

embedded: Sadece H2, HSQLDB gibi gömülü veritabanları kullanılıyorsa çalıştırır.

Sıkça Sorulan Senaryolar ve Çözümleri

Soru 1: Tüm veritabanını (tablolar ve veriler) nasıl tamamen sıfırlayıp yeniden kurabilirim?

Cevap: application.properties dosyasında şu iki ayarı yapıp uygulamayı bir kez çalıştırın:

spring.jpa.hibernate.ddl-auto=create
spring.sql.init.mode=always

Bu, önce tüm tabloları silecek, sonra yeniden oluşturacak ve son olarak data.sql ile verileri yükleyecektir.

Soru 2: Tablolarım kalsın ama içindeki tüm verileri silip data.sql ile yeniden yüklemek istiyorum. Ne yapmalıyım?

Cevap: Bunun için doğrudan bir Spring Boot ayarı yoktur. En kolay yol şudur:

DBeaver gibi bir GUI aracından, verileri silmek istediğiniz tablolar için DELETE FROM HolidayDescriptions; gibi SQL komutlarını çalıştırın.

application.properties dosyanızda spring.sql.init.mode=always ayarının yapılı olduğundan emin olun.

Uygulamanızı yeniden başlatın. Boş tablolara veriler yeniden eklenecektir.

Soru 3: Verilerim yüklendi, artık veritabanına hiç dokunulmasın. Uygulama sadece mevcut durumu kullansın. Ne yapmalıyım?

Cevap: Bu, geliştirme tamamlandıktan veya ilk kurulum yapıldıktan sonraki ideal durumdur. application.properties dosyasını şu şekilde güncelleyin:

spring.jpa.hibernate.ddl-auto=validate
spring.sql.init.mode=never

Bu ayarlar, uygulamanızın mevcut veritabanı yapısını ve verilerini koruyarak güvenli bir şekilde çalışmasını sağlar.

