#!/bin/bash

# Holiday API Test Script
# Bu script, Holiday API'nin tüm endpoint'lerini test eder

echo "============================================"
echo "Holiday Calendar API Test Script"
echo "============================================"
echo

# API Base URL
BASE_URL="http://localhost:8080/api"

# Renk kodları
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Test fonksiyonu
test_endpoint() {
    local endpoint="$1"
    local description="$2"
    
    echo -e "${BLUE}Testing:${NC} $description"
    echo -e "${YELLOW}URL:${NC} $endpoint"
    echo -e "${YELLOW}Response:${NC}"
    
    response=$(curl -s -w "\nHTTP_STATUS:%{http_code}" "$endpoint")
    http_status=$(echo "$response" | tail -n1 | sed 's/HTTP_STATUS://')
    content=$(echo "$response" | sed '$d')
    
    if [ "$http_status" -eq 200 ]; then
        echo -e "${GREEN}✓ Success (HTTP $http_status)${NC}"
        echo "$content" | jq '.' 2>/dev/null || echo "$content"
    else
        echo -e "${RED}✗ Failed (HTTP $http_status)${NC}"
        echo "$content"
    fi
    
    echo
    echo "----------------------------------------"
    echo
}

# Sunucunun çalışıp çalışmadığını kontrol et
echo "Checking if server is running..."
if ! curl -s "$BASE_URL/info" > /dev/null; then
    echo -e "${RED}❌ Server is not running on $BASE_URL${NC}"
    echo "Please start the application with: ./mvnw spring-boot:run"
    exit 1
fi
echo -e "${GREEN}✓ Server is running${NC}"
echo

# 1. API Info endpoint'ini test et
test_endpoint "$BASE_URL/info" "API Info - Uygulama Bilgisi"

# 2. Countries listesi (Türkçe)
test_endpoint "$BASE_URL/country?lang=tr" "Countries List (Turkish)"

# 3. Countries listesi (İngilizce)
test_endpoint "$BASE_URL/country?lang=en" "Countries List (English)"

# 4. Target Groups listesi (Türkçe)
test_endpoint "$BASE_URL/targetgroup?lang=tr" "Target Groups List (Turkish)"

# 5. Target Groups listesi (İngilizce)
test_endpoint "$BASE_URL/targetgroup?lang=en" "Target Groups List (English)"

# 6. YENİ: Türkiye'nin tüm tatillerini getir (sadece countryId ile)
test_endpoint "$BASE_URL/holidays?countryId=1&lang=tr" "All Holidays for Turkey (Turkish) - NEW FEATURE"

# 7. YENİ: Türkiye'nin tüm tatillerini getir (İngilizce)
test_endpoint "$BASE_URL/holidays?countryId=1&lang=en" "All Holidays for Turkey (English) - NEW FEATURE"

# 8. YENİ: Almanya'nın tüm tatillerini getir (eğer varsa)
test_endpoint "$BASE_URL/holidays?countryId=2&lang=tr" "All Holidays for Germany (if exists) - NEW FEATURE"

# 9. ESKİ: Belirli tarih aralığında ve hedef grubunda tatiller (tüm parametreler)
test_endpoint "$BASE_URL/holidays?countryId=1&targetGroupId=1&startDate=2025-01-01&endDate=2025-12-31&lang=tr" "Filtered Holidays (All Parameters) - EXISTING FEATURE"

# 10. ESKİ: Kısa tarih aralığında tatiller
test_endpoint "$BASE_URL/holidays?countryId=1&targetGroupId=1&startDate=2025-01-01&endDate=2025-01-31&lang=tr" "Holidays for January 2025 - EXISTING FEATURE"

# 11. Working Day Calculation test
echo -e "${BLUE}Testing:${NC} Working Day Calculation API"
echo -e "${YELLOW}URL:${NC} $BASE_URL/calculateWorkingDay"
echo -e "${YELLOW}Method:${NC} POST"
echo -e "${YELLOW}Body:${NC}"

post_data='{
    "countryId": 1,
    "targetGroupId": 1,
    "startDate": "2025-01-01",
    "endDate": "2025-01-31"
}'

echo "$post_data" | jq '.'

echo -e "${YELLOW}Response:${NC}"
response=$(curl -s -w "\nHTTP_STATUS:%{http_code}" \
    -X POST \
    -H "Content-Type: application/json" \
    -d "$post_data" \
    "$BASE_URL/calculateWorkingDay?lang=tr")

http_status=$(echo "$response" | tail -n1 | sed 's/HTTP_STATUS://')
content=$(echo "$response" | sed '$d')

if [ "$http_status" -eq 200 ]; then
    echo -e "${GREEN}✓ Success (HTTP $http_status)${NC}"
    echo "$content" | jq '.' 2>/dev/null || echo "$content"
else
    echo -e "${RED}✗ Failed (HTTP $http_status)${NC}"
    echo "$content"
fi

echo
echo "----------------------------------------"
echo

# Test sonuçları özeti
echo "============================================"
echo -e "${GREEN}✓ API Test Completed${NC}"
echo "============================================"
echo
echo -e "${BLUE}Key Changes Made:${NC}"
echo "1. ✨ NEW: Get all holidays for a country (only countryId required)"
echo "2. ✨ IMPROVED: Made targetGroupId, startDate, endDate optional"
echo "3. ✨ FLEXIBLE: API now works with minimal parameters"
echo
echo -e "${BLUE}Usage Examples:${NC}"
echo "• All holidays: GET /api/holidays?countryId=1&lang=tr"
echo "• Filtered:     GET /api/holidays?countryId=1&targetGroupId=1&startDate=2025-01-01&endDate=2025-12-31&lang=tr"
echo
echo -e "${YELLOW}Note:${NC} If you see jq command not found errors, install jq for better JSON formatting:"
echo "macOS: brew install jq"
echo "Ubuntu: sudo apt-get install jq"
