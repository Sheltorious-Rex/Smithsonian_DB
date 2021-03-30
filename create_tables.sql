DROP TABLE display;
DROP TABLE donate;
DROP TABLE engage;
DROP TABLE hosts;
DROP TABLE show;
--DROP TABLE uses;
DROP TABLE utilize;
DROP TABLE researches;

--DROP TABLE INITIATIVE;
--DROP TABLE EDUCATION_CENTER;


DROP TABLE GIFT;
DROP TABLE MEMBER;
DROP TABLE MEMBER_LEVEL;

DROP TABLE PROJECT;
DROP TABLE RESEARCH_CENTER;


DROP TABLE EXHIBITION;
DROP TABLE MUSEUM;

DROP TABLE FILM;
DROP TABLE THEATER;

DROP TABLE CULTURAL_RESOURCE;
DROP TABLE CULTURAL_CENTER;

--DROP TABLE ARTIFACT;
--DROP TABLE ARTWORK;
DROP TABLE RECORD;
DROP TABLE OBJECT;

--DROP TABLE FAUNA;
--DROP TABLE FLORA;
DROP TABLE ORGANISM;
DROP TABLE BIOPARK;

DROP TABLE MICRO_LOCALE;
DROP TABLE MACRO_LOCALE;
DROP TABLE EVENT;
DROP TABLE ARTICLE;
DROP TABLE SI_COMPONENT;





--CREATE TABLE SI_COMPONENT (
--    Name VARCHAR(100) NOT NULL, 
--    General_information VARCHAR(1000), 
--    URL VARCHAR(100), 
--    About VARCHAR(1000), 
--    PRIMARY KEY (Name)
--);
--
--CREATE TABLE ARTICLE (
--    Article_title VARCHAR(100) NOT NULL,
--    Produced_by VARCHAR(100) NOT NULL,
--    Description VARCHAR(1000),
--    Full_text VARCHAR(1000),
--    Author_first_name VARCHAR(100),
--    Author_last_name VARCHAR(100),
--    Date_created DATE,
--    URL VARCHAR(100),
--    
--    PRIMARY KEY (Article_title),
--    FOREIGN KEY (Produced_by) REFERENCES SI_COMPONENT (Name)
--);
--
--CREATE TABLE ARTIFACT (
--    Artifact_id INTEGER NOT NULL, 
--    PRIMARY KEY (Artifact_id),
--    FOREIGN KEY (Artifact_id) REFERENCES OBJECT (Object_id)
--);
--
--CREATE TABLE ARTWORK (
--    Art_id INTEGER NOT NULL, 
--    Creator_first_name VARCHAR(100), 
--    Creator_last_name VARCHAR(100), 
--    Art_type VARCHAR(100), 
--    URL VARCHAR(100),
--    PRIMARY KEY (Art_id),
--    FOREIGN KEY (Art_id) REFERENCES OBJECT (Object_id)
--);
--
--CREATE TABLE BIOPARK (
--    Biopark_name VARCHAR(100) NOT NULL, 
--    Category VARCHAR(100),
--    PRIMARY KEY (Biopark_name),
--    FOREIGN KEY (Biopark_name) REFERENCES SI_COMPONENT (Name)
--);
--
--
--
--CREATE TABLE CULTURAL_CENTER (
--    Cul_center_name VARCHAR(100) NOT NULL, 
--    Cultural_focus VARCHAR(100),
--    PRIMARY KEY (Cul_center_name),
--    FOREIGN KEY (Cul_center_name) REFERENCES SI_COMPONENT (Name)
--);
--
--CREATE TABLE CULTURAL_RESOURCE (
--    Cul_res_name VARCHAR(100) NOT NULL,
--    Cul_center_name VARCHAR(100) NOT NULL, 
--    description VARCHAR(1000), 
--    URL VARCHAR(100), 
--    Resource_type VARCHAR(100),
--    PRIMARY KEY (Cul_res_name),
--    FOREIGN KEY (Cul_center_name) REFERENCES CULTURAL_CENTER (Cul_center_name)
--);
--
--CREATE TABLE EDUCATION_CENTER ( 
--    Edu_center_name VARCHAR(100) NOT NULL, 
--    Specialty VARCHAR(100),
--    PRIMARY KEY (Edu_center_name),
--    FOREIGN KEY (Edu_center_name) REFERENCES OBJECT (Name)
--);
--
--CREATE TABLE EVENT (
--    Event_name VARCHAR(100) NOT NULL, 
--    Sponsor_name VARCHAR(100) NOT NULL, 
--    Event_type VARCHAR(100), 
--    Start_time TIMESTAMP, 
--    End_time TIMESTAMP, 
--    Start_date DATE,
--    End_date DATE, 
--    About VARCHAR(1000), 
--    URLs VARCHAR(100), 
--    Event_FAQ VARCHAR(100),
--    Price_of_admit FLOAT,
--    PRIMARY KEY (Event_name),
--    FOREIGN KEY (Sponsor_name) REFERENCES SI_COMPONENT (Name)
--);
--
--CREATE TABLE EXHIBITION ( 
--    Exhibit_name VARCHAR(100) NOT NULL, 
--    Description VARCHAR(1000), 
--    URL VARCHAR(100), 
--    Start_date DATE, 
--    End_date DATE,
----    End_date DATE CHECK (End_date > Start_date), 
--    CONSTRAINT CHK_date CHECK (End_date > Start_date),
--    PRIMARY KEY (Exhibit_name)
--);
--
--CREATE TABLE FAUNA (
--    Fauna_id INTEGER NOT NULL,
--    Gender VARCHAR(10),
--    PRIMARY KEY (Fauna_id),
--    FOREIGN KEY (Fauna_id) REFERENCES ORGANISM (Organism_id)
--);
--
--CREATE TABLE FILM (
--    Film_name VARCHAR(100) NOT NULL, 
--    Rating VARCHAR(10), 
--    Runtime TIMESTAMP, 
--    Buy_tickets_URL VARCHAR(100), 
--    Creation_date DATE,
--    PRIMARY KEY (Film_name)
--);
--
--CREATE TABLE FLORA (
--    Flora_id INTEGER NOT NULL, 
--    Care_instructions VARCHAR(1000),
--    PRIMARY KEY (Flora_id),
--    FOREIGN KEY (Flora_id) REFERENCES ORGANISM (Organism_id)
--);
--
--CREATE TABLE GIFT (
--    Gift_id INTEGER NOT NULL, 
--    Description VARCHAR(100), 
--    Date_given DATE,
--    Estimated_value REAL CHECK(Estimated_value >= 0),
--    PRIMARY KEY (Gift_id)
--);
--
--CREATE TABLE INITIATIVE (
--    Initiative_name VARCHAR(100) NOT NULL, 
--    Education_center_name VARCHAR(100) NOT NULL, 
--    Description VARCHAR(1000), 
--    URL VARCHAR(100),
--    PRIMARY KEY (Initiative_name),
--    FOREIGN KEY (Education_center_name) REFERENCES EDUCATION_CENTER (Edu_center_name)
--);
--
--CREATE TABLE MEMBER_LEVEL (
--    Level_name VARCHAR(100) NOT NULL, 
--    Description VARCHAR(1000), 
--    Benefits VARCHAR(1000), 
--    Cost DECIMAL(10,2),
--    PRIMARY KEY (Level_name)
--);
--
--CREATE TABLE MACRO_LOCALE (
--    Street_number INTEGER NOT NULL, 
--    Street_name VARCHAR(100) NOT NULL, 
--    State VARCHAR(2) NOT NULL, 
--    Zip_code INTEGER NOT NULL, 
--    Contains_component VARCHAR(100) NOT NULL, 
--    Admission_cost DECIMAL(5,2), 
--    Buy_ticket_URL VARCHAR(1000), 
--    Open_time TIMESTAMP, 
--    Close_time TIMESTAMP,
----    Close_time TIMESTAMP CHECK(Close_time > Open_time), 
--    Tips_guidelines VARCHAR(1000), 
--    Accessibility VARCHAR(1000), 
--    How_to_get_here VARCHAR(1000), 
--    Dining_options VARCHAR(1000),
--    PRIMARY KEY (Street_number,Street_name, State, Zip_code),
--    FOREIGN KEY (Contains_component) REFERENCES SI_COMPONENT (Name),
--    CONSTRAINT CHK_time CHECK(Close_time > Open_time)
--);
--
--CREATE TABLE MICRO_LOCALE ( 
--    Name VARCHAR(100) NOT NULL, 
--    Component VARCHAR(100) NOT NULL, 
--    Location_number INTEGER, 
--    Description VARCHAR(1000), 
--    Access_information VARCHAR(1000), 
--    URL VARCHAR(100),
--    PRIMARY KEY (Name),
--    FOREIGN KEY (Component) REFERENCES SI_COMPONENT (Name)
--);
--
--CREATE TABLE MEMBER (
--    Member_id INTEGER NOT NULL, 
--    First_name VARCHAR(100), 
--    Last_name VARCHAR(100), 
--    M_level VARCHAR(100), 
--    Street_number INTEGER, 
--    Street_name VARCHAR(100), 
--    State VARCHAR(2), 
--    Zip_code INTEGER, 
--    Start_date DATE,
--    End_date DATE,
--    PRIMARY KEY (Member_id),
--    FOREIGN KEY (M_level) REFERENCES MEMBER_LEVEL (Level_name)
--);
--
--CREATE TABLE MUSEUM ( 
--    Museum_name VARCHAR(100) NOT NULL, 
--    Category VARCHAR(100),
--    PRIMARY KEY (Museum_name),
--    FOREIGN KEY (Museum_name) REFERENCES SI_COMPONENT (Name)
--);
--
--CREATE TABLE OBJECT (
--    Object_id INTEGER NOT NULL, 
--    Object_name VARCHAR(100), 
--    Description VARCHAR(1000), 
--    Date_created DATE,
--    PRIMARY KEY (Object_id)
--);
--
--CREATE TABLE ORGANISM (
--    Organism_id INTEGER NOT NULL, 
--    Biopark_name VARCHAR(100) NOT NULL, 
--    Species VARCHAR(100),
--    Name VARCHAR(100), 
--    Birth_date DATE,
--    PRIMARY KEY (Organism_id),
--    FOREIGN KEY (Biopark_name) REFERENCES BIOPARK (Biopark_name)
--);
--
--
--
--CREATE TABLE RECORD (
--    Record_id INTEGER NOT NULL, 
--    File_type VARCHAR(100), 
--    PRIMARY KEY (Record_id),
--    FOREIGN KEY (Record_id) REFERENCES OBJECT (Object_id)
--);
--
--CREATE TABLE RESEARCH_CENTER ( 
--    Res_center_name VARCHAR(100) NOT NULL, 
--    Research_area VARCHAR(100),
--    PRIMARY KEY (Res_center_name),
--    FOREIGN KEY (Res_center_name) REFERENCES SI_COMPONENT (Name)
--);
--
--CREATE TABLE PROJECT (
--    Project_name VARCHAR(100) NOT NULL, 
--    Research_center_name VARCHAR(100) NOT NULL, 
--    Description VARCHAR(1000), 
--    URL VARCHAR(100),
--    PRIMARY KEY (Project_name),
--    FOREIGN KEY (Research_center_name) REFERENCES RESEARCH_CENTER (Res_center_name)
--);
--CREATE TABLE THEATER ( 
--    Theater_name VARCHAR(100) NOT NULL, 
--    Number_of_auditoriums INTEGER, 
--    Services VARCHAR(100), 
--    Ticket_price DECIMAL(5,2),
--    PRIMARY KEY (Theater_name)
--);
--
--
--
--
--CREATE TABLE display(
--    dExhibition_name VARCHAR(100) NOT NULL, 
--    dObject_id INTEGER NOT NULL,
--    PRIMARY KEY (dExhibition_name, dObject_id),
--    FOREIGN KEY (dExhibition_name) REFERENCES EXHIBITION (Exhibit_name),
--    FOREIGN KEY (dObject_id) REFERENCES OBJECT (Object_id)
--);
--
--CREATE TABLE donate(
--    dMember_id INTEGER NOT NULL, 
--    dGift_id INTEGER NOT NULL,
--    PRIMARY KEY (dMember_id,dGift_id),
--    FOREIGN KEY (dMember_id) REFERENCES MEMBER (Member_id),
--    FOREIGN KEY (dGift_id) REFERENCES GIFT (Gift_id)
--);
--
--CREATE TABLE engage(
--    eMember_id INTEGER NOT NULL, 
--    eComponent_name VARCHAR(100) NOT NULL,
--    PRIMARY KEY (eMember_id,eComponent_name),
--    FOREIGN KEY (eMember_id) REFERENCES MEMBER (Member_id),
--    FOREIGN KEY (eComponent_name) REFERENCES SI_COMPONENT (Name));
--
--CREATE TABLE hosts(
--    hMicro_locale_name VARCHAR(100) NOT NULL, 
--    hEvent_name VARCHAR(100) NOT NULL,
--    PRIMARY KEY (hMicro_locale_name,hEvent_name),
--    FOREIGN KEY (hMicro_locale_name) REFERENCES MICRO_LOCALE (Name),
--    FOREIGN KEY (hEvent_name) REFERENCES EVENT (Event_name)
--);
--
--CREATE TABLE researches (
--    rProject_name VARCHAR(100) NOT NULL, 
--    rObject_id INTEGER NOT NULL,
--    PRIMARY KEY (rProject_name,rObject_id),
--    FOREIGN KEY (rProject_name) REFERENCES PROJECT (Project_name),
--    FOREIGN KEY (rObject_id) REFERENCES OBJECT (Object_id)
--);
--
--CREATE TABLE show(
--    sMovie_name VARCHAR(100) NOT NULL, 
--    sTheater_name VARCHAR(100) NOT NULL,
--    PRIMARY KEY (sMovie_name,sTheater_name),
--    FOREIGN KEY (sMovie_name) REFERENCES FILM (Film_name),
--    FOREIGN KEY (sTheater_name) REFERENCES THEATER (Theater_name)
--);
--
--CREATE TABLE uses (
--    uInitiative_name VARCHAR(100) NOT NULL, 
--    uObject_id INTEGER NOT NULL,
--    PRIMARY KEY (uInitiative_name,uObject_id),
--    FOREIGN KEY (uInitiative_name) REFERENCES INITIATIVE (Initiative_name),
--    FOREIGN KEY (uObject_id) REFERENCES OBJECT (Object_id)
--);
--
--CREATE TABLE utilize (
--    uCultural_resource_name VARCHAR(100) NOT NULL, 
--    uObject_id INTEGER NOT NULL,
--    PRIMARY KEY (uCultural_resource_name,uObject_id),
--    FOREIGN KEY (uCultural_resource_name) REFERENCES CULTURAL_RESOURCE (Cul_res_name),
--    FOREIGN KEY (uObject_id) REFERENCES OBJECT (Object_id)
--);

COMMIT;