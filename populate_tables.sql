INSERT ALL
    INTO SI_COMPONENT VALUES ('Freer Gallery of Art', 
                              'Chinese paintings; Indian sculpture; Islamic painting and metalware; Japanese lacquer; Korean ceramics; American Art from the late 19th-century aesthetic movement; Whistlers Peacock Room.',
                              'https://www.si.edu/museums/freer-gallery', 
                              'The Smithsonian Institution has two museums of Asian art: the Freer Gallery of Art and the Arthur M. Sackler Gallery. The Freer Gallery houses one of the premier collections of Asian art, with objects dating from Neolithic times to the early 20th century, as well as the worlds most important collection of works by James McNeill Whistler.'
                             )
    INTO SI_COMPONENT VALUES ('National Portrait Gallery',
                              'America''s Presidents, the nation''s only complete collection of presidential portraits outside the White House including the Obama portraits; workshops and programs for young people; Portrait Discovery Kits for kids and families; the Kogod Courtyard.',
                              'https://www.si.edu/museums/portrait-gallery',
                              'With visual arts, performing arts, and new media, the Portrait Gallery introduces you to the people who have shaped the country—poets, presidents, actors, activists, visionaries, villains...and everyone in between. Its collection weaves together story and biography from precolonial times to the present to tell the American story.'
                              )
SELECT * FROM dual;


-- Dependent on SI_COMPONENT

INSERT ALL
    INTO MACRO_LOCALE VALUES(1050,
                            'Independence Ave SW',
                            'DC',
                            20560,
                            'Freer Gallery of Art',
                            0,
                            'https://www.google.com/maps/place/1050+Independence+Ave+SW,+Washington,+DC+20560/@38.887983,-77.0286342,17z/data=!3m1!4b1!4m5!3m4!1s0x89b7b79c39ed032d:0x3f9bbe9214350dcf!8m2!3d38.887983!4d-77.0264455',
                            TIMESTAMP '2021-4-20 10:00:00.000000',
                            TIMESTAMP '2021-4-20 17:00:00.000000',
                            'https://www.si.edu/visit/tips',
                            'https://www.si.edu/visit/VisitorsWithDisabilities',
                            'We encourage the use of public transportation. \nMetro Station: Smithsonian (Mall or Independence Ave. exit) \n There is no public parking facility for Smithsonian museums on the National Mall. Limited 3-hour metered parking and commercial lots are available—see parking map. Reserved parking near the museums can be purchased in advance through ParkWhiz.',
                            NULL)
    INTO MACRO_LOCALE VALUES(750,
                            'Ninth Street NW Suite 410',
                            'DC',
                            20001,
                            'National Portrait Gallery',
                            0,
                            'https://www.google.com/maps/place/National+Portrait+Gallery/@38.8978267,-77.0252077,17z/data=!3m1!4b1!4m5!3m4!1s0x89b7b7918467d295:0x2a576a2d70cc9d9c!8m2!3d38.8978267!4d-77.023019',
                            TIMESTAMP '2021-4-20 10:00:00.000000',
                            TIMESTAMP '2021-4-20 18:30:00.000000',
                            'https://www.si.edu/visit/tips',
                            'https://www.si.edu/visit/VisitorsWithDisabilities',
                            'Metro Station: Gallery Place-Chinatown (9th St. exit) \n There is no public parking facility for Smithsonian museums on the National Mall. Limited 3-hour metered parking and commercial lots are available—see parking map. Reserved parking near the museums can be purchased in advance through ParkWhiz.',
                            'Courtyard Café \n The Café offers a fresh and seasonal menu of Mediterranean-inspired dishes. Using primarily local, organic, and sustainable ingredients, the lunch menu includes salads, soups, quiche, sandwiches, and a selection of cheeses. The Café also offers desserts, such as cheesecake, bread pudding, and kid-friendly cookies and cupcakes. 11:30 a.m. to 6:30 p.m.* daily (Lunch menu served until 3 p.m. weekdays and 4 p.m. weekends)')
SELECT * FROM dual;

INSERT ALL 
    INTO MICRO_LOCALE VALUES('Gilded Age','National Portrait Gallery', 5 ,'A place where portraits from the gilded age are displayed.','Second Floor, East Wing', NULL)
    INTO MICRO_LOCALE VALUES('America''s Presidents','National Portrait Gallery', 8, 'A place where portraits from the American Presidents are displayed.','Second Floor, Southwest Corner', NULL)
    INTO MICRO_LOCALE VALUES('Lincoln Gallery','National Portrait Gallery', 9 , 'A place where portraits of Lincoln are displayed.','Third Floor, East Wing', NULL)
    INTO MICRO_LOCALE VALUES('Buddhist Art in Japan','Freer Gallery of Art', 2, 'A place where Buddhist Art from Japan is displayed.','First Floor, Northeast Corner', NULL)
    INTO MICRO_LOCALE VALUES('Korean Art','Freer Gallery of Art',4,'A place where art from Korea is displayed.','First Floor, West Wing', NULL)
SELECT * FROM dual;







--INSERT INTO OBJECT
--INSERT ALL 
--    INTO OBJECT VALUES(0,'Bonehalisa','Lovely colors depicting a chick and a flower.',DATE '1640-06-15')
--    INTO OBJECT VALUES(1,'Love Hammer', 'Lovely colors depicting a flower and a stick.',DATE '1641-06-11')
--    INTO OBJECT VALUES(2,'Sticky Chops', 'Lunch with an uncle.', DATE '1740-02-1')
--    INTO OBJECT VALUES(3,'Swan neck', 'A picture of a goose neck.',DATE '1744-12-6')
--    INTO OBJECT VALUES(4,'Mushroom soup', 'A swamp inside of a shoe.',DATE '1989-08-20')
--    INTO OBJECT VALUES(5,'Cliff', 'Rocks giving an extreme vertical experience.', DATE '1990-06-15')
--    INTO OBJECT VALUES(6,'Cloud face', 'Staring at the sky in torpor',DATE '1999-3-20')
--    INTO OBJECT VALUES(7,'Butterfly lips', 'It is a bugs life', DATE '1776-12-25')
--SELECT * FROM dual;
--

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
--
--INSERT INTO ARTICLE
--VALUES ();
--
--INSERT INTO ARTIFACT
--VALUES ();

--INSERT INTO BIOPARK
--VALUES ();
--
--INSERT INTO CULTURAL_CENTER
--VALUES ();
--
--INSERT INTO CULTURAL_RESOURCE
--VALUES ();
--
--INSERT INTO EDUCATION_CENTER
--VALUES ();
--

--INSERT ALL
--    INTO EVENT VALUES('Conversation Circles',
--                      'National Portrait Gallery',
--                      'Tour',
--                      TIMESTAMP '2021-06-25 10:00:00.000000',
--                      TIMESTAMP '2021-06-25 12:00:00.000000',
--                      DATE '2019-11-01',
--                      DATE '2019-11-22',
--                      'Join this free drop in program for adults interested in improving their English conversational abilities as we learn about a new subject in American history each week. Connect to history through portraiture, then break into groups for smaller conversations and activities.',
--                      'https://www.si.edu/events?trumbaEmbed=view%3Devent%26eventid%3D133758555',
--                      'Meet in G Street Lobby',
--                      0)
--    INTO EVENT VALUES('Portrait Discovery Kits',
--                      'National Portrait Gallery',
--                      'Kids',
--                      TIMESTAMP '2021-06-25 13:00:00.000000',
--                      TIMESTAMP '2021-06-25 16:00:00.000000',
--                      DATE '2019-03-01',
--                      DATE '2019-03-21',
--                      'Pick up an activity kit that guides you through the museum with games and puzzles and learn more about the people who have made American history.',
--                      'https://www.si.edu/events?trumbaEmbed=view%3Devent%26eventid%3D141899227',
--                      'Meet in Education Center, E151',
--                      0)
--    INTO EVENT VALUES('Alexander Hamilton Tour',
--                      'National Portrait Gallery',
--                      'Tour',
--                      TIMESTAMP '2021-06-25 11:00:00.000000',
--                      TIMESTAMP '2021-06-25 12:00:00.000000',
--                      DATE '2020-01-20',
--                      DATE '2020-01-20',
--                      'Join a Museum Ambassador for a 45-minute in-depth look at the unique architecture and design of the Alexander Hamilton U.S. Custom House, home of the National Museum of the American Indian in New York.',
--                      'https://www.si.edu/events?trumbaEmbed=view%3Devent%26eventid%3D126630315',
--                      'Meet at Visitor Services Desk',
--                      0)
--    INTO EVENT VALUES('Fishes with Julie Packard',
--                      'National Portrait Gallery',
--                      'Kids',
--                      TIMESTAMP '2021-06-25 10:30:00.000000',
--                      TIMESTAMP '2021-06-25 11:30:00.000000',
--                      DATE '2017-02-23',
--                      DATE '2017-02-23',
--                      'Explore the Portrait Gallery in a program that touches on art and history through storytelling. Offered two Mondays and one Saturday a month for toddlers up to age five and their adult companions.',
--                      'https://www.si.edu/events?trumbaEmbed=view%3Devent%26eventid%3D140244563',
--                      'Meet at G Street Lobby',
--                      0)
--    INTO EVENT VALUES('Introduction to Watercolor',
--                      'Freer Gallery of Art',
--                      'Lecture',
--                      TIMESTAMP '2021-06-25 10:15:00.000000',
--                      TIMESTAMP '2021-06-25 12:45:00.000000',
--                      DATE '2020-01-27',
--                      DATE '2020-01-27',
--                      'Beginning students as well as experienced painters explore watercolor techniques and learn new approaches to painting through classroom demonstration, discussion, and experimentation.',
--                      'https://www.si.edu/events?trumbaEmbed=view%3Devent%26eventid%3D139588904',
--                      'Meet at Ripley Center',
--                      0)
--    INTO EVENT VALUES('Lunar New Year',
--                      'Freer Gallery of Art',
--                      'Celebration',
--                      TIMESTAMP '2021-06-25 11:00:00.000000',
--                      TIMESTAMP '2021-06-25 17:00:00.000000',
--                      DATE '2019-01-26',
--                      DATE '2019-01-26',
--                      'Join us for our sixth annual Lunar New Year celebration to ring in the Year of the Rat. Enjoy food, performances, and art representing the richness of New Year celebrations in China, Korea, and Mongolia. Experience interactive art demonstrations, live magic and musical performances, and delicious food for sale. And enjoy two special Sackler exhibitions—Resound: Ancient Bells of China and Sacred Dedication: A Korean Buddhist Masterpiece—and the permanent collection of Asian art in the Freer.',
--                      'https://www.si.edu/events?trumbaEmbed=view%3Devent%26eventid%3D140797515',
--                      'Meet at Visitor''s Desk',
--                      0)
--    INTO EVENT VALUES('Sketch and Discover',
--                      'Freer Gallery of Art',
--                      'Tour',
--                      TIMESTAMP '2021-06-25 13:15:00.000000',
--                      TIMESTAMP '2021-06-25 14:15:00.000000',
--                      DATE '2018-01-28',
--                      DATE '2018-01-28',
--                      'Join us for sketching and conversation in the galleries. Led by practicing artists and museum docents and staff, this program combines close looking at selected artworks and drawing fundamentals.',
--                      'https://www.si.edu/events?trumbaEmbed=view%3Devent%26eventid%3D140565271',
--                      'Meet at Information Desk',
--                      0)
--                      
--SELECT * FROM dual;

--VALUES ();
--
--INSERT INTO EXHIBITION
--VALUES ();
--
--INSERT INTO FAUNA
--VALUES ();
--
--INSERT INTO FILM
--VALUES ();
--
--INSERT INTO FLORA
--VALUES ();
--
--INSERT INTO GIFT
--VALUES ();
--
--INSERT INTO INITIATIVE
--VALUES ();
--
--INSERT INTO MEMBER_LEVEL
--VALUES ();
--
--

--INSERT INTO MEMBER
--VALUES ();
--
--INSERT INTO MUSEUM
--VALUES ();
--

--
--INSERT INTO ORGANISM
--VALUES ();
--
--INSERT INTO RECORD
--VALUES ();
--
--INSERT INTO RESEARCH_CENTER
--VALUES ();
--
--INSERT INTO PROJECT
--VALUES ();
--
--INSERT INTO THEATER
--VALUES ();
--
--INSERT INTO display
--VALUES ();
--
--INSERT INTO donate
--VALUES ();
--
--INSERT INTO engage
--VALUES ();
--
--INSERT INTO hosts
--VALUES ();
--
--INSERT INTO researches
--VALUES ();
--
--INSERT INTO show
--VALUES ();
--
--INSERT INTO use
--VALUES ();
--
--INSERT INTO utilize
--VALUES ();
