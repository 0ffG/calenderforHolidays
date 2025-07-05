-- =================================================================
-- BÖLÜM 1: TEMEL VERİLER (ÜLKELER, DİLLER, TÜRLER, GRUPLAR)
-- =================================================================

-- Mevcut verileri temizle. Bu sayede script birden fazla kez
-- çalıştırıldığında benzersiz kısıtlamalar ihlal edilmez.
DELETE FROM HOLIDAY_TARGET_GROUPS;
DELETE FROM HOLIDAY_DESCRIPTIONS;
DELETE FROM HOLIDAYS;
DELETE FROM HOLIDAY_TYPE_TRANSLATIONS;
DELETE FROM TARGET_GROUP_TRANSLATIONS;
DELETE FROM LANGUAGES;
DELETE FROM HOLIDAY_TYPES;
DELETE FROM TARGET_GROUPS;
DELETE FROM COUNTRIES;

-- 1.1. Ülkeleri Ekle (Countries)
INSERT INTO COUNTRIES (id, name, code) VALUES (1, 'Türkiye', 'TR');
INSERT INTO COUNTRIES (id, name, code) VALUES (2, 'United States of America', 'USA');
INSERT INTO COUNTRIES (id, name, code) VALUES (3, 'France', 'FR');

-- 1.2. Dilleri Ekle (Languages)
INSERT INTO LANGUAGES (id, code, name) VALUES (1, 'tr', 'Türkçe');
INSERT INTO LANGUAGES (id, code, name) VALUES (2, 'en', 'English');
INSERT INTO LANGUAGES (id, code, name) VALUES (3, 'fr', 'Français');

-- 1.3. Tatil Türlerini Ekle (HolidayTypes)
INSERT INTO HOLIDAY_TYPES (id, code) VALUES (1, 'official');
INSERT INTO HOLIDAY_TYPES (id, code) VALUES (2, 'religious');

-- 1.4. Hedef Grupları Ekle (TargetGroups)
INSERT INTO TARGET_GROUPS (id, code) VALUES (1, 'public');
INSERT INTO TARGET_GROUPS (id, code) VALUES (2, 'student');
INSERT INTO TARGET_GROUPS (id, code) VALUES (3, 'private');


-- =================================================================
-- BÖLÜM 2: ÇEVİRİ VERİLERİ
-- =================================================================

-- 2.1. Tatil Türü Çevirileri (HolidayTypeTranslations)
INSERT INTO HOLIDAY_TYPE_TRANSLATIONS (holiday_type_id, language_id, name) VALUES (1, 1, 'Resmî Tatil');
INSERT INTO HOLIDAY_TYPE_TRANSLATIONS (holiday_type_id, language_id, name) VALUES (1, 2, 'Official Holiday');
INSERT INTO HOLIDAY_TYPE_TRANSLATIONS (holiday_type_id, language_id, name) VALUES (1, 3, 'Fête officielle');
INSERT INTO HOLIDAY_TYPE_TRANSLATIONS (holiday_type_id, language_id, name) VALUES (2, 1, 'Dini Bayram');
INSERT INTO HOLIDAY_TYPE_TRANSLATIONS (holiday_type_id, language_id, name) VALUES (2, 2, 'Religious Holiday');
INSERT INTO HOLIDAY_TYPE_TRANSLATIONS (holiday_type_id, language_id, name) VALUES (2, 3, 'Fête religieuse');

-- 2.2. Hedef Grup Çevirileri (TargetGroupTranslations)
INSERT INTO TARGET_GROUP_TRANSLATIONS (target_group_id, language_id, name) VALUES (1, 1, 'Kamu Çalışanları');
INSERT INTO TARGET_GROUP_TRANSLATIONS (target_group_id, language_id, name) VALUES (1, 2, 'Public Sector');
INSERT INTO TARGET_GROUP_TRANSLATIONS (target_group_id, language_id, name) VALUES (1, 3, 'Secteur public');
INSERT INTO TARGET_GROUP_TRANSLATIONS (target_group_id, language_id, name) VALUES (2, 1, 'Öğrenciler');
INSERT INTO TARGET_GROUP_TRANSLATIONS (target_group_id, language_id, name) VALUES (2, 2, 'Students');
INSERT INTO TARGET_GROUP_TRANSLATIONS (target_group_id, language_id, name) VALUES (2, 3, 'Étudiants');
INSERT INTO TARGET_GROUP_TRANSLATIONS (target_group_id, language_id, name) VALUES (3, 1, 'Özel Sektör');
INSERT INTO TARGET_GROUP_TRANSLATIONS (target_group_id, language_id, name) VALUES (3, 2, 'Private Sector');
INSERT INTO TARGET_GROUP_TRANSLATIONS (target_group_id, language_id, name) VALUES (3, 3, 'Secteur privé');


-- =================================================================
-- BÖLÜM 3: 2025 YILI TATİLLERİ (HOLIDAYS)
-- Oracle'da boolean yerine 1 (true) ve 0 (false) kullanılır.
-- =================================================================

INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (1, 'tr_new_year_2025', 1, 1, TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (2, 'tr_eid_al_fitr_2025', 1, 2, TO_DATE('2025-03-31', 'YYYY-MM-DD'), TO_DATE('2025-04-02', 'YYYY-MM-DD'), 1, 1);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (3, 'tr_national_sovereignty_2025', 1, 1, TO_DATE('2025-04-23', 'YYYY-MM-DD'), TO_DATE('2025-04-23', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (4, 'tr_labour_day_2025', 1, 1, TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (5, 'tr_youth_sports_day_2025', 1, 1, TO_DATE('2025-05-19', 'YYYY-MM-DD'), TO_DATE('2025-05-19', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (6, 'tr_eid_al_adha_2025', 1, 2, TO_DATE('2025-06-07', 'YYYY-MM-DD'), TO_DATE('2025-06-10', 'YYYY-MM-DD'), 1, 1);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (7, 'tr_democracy_day_2025', 1, 1, TO_DATE('2025-07-15', 'YYYY-MM-DD'), TO_DATE('2025-07-15', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (8, 'tr_victory_day_2025', 1, 1, TO_DATE('2025-08-30', 'YYYY-MM-DD'), TO_DATE('2025-08-30', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (9, 'tr_republic_day_2025', 1, 1, TO_DATE('2025-10-29', 'YYYY-MM-DD'), TO_DATE('2025-10-29', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (10, 'us_new_year_2025', 2, 1, TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (11, 'us_mlk_day_2025', 2, 1, TO_DATE('2025-01-20', 'YYYY-MM-DD'), TO_DATE('2025-01-20', 'YYYY-MM-DD'), 1, 1);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (12, 'us_presidents_day_2025', 2, 1, TO_DATE('2025-02-17', 'YYYY-MM-DD'), TO_DATE('2025-02-17', 'YYYY-MM-DD'), 1, 1);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (13, 'us_memorial_day_2025', 2, 1, TO_DATE('2025-05-26', 'YYYY-MM-DD'), TO_DATE('2025-05-26', 'YYYY-MM-DD'), 1, 1);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (14, 'us_juneteenth_2025', 2, 1, TO_DATE('2025-06-19', 'YYYY-MM-DD'), TO_DATE('2025-06-19', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (15, 'us_independence_day_2025', 2, 1, TO_DATE('2025-07-04', 'YYYY-MM-DD'), TO_DATE('2025-07-04', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (16, 'us_labor_day_2025', 2, 1, TO_DATE('2025-09-01', 'YYYY-MM-DD'), TO_DATE('2025-09-01', 'YYYY-MM-DD'), 1, 1);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (17, 'us_columbus_day_2025', 2, 1, TO_DATE('2025-10-13', 'YYYY-MM-DD'), TO_DATE('2025-10-13', 'YYYY-MM-DD'), 1, 1);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (18, 'us_veterans_day_2025', 2, 1, TO_DATE('2025-11-11', 'YYYY-MM-DD'), TO_DATE('2025-11-11', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (19, 'us_thanksgiving_day_2025', 2, 1, TO_DATE('2025-11-27', 'YYYY-MM-DD'), TO_DATE('2025-11-27', 'YYYY-MM-DD'), 1, 1);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (20, 'us_christmas_day_2025', 2, 2, TO_DATE('2025-12-25', 'YYYY-MM-DD'), TO_DATE('2025-12-25', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (21, 'fr_new_year_2025', 3, 1, TO_DATE('2025-01-01', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (22, 'fr_easter_monday_2025', 3, 2, TO_DATE('2025-04-21', 'YYYY-MM-DD'), TO_DATE('2025-04-21', 'YYYY-MM-DD'), 1, 1);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (23, 'fr_labour_day_2025', 3, 1, TO_DATE('2025-05-01', 'YYYY-MM-DD'), TO_DATE('2025-05-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (24, 'fr_victory_day_1945_2025', 3, 1, TO_DATE('2025-05-08', 'YYYY-MM-DD'), TO_DATE('2025-05-08', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (25, 'fr_ascension_day_2025', 3, 2, TO_DATE('2025-05-29', 'YYYY-MM-DD'), TO_DATE('2025-05-29', 'YYYY-MM-DD'), 1, 1);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (26, 'fr_whit_monday_2025', 3, 2, TO_DATE('2025-06-09', 'YYYY-MM-DD'), TO_DATE('2025-06-09', 'YYYY-MM-DD'), 1, 1);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (27, 'fr_bastille_day_2025', 3, 1, TO_DATE('2025-07-14', 'YYYY-MM-DD'), TO_DATE('2025-07-14', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (28, 'fr_assumption_day_2025', 3, 2, TO_DATE('2025-08-15', 'YYYY-MM-DD'), TO_DATE('2025-08-15', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (29, 'fr_all_saints_day_2025', 3, 2, TO_DATE('2025-11-01', 'YYYY-MM-DD'), TO_DATE('2025-11-01', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (30, 'fr_armistice_day_2025', 3, 1, TO_DATE('2025-11-11', 'YYYY-MM-DD'), TO_DATE('2025-11-11', 'YYYY-MM-DD'), 1, 0);
INSERT INTO HOLIDAYS (id, code, country_id, holiday_type_id, start_date, end_date, is_national, is_variable) VALUES (31, 'fr_christmas_day_2025', 3, 2, TO_DATE('2025-12-25', 'YYYY-MM-DD'), TO_DATE('2025-12-25', 'YYYY-MM-DD'), 1, 0);


-- =================================================================
-- BÖLÜM 4: TATİL AÇIKLAMALARI (HolidayDescriptions)
-- Her tatil için tr, en, fr dillerinde açıklamalar
-- =================================================================

INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (1, 1, 'Yılbaşı', 'Yeni yılın ilk günü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (1, 2, 'New Year''s Day', 'The first day of the new year.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (1, 3, 'Jour de l''An', 'Le premier jour de la nouvelle année.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (2, 1, 'Ramazan Bayramı', 'Ramazan ayının sonunu kutlayan dini bayram.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (2, 2, 'Eid al-Fitr', 'Religious holiday celebrating the end of Ramadan.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (2, 3, 'Aïd el-Fitr', 'Fête religieuse marquant la fin du mois de Ramadan.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (3, 1, 'Ulusal Egemenlik ve Çocuk Bayramı', 'TBMM''nin açılışı ve çocuklara adanmış bir bayram.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (3, 2, 'National Sovereignty and Children''s Day', 'Commemoration of the Grand National Assembly of Turkey and a day for children.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (3, 3, 'Journée de la Souveraineté Nationale et des Enfants', 'Commémoration de l''ouverture de la Grande Assemblée Nationale de Turquie et journée dédiée aux enfants.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (4, 1, 'Emek ve Dayanışma Günü', 'İşçi ve emekçiler onuruna kutlanan uluslararası bir gün.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (4, 2, 'Labour and Solidarity Day', 'An international day celebrated in honor of workers and laborers.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (4, 3, 'Fête du Travail et de la Solidarité', 'Journée internationale célébrée en l''honneur des travailleurs.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (5, 1, 'Atatürk''ü Anma, Gençlik ve Spor Bayramı', 'Mustafa Kemal Atatürk''ün Samsun''a çıkışını ve gençliği onurlandıran gün.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (5, 2, 'Commemoration of Atatürk, Youth and Sports Day', 'Commemorates Mustafa Kemal Atatürk''s landing at Samsun and honors the youth.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (5, 3, 'Commémoration d''Atatürk et Journée de la Jeunesse et des Sports', 'Commémore le débarquement de Mustafa Kemal Atatürk à Samsun et honore la jeunesse.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (6, 1, 'Kurban Bayramı', 'İbrahim peygamberin fedakarlığını anan dini bayram.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (6, 2, 'Eid al-Adha', 'Religious holiday commemorating the willingness of Abraham to sacrifice his son.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (6, 3, 'Aïd al-Adha', 'Fête religieuse qui commémore la soumission d''Abraham à Dieu.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (7, 1, 'Demokrasi ve Milli Birlik Günü', '2016 yılındaki darbe girişimine karşı Türk halkının zaferini anma günü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (7, 2, 'Democracy and National Unity Day', 'Commemorates the victory of the Turkish people against the 2016 coup attempt.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (7, 3, 'Journée de la Démocratie et de l''Unité Nationale', 'Commémore la victoire du peuple turc contre la tentative de coup d''État de 2016.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (8, 1, 'Zafer Bayramı', 'Türk Kurtuluş Savaşı''ndaki Dumlupınar Meydan Muharebesi''nin kazanılmasının yıldönümü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (8, 2, 'Victory Day', 'Anniversary of the victory at the Battle of Dumlupınar in the Turkish War of Independence.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (8, 3, 'Jour de la Victoire', 'Anniversaire de la victoire à la bataille de Dumlupınar lors de la guerre d''indépendance turque.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (9, 1, 'Cumhuriyet Bayramı', 'Türkiye Cumhuriyeti''nin ilan edildiği gün.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (9, 2, 'Republic Day', 'The day the Republic of Turkey was proclaimed.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (9, 3, 'Jour de la République', 'Le jour de la proclamation de la République de Turquie.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (10, 1, 'Yılbaşı', 'Yeni yılın ilk günü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (10, 2, 'New Year''s Day', 'The first day of the new year.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (10, 3, 'Jour de l''An', 'Le premier jour de la nouvelle année.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (11, 1, 'Martin Luther King, Jr. Günü', 'Martin Luther King Jr.''ın hayatını ve mirasını onurlandıran gün.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (11, 2, 'Martin Luther King, Jr. Day', 'Honors the life and legacy of Martin Luther King, Jr.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (11, 3, 'Jour de Martin Luther King, Jr.', 'Honore la vie et l''héritage de Martin Luther King, Jr.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (12, 1, 'Başkanlar Günü', 'ABD''nin başkanlarını, özellikle George Washington''ı anma günü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (12, 2, 'Presidents'' Day', 'Honors the presidents of the United States, especially George Washington.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (12, 3, 'Jour des Présidents', 'Honore les présidents des États-Unis, en particulier George Washington.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (13, 1, 'Anma Günü', 'ABD Silahlı Kuvvetleri''nde görev yaparken hayatını kaybedenleri anma günü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (13, 2, 'Memorial Day', 'Day for honoring and mourning the U.S. military personnel who have died while serving.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (13, 3, 'Jour du Souvenir (Memorial Day)', 'Jour pour honorer et pleurer le personnel militaire américain décédé en service.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (14, 1, 'Juneteenth Ulusal Bağımsızlık Günü', 'ABD''de köleliğin sona ermesini anan federal tatil.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (14, 2, 'Juneteenth National Independence Day', 'Federal holiday commemorating the emancipation of enslaved African Americans.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (14, 3, 'Juneteenth', 'Jour férié fédéral commémorant la fin de l''esclavage aux États-Unis.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (15, 1, 'Bağımsızlık Günü', 'ABD Bağımsızlık Bildirgesi''nin kabulünü kutlayan gün.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (15, 2, 'Independence Day', 'Celebrates the adoption of the Declaration of Independence.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (15, 3, 'Jour de l''Indépendance', 'Célèbre l''adoption de la Déclaration d''indépendance.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (16, 1, 'İşçi Bayramı', 'İşçi hareketinin katkılarını onurlandıran gün.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (16, 2, 'Labor Day', 'Honors the contributions of the American labor movement.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (16, 3, 'Fête du Travail (Labor Day)', 'Honore les contributions du mouvement ouvrier américain.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (17, 1, 'Kolomb Günü', 'Kristof Kolomb''un 1492''de Amerika''ya varışını anma günü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (17, 2, 'Columbus Day', 'Commemorates the arrival of Christopher Columbus in the Americas in 1492.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (17, 3, 'Jour de Christophe Colomb', 'Commémore l''arrivée de Christophe Colomb dans les Amériques en 1492.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (18, 1, 'Gaziler Günü', 'ABD Silahlı Kuvvetleri''nde görev yapmış tüm gazileri onurlandıran gün.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (18, 2, 'Veterans Day', 'Honors all military veterans who served in the United States Armed Forces.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (18, 3, 'Journée des anciens combattants (Veterans Day)', 'Honore tous les anciens combattants qui ont servi dans les forces armées des États-Unis.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (19, 1, 'Şükran Günü', 'Hasat ve geçtiğimiz yıl için şükran sunma günü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (19, 2, 'Thanksgiving Day', 'A day of giving thanks for the harvest and of the preceding year.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (19, 3, 'Jour de l''Action de grâce (Thanksgiving)', 'Jour d''action de grâce pour la récolte et l''année écoulée.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (20, 1, 'Noel Günü', 'İsa''nın doğumunu anan Hristiyan bayramı.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (20, 2, 'Christmas Day', 'Christian holiday commemorating the birth of Jesus.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (20, 3, 'Jour de Noël', 'Fête chrétienne commémorant la naissance de Jésus.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (21, 1, 'Yılbaşı', 'Yeni yılın ilk günü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (21, 2, 'New Year''s Day', 'The first day of the new year.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (21, 3, 'Jour de l''An', 'Le premier jour de la nouvelle année.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (22, 1, 'Paskalya Pazartesisi', 'Paskalya''dan sonraki gün, dini bir tatil.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (22, 2, 'Easter Monday', 'The day after Easter Sunday, a religious holiday.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (22, 3, 'Lundi de Pâques', 'Le jour après le dimanche de Pâques, une fête religieuse.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (23, 1, 'İşçi Bayramı', 'İşçi haklarını ve başarılarını kutlayan uluslararası bir gün.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (23, 2, 'Labour Day', 'An international day celebrating the achievements of workers.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (23, 3, 'Fête du Travail', 'Journée internationale célébrant les réalisations des travailleurs.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (24, 1, '1945 Zafer Günü', 'İkinci Dünya Savaşı''nın Avrupa''da sona ermesini anma günü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (24, 2, 'Victory in Europe Day', 'Commemorates the end of World War II in Europe.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (24, 3, 'Victoire 1945', 'Commémore la fin de la Seconde Guerre mondiale en Europe.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (25, 1, 'Göğe Yükseliş Günü', 'İsa''nın göğe yükselişini anan Hristiyan bayramı.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (25, 2, 'Ascension Day', 'Christian holiday that commemorates Jesus Christ''s ascension into heaven.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (25, 3, 'Ascension', 'Fête chrétienne qui commémore l''ascension de Jésus-Christ au ciel.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (26, 1, 'Hamsin Yortusu Pazartesisi', 'Hamsin Yortusu''ndan sonraki Pazartesi, dini bir tatil.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (26, 2, 'Whit Monday', 'The Monday after Pentecost, a religious holiday.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (26, 3, 'Lundi de Pentecôte', 'Le lundi après la Pentecôte, une fête religieuse.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (27, 1, 'Ulusal Bayram (Bastille Günü)', '1789''daki Bastille Baskını''nı anan Fransa''nın ulusal günü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (27, 2, 'Bastille Day', 'The national day of France, commemorating the Storming of the Bastille in 1789.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (27, 3, 'Fête Nationale', 'La fête nationale de la France, commémorant la prise de la Bastille en 1789.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (28, 1, 'Meryem''in Göğe Kabulü', 'Meryem Ana''nın göğe kabulünü anan Katolik bayramı.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (28, 2, 'Assumption of Mary', 'Catholic feast day commemorating the assumption of the Virgin Mary into Heaven.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (28, 3, 'Assomption', 'Fête catholique commémorant l''assomption de la Vierge Marie au Ciel.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (29, 1, 'Azizler Günü', 'Bilinen ve bilinmeyen tüm azizleri onurlandıran Hristiyan bayramı.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (29, 2, 'All Saints'' Day', 'Christian festival in honour of all the saints, known and unknown.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (29, 3, 'Toussaint', 'Fête chrétienne en l''honneur de tous les saints, connus et inconnus.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (30, 1, 'Ateşkes Günü', '1918''de Birinci Dünya Savaşı''nı sona erdiren ateşkesi anma günü.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (30, 2, 'Armistice Day', 'Commemorates the armistice that ended World War I in 1918.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (30, 3, 'Armistice 1918', 'Commémore l''armistice qui a mis fin à la Première Guerre mondiale en 1918.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (31, 1, 'Noel Günü', 'İsa''nın doğumunu anan Hristiyan bayramı.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (31, 2, 'Christmas Day', 'Christian holiday commemorating the birth of Jesus.');
INSERT INTO HOLIDAY_DESCRIPTIONS (holiday_id, language_id, name, description) VALUES (31, 3, 'Noël', 'Fête chrétienne commémorant la naissance de Jésus.');


-- =================================================================
-- BÖLÜM 5: TATİLLERİN HEDEF GRUPLARLA İLİŞKİLENDİRİLMESİ
-- (HOLIDAY_TARGET_GROUPS)
-- Tüm ulusal tatillerin belirtilen 3 grup için de geçerli olduğu varsayılmıştır.
-- =================================================================

INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (1, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (1, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (1, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (2, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (2, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (2, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (3, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (3, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (3, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (4, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (4, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (4, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (5, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (5, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (5, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (6, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (6, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (6, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (7, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (7, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (7, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (8, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (8, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (8, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (9, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (9, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (9, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (10, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (10, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (10, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (11, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (11, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (11, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (12, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (12, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (12, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (13, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (13, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (13, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (14, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (14, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (14, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (15, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (15, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (15, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (16, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (16, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (16, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (17, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (17, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (17, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (18, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (18, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (18, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (19, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (19, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (19, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (20, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (20, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (20, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (21, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (21, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (21, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (22, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (22, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (22, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (23, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (23, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (23, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (24, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (24, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (24, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (25, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (25, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (25, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (26, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (26, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (26, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (27, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (27, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (27, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (28, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (28, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (28, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (29, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (29, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (29, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (30, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (30, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (30, 3);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (31, 1);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (31, 2);
INSERT INTO HOLIDAY_TARGET_GROUPS (holiday_id, target_group_id) VALUES (31, 3);


-- =================================================================
-- SON
-- =================================================================
COMMIT;
