-- Insert Languages
INSERT INTO Languages (id, code) VALUES (1, 'tr');
INSERT INTO Languages (id, code) VALUES (2, 'en');

-- Insert Countries
INSERT INTO Countries (id, default_name) VALUES (1, 'Turkey');
INSERT INTO Countries (id, default_name) VALUES (2, 'United States');

-- Insert Country Translations
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (1, 1, 'Türkiye');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (1, 2, 'Turkey');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (2, 1, 'Amerika Birleşik Devletleri');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (2, 2, 'United States');

-- Insert Target Groups
INSERT INTO Holiday_Target_Groups (id, default_name) VALUES (1, 'All Citizens');
INSERT INTO Holiday_Target_Groups (id, default_name) VALUES (2, 'Public Employees');
INSERT INTO Holiday_Target_Groups (id, default_name) VALUES (3, 'Students');
INSERT INTO Holiday_Target_Groups (id, default_name) VALUES (4, 'Private Sector');

-- Insert Target Group Translations
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (1, 1, 'Tüm Vatandaşlar');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (1, 2, 'All Citizens');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (2, 1, 'Kamu Çalışanları');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (2, 2, 'Public Employees');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (3, 1, 'Öğrenciler');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (3, 2, 'Students');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (4, 1, 'Özel Sektör');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (4, 2, 'Private Sector');

-- Insert Holidays
INSERT INTO Holidays (id, default_name) VALUES (1, 'New Year''s Day');
INSERT INTO Holidays (id, default_name) VALUES (2, 'National Sovereignty and Children''s Day');
INSERT INTO Holidays (id, default_name) VALUES (3, 'Labor and Solidarity Day');
INSERT INTO Holidays (id, default_name) VALUES (4, 'Commemoration of Atatürk, Youth and Sports Day');
INSERT INTO Holidays (id, default_name) VALUES (5, 'Victory Day');
INSERT INTO Holidays (id, default_name) VALUES (6, 'Republic Day');
INSERT INTO Holidays (id, default_name) VALUES (7, 'Ramadan Feast');
INSERT INTO Holidays (id, default_name) VALUES (8, 'Feast of Sacrifice');

-- US Holidays
INSERT INTO Holidays (id, default_name) VALUES (9, 'Martin Luther King Jr. Day');
INSERT INTO Holidays (id, default_name) VALUES (10, 'Presidents'' Day');
INSERT INTO Holidays (id, default_name) VALUES (11, 'Memorial Day');
INSERT INTO Holidays (id, default_name) VALUES (12, 'Independence Day');
INSERT INTO Holidays (id, default_name) VALUES (13, 'Labor Day');
INSERT INTO Holidays (id, default_name) VALUES (14, 'Columbus Day');
INSERT INTO Holidays (id, default_name) VALUES (15, 'Veterans Day');
INSERT INTO Holidays (id, default_name) VALUES (16, 'Thanksgiving Day');
INSERT INTO Holidays (id, default_name) VALUES (17, 'Christmas Day');

-- Insert Holiday Translations
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (1, 1, 'Yılbaşı', 'Resmi Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (1, 2, 'New Year''s Day', 'Official Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (2, 1, 'Ulusal Egemenlik ve Çocuk Bayramı', 'Resmi Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (2, 2, 'National Sovereignty and Children''s Day', 'Official Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (3, 1, 'Emek ve Dayanışma Günü', 'Resmi Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (3, 2, 'Labor and Solidarity Day', 'Official Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (4, 1, 'Atatürk''ü Anma, Gençlik ve Spor Bayramı', 'Resmi Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (4, 2, 'Commemoration of Atatürk, Youth and Sports Day', 'Official Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (5, 1, 'Zafer Bayramı', 'Resmi Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (5, 2, 'Victory Day', 'Official Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (6, 1, 'Cumhuriyet Bayramı', 'Resmi Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (6, 2, 'Republic Day', 'Official Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (7, 1, 'Ramazan Bayramı', 'Dini Bayram');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (7, 2, 'Ramadan Feast', 'Religious Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (8, 1, 'Kurban Bayramı', 'Dini Bayram');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (8, 2, 'Feast of Sacrifice', 'Religious Holiday');

-- US Holiday Translations
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (9, 1, 'Martin Luther King Jr. Günü', 'Federal Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (9, 2, 'Martin Luther King Jr. Day', 'Federal Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (10, 1, 'Başkanlar Günü', 'Federal Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (10, 2, 'Presidents'' Day', 'Federal Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (11, 1, 'Anma Günü', 'Federal Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (11, 2, 'Memorial Day', 'Federal Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (12, 1, 'Bağımsızlık Günü', 'Federal Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (12, 2, 'Independence Day', 'Federal Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (13, 1, 'İşçi Bayramı', 'Federal Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (13, 2, 'Labor Day', 'Federal Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (14, 1, 'Columbus Günü', 'Federal Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (14, 2, 'Columbus Day', 'Federal Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (15, 1, 'Gaziler Günü', 'Federal Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (15, 2, 'Veterans Day', 'Federal Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (16, 1, 'Şükran Günü', 'Federal Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (16, 2, 'Thanksgiving Day', 'Federal Holiday');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (17, 1, 'Noel', 'Federal Tatil');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (17, 2, 'Christmas Day', 'Federal Holiday');

-- Insert Holiday Countries (Associate holidays with countries)
-- Turkish holidays
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (1, 1); -- New Year (both countries)
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (1, 2); -- New Year (both countries)
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (2, 1);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (3, 1);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (4, 1);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (5, 1);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (6, 1);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (7, 1);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (8, 1);

-- US holidays
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (9, 2);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (10, 2);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (11, 2);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (12, 2);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (13, 2);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (14, 2);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (15, 2);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (16, 2);
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (17, 2);

-- Insert Holiday Dates for 2025
-- Turkish holidays
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (1, DATE '2025-01-01');  -- New Year's Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (2, DATE '2025-04-23');  -- National Sovereignty and Children's Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (3, DATE '2025-05-01');  -- Labor Day (Turkey)
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (4, DATE '2025-05-19');  -- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (5, DATE '2025-08-30');  -- Victory Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (6, DATE '2025-10-29');  -- Republic Day

-- Ramadan Feast 2025 (March 30 - April 1, 3 days)
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (7, DATE '2025-03-30');
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (8, DATE '2025-03-31');
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (9, DATE '2025-04-01');

-- Feast of Sacrifice 2025 (June 6 - 9, 4 days)
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (10, DATE '2025-06-06');
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (11, DATE '2025-06-07');
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (12, DATE '2025-06-08');
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (13, DATE '2025-06-09');

-- US holidays 2025
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (14, DATE '2025-01-20');  -- Martin Luther King Jr. Day (3rd Monday in January)
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (15, DATE '2025-02-17');  -- Presidents' Day (3rd Monday in February)
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (16, DATE '2025-05-26');  -- Memorial Day (last Monday in May)
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (17, DATE '2025-07-04');  -- Independence Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (18, DATE '2025-09-01');  -- Labor Day US (1st Monday in September)
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (19, DATE '2025-10-13');  -- Columbus Day (2nd Monday in October)
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (20, DATE '2025-11-11');  -- Veterans Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (21, DATE '2025-11-27');  -- Thanksgiving Day (4th Thursday in November)
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (22, DATE '2025-12-25');  -- Christmas Day

-- Insert Holiday Dates Description
-- Turkish holidays
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (1, 1, 1, 1);  -- New Year's Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (2, 2, 2, 1);  -- National Sovereignty and Children's Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (3, 3, 3, 1);  -- Labor Day (Turkey)
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (4, 4, 4, 1);  -- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (5, 5, 5, 1);  -- Victory Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (6, 6, 6, 1);  -- Republic Day

-- Ramadan Feast descriptions
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (7, 7, 7, 0);  -- Ramadan Feast Day 1
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (8, 7, 8, 0);  -- Ramadan Feast Day 2
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (9, 7, 9, 0);  -- Ramadan Feast Day 3

-- Feast of Sacrifice descriptions
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (10, 8, 10, 0);  -- Feast of Sacrifice Day 1
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (11, 8, 11, 0);  -- Feast of Sacrifice Day 2
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (12, 8, 12, 0);  -- Feast of Sacrifice Day 3
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (13, 8, 13, 0);  -- Feast of Sacrifice Day 4

-- US holiday descriptions
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (14, 9, 14, 1);  -- Martin Luther King Jr. Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (15, 10, 15, 1);  -- Presidents' Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (16, 11, 16, 1);  -- Memorial Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (17, 12, 17, 1);  -- Independence Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (18, 13, 18, 1);  -- Labor Day US
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (19, 14, 19, 1);  -- Columbus Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (20, 15, 20, 1);  -- Veterans Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (21, 16, 21, 1);  -- Thanksgiving Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_recurring) VALUES (22, 17, 22, 1);  -- Christmas Day

-- Insert Holiday Dates Description Translations
-- New Year's Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (1, 1, 'Yeni yılın ilk günü kutlaması');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (1, 2, 'Celebration of the first day of the new year');

-- National Sovereignty and Children's Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (2, 1, 'Türkiye Büyük Millet Meclisi''nin açılışı ve çocukların bayramı');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (2, 2, 'Opening of the Turkish Grand National Assembly and children''s celebration');

-- Labor Day (Turkey)
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (3, 1, 'İşçilerin ve emekçilerin dayanışma günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (3, 2, 'Day of solidarity for workers and laborers');

-- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (4, 1, 'Mustafa Kemal Atatürk''ü anma ve gençlik ile sporun kutlandığı gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (4, 2, 'Day commemorating Mustafa Kemal Atatürk and celebrating youth and sports');

-- Victory Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (5, 1, 'Büyük Taarruz''un zaferini kutlayan gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (5, 2, 'Day celebrating the victory of the Great Offensive');

-- Republic Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (6, 1, 'Türkiye Cumhuriyeti''nin ilan edildiği gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (6, 2, 'Day when the Republic of Turkey was proclaimed');

-- Ramadan Feast
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (7, 1, 'Ramazan Bayramı''nın birinci günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (7, 2, 'First day of Ramadan Feast');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (8, 1, 'Ramazan Bayramı''nın ikinci günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (8, 2, 'Second day of Ramadan Feast');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (9, 1, 'Ramazan Bayramı''nın üçüncü günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (9, 2, 'Third day of Ramadan Feast');

-- Feast of Sacrifice
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (10, 1, 'Kurban Bayramı''nın birinci günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (10, 2, 'First day of Feast of Sacrifice');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (11, 1, 'Kurban Bayramı''nın ikinci günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (11, 2, 'Second day of Feast of Sacrifice');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (12, 1, 'Kurban Bayramı''nın üçüncü günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (12, 2, 'Third day of Feast of Sacrifice');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (13, 1, 'Kurban Bayramı''nın dördüncü günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (13, 2, 'Fourth day of Feast of Sacrifice');

-- US Holiday Descriptions
-- Martin Luther King Jr. Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (14, 1, 'Martin Luther King Jr.''ın yaşamını ve mirasını onurlandıran gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (14, 2, 'Day honoring the life and legacy of Martin Luther King Jr.');

-- Presidents' Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (15, 1, 'Amerika Birleşik Devletleri başkanlarını onurlandıran gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (15, 2, 'Day honoring the presidents of the United States');

-- Memorial Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (16, 1, 'Ülke için hayatını veren askerleri anma günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (16, 2, 'Day of remembrance for military personnel who died in service');

-- Independence Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (17, 1, 'Amerika Birleşik Devletleri''nin bağımsızlık günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (17, 2, 'Independence Day of the United States');

-- Labor Day (US)
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (18, 1, 'Amerika''da işçileri ve emek hareketini onurlandıran gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (18, 2, 'Day honoring workers and the labor movement in America');

-- Columbus Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (19, 1, 'Christopher Columbus''un Amerika''ya varışını anma günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (19, 2, 'Day commemorating Christopher Columbus''s arrival in America');

-- Veterans Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (20, 1, 'Tüm askeri gazileri onurlandıran gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (20, 2, 'Day honoring all military veterans');

-- Thanksgiving Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (21, 1, 'Şükran ve bereket için yapılan geleneksel kutlama');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (21, 2, 'Traditional celebration of gratitude and harvest');

-- Christmas Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (22, 1, 'İsa Mesih''in doğumunu kutlayan Hıristiyan bayramı');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (22, 2, 'Christian celebration of the birth of Jesus Christ');

-- Insert Holiday Target Group Map (Full day holidays for all target groups)
-- New Year's Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (1, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (1, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (1, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (1, 4, 0);

-- National Sovereignty and Children's Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (2, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (2, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (2, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (2, 4, 0);

-- Labor Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (3, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (3, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (3, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (3, 4, 0);

-- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (4, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (4, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (4, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (4, 4, 0);

-- Victory Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (5, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (5, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (5, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (5, 4, 0);

-- Republic Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (6, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (6, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (6, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (6, 4, 0);

-- Ramadan Feast (3 days)
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (7, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (7, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (7, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (7, 4, 0);

INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (8, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (8, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (8, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (8, 4, 0);

INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (9, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (9, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (9, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (9, 4, 0);

-- Feast of Sacrifice (4 days)
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (10, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (10, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (10, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (10, 4, 0);

INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (11, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (11, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (11, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (11, 4, 0);

INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (12, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (12, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (12, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (12, 4, 0);

INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (13, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (13, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (13, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (13, 4, 0);

-- US Holidays Target Group Mappings
-- Martin Luther King Jr. Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (14, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (14, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (14, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (14, 4, 0);

-- Presidents' Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (15, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (15, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (15, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (15, 4, 0);

-- Memorial Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (16, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (16, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (16, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (16, 4, 0);

-- Independence Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (17, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (17, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (17, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (17, 4, 0);

-- Labor Day (US)
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (18, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (18, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (18, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (18, 4, 0);

-- Columbus Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (19, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (19, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (19, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (19, 4, 0);

-- Veterans Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (20, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (20, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (20, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (20, 4, 0);

-- Thanksgiving Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (21, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (21, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (21, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (21, 4, 0);

-- Christmas Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (22, 1, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (22, 2, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (22, 3, 0);
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id, is_half_day) VALUES (22, 4, 0);

COMMIT;