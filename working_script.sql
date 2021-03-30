
--ALTER TABLE ARTWORK
--ADD FOREIGN KEY (Art_id) REFERENCES OBJECT(Object_Id);

DROP TABLE ARTWORK;

CREATE TABLE ARTWORK (
    Art_id INTEGER NOT NULL, 
    Art_name VARCHAR(100), 
    Description VARCHAR(1000), 
    Creator_first_name VARCHAR(100), 
    Creator_last_name VARCHAR(100), 
    Date_created DATE,
    Art_type VARCHAR(100), 
    URL VARCHAR(100),
    PRIMARY KEY (Art_id),
    FOREIGN KEY (Art_id) REFERENCES OBJECT(Object_Id)
);

--INSERT ALL 
--    INTO ARTWORK VALUES(0,'Bonehalisa','Lovely colors depicting a chick and a flower.','Fhil','Harper',DATE '1640-06-15','Painting','bonehalisa/si.com')
--    INTO ARTWORK VALUES(1,'Love Hammer', 'Lovely colors depicting a flower and a stick.', 'Fhil','Harper', DATE '1641-06-11', 'Painting', 'lovehammer/si.com')
--    INTO ARTWORK VALUES(2,'Sticky Chops', 'Lunch with an uncle.', 'Fhil','Harper', DATE '1740-02-1', 'Painting', 'stickychops/si.com')
--    INTO ARTWORK VALUES(3,'Swan neck', 'A picture of a goose neck.', 'Dana','Swamble', DATE '1744-12-6', 'Painting', 'swanneck/si.com')
--    INTO ARTWORK VALUES(4,'Mushroom soup', 'A swamp inside of a shoe.', 'Billy','Tortle', DATE '1989-08-20', 'Painting', 'mushysoup/si.com')
--    INTO ARTWORK VALUES(5,'Cliff', 'Rocks giving an extreme vertical experience.', 'Billy','Harper', DATE '1990-06-15', 'Painting', 'cliff/si.com')
--    INTO ARTWORK VALUES(6,'Cloud face', 'Staring at the sky in torpor', 'Billy','Harper', DATE '1999-3-20', 'Painting', 'couldface/si.com')
--    INTO ARTWORK VALUES(7,'Butterfly lips', 'It is a bugs life', 'Jon','Collins', DATE '1776-12-25', 'Painting', 'butterfly/si.com')
--SELECT * FROM dual;