FOR t IN (
    SELECT table_name FROM user_tables
    WHERE table_name IN (
      'HOLIDAY_TARGET_GROUP_MAP',
      'HOLIDAY_TARGET_GROUP_TRANSLATIONS',
      'HOLIDAY_TARGET_GROUPS',
      'HOLIDAY_DATES_DESCRIPTION_TRANSLATIONS',
      'HOLIDAY_DATES_DESCRIPTION',
      'HOLIDAY_DATES',
      'HOLIDAY_COUNTRIES',
      'HOLIDAY_TRANSLATIONS',
      'HOLIDAYS',
      'COUNTRY_TRANSLATIONS',
      'COUNTRIES',
      'LANGUAGES'
    )
  ) LOOP
    EXECUTE IMMEDIATE 'DROP TABLE ' || t.table_name || ' CASCADE CONSTRAINTS';
  END LOOP;
END;
/

-- LANGUAGES
CREATE TABLE Languages (
    id NUMBER PRIMARY KEY,
    code VARCHAR2(10) NOT NULL UNIQUE
);

-- COUNTRIES
CREATE TABLE Countries (
    id NUMBER PRIMARY KEY,
    default_name VARCHAR2(100) NOT NULL
);

-- COUNTRY_TRANSLATIONS
CREATE TABLE Country_Translations (
    id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    country_id NUMBER NOT NULL,
    language_id NUMBER NOT NULL,
    name VARCHAR2(100) NOT NULL,
    FOREIGN KEY (country_id) REFERENCES Countries(id),
    FOREIGN KEY (language_id) REFERENCES Languages(id)
);

-- HOLIDAYS
CREATE TABLE Holidays (
    id NUMBER PRIMARY KEY,
    default_name VARCHAR2(100) NOT NULL
);

-- HOLIDAY_TRANSLATIONS
CREATE TABLE Holiday_Translations (
    id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    holiday_id NUMBER NOT NULL,
    language_id NUMBER NOT NULL,
    name VARCHAR2(100) NOT NULL,
    type VARCHAR2(50) NOT NULL,
    FOREIGN KEY (holiday_id) REFERENCES Holidays(id),
    FOREIGN KEY (language_id) REFERENCES Languages(id)
);

-- HOLIDAY_COUNTRIES
CREATE TABLE Holiday_Countries (
    id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    holiday_id NUMBER NOT NULL,
    country_id NUMBER NOT NULL,
    FOREIGN KEY (holiday_id) REFERENCES Holidays(id),
    FOREIGN KEY (country_id) REFERENCES Countries(id)
);

-- HOLIDAY_DATES
CREATE TABLE Holiday_Dates (
    id NUMBER PRIMARY KEY,
    holiday_date DATE NOT NULL
);

-- HOLIDAY_DATES_DESCRIPTION (GÜNCELLENDİ)
-- is_half_day alanı bu tablodan kaldırıldı.
CREATE TABLE Holiday_Dates_Description (
    id NUMBER PRIMARY KEY,
    holiday_id NUMBER NOT NULL,
    date_id NUMBER NOT NULL,
    is_recurring NUMBER(1) DEFAULT 1,
    FOREIGN KEY (holiday_id) REFERENCES Holidays(id),
    FOREIGN KEY (date_id) REFERENCES Holiday_Dates(id)
);

-- HOLIDAY_DATES_DESCRIPTION_TRANSLATIONS
CREATE TABLE Holiday_Dates_Description_Translations (
    id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    description_id NUMBER NOT NULL,
    language_id NUMBER NOT NULL,
    description CLOB NOT NULL,
    FOREIGN KEY (description_id) REFERENCES Holiday_Dates_Description(id),
    FOREIGN KEY (language_id) REFERENCES Languages(id)
);

-- HOLIDAY_TARGET_GROUPS
CREATE TABLE Holiday_Target_Groups (
    id NUMBER PRIMARY KEY,
    default_name VARCHAR2(100) NOT NULL
);

-- HOLIDAY_TARGET_GROUP_TRANSLATIONS
CREATE TABLE Holiday_Target_Group_Translations (
    id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    target_group_id NUMBER NOT NULL,
    language_id NUMBER NOT NULL,
    name VARCHAR2(100) NOT NULL,
    FOREIGN KEY (target_group_id) REFERENCES Holiday_Target_Groups(id),
    FOREIGN KEY (language_id) REFERENCES Languages(id)
);

-- HOLIDAY_TARGET_GROUP_MAP
CREATE TABLE Holiday_Target_Group_Map (
    id NUMBER GENERATED BY DEFAULT ON NULL AS IDENTITY PRIMARY KEY,
    date_description_id NUMBER NOT NULL,
    target_group_id NUMBER NOT NULL,
    is_half_day NUMBER(1) DEFAULT 0 NOT NULL, -- 0: Tam gün tatil, 1: Yarım gün tatil
    FOREIGN KEY (date_description_id) REFERENCES Holiday_Dates_Description(id),
    FOREIGN KEY (target_group_id) REFERENCES Holiday_Target_Groups(id)
);