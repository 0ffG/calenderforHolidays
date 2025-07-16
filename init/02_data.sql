-- Initial data for Holiday Management System

-- Insert Languages
INSERT INTO Languages (code) VALUES ('en');
INSERT INTO Languages (code) VALUES ('tr');
INSERT INTO Languages (code) VALUES ('fr');

INSERT INTO Countries (id) VALUES (1);
INSERT INTO Countries (id) VALUES (2);
INSERT INTO Countries (id) VALUES (3);

INSERT INTO Country_Translations (country_id, language_id, name) VALUES (1, 1, 'Turkey');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (1, 2, 'Türkiye');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (1, 3, 'Turquie');

INSERT INTO Country_Translations (country_id, language_id, name) VALUES (2, 1, 'United States');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (2, 2, 'Amerika Birleşik Devletleri');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (2, 3, 'États-Unis');

INSERT INTO Country_Translations (country_id, language_id, name) VALUES (3, 1, 'France');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (3, 2, 'Fransa');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (3, 3, 'France');



INSERT INTO Holidays (id) VALUES (1);  -- New Year's Day
INSERT INTO Holidays (id) VALUES (2);  -- Christmas Day
INSERT INTO Holidays (id) VALUES (3);  -- Republic Day (Turkey)
INSERT INTO Holidays (id) VALUES (4);  -- Martin Luther King Jr. Day (USA)
INSERT INTO Holidays (id) VALUES (5);  -- Presidents' Day (USA)
INSERT INTO Holidays (id) VALUES (6);  -- Memorial Day (USA)
INSERT INTO Holidays (id) VALUES (7);  -- Independence Day (USA)
INSERT INTO Holidays (id) VALUES (8);  -- Labor Day (USA)
INSERT INTO Holidays (id) VALUES (9);  -- Thanksgiving Day (USA)
INSERT INTO Holidays (id) VALUES (10); -- National Sovereignty and Children's Day (Turkey)
INSERT INTO Holidays (id) VALUES (11); -- Labor Day (Turkey)
INSERT INTO Holidays (id) VALUES (12); -- Commemoration of Atatürk, Youth and Sports Day (Turkey)
INSERT INTO Holidays (id) VALUES (13); -- Democracy and National Unity Day (Turkey)
INSERT INTO Holidays (id) VALUES (14); -- Victory Day (Turkey)
INSERT INTO Holidays (id) VALUES (15); -- Easter Monday (France)
INSERT INTO Holidays (id) VALUES (16); -- Labor Day (France)
INSERT INTO Holidays (id) VALUES (17); -- WWII Victory Day (France)
INSERT INTO Holidays (id) VALUES (18); -- Ascension Day (France)
INSERT INTO Holidays (id) VALUES (19); -- Whit Monday (France)
INSERT INTO Holidays (id) VALUES (20); -- Bastille Day (France)
INSERT INTO Holidays (id) VALUES (21); -- Assumption of Mary (France)
INSERT INTO Holidays (id) VALUES (22); -- All Saints' Day (France)
INSERT INTO Holidays (id) VALUES (23); -- Armistice Day (France)
INSERT INTO Holidays (id) VALUES (24); -- Good Friday (France - regional)
INSERT INTO Holidays (id) VALUES (25); -- Ramadan Feast (Turkey)
INSERT INTO Holidays (id) VALUES (26); -- Sacrifice Feast (Turkey)

-- Insert Holiday Translations
-- New Year's Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (1, 1, 'New Year''s Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (1, 2, 'Yeni Yıl', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (1, 3, 'Nouvel An', 'National');

-- Christmas
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (2, 1, 'Christmas', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (2, 2, 'Noel', 'Dini');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (2, 3, 'Noël', 'Religieux');

-- Republic Day (Turkey)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (3, 1, 'Republic Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (3, 2, 'Cumhuriyet Bayramı', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (3, 3, 'Jour de la République', 'National');

-- Martin Luther King Jr. Day (USA)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (4, 1, 'Martin Luther King Jr. Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (4, 2, 'Martin Luther King Jr. Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (4, 3, 'Jour de Martin Luther King Jr.', 'National');

-- Presidents' Day (USA)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (5, 1, 'Presidents'' Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (5, 2, 'Başkanlar Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (5, 3, 'Jour des Présidents', 'National');

-- Memorial Day (USA)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (6, 1, 'Memorial Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (6, 2, 'Anma Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (6, 3, 'Jour du Souvenir', 'National');

-- Independence Day (USA)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (7, 1, 'Independence Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (7, 2, 'Bağımsızlık Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (7, 3, 'Jour de l''Indépendance', 'National');

-- Labor Day (USA)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (8, 1, 'Labor Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (8, 2, 'İşçi Bayramı', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (8, 3, 'Fête du Travail', 'National');

-- Thanksgiving Day (USA)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (9, 1, 'Thanksgiving Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (9, 2, 'Şükran Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (9, 3, 'Action de Grâce', 'National');

-- National Sovereignty and Children's Day (Turkey)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (10, 1, 'National Sovereignty and Children''s Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (10, 2, 'Ulusal Egemenlik ve Çocuk Bayramı', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (10, 3, 'Jour de la Souveraineté Nationale et des Enfants', 'National');

-- Labor Day (Turkey)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (11, 1, 'Labor and Solidarity Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (11, 2, 'Emek ve Dayanışma Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (11, 3, 'Jour du Travail et de la Solidarité', 'National');

-- Commemoration of Atatürk, Youth and Sports Day (Turkey)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (12, 1, 'Commemoration of Atatürk, Youth and Sports Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (12, 2, 'Atatürk''ü Anma, Gençlik ve Spor Bayramı', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (12, 3, 'Commémoration d''Atatürk, Jour de la Jeunesse et du Sport', 'National');

-- Democracy and National Unity Day (Turkey)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (13, 1, 'Democracy and National Unity Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (13, 2, 'Demokrasi ve Milli Birlik Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (13, 3, 'Jour de la Démocratie et de l''Unité Nationale', 'National');

-- Victory Day (Turkey)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (14, 1, 'Victory Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (14, 2, 'Zafer Bayramı', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (14, 3, 'Jour de la Victoire', 'National');

-- Easter Monday (France)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (15, 1, 'Easter Monday', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (15, 2, 'Paskalya Pazartesi', 'Dini');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (15, 3, 'Lundi de Pâques', 'Religieux');

-- Labor Day (France)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (16, 1, 'Labor Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (16, 2, 'İşçi Bayramı', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (16, 3, 'Fête du Travail', 'National');

-- WWII Victory Day (France)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (17, 1, 'WWII Victory Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (17, 2, 'II. Dünya Savaşı Zafer Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (17, 3, 'Fête de la Victoire 1945', 'National');

-- Ascension Day (France)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (18, 1, 'Ascension Day', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (18, 2, 'Yükseliş Günü', 'Dini');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (18, 3, 'Ascension', 'Religieux');

-- Whit Monday (France)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (19, 1, 'Whit Monday', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (19, 2, 'Pentikost Pazartesi', 'Dini');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (19, 3, 'Lundi de Pentecôte', 'Religieux');

-- Bastille Day (France)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (20, 1, 'Bastille Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (20, 2, 'Bastille Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (20, 3, 'Fête Nationale', 'National');

-- Assumption of Mary (France)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (21, 1, 'Assumption of Mary', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (21, 2, 'Meryem''in Göğe Yükselişi', 'Dini');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (21, 3, 'Assomption', 'Religieux');

-- All Saints' Day (France)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (22, 1, 'All Saints'' Day', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (22, 2, 'Tüm Azizler Günü', 'Dini');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (22, 3, 'Toussaint', 'Religieux');

-- Armistice Day (France)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (23, 1, 'Armistice Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (23, 2, 'Ateşkes Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (23, 3, 'Armistice 1918', 'National');

-- Good Friday (France - regional)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (24, 1, 'Good Friday', 'Regional');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (24, 2, 'Büyük Cuma', 'Bölgesel');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (24, 3, 'Vendredi Saint', 'Régional');

-- Ramadan Feast (Turkey)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (25, 1, 'Ramadan Feast', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (25, 2, 'Ramazan Bayramı', 'Dini');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (25, 3, 'Fête du Ramadan', 'Religieux');

-- Sacrifice Feast (Turkey)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (26, 1, 'Sacrifice Feast', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (26, 2, 'Kurban Bayramı', 'Dini');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (26, 3, 'Fête du Sacrifice', 'Religieux');


-- Insert Holiday Dates
-- USA Holidays
INSERT INTO Holiday_Dates (id, date) VALUES (1, DATE '2025-01-01');   -- New Year's Day
INSERT INTO Holiday_Dates (id, date) VALUES (2, DATE '2025-12-25');   -- Christmas Day
INSERT INTO Holiday_Dates (id, date) VALUES (3, DATE '2025-01-20');   -- Martin Luther King Jr. Day
INSERT INTO Holiday_Dates (id, date) VALUES (4, DATE '2025-02-17');   -- Presidents' Day
INSERT INTO Holiday_Dates (id, date) VALUES (5, DATE '2025-05-26');   -- Memorial Day
INSERT INTO Holiday_Dates (id, date) VALUES (6, DATE '2025-07-04');   -- Independence Day
INSERT INTO Holiday_Dates (id, date) VALUES (7, DATE '2025-09-01');   -- Labor Day
INSERT INTO Holiday_Dates (id, date) VALUES (8, DATE '2025-11-27');   -- Thanksgiving Day

-- Turkey Holidays
INSERT INTO Holiday_Dates (id, date) VALUES (9, DATE '2025-10-29');   -- Republic Day
INSERT INTO Holiday_Dates (id, date) VALUES (10, DATE '2025-04-23');  -- National Sovereignty and Children's Day
INSERT INTO Holiday_Dates (id, date) VALUES (11, DATE '2025-05-01');  -- Labor Day
INSERT INTO Holiday_Dates (id, date) VALUES (12, DATE '2025-05-19');  -- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Dates (id, date) VALUES (13, DATE '2025-07-15');  -- Democracy and National Unity Day
INSERT INTO Holiday_Dates (id, date) VALUES (14, DATE '2025-08-30');  -- Victory Day
INSERT INTO Holiday_Dates (id, date) VALUES (15, DATE '2025-03-30');  -- Ramadan Feast (1st day)
INSERT INTO Holiday_Dates (id, date) VALUES (16, DATE '2025-03-31');  -- Ramadan Feast (2nd day)
INSERT INTO Holiday_Dates (id, date) VALUES (17, DATE '2025-04-01');  -- Ramadan Feast (3rd day)
INSERT INTO Holiday_Dates (id, date) VALUES (18, DATE '2025-06-06');  -- Sacrifice Feast (1st day)
INSERT INTO Holiday_Dates (id, date) VALUES (19, DATE '2025-06-07');  -- Sacrifice Feast (2nd day)
INSERT INTO Holiday_Dates (id, date) VALUES (20, DATE '2025-06-08');  -- Sacrifice Feast (3rd day)
INSERT INTO Holiday_Dates (id, date) VALUES (21, DATE '2025-06-09');  -- Sacrifice Feast (4th day)

-- France Holidays
INSERT INTO Holiday_Dates (id, date) VALUES (22, DATE '2025-04-21');  -- Easter Monday
INSERT INTO Holiday_Dates (id, date) VALUES (23, DATE '2025-05-01');  -- Labor Day
INSERT INTO Holiday_Dates (id, date) VALUES (24, DATE '2025-05-08');  -- WWII Victory Day
INSERT INTO Holiday_Dates (id, date) VALUES (25, DATE '2025-05-29');  -- Ascension Day
INSERT INTO Holiday_Dates (id, date) VALUES (26, DATE '2025-06-09');  -- Whit Monday
INSERT INTO Holiday_Dates (id, date) VALUES (27, DATE '2025-07-14');  -- Bastille Day
INSERT INTO Holiday_Dates (id, date) VALUES (28, DATE '2025-08-15');  -- Assumption of Mary
INSERT INTO Holiday_Dates (id, date) VALUES (29, DATE '2025-11-01');  -- All Saints' Day
INSERT INTO Holiday_Dates (id, date) VALUES (30, DATE '2025-11-11');  -- Armistice Day
INSERT INTO Holiday_Dates (id, date) VALUES (31, DATE '2025-04-18');  -- Good Friday (regional)

-- Insert Holiday Dates Description
-- USA Holidays
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (1, 1, 0, 1);   -- New Year's Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (2, 2, 0, 1);   -- Christmas Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (4, 3, 0, 1);   -- Martin Luther King Jr. Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (5, 4, 0, 1);   -- Presidents' Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (6, 5, 0, 1);   -- Memorial Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (7, 6, 0, 1);   -- Independence Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (8, 7, 0, 1);   -- Labor Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (9, 8, 0, 1);   -- Thanksgiving Day

-- Turkey Holidays
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (3, 9, 0, 1);   -- Republic Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (10, 10, 0, 1);  -- National Sovereignty and Children's Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (11, 11, 0, 1);  -- Labor Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (12, 12, 0, 1);  -- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (13, 13, 0, 1);  -- Democracy and National Unity Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (14, 14, 0, 1);  -- Victory Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (25, 15, 0, 1);  -- Ramadan Feast (1st day)
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (25, 16, 0, 1);  -- Ramadan Feast (2nd day)
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (25, 17, 0, 1);  -- Ramadan Feast (3rd day)
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (26, 18, 0, 1);  -- Sacrifice Feast (1st day)
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (26, 19, 0, 1);  -- Sacrifice Feast (2nd day)
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (26, 20, 0, 1);  -- Sacrifice Feast (3rd day)
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (26, 21, 0, 1);  -- Sacrifice Feast (4th day)

-- France Holidays
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (1, 1, 0, 1);   -- New Year's Day (also in France)
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (2, 2, 0, 1);   -- Christmas Day (also in France)
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (15, 22, 0, 1);  -- Easter Monday
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (16, 23, 0, 1);  -- Labor Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (17, 24, 0, 1);  -- WWII Victory Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (18, 25, 0, 1);  -- Ascension Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (19, 26, 0, 1);  -- Whit Monday
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (20, 27, 0, 1);  -- Bastille Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (21, 28, 0, 1);  -- Assumption of Mary
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (22, 29, 0, 1);  -- All Saints' Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (23, 30, 0, 1);  -- Armistice Day
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (24, 31, 0, 1);  -- Good Friday (regional)

-- Insert Holiday Dates Description Translations
-- New Year's Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (1, 1, 'New Year''s Day celebration - Beginning of the year');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (1, 2, 'Yeni Yıl kutlaması - Yılın başlangıcı');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (1, 3, 'Célébration du Nouvel An - Début de l''année');

-- Christmas Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (2, 1, 'Christmas Day celebration - Birth of Jesus Christ');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (2, 2, 'Noel günü kutlaması - İsa Mesih''in doğumu');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (2, 3, 'Célébration de Noël - Naissance de Jésus Christ');

-- Martin Luther King Jr. Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (3, 1, 'Martin Luther King Jr. Day - Honoring the civil rights leader');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (3, 2, 'Martin Luther King Jr. Günü - Sivil haklar liderini onurlandırma');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (3, 3, 'Jour de Martin Luther King Jr. - Honorer le leader des droits civiques');

-- Presidents' Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (4, 1, 'Presidents'' Day - Honoring past US presidents');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (4, 2, 'Başkanlar Günü - Geçmiş ABD başkanlarını onurlandırma');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (4, 3, 'Jour des Présidents - Honorer les anciens présidents américains');

-- Memorial Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (5, 1, 'Memorial Day - Honoring fallen military personnel');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (5, 2, 'Anma Günü - Şehit askerleri onurlandırma');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (5, 3, 'Jour du Souvenir - Honorer les militaires tombés');

-- Independence Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (6, 1, 'Independence Day - US Declaration of Independence');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (6, 2, 'Bağımsızlık Günü - ABD Bağımsızlık Bildirisi');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (6, 3, 'Jour de l''Indépendance - Déclaration d''indépendance américaine');

-- Labor Day (USA)
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (7, 1, 'Labor Day - Honoring American workers');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (7, 2, 'İşçi Bayramı - Amerikan işçilerini onurlandırma');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (7, 3, 'Fête du Travail - Honorer les travailleurs américains');

-- Thanksgiving Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (8, 1, 'Thanksgiving Day - Giving thanks for the harvest');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (8, 2, 'Şükran Günü - Hasat için şükretme');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (8, 3, 'Action de Grâce - Remercier pour la récolte');

-- Republic Day (Turkey)
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (9, 1, 'Republic Day of Turkey - Founding of the Turkish Republic');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (9, 2, 'Türkiye Cumhuriyeti''nin kuruluşu - Cumhuriyetin ilan edilmesi');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (9, 3, 'Jour de la République de Turquie - Fondation de la République turque');

-- National Sovereignty and Children's Day (Turkey)
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (10, 1, 'National Sovereignty and Children''s Day - Opening of Turkish Grand National Assembly');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (10, 2, 'Ulusal Egemenlik ve Çocuk Bayramı - TBMM''nin açılışı');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (10, 3, 'Jour de la Souveraineté Nationale et des Enfants - Ouverture de la Grande Assemblée nationale de Turquie');

-- Labor Day (Turkey)
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (11, 1, 'Labor and Solidarity Day - International Workers'' Day');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (11, 2, 'Emek ve Dayanışma Günü - Uluslararası İşçi Bayramı');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (11, 3, 'Jour du Travail et de la Solidarité - Journée internationale des travailleurs');

-- Commemoration of Atatürk, Youth and Sports Day (Turkey)
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (12, 1, 'Commemoration of Atatürk, Youth and Sports Day - Atatürk''s arrival in Samsun');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (12, 2, 'Atatürk''ü Anma, Gençlik ve Spor Bayramı - Atatürk''ün Samsun''a çıkışı');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (12, 3, 'Commémoration d''Atatürk, Jour de la Jeunesse et du Sport - Arrivée d''Atatürk à Samsun');

-- Democracy and National Unity Day (Turkey)
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (13, 1, 'Democracy and National Unity Day - Remembering July 15 coup attempt');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (13, 2, 'Demokrasi ve Milli Birlik Günü - 15 Temmuz darbe girişimini anma');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (13, 3, 'Jour de la Démocratie et de l''Unité Nationale - Commémoration de la tentative de coup d''État du 15 juillet');

-- Victory Day (Turkey)
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (14, 1, 'Victory Day - Battle of Dumlupınar victory');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (14, 2, 'Zafer Bayramı - Dumlupınar Savaşı zaferi');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (14, 3, 'Jour de la Victoire - Victoire de la bataille de Dumlupınar');


-- Insert Holiday Countries
-- Universal Holidays
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (1, 1); -- New Year - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (1, 2); -- New Year - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (1, 3); -- New Year - France

INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (2, 2); -- Christmas - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (2, 3); -- Christmas - France

-- USA Specific Holidays
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (4, 2); -- Martin Luther King Jr. Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (5, 2); -- Presidents' Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (6, 2); -- Memorial Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (7, 2); -- Independence Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (8, 2); -- Labor Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (9, 2); -- Thanksgiving Day - USA

-- Turkey Specific Holidays
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (3, 1); -- Republic Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (10, 1); -- National Sovereignty and Children's Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (11, 1); -- Labor Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (12, 1); -- Commemoration of Atatürk, Youth and Sports Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (13, 1); -- Democracy and National Unity Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (14, 1); -- Victory Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (25, 1); -- Ramadan Feast - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (26, 1); -- Sacrifice Feast - Turkey

-- France Specific Holidays
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (15, 3); -- Easter Monday - France
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (16, 3); -- Labor Day - France
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (17, 3); -- WWII Victory Day - France
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (18, 3); -- Ascension Day - France
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (19, 3); -- Whit Monday - France
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (20, 3); -- Bastille Day - France
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (21, 3); -- Assumption of Mary - France
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (22, 3); -- All Saints' Day - France
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (23, 3); -- Armistice Day - France
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (24, 3); -- Good Friday - France (regional)

INSERT INTO Holiday_Target_Groups (id) VALUES (1);
INSERT INTO Holiday_Target_Groups (id) VALUES (2);

INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (1, 1, 'All Citizens');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (1, 2, 'Tüm Vatandaşlar');

INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (2, 1, 'Public Employees');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (2, 2, 'Kamu Çalışanları');


-- Insert Holiday Target Group Map
-- Universal Holidays - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (1, 1); -- New Year - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (2, 1); -- Christmas - All Citizens

-- USA Holidays
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (3, 1); -- Martin Luther King Jr. Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (4, 1); -- Presidents' Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (5, 1); -- Memorial Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (6, 1); -- Independence Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (7, 1); -- Labor Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (8, 1); -- Thanksgiving Day - All Citizens

-- Turkey Holidays
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (9, 1); -- Republic Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (9, 2); -- Republic Day - Public Employees
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (10, 1); -- National Sovereignty and Children's Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (11, 1); -- Labor Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (12, 1); -- Commemoration of Atatürk, Youth and Sports Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (13, 1); -- Democracy and National Unity Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (14, 1); -- Victory Day - All Citizens

-- France Holidays
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (24, 1); -- Easter Monday - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (25, 1); -- Labor Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (26, 1); -- WWII Victory Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (27, 1); -- Ascension Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (28, 1); -- Whit Monday - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (29, 1); -- Bastille Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (30, 1); -- Assumption of Mary - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (31, 1); -- All Saints' Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (32, 1); -- Armistice Day - All Citizens
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (33, 1); -- Good Friday - All Citizens



-- Holidays
INSERT INTO Holidays (id) VALUES (27);

-- Holiday Translations
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (27, 1, 'Republic Day Eve', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (27, 2, 'Cumhuriyet Bayramı Arifesi', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (27, 3, 'Veille de la fête de la République', 'National');

-- Holiday Date
INSERT INTO Holiday_Dates (id, date) VALUES (32, DATE '2025-10-28');

-- Date Description
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (27, 32, 1, 1);

-- Description Translations
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (32, 1, 'Republic Day Eve - Afternoon before Republic Day');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (32, 2, 'Cumhuriyet Bayramı Arifesi - Bayram öncesi öğleden sonra');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (32, 3, 'Veille de la fête de la République - Après-midi avant la fête');

-- Holiday Country
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (27, 1);

-- Target Groups
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (32, 1);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (32, 2);

INSERT INTO Holidays (id) VALUES (28);

-- Translations
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (28, 1, 'Juneteenth National Independence Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (28, 2, 'Juneteenth Ulusal Bağımsızlık Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (28, 3, 'Fête de l''Indépendance de Juneteenth', 'National');

-- Date
INSERT INTO Holiday_Dates (id, date) VALUES (33, DATE '2025-06-19');
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (28, 33, 0, 1);

-- Descriptions
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (33, 1, 'Juneteenth - Commemorates the emancipation of enslaved African Americans');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (33, 2, 'Juneteenth - Köleliğin kaldırılmasının anılması');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (33, 3, 'Juneteenth - Commémore l''émancipation des esclaves afro-américains');

-- Country & Group
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (28, 2);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (33, 1);



INSERT INTO Holidays (id) VALUES (29);

INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (29, 1, 'Columbus Day / Indigenous Peoples’ Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (29, 2, 'Columbus Günü / Yerli Halklar Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (29, 3, 'Jour de Christophe Colomb / Peuples autochtones', 'National');

INSERT INTO Holiday_Dates (id, date) VALUES (34, DATE '2025-10-13');
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (29, 34, 0, 1);

INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (34, 1, 'Columbus Day / Indigenous Peoples’ Day - Celebrating explorers or native cultures');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (34, 2, 'Columbus Günü / Yerli Halklar Günü - Kâşifleri ya da yerli halkları anmak');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (34, 3, 'Jour de Christophe Colomb / Peuples autochtones - Célébration des explorateurs ou des cultures indigènes');

INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (29, 2);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (34, 1);



INSERT INTO Holidays (id) VALUES (30);

INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (30, 1, 'Veterans Day', 'National');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (30, 2, 'Gaziler Günü', 'Ulusal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (30, 3, 'Jour des anciens combattants', 'National');

INSERT INTO Holiday_Dates (id, date) VALUES (35, DATE '2025-11-11');
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (30, 35, 0, 1);

INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (35, 1, 'Veterans Day - Honoring military veterans of the United States');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (35, 2, 'Gaziler Günü - ABD’nin asker gazilerini onurlandırma');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (35, 3, 'Jour des anciens combattants - Honorer les anciens militaires des États-Unis');

INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (30, 2);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (35, 1);



INSERT INTO Holidays (id) VALUES (31);

INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (31, 1, 'St. Stephen''s Day', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (31, 2, 'Aziz Stefan Günü', 'Dini');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (31, 3, 'Jour de la Saint-Étienne', 'Religieux');

INSERT INTO Holiday_Dates (id, date) VALUES (36, DATE '2025-12-26');
INSERT INTO Holiday_Dates_Description (holiday_id, date_id, is_half_day, is_recurring) VALUES (31, 36, 0, 1);

INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (36, 1, 'St. Stephen''s Day - Second day of Christmas (regional)');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (36, 2, 'Aziz Stefan Günü - Noel''in ikinci günü (bölgesel)');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (36, 3, 'Jour de la Saint-Étienne - Deuxième jour de Noël (régional)');

INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (31, 3);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (36, 1);

COMMIT;

