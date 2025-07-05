-- =================================================================
-- BÖLÜM 1: TEMEL VERİLER (ÜLKELER, TÜRLER, GRUPLAR)
-- =================================================================

-- 1.1. Ülkeleri Ekle (Countries)
INSERT INTO Countries (id, name, code) VALUES (1, 'Türkiye', 'TR');
INSERT INTO Countries (id, name, code) VALUES (2, 'United States of America', 'USA');
INSERT INTO Countries (id, name, code) VALUES (3, 'France', 'FR');

-- 1.2. Tatil Türlerini Ekle (HolidayTypes)
INSERT INTO HolidayTypes (id, code) VALUES (1, 'official');
INSERT INTO HolidayTypes (id, code) VALUES (2, 'religious');

-- 1.3. Hedef Grupları Ekle (TargetGroups)
INSERT INTO TargetGroups (id, code) VALUES (1, 'public');
INSERT INTO TargetGroups (id, code) VALUES (2, 'student');
INSERT INTO TargetGroups (id, code) VALUES (3, 'private');


-- =================================================================
-- BÖLÜM 2: ÇEVİRİ VERİLERİ
-- =================================================================

-- 2.1. Tatil Türü Çevirileri (HolidayTypeTranslations)
INSERT INTO HolidayTypeTranslations (holiday_type_id, language_code, name) VALUES (1, 'tr', 'Resmî Tatil');
INSERT INTO HolidayTypeTranslations (holiday_type_id, language_code, name) VALUES (1, 'en', 'Official Holiday');
INSERT INTO HolidayTypeTranslations (holiday_type_id, language_code, name) VALUES (1, 'fr', 'Fête officielle');
INSERT INTO HolidayTypeTranslations (holiday_type_id, language_code, name) VALUES (2, 'tr', 'Dini Bayram');
INSERT INTO HolidayTypeTranslations (holiday_type_id, language_code, name) VALUES (2, 'en', 'Religious Holiday');
INSERT INTO HolidayTypeTranslations (holiday_type_id, language_code, name) VALUES (2, 'fr', 'Fête religieuse');

-- 2.2. Hedef Grup Çevirileri (TargetGroupTranslations)
INSERT INTO TargetGroupTranslations (target_group_id, language_code, name) VALUES (1, 'tr', 'Kamu Çalışanları');
INSERT INTO TargetGroupTranslations (target_group_id, language_code, name) VALUES (1, 'en', 'Public Sector');
INSERT INTO TargetGroupTranslations (target_group_id, language_code, name) VALUES (1, 'fr', 'Secteur public');
INSERT INTO TargetGroupTranslations (target_group_id, language_code, name) VALUES (2, 'tr', 'Öğrenciler');
INSERT INTO TargetGroupTranslations (target_group_id, language_code, name) VALUES (2, 'en', 'Students');
INSERT INTO TargetGroupTranslations (target_group_id, language_code, name) VALUES (2, 'fr', 'Étudiants');
INSERT INTO TargetGroupTranslations (target_group_id, language_code, name) VALUES (3, 'tr', 'Özel Sektör');
INSERT INTO TargetGroupTranslations (target_group_id, language_code, name) VALUES (3, 'en', 'Private Sector');
INSERT INTO TargetGroupTranslations (target_group_id, language_code, name) VALUES (3, 'fr', 'Secteur privé');


-- =================================================================
-- BÖLÜM 3: 2025 YILI TATİLLERİ (HOLIDAYS)
-- Oracle'da boolean yerine 1 (true) ve 0 (false) kullanılır.
-- =================================================================

INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (1, 'tr_new_year_2025', 1, 1, TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (2, 'tr_eid_al_fitr_2025', 1, 2, TO_DATE('2025-03-31', 'YYYY-MM-DD'), TO_DATE('2025-04-02', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (3, 'tr_national_sovereignty_2025', 1, 1, TO_DATE('2025-04-23', 'YYYY-MM-DD'), TO_DATE('2025-04-23', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (4, 'tr_labour_day_2025', 1, 1, TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (5, 'tr_youth_sports_day_2025', 1, 1, TO_DATE('2025-05-19', 'YYYY-MM-DD'), TO_DATE('2025-05-19', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (6, 'tr_eid_al_adha_2025', 1, 2, TO_DATE('2025-06-07', 'YYYY-MM-DD'), TO_DATE('2025-06-10', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (7, 'tr_democracy_day_2025', 1, 1, TO_DATE('2025-07-15', 'YYYY-MM-DD'), TO_DATE('2025-07-15', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (8, 'tr_victory_day_2025', 1, 1, TO_DATE('2025-08-30', 'YYYY-MM-DD'), TO_DATE('2025-08-30', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (9, 'tr_republic_day_2025', 1, 1, TO_DATE('2025-10-29', 'YYYY-MM-DD'), TO_DATE('2025-10-29', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (10, 'us_new_year_2025', 2, 1, TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (11, 'us_mlk_day_2025', 2, 1, TO_DATE('2025-01-20', 'YYYY-MM-DD'), TO_DATE('2025-01-20', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (12, 'us_presidents_day_2025', 2, 1, TO_DATE('2025-02-17', 'YYYY-MM-DD'), TO_DATE('2025-02-17', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (13, 'us_memorial_day_2025', 2, 1, TO_DATE('2025-05-26', 'YYYY-MM-DD'), TO_DATE('2025-05-26', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (14, 'us_juneteenth_2025', 2, 1, TO_DATE('2025-06-19', 'YYYY-MM-DD'), TO_DATE('2025-06-19', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (15, 'us_independence_day_2025', 2, 1, TO_DATE('2025-07-04', 'YYYY-MM-DD'), TO_DATE('2025-07-04', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (16, 'us_labor_day_2025', 2, 1, TO_DATE('2025-09-01', 'YYYY-MM-DD'), TO_DATE('2025-09-01', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (17, 'us_columbus_day_2025', 2, 1, TO_DATE('2025-10-13', 'YYYY-MM-DD'), TO_DATE('2025-10-13', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (18, 'us_veterans_day_2025', 2, 1, TO_DATE('2025-11-11', 'YYYY-MM-DD'), TO_DATE('2025-11-11', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (19, 'us_thanksgiving_day_2025', 2, 1, TO_DATE('2025-11-27', 'YYYY-MM-DD'), TO_DATE('2025-11-27', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (20, 'us_christmas_day_2025', 2, 2, TO_DATE('2025-12-25', 'YYYY-MM-DD'), TO_DATE('2025-12-25', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (21, 'fr_new_year_2025', 3, 1, TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (22, 'fr_easter_monday_2025', 3, 2, TO_DATE('2025-04-21', 'YYYY-MM-DD'), TO_DATE('2025-04-21', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (23, 'fr_labour_day_2025', 3, 1, TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (24, 'fr_victory_day_1945_2025', 3, 1, TO_DATE('2025-05-08', 'YYYY-MM-DD'), TO_DATE('2025-05-08', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (25, 'fr_ascension_day_2025', 3, 2, TO_DATE('2025-05-29', 'YYYY-MM-DD'), TO_DATE('2025-05-29', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (26, 'fr_whit_monday_2025', 3, 2, TO_DATE('2025-06-09', 'YYYY-MM-DD'), TO_DATE('2025-06-09', 'YYYY-MM-DD'), 1, 1);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (27, 'fr_bastille_day_2025', 3, 1, TO_DATE('2025-07-14', 'YYYY-MM-DD'), TO_DATE('2025-07-14', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (28, 'fr_assumption_day_2025', 3, 2, TO_DATE('2025-08-15', 'YYYY-MM-DD'), TO_DATE('2025-08-15', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (29, 'fr_all_saints_day_2025', 3, 2, TO_DATE('2025-11-01', 'YYYY-MM-DD'), TO_DATE('2025-11-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (30, 'fr_armistice_day_2025', 3, 1, TO_DATE('2025-11-11', 'YYYY-MM-DD'), TO_DATE('2025-11-11', 'YYYY-MM-DD'), 1, 0);
INSERT INTO Holidays (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (31, 'fr_christmas_day_2025', 3, 2, TO_DATE('2025-12-25', 'YYYY-MM-DD'), TO_DATE('2025-12-25', 'YYYY-MM-DD'), 1, 0);


-- =================================================================
-- BÖLÜM 4: TATİL AÇIKLAMALARI (HolidayDescriptions)
-- Her tatil için tr, en, fr dillerinde açıklamalar
-- =================================================================

INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (1, 'tr', 'Yılbaşı', 'Yeni yılın ilk günü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (1, 'en', 'New Year''s Day', 'The first day of the new year.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (1, 'fr', 'Jour de l''An', 'Le premier jour de la nouvelle année.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (2, 'tr', 'Ramazan Bayramı', 'Ramazan ayının sonunu kutlayan dini bayram.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (2, 'en', 'Eid al-Fitr', 'Religious holiday celebrating the end of Ramadan.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (2, 'fr', 'Aïd el-Fitr', 'Fête religieuse marquant la fin du mois de Ramadan.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (3, 'tr', 'Ulusal Egemenlik ve Çocuk Bayramı', 'TBMM''nin açılışı ve çocuklara adanmış bir bayram.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (3, 'en', 'National Sovereignty and Children''s Day', 'Commemoration of the Grand National Assembly of Turkey and a day for children.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (3, 'fr', 'Journée de la Souveraineté Nationale et des Enfants', 'Commémoration de l''ouverture de la Grande Assemblée Nationale de Turquie et journée dédiée aux enfants.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (4, 'tr', 'Emek ve Dayanışma Günü', 'İşçi ve emekçiler onuruna kutlanan uluslararası bir gün.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (4, 'en', 'Labour and Solidarity Day', 'An international day celebrated in honor of workers and laborers.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (4, 'fr', 'Fête du Travail et de la Solidarité', 'Journée internationale célébrée en l''honneur des travailleurs.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (5, 'tr', 'Atatürk''ü Anma, Gençlik ve Spor Bayramı', 'Mustafa Kemal Atatürk''ün Samsun''a çıkışını ve gençliği onurlandıran gün.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (5, 'en', 'Commemoration of Atatürk, Youth and Sports Day', 'Commemorates Mustafa Kemal Atatürk''s landing at Samsun and honors the youth.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (5, 'fr', 'Commémoration d''Atatürk et Journée de la Jeunesse et des Sports', 'Commémore le débarquement de Mustafa Kemal Atatürk à Samsun et honore la jeunesse.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (6, 'tr', 'Kurban Bayramı', 'İbrahim peygamberin fedakarlığını anan dini bayram.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (6, 'en', 'Eid al-Adha', 'Religious holiday commemorating the willingness of Abraham to sacrifice his son.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (6, 'fr', 'Aïd al-Adha', 'Fête religieuse qui commémore la soumission d''Abraham à Dieu.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (7, 'tr', 'Demokrasi ve Milli Birlik Günü', '2016 yılındaki darbe girişimine karşı Türk halkının zaferini anma günü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (7, 'en', 'Democracy and National Unity Day', 'Commemorates the victory of the Turkish people against the 2016 coup attempt.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (7, 'fr', 'Journée de la Démocratie et de l''Unité Nationale', 'Commémore la victoire du peuple turc contre la tentative de coup d''État de 2016.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (8, 'tr', 'Zafer Bayramı', 'Türk Kurtuluş Savaşı''ndaki Dumlupınar Meydan Muharebesi''nin kazanılmasının yıldönümü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (8, 'en', 'Victory Day', 'Anniversary of the victory at the Battle of Dumlupınar in the Turkish War of Independence.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (8, 'fr', 'Jour de la Victoire', 'Anniversaire de la victoire à la bataille de Dumlupınar lors de la guerre d''indépendance turque.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (9, 'tr', 'Cumhuriyet Bayramı', 'Türkiye Cumhuriyeti''nin ilan edildiği gün.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (9, 'en', 'Republic Day', 'The day the Republic of Turkey was proclaimed.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (9, 'fr', 'Jour de la République', 'Le jour de la proclamation de la République de Turquie.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (10, 'tr', 'Yılbaşı', 'Yeni yılın ilk günü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (10, 'en', 'New Year''s Day', 'The first day of the new year.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (10, 'fr', 'Jour de l''An', 'Le premier jour de la nouvelle année.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (11, 'tr', 'Martin Luther King, Jr. Günü', 'Martin Luther King Jr.''ın hayatını ve mirasını onurlandıran gün.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (11, 'en', 'Martin Luther King, Jr. Day', 'Honors the life and legacy of Martin Luther King, Jr.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (11, 'fr', 'Jour de Martin Luther King, Jr.', 'Honore la vie et l''héritage de Martin Luther King, Jr.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (12, 'tr', 'Başkanlar Günü', 'ABD''nin başkanlarını, özellikle George Washington''ı anma günü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (12, 'en', 'Presidents'' Day', 'Honors the presidents of the United States, especially George Washington.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (12, 'fr', 'Jour des Présidents', 'Honore les présidents des États-Unis, en particulier George Washington.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (13, 'tr', 'Anma Günü', 'ABD Silahlı Kuvvetleri''nde görev yaparken hayatını kaybedenleri anma günü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (13, 'en', 'Memorial Day', 'Day for honoring and mourning the U.S. military personnel who have died while serving.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (13, 'fr', 'Jour du Souvenir (Memorial Day)', 'Jour pour honorer et pleurer le personnel militaire américain décédé en service.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (14, 'tr', 'Juneteenth Ulusal Bağımsızlık Günü', 'ABD''de köleliğin sona ermesini anan federal tatil.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (14, 'en', 'Juneteenth National Independence Day', 'Federal holiday commemorating the emancipation of enslaved African Americans.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (14, 'fr', 'Juneteenth', 'Jour férié fédéral commémorant la fin de l''esclavage aux États-Unis.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (15, 'tr', 'Bağımsızlık Günü', 'ABD Bağımsızlık Bildirgesi''nin kabulünü kutlayan gün.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (15, 'en', 'Independence Day', 'Celebrates the adoption of the Declaration of Independence.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (15, 'fr', 'Jour de l''Indépendance', 'Célèbre l''adoption de la Déclaration d''indépendance.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (16, 'tr', 'İşçi Bayramı', 'İşçi hareketinin katkılarını onurlandıran gün.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (16, 'en', 'Labor Day', 'Honors the contributions of the American labor movement.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (16, 'fr', 'Fête du Travail (Labor Day)', 'Honore les contributions du mouvement ouvrier américain.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (17, 'tr', 'Kolomb Günü', 'Kristof Kolomb''un 1492''de Amerika''ya varışını anma günü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (17, 'en', 'Columbus Day', 'Commemorates the arrival of Christopher Columbus in the Americas in 1492.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (17, 'fr', 'Jour de Christophe Colomb', 'Commémore l''arrivée de Christophe Colomb dans les Amériques en 1492.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (18, 'tr', 'Gaziler Günü', 'ABD Silahlı Kuvvetleri''nde görev yapmış tüm gazileri onurlandıran gün.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (18, 'en', 'Veterans Day', 'Honors all military veterans who served in the United States Armed Forces.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (18, 'fr', 'Journée des anciens combattants (Veterans Day)', 'Honore tous les anciens combattants qui ont servi dans les forces armées des États-Unis.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (19, 'tr', 'Şükran Günü', 'Hasat ve geçtiğimiz yıl için şükran sunma günü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (19, 'en', 'Thanksgiving Day', 'A day of giving thanks for the harvest and of the preceding year.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (19, 'fr', 'Jour de l''Action de grâce (Thanksgiving)', 'Jour d''action de grâce pour la récolte et l''année écoulée.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (20, 'tr', 'Noel Günü', 'İsa''nın doğumunu anan Hristiyan bayramı.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (20, 'en', 'Christmas Day', 'Christian holiday commemorating the birth of Jesus.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (20, 'fr', 'Jour de Noël', 'Fête chrétienne commémorant la naissance de Jésus.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (21, 'tr', 'Yılbaşı', 'Yeni yılın ilk günü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (21, 'en', 'New Year''s Day', 'The first day of the new year.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (21, 'fr', 'Jour de l''An', 'Le premier jour de la nouvelle année.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (22, 'tr', 'Paskalya Pazartesisi', 'Paskalya''dan sonraki gün, dini bir tatil.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (22, 'en', 'Easter Monday', 'The day after Easter Sunday, a religious holiday.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (22, 'fr', 'Lundi de Pâques', 'Le jour après le dimanche de Pâques, une fête religieuse.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (23, 'tr', 'İşçi Bayramı', 'İşçi haklarını ve başarılarını kutlayan uluslararası bir gün.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (23, 'en', 'Labour Day', 'An international day celebrating the achievements of workers.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (23, 'fr', 'Fête du Travail', 'Journée internationale célébrant les réalisations des travailleurs.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (24, 'tr', '1945 Zafer Günü', 'İkinci Dünya Savaşı''nın Avrupa''da sona ermesini anma günü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (24, 'en', 'Victory in Europe Day', 'Commemorates the end of World War II in Europe.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (24, 'fr', 'Victoire 1945', 'Commémore la fin de la Seconde Guerre mondiale en Europe.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (25, 'tr', 'Göğe Yükseliş Günü', 'İsa''nın göğe yükselişini anan Hristiyan bayramı.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (25, 'en', 'Ascension Day', 'Christian holiday that commemorates Jesus Christ''s ascension into heaven.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (25, 'fr', 'Ascension', 'Fête chrétienne qui commémore l''ascension de Jésus-Christ au ciel.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (26, 'tr', 'Hamsin Yortusu Pazartesisi', 'Hamsin Yortusu''ndan sonraki Pazartesi, dini bir tatil.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (26, 'en', 'Whit Monday', 'The Monday after Pentecost, a religious holiday.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (26, 'fr', 'Lundi de Pentecôte', 'Le lundi après la Pentecôte, une fête religieuse.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (27, 'tr', 'Ulusal Bayram (Bastille Günü)', '1789''daki Bastille Baskını''nı anan Fransa''nın ulusal günü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (27, 'en', 'Bastille Day', 'The national day of France, commemorating the Storming of the Bastille in 1789.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (27, 'fr', 'Fête Nationale', 'La fête nationale de la France, commémorant la prise de la Bastille en 1789.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (28, 'tr', 'Meryem''in Göğe Kabulü', 'Meryem Ana''nın göğe kabulünü anan Katolik bayramı.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (28, 'en', 'Assumption of Mary', 'Catholic feast day commemorating the assumption of the Virgin Mary into Heaven.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (28, 'fr', 'Assomption', 'Fête catholique commémorant l''assomption de la Vierge Marie au Ciel.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (29, 'tr', 'Azizler Günü', 'Bilinen ve bilinmeyen tüm azizleri onurlandıran Hristiyan bayramı.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (29, 'en', 'All Saints'' Day', 'Christian festival in honour of all the saints, known and unknown.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (29, 'fr', 'Toussaint', 'Fête chrétienne en l''honneur de tous les saints, connus et inconnus.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (30, 'tr', 'Ateşkes Günü', '1918''de Birinci Dünya Savaşı''nı sona erdiren ateşkesi anma günü.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (30, 'en', 'Armistice Day', 'Commemorates the armistice that ended World War I in 1918.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (30, 'fr', 'Armistice 1918', 'Commémore l''armistice qui a mis fin à la Première Guerre mondiale en 1918.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (31, 'tr', 'Noel Günü', 'İsa''nın doğumunu anan Hristiyan bayramı.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (31, 'en', 'Christmas Day', 'Christian holiday commemorating the birth of Jesus.');
INSERT INTO HolidayDescriptions (holiday_id, language_code, name, description) VALUES (31, 'fr', 'Noël', 'Fête chrétienne commémorant la naissance de Jésus.');


-- =================================================================
-- BÖLÜM 5: TATİLLERİN HEDEF GRUPLARLA İLİŞKİLENDİRİLMESİ
-- (Holiday_TargetGroups)
-- Tüm ulusal tatillerin belirtilen 3 grup için de geçerli olduğu varsayılmıştır.
-- =================================================================

INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (1, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (1, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (1, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (2, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (2, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (2, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (3, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (3, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (3, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (4, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (4, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (4, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (5, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (5, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (5, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (6, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (6, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (6, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (7, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (7, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (7, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (8, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (8, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (8, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (9, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (9, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (9, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (10, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (10, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (10, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (11, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (11, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (11, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (12, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (12, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (12, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (13, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (13, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (13, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (14, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (14, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (14, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (15, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (15, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (15, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (16, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (16, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (16, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (17, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (17, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (17, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (18, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (18, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (18, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (19, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (19, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (19, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (20, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (20, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (20, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (21, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (21, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (21, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (22, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (22, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (22, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (23, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (23, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (23, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (24, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (24, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (24, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (25, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (25, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (25, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (26, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (26, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (26, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (27, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (27, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (27, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (28, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (28, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (28, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (29, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (29, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (29, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (30, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (30, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (30, 3);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (31, 1);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (31, 2);
INSERT INTO Holiday_TargetGroups (holiday_id, target_group_id) VALUES (31, 3);


-- =================================================================
-- SON
-- =================================================================
COMMIT;
