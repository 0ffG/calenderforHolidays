# Holiday Calendar API Documentation

Bu dokümantasyon, Holiday Calendar API'sinin kullanımını açıklamaktadır.

## Base URL
```
http://localhost:8080
```

## API Endpoints

### 1. Languages API - Dil Listesi
**GET** `/api/language`

Tüm kayıtlı dilleri döner.

**Response:**
```json
[
    {
        "id": 1,
        "code": "tr",
        "name": "Türkçe"
    },
    {
        "id": 2,
        "code": "en", 
        "name": "English"
    }
]
```

### 2. Countries API - Ülke Listesi
**GET** `/api/country?lang={languageCode}`

Tüm kayıtlı ülkeleri seçilen dile göre döner.

**Parameters:**
- `lang` (optional): Dil kodu (tr/en), varsayılan: tr

**Example:**
```
GET /api/country?lang=tr
```

**Response:**
```json
[
    {
        "id": 1,
        "name": "Türkiye"
    },
    {
        "id": 2,
        "name": "Amerika Birleşik Devletleri"
    }
]
```

### 3. Target Groups API - Hedef Grup Listesi
**GET** `/api/targetgroup?lang={languageCode}`

Tüm kayıtlı hedef grupları seçilen dile göre döner.

**Parameters:**
- `lang` (optional): Dil kodu (tr/en), varsayılan: tr

**Example:**
```
GET /api/targetgroup?lang=tr
```

**Response:**
```json
[
    {
        "id": 1,
        "name": "Tüm Vatandaşlar"
    },
    {
        "id": 2,
        "name": "Kamu Çalışanları"
    },
    {
        "id": 3,
        "name": "Öğrenciler"
    },
    {
        "id": 4,
        "name": "Özel Sektör"
    }
]
```

### 4. Working Day Calculation API - Çalışma Günü Hesaplama
**POST** `/api/calculateWorkingDay?lang={languageCode}`

İki tarih arasındaki çalışma günlerini hesaplar. Yarım günlü tatilleri dikkate alır.

**Parameters:**
- `lang` (optional): Dil kodu (tr/en), varsayılan: tr

**Request Body:**
```json
{
    "startDate": "2025-01-01",
    "endDate": "2025-01-31",
    "targetGroupId": 2,
    "countryId": 1
}
```

**Response:**
```json
{
    "startDate": "2025-01-01",
    "endDate": "2025-01-31",
    "totalDays": 31,
    "weekendDays": 8,
    "holidayDays": 1,
    "workingDays": 21.5,
    "holidays": [
        {
            "date": "2025-01-01",
            "name": "Yeni yılın ilk günü kutlaması",
            "halfDay": false
        }
    ]
}
```

### 5. Holidays API - Tatil Listesi (Bonus)
**GET** `/api/holidays?countryId={countryId}&targetGroupId={targetGroupId}&startDate={startDate}&endDate={endDate}&lang={languageCode}`

Belirtilen kriterlere göre tatilleri listeler.

**Parameters:**
- `countryId` (required): Ülke ID
- `targetGroupId` (required): Hedef grup ID
- `startDate` (required): Başlangıç tarihi (YYYY-MM-DD)
- `endDate` (required): Bitiş tarihi (YYYY-MM-DD)
- `lang` (optional): Dil kodu (tr/en), varsayılan: tr

**Example:**
```
GET /api/holidays?countryId=1&targetGroupId=2&startDate=2025-01-01&endDate=2025-12-31&lang=tr
```

### 6. API Info - Uygulama Bilgisi
**GET** `/api/info`

API hakkında genel bilgi döner.

**Response:**
```json
{
    "application": "Holiday Calendar API",
    "version": "1.0",
    "description": "API for managing holidays and calculating working days"
}
```

## Features

- **Çoklu Dil Desteği**: TR/EN
- **Yarım Gün Tatil Desteği**: Yarım günlük tatiller hesaplamalarda dikkate alınır
- **Hedef Grup Bazlı Tatiller**: Farklı gruplar için farklı tatil kuralları
- **Hafta Sonu Hesaplama**: Cumartesi-Pazar hafta sonu olarak kabul edilir
- **Global Exception Handling**: Hataların merkezi yönetimi

## Database Schema

Uygulama aşağıdaki Oracle tablolarını kullanır:

- `Languages`: Dil bilgileri
- `Countries`, `Country_Translations`: Ülke bilgileri ve çevirileri
- `Holiday_Target_Groups`, `Holiday_Target_Group_Translations`: Hedef gruplar ve çevirileri
- `Holidays`, `Holiday_Translations`: Tatil bilgileri ve çevirileri
- `Holiday_Dates`: Tatil tarihleri
- `Holiday_Dates_Description`: Tatil açıklamaları
- `Holiday_Target_Group_Map`: Hedef grup - tatil eşleşmeleri (yarım gün bilgisi ile)

## Teknolojiler

- **Spring Boot 3.5.3**
- **Spring Data JPA**
- **Hibernate 6.6.18**
- **Oracle Database**
- **Maven**

## Notlar

- Oracle veritabanının çalışır durumda olması gerekir
- Tüm API'lar CORS desteği sağlar
- Varsayılan dil Türkçe'dir (tr)
- Tarih formatı: YYYY-MM-DD (ISO 8601)