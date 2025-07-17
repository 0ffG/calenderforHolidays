-- Insert Languages
INSERT INTO Languages (id, code) VALUES (1, 'TR');
INSERT INTO Languages (id, code) VALUES (2, 'EN');
INSERT INTO Languages (id, code) VALUES (3, 'FR');

-- Insert Countries
INSERT INTO Countries (id, default_name) VALUES (1, 'Turkey');
INSERT INTO Countries (id, default_name) VALUES (2, 'United States');

-- Insert Country Translations
-- Turkey translations
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (1, 1, 'Türkiye');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (1, 2, 'Turkey');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (1, 3, 'Turquie');

-- USA translations
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (2, 1, 'Amerika Birleşik Devletleri');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (2, 2, 'United States');
INSERT INTO Country_Translations (country_id, language_id, name) VALUES (2, 3, 'États-Unis');

-- Insert Holidays
-- Turkey Holidays
INSERT INTO Holidays (id, default_name) VALUES (1, 'New Year''s Day');
INSERT INTO Holidays (id, default_name) VALUES (2, 'National Sovereignty and Children''s Day');
INSERT INTO Holidays (id, default_name) VALUES (3, 'Labour and Solidarity Day');
INSERT INTO Holidays (id, default_name) VALUES (4, 'Commemoration of Atatürk, Youth and Sports Day');
INSERT INTO Holidays (id, default_name) VALUES (5, 'Democracy and National Unity Day');
INSERT INTO Holidays (id, default_name) VALUES (6, 'Victory Day');
INSERT INTO Holidays (id, default_name) VALUES (7, 'Republic Day');
INSERT INTO Holidays (id, default_name) VALUES (8, 'Ramadan Feast');
INSERT INTO Holidays (id, default_name) VALUES (9, 'Feast of Sacrifice');

-- USA Holidays
INSERT INTO Holidays (id, default_name) VALUES (10, 'New Year''s Day');
INSERT INTO Holidays (id, default_name) VALUES (11, 'Martin Luther King Jr. Day');
INSERT INTO Holidays (id, default_name) VALUES (12, 'Presidents'' Day');
INSERT INTO Holidays (id, default_name) VALUES (13, 'Memorial Day');
INSERT INTO Holidays (id, default_name) VALUES (14, 'Independence Day');
INSERT INTO Holidays (id, default_name) VALUES (15, 'Labor Day');
INSERT INTO Holidays (id, default_name) VALUES (16, 'Columbus Day');
INSERT INTO Holidays (id, default_name) VALUES (17, 'Veterans Day');
INSERT INTO Holidays (id, default_name) VALUES (18, 'Thanksgiving Day');
INSERT INTO Holidays (id, default_name) VALUES (19, 'Christmas Day');

-- Insert Holiday Translations
-- Turkey Holiday Translations
-- New Year's Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (1, 1, 'Yılbaşı', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (1, 2, 'New Year''s Day', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (1, 3, 'Jour de l''An', 'Official');

-- National Sovereignty and Children's Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (2, 1, 'Ulusal Egemenlik ve Çocuk Bayramı', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (2, 2, 'National Sovereignty and Children''s Day', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (2, 3, 'Fête de la Souveraineté Nationale et des Enfants', 'Official');

-- Labour and Solidarity Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (3, 1, 'Emek ve Dayanışma Günü', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (3, 2, 'Labour and Solidarity Day', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (3, 3, 'Fête du Travail et de la Solidarité', 'Official');

-- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (4, 1, 'Atatürk''ü Anma, Gençlik ve Spor Bayramı', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (4, 2, 'Commemoration of Atatürk, Youth and Sports Day', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (4, 3, 'Commémoration d''Atatürk, Fête de la Jeunesse et du Sport', 'Official');

-- Democracy and National Unity Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (5, 1, 'Demokrasi ve Milli Birlik Günü', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (5, 2, 'Democracy and National Unity Day', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (5, 3, 'Jour de la Démocratie et de l''Unité Nationale', 'Official');

-- Victory Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (6, 1, 'Zafer Bayramı', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (6, 2, 'Victory Day', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (6, 3, 'Fête de la Victoire', 'Official');

-- Republic Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (7, 1, 'Cumhuriyet Bayramı', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (7, 2, 'Republic Day', 'Official');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (7, 3, 'Fête de la République', 'Official');

-- Ramadan Feast
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (8, 1, 'Ramazan Bayramı', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (8, 2, 'Ramadan Feast', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (8, 3, 'Fête du Ramadan', 'Religious');

-- Feast of Sacrifice
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (9, 1, 'Kurban Bayramı', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (9, 2, 'Feast of Sacrifice', 'Religious');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (9, 3, 'Fête du Sacrifice', 'Religious');

-- USA Holiday Translations
-- New Year's Day (USA)
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (10, 1, 'Yılbaşı', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (10, 2, 'New Year''s Day', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (10, 3, 'Jour de l''An', 'Federal');

-- Martin Luther King Jr. Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (11, 1, 'Martin Luther King Jr. Günü', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (11, 2, 'Martin Luther King Jr. Day', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (11, 3, 'Jour de Martin Luther King Jr.', 'Federal');

-- Presidents' Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (12, 1, 'Başkanlar Günü', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (12, 2, 'Presidents'' Day', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (12, 3, 'Fête des Présidents', 'Federal');

-- Memorial Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (13, 1, 'Anma Günü', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (13, 2, 'Memorial Day', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (13, 3, 'Jour du Souvenir', 'Federal');

-- Independence Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (14, 1, 'Bağımsızlık Günü', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (14, 2, 'Independence Day', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (14, 3, 'Fête de l''Indépendance', 'Federal');

-- Labor Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (15, 1, 'İşçi Bayramı', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (15, 2, 'Labor Day', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (15, 3, 'Fête du Travail', 'Federal');

-- Columbus Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (16, 1, 'Kolomb Günü', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (16, 2, 'Columbus Day', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (16, 3, 'Jour de Christophe Colomb', 'Federal');

-- Veterans Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (17, 1, 'Gaziler Günü', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (17, 2, 'Veterans Day', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (17, 3, 'Jour des Anciens Combattants', 'Federal');

-- Thanksgiving Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (18, 1, 'Şükran Günü', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (18, 2, 'Thanksgiving Day', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (18, 3, 'Action de Grâce', 'Federal');

-- Christmas Day
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (19, 1, 'Noel', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (19, 2, 'Christmas Day', 'Federal');
INSERT INTO Holiday_Translations (holiday_id, language_id, name, type) VALUES (19, 3, 'Noël', 'Federal');

-- Insert Holiday Countries
-- Turkey holidays
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (1, 1);  -- New Year's Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (2, 1);  -- National Sovereignty and Children's Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (3, 1);  -- Labour and Solidarity Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (4, 1);  -- Commemoration of Atatürk, Youth and Sports Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (5, 1);  -- Democracy and National Unity Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (6, 1);  -- Victory Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (7, 1);  -- Republic Day - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (8, 1);  -- Ramadan Feast - Turkey
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (9, 1);  -- Feast of Sacrifice - Turkey

-- USA holidays
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (10, 2); -- New Year's Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (11, 2); -- Martin Luther King Jr. Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (12, 2); -- Presidents' Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (13, 2); -- Memorial Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (14, 2); -- Independence Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (15, 2); -- Labor Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (16, 2); -- Columbus Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (17, 2); -- Veterans Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (18, 2); -- Thanksgiving Day - USA
INSERT INTO Holiday_Countries (holiday_id, country_id) VALUES (19, 2); -- Christmas Day - USA

-- Insert Holiday Dates for 2025
-- Turkey Holiday Dates
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (1, DATE '2025-01-01');  -- New Year's Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (2, DATE '2025-04-23');  -- National Sovereignty and Children's Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (3, DATE '2025-05-01');  -- Labour and Solidarity Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (4, DATE '2025-05-19');  -- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (5, DATE '2025-07-15');  -- Democracy and National Unity Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (6, DATE '2025-08-30');  -- Victory Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (7, DATE '2025-10-29');  -- Republic Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (8, DATE '2025-03-31');  -- Ramadan Feast Day 1
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (9, DATE '2025-04-01');  -- Ramadan Feast Day 2
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (10, DATE '2025-04-02'); -- Ramadan Feast Day 3
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (11, DATE '2025-06-07'); -- Feast of Sacrifice Day 1
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (12, DATE '2025-06-08'); -- Feast of Sacrifice Day 2
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (13, DATE '2025-06-09'); -- Feast of Sacrifice Day 3
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (14, DATE '2025-06-10'); -- Feast of Sacrifice Day 4

-- USA Holiday Dates
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (15, DATE '2025-01-01'); -- New Year's Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (16, DATE '2025-01-20'); -- Martin Luther King Jr. Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (17, DATE '2025-02-17'); -- Presidents' Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (18, DATE '2025-05-26'); -- Memorial Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (19, DATE '2025-07-04'); -- Independence Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (20, DATE '2025-09-01'); -- Labor Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (21, DATE '2025-10-13'); -- Columbus Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (22, DATE '2025-11-11'); -- Veterans Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (23, DATE '2025-11-27'); -- Thanksgiving Day
INSERT INTO Holiday_Dates (id, holiday_date) VALUES (24, DATE '2025-12-25'); -- Christmas Day

-- Insert Holiday Dates Description
-- Turkey Holiday Descriptions
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (1, 1, 1, 0, 1);   -- New Year's Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (2, 2, 2, 0, 1);   -- National Sovereignty and Children's Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (3, 3, 3, 0, 1);   -- Labour and Solidarity Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (4, 4, 4, 0, 1);   -- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (5, 5, 5, 0, 1);   -- Democracy and National Unity Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (6, 6, 6, 0, 1);   -- Victory Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (7, 7, 7, 0, 1);   -- Republic Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (8, 8, 8, 0, 0);   -- Ramadan Feast Day 1
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (9, 8, 9, 0, 0);   -- Ramadan Feast Day 2
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (10, 8, 10, 0, 0); -- Ramadan Feast Day 3
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (11, 9, 11, 0, 0); -- Feast of Sacrifice Day 1
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (12, 9, 12, 0, 0); -- Feast of Sacrifice Day 2
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (13, 9, 13, 0, 0); -- Feast of Sacrifice Day 3
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (14, 9, 14, 0, 0); -- Feast of Sacrifice Day 4

-- USA Holiday Descriptions
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (15, 10, 15, 0, 1); -- New Year's Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (16, 11, 16, 0, 1); -- Martin Luther King Jr. Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (17, 12, 17, 0, 1); -- Presidents' Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (18, 13, 18, 0, 1); -- Memorial Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (19, 14, 19, 0, 1); -- Independence Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (20, 15, 20, 0, 1); -- Labor Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (21, 16, 21, 0, 1); -- Columbus Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (22, 17, 22, 0, 1); -- Veterans Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (23, 18, 23, 0, 1); -- Thanksgiving Day
INSERT INTO Holiday_Dates_Description (id, holiday_id, date_id, is_half_day, is_recurring) VALUES (24, 19, 24, 0, 1); -- Christmas Day

-- Insert Holiday Target Groups
INSERT INTO Holiday_Target_Groups (id, default_name) VALUES (1, 'General Public');
INSERT INTO Holiday_Target_Groups (id, default_name) VALUES (2, 'Government Employees');
INSERT INTO Holiday_Target_Groups (id, default_name) VALUES (3, 'Private Sector');
INSERT INTO Holiday_Target_Groups (id, default_name) VALUES (4, 'Students');
INSERT INTO Holiday_Target_Groups (id, default_name) VALUES (5, 'Religious Groups');

-- Insert Holiday Target Group Translations
-- General Public
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (1, 1, 'Genel Halk');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (1, 2, 'General Public');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (1, 3, 'Grand Public');

-- Government Employees
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (2, 1, 'Devlet Çalışanları');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (2, 2, 'Government Employees');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (2, 3, 'Employés du Gouvernement');

-- Private Sector
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (3, 1, 'Özel Sektör');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (3, 2, 'Private Sector');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (3, 3, 'Secteur Privé');

-- Students
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (4, 1, 'Öğrenciler');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (4, 2, 'Students');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (4, 3, 'Étudiants');

-- Religious Groups
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (5, 1, 'Dini Gruplar');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (5, 2, 'Religious Groups');
INSERT INTO Holiday_Target_Group_Translations (target_group_id, language_id, name) VALUES (5, 3, 'Groupes Religieux');

-- Insert Holiday Dates Description Translations
-- Turkey Holiday Description Translations
-- New Year's Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (1, 1, 'Yılbaşı tatili - resmi tatil günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (1, 2, 'New Year''s Day holiday - official public holiday');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (1, 3, 'Vacances du Jour de l''An - jour férié officiel');

-- National Sovereignty and Children's Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (2, 1, 'Ulusal Egemenlik ve Çocuk Bayramı - TBMM''nin açılışının yıldönümü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (2, 2, 'National Sovereignty and Children''s Day - Anniversary of the opening of the Turkish Grand National Assembly');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (2, 3, 'Fête de la Souveraineté Nationale et des Enfants - Anniversaire de l''ouverture de la Grande Assemblée Nationale de Turquie');

-- Labour and Solidarity Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (3, 1, 'Emek ve Dayanışma Günü - işçilerin ve emekçilerin günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (3, 2, 'Labour and Solidarity Day - day of workers and laborers');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (3, 3, 'Fête du Travail et de la Solidarité - journée des travailleurs et des ouvriers');

-- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (4, 1, 'Atatürk''ü Anma, Gençlik ve Spor Bayramı - Atatürk''ün Samsun''a çıkışının yıldönümü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (4, 2, 'Commemoration of Atatürk, Youth and Sports Day - Anniversary of Atatürk''s arrival in Samsun');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (4, 3, 'Commémoration d''Atatürk, Fête de la Jeunesse et du Sport - Anniversaire de l''arrivée d''Atatürk à Samsun');

-- Democracy and National Unity Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (5, 1, 'Demokrasi ve Milli Birlik Günü - 15 Temmuz darbe girişiminin yıldönümü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (5, 2, 'Democracy and National Unity Day - Anniversary of the July 15 coup attempt');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (5, 3, 'Jour de la Démocratie et de l''Unité Nationale - Anniversaire de la tentative de coup d''État du 15 juillet');

-- Victory Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (6, 1, 'Zafer Bayramı - Büyük Taarruz''un ve Kurtuluş Savaşı''nın zaferi');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (6, 2, 'Victory Day - Victory of the Great Offensive and the War of Independence');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (6, 3, 'Fête de la Victoire - Victoire de la Grande Offensive et de la Guerre d''Indépendance');

-- Republic Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (7, 1, 'Cumhuriyet Bayramı - Türkiye Cumhuriyeti''nin ilanı');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (7, 2, 'Republic Day - Proclamation of the Republic of Turkey');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (7, 3, 'Fête de la République - Proclamation de la République de Turquie');

-- Ramadan Feast Days
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (8, 1, 'Ramazan Bayramı - 1. Gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (8, 2, 'Ramadan Feast - Day 1');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (8, 3, 'Fête du Ramadan - Jour 1');

INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (9, 1, 'Ramazan Bayramı - 2. Gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (9, 2, 'Ramadan Feast - Day 2');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (9, 3, 'Fête du Ramadan - Jour 2');

INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (10, 1, 'Ramazan Bayramı - 3. Gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (10, 2, 'Ramadan Feast - Day 3');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (10, 3, 'Fête du Ramadan - Jour 3');

-- Feast of Sacrifice Days
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (11, 1, 'Kurban Bayramı - 1. Gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (11, 2, 'Feast of Sacrifice - Day 1');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (11, 3, 'Fête du Sacrifice - Jour 1');

INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (12, 1, 'Kurban Bayramı - 2. Gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (12, 2, 'Feast of Sacrifice - Day 2');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (12, 3, 'Fête du Sacrifice - Jour 2');

INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (13, 1, 'Kurban Bayramı - 3. Gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (13, 2, 'Feast of Sacrifice - Day 3');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (13, 3, 'Fête du Sacrifice - Jour 3');

INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (14, 1, 'Kurban Bayramı - 4. Gün');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (14, 2, 'Feast of Sacrifice - Day 4');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (14, 3, 'Fête du Sacrifice - Jour 4');

-- USA Holiday Description Translations
-- New Year's Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (15, 1, 'Yılbaşı tatili - federal tatil günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (15, 2, 'New Year''s Day holiday - federal public holiday');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (15, 3, 'Vacances du Jour de l''An - jour férié fédéral');

-- Martin Luther King Jr. Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (16, 1, 'Martin Luther King Jr. Günü - sivil haklar lideri onuruna');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (16, 2, 'Martin Luther King Jr. Day - in honor of the civil rights leader');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (16, 3, 'Jour de Martin Luther King Jr. - en l''honneur du leader des droits civiques');

-- Presidents' Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (17, 1, 'Başkanlar Günü - George Washington''un doğum günü');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (17, 2, 'Presidents'' Day - George Washington''s Birthday');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (17, 3, 'Fête des Présidents - Anniversaire de George Washington');

-- Memorial Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (18, 1, 'Anma Günü - askeri hizmette ölen askerleri anma');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (18, 2, 'Memorial Day - remembering military personnel who died in service');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (18, 3, 'Jour du Souvenir - en mémoire du personnel militaire mort en service');

-- Independence Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (19, 1, 'Bağımsızlık Günü - Amerika''nın bağımsızlığının ilanı');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (19, 2, 'Independence Day - Declaration of American Independence');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (19, 3, 'Fête de l''Indépendance - Déclaration d''Indépendance américaine');

-- Labor Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (20, 1, 'İşçi Bayramı - işçilerin ve emekçilerin katkılarını kutlama');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (20, 2, 'Labor Day - celebrating the contributions of workers and laborers');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (20, 3, 'Fête du Travail - célébrant les contributions des travailleurs et ouvriers');

-- Columbus Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (21, 1, 'Kolomb Günü - Christopher Columbus''un Amerika''ya varışı');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (21, 2, 'Columbus Day - Christopher Columbus''s arrival in the Americas');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (21, 3, 'Jour de Christophe Colomb - arrivée de Christophe Colomb en Amérique');

-- Veterans Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (22, 1, 'Gaziler Günü - tüm askeri gazileri onurlandırma');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (22, 2, 'Veterans Day - honoring all military veterans');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (22, 3, 'Jour des Anciens Combattants - honorant tous les anciens combattants militaires');

-- Thanksgiving Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (23, 1, 'Şükran Günü - hasat ve yılın bereketleri için şükran');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (23, 2, 'Thanksgiving Day - giving thanks for the harvest and blessings of the year');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (23, 3, 'Action de Grâce - remerciant pour la moisson et les bénédictions de l''année');

-- Christmas Day
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (24, 1, 'Noel - İsa Mesih''in doğumunu kutlama');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (24, 2, 'Christmas Day - celebrating the birth of Jesus Christ');
INSERT INTO Holiday_Dates_Description_Translations (description_id, language_id, description) VALUES (24, 3, 'Noël - célébrant la naissance de Jésus-Christ');

-- Insert Holiday Target Group Map
-- Turkey holidays - all apply to general public
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (1, 1);  -- New Year's Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (2, 1);  -- National Sovereignty and Children's Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (3, 1);  -- Labour and Solidarity Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (4, 1);  -- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (5, 1);  -- Democracy and National Unity Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (6, 1);  -- Victory Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (7, 1);  -- Republic Day

-- Religious holidays also apply to religious groups
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (8, 1);   -- Ramadan Feast Day 1
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (8, 5);   -- Ramadan Feast Day 1 - Religious Groups
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (9, 1);   -- Ramadan Feast Day 2
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (9, 5);   -- Ramadan Feast Day 2 - Religious Groups
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (10, 1);  -- Ramadan Feast Day 3
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (10, 5);  -- Ramadan Feast Day 3 - Religious Groups
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (11, 1);  -- Feast of Sacrifice Day 1
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (11, 5);  -- Feast of Sacrifice Day 1 - Religious Groups
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (12, 1);  -- Feast of Sacrifice Day 2
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (12, 5);  -- Feast of Sacrifice Day 2 - Religious Groups
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (13, 1);  -- Feast of Sacrifice Day 3
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (13, 5);  -- Feast of Sacrifice Day 3 - Religious Groups
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (14, 1);  -- Feast of Sacrifice Day 4
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (14, 5);  -- Feast of Sacrifice Day 4 - Religious Groups

-- USA holidays - all apply to general public
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (15, 1); -- New Year's Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (16, 1); -- Martin Luther King Jr. Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (17, 1); -- Presidents' Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (18, 1); -- Memorial Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (19, 1); -- Independence Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (20, 1); -- Labor Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (21, 1); -- Columbus Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (22, 1); -- Veterans Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (23, 1); -- Thanksgiving Day

-- Christmas also applies to religious groups
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (24, 1); -- Christmas Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (24, 5); -- Christmas Day - Religious Groups

-- Government employees get all holidays
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (1, 2);  -- New Year's Day Turkey
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (2, 2);  -- National Sovereignty and Children's Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (3, 2);  -- Labour and Solidarity Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (4, 2);  -- Commemoration of Atatürk, Youth and Sports Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (5, 2);  -- Democracy and National Unity Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (6, 2);  -- Victory Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (7, 2);  -- Republic Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (8, 2);  -- Ramadan Feast Day 1
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (9, 2);  -- Ramadan Feast Day 2
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (10, 2); -- Ramadan Feast Day 3
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (11, 2); -- Feast of Sacrifice Day 1
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (12, 2); -- Feast of Sacrifice Day 2
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (13, 2); -- Feast of Sacrifice Day 3
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (14, 2); -- Feast of Sacrifice Day 4

-- USA Government employees
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (15, 2); -- New Year's Day USA
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (16, 2); -- Martin Luther King Jr. Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (17, 2); -- Presidents' Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (18, 2); -- Memorial Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (19, 2); -- Independence Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (20, 2); -- Labor Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (21, 2); -- Columbus Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (22, 2); -- Veterans Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (23, 2); -- Thanksgiving Day
INSERT INTO Holiday_Target_Group_Map (date_description_id, target_group_id) VALUES (24, 2); -- Christmas Day

COMMIT;
