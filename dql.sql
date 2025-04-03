INSERT INTO categoria VALUES (1,'Action','2006-02-15 04:46:27'),
(2,'Animation','2006-02-15 04:46:27'),
(3,'Children','2006-02-15 04:46:27'),
(4,'Classics','2006-02-15 04:46:27'),
(5,'Comedy','2006-02-15 04:46:27'),
(6,'Documentary','2006-02-15 04:46:27'),
(7,'Drama','2006-02-15 04:46:27'),
(8,'Family','2006-02-15 04:46:27'),
(9,'Foreign','2006-02-15 04:46:27'),
(10,'Games','2006-02-15 04:46:27');

INSERT INTO actor VALUES (1,'PENELOPE','GUINESS','2006-02-15 04:34:33'),
(2,'NICK','WAHLBERG','2006-02-15 04:34:33'),
(3,'ED','CHASE','2006-02-15 04:34:33'),
(4,'JENNIFER','DAVIS','2006-02-15 04:34:33'),
(5,'JOHNNY','LOLLOBRIGIDA','2006-02-15 04:34:33'),
(6,'BETTE','NICHOLSON','2006-02-15 04:34:33'),
(7,'GRACE','MOSTEL','2006-02-15 04:34:33'),
(8,'MATTHEW','JOHANSSON','2006-02-15 04:34:33'),
(9,'JOE','SWANK','2006-02-15 04:34:33'),
(10,'CHRISTIAN','GABLE','2006-02-15 04:34:33');

INSERT INTO pais VALUES (1,'Afghanistan','2006-02-15 04:44:00'),
(2,'Algeria','2006-02-15 04:44:00'),
(3,'American Samoa','2006-02-15 04:44:00'),
(4,'Angola','2006-02-15 04:44:00'),
(5,'Anguilla','2006-02-15 04:44:00'),
(6,'Argentina','2006-02-15 04:44:00'),
(7,'Armenia','2006-02-15 04:44:00'),
(8,'Australia','2006-02-15 04:44:00'),
(9,'Austria','2006-02-15 04:44:00'),
(10,'Azerbaijan','2006-02-15 04:44:00');

INSERT INTO ciudad(id_ciudad, nombre, id_pais, ultima_actualizacion) VALUES (1,'A Corua (La Corua)', 1,'2006-02-15 04:45:25'),
(2,'Abha',2,'2006-02-15 04:45:25'),
(3,'Abu Dhabi', 3,'2006-02-15 04:45:25'),
(4,'Acua',4,'2006-02-15 04:45:25'),
(5,'Adana',5,'2006-02-15 04:45:25'),
(6,'Addis Abeba',6,'2006-02-15 04:45:25'),
(7,'Aden',7,'2006-02-15 04:45:25'),
(8,'Adoni',8,'2006-02-15 04:45:25'),
(9,'Ahmadnagar',9,'2006-02-15 04:45:25'),
(10,'Akishima',10 ,'2006-02-15 04:45:25');

INSERT INTO direccion VALUES (1,'47 MySakila Drive',NULL,'Alberta',1,'','','2014-09-25 22:30:27'),
(2,'28 MySQL Boulevard',NULL,'QLD',2,'','','2014-09-25 22:30:09'),
(3,'23 Workhaven Lane',NULL,'Alberta',3,'','14033335568','2014-09-25 22:30:27'),
(4,'1411 Lillydale Drive',NULL,'QLD',5,'','6172235589','2014-09-25 22:30:09'),
(5,'1913 Hanoi Way','','Nagasaki',4,'35200','28303384290','2014-09-25 22:31:53'),
(6,'1121 Loja Avenue','','California',6,'17886','838635286649','2014-09-25 22:34:01'),
(7,'692 Joliet Street','','Attika',7,'83579','448477190408','2014-09-25 22:31:07'),
(8,'1566 Inegl Manor','','Mandalay',9,'53561','705814003527','2014-09-25 22:32:18'),
(9,'53 Idfu Parkway','','Nantou',10,'42399','10655648674','2014-09-25 22:33:16'),
(10,'1795 Santiago de Compostela Way','','Texas',8,'18743','860452626434','2014-09-25 22:33:55');

INSERT INTO idioma VALUES (1,'English','2006-02-15 05:02:19'),
(2,'Italian','2006-02-15 05:02:19'),
(3,'Japanese','2006-02-15 05:02:19'),
(4,'Mandarin','2006-02-15 05:02:19'),
(5,'French','2006-02-15 05:02:19'),
(6,'German','2006-02-15 05:02:19');

INSERT INTO pelicula(id_pelicula, titulo, descripcion, anyo_lanzamiento, id_idioma, id_idioma_original,duracion_alquiler,rental_rate, duracion, replacement_cost, clasificacion, caracteristicas_especiales, ultima_actualizacion) VALUES (1,'ACADEMY DINOSAUR','A Epic Drama of a Feminist And a Mad Scientist who must Battle a Teacher in The Canadian Rockies',2006,1, 1,6,'0.99',86,'20.99','PG','Deleted Scenes,Behind the Scenes','2006-02-15 05:03:42'),
(2,'ACE GOLDFINGER','A Astounding Epistle of a Database Administrator And a Explorer who must Find a Car in Ancient China',2006,1, 1,3,'4.99',48,'12.99','G','Trailers,Deleted Scenes','2006-02-15 05:03:42'),
(3,'ADAPTATION HOLES','A Astounding Reflection of a Lumberjack And a Car who must Sink a Lumberjack in A Baloon Factory',2006,1, 1,7,'2.99',50,'18.99','NC-17','Trailers,Deleted Scenes','2006-02-15 05:03:42'),
(4,'AFFAIR PREJUDICE','A Fanciful Documentary of a Frisbee And a Lumberjack who must Chase a Monkey in A Shark Tank',2006,1, 1,5,'2.99',117,'26.99','G','Commentaries,Behind the Scenes','2006-02-15 05:03:42'),
(5,'AFRICAN EGG','A Fast-Paced Documentary of a Pastry Chef And a Dentist who must Pursue a Forensic Psychologist in The Gulf of Mexico',2006,1, 1,6,'2.99',130,'22.99','G','Deleted Scenes','2006-02-15 05:03:42'),
(6,'AGENT TRUMAN','A Intrepid Panorama of a Robot And a Boy who must Escape a Sumo Wrestler in Ancient China',2006,1, 1,3,'2.99',169,'17.99','PG','Deleted Scenes','2006-02-15 05:03:42'),
(7,'AIRPLANE SIERRA','A Touching Saga of a Hunter And a Butler who must Discover a Butler in A Jet Boat',2006,1, 1,6,'4.99',62,'28.99','PG-13','Trailers,Deleted Scenes','2006-02-15 05:03:42'),
(8,'AIRPORT POLLOCK','A Epic Tale of a Moose And a Girl who must Confront a Monkey in Ancient India',2006,1, 1,6,'4.99',54,'15.99','R','Trailers','2006-02-15 05:03:42'),
(9,'ALABAMA DEVIL','A Thoughtful Panorama of a Database Administrator And a Mad Scientist who must Outgun a Mad Scientist in A Jet Boat',2006,1, 1,3,'2.99',114,'21.99','PG-13','Trailers,Deleted Scenes','2006-02-15 05:03:42'),
(10,'ALADDIN CALENDAR','A Action-Packed Tale of a Man And a Lumberjack who must Reach a Feminist in Ancient China',2006,1, 1,6,'4.99',63,'24.99','NC-17','Trailers,Deleted Scenes','2006-02-15 05:03:42');
INSERT INTO pelicula(id_pelicula, titulo, )

INSERT INTO empleado VALUES (1,'Mike','Hillyer',3,NULL, 'mike@sakilastaff.com', 2, 1, 'Mike', NULL, '2006-02-15 03:57:16'),
(2,'Jon','Stephens',4,NULL,'Jon.Stephens@sakilastaff.com',2,1,'Jon',NULL,'2006-02-15 03:57:16'),
(3,'Pepe','Spilberg',5,NULL,'pepe.spilberg@sakilastaff.com',2,1,'Pepe',NULL,'2006-02-15 03:57:16'),
(4,'Ada','Byron',6,NULL,'ada.byron@sakilastaff.com',1,1,'Ada',NULL,'2006-02-15 03:57:16'),
(5,'Ringo','Rooksby',7,NULL,'ringo.rooksby@sakilastaff.com',1,1,'Ringo',NULL,'2006-02-15 03:57:16');

INSERT INTO almacen VALUES (1,5,1,'2006-02-15 04:57:12'),
(2,2,2,'2006-02-15 04:57:12');

INSERT INTO pelicula_categoria VALUES (1,1,'2006-02-15 05:07:09'),
(2,2,'2006-02-15 05:07:09'),
(3,3,'2006-02-15 05:07:09'),
(4,4,'2006-02-15 05:07:09'),
(5,5,'2006-02-15 05:07:09'),
(6,9,'2006-02-15 05:07:09'),
(7,6,'2006-02-15 05:07:09'),
(8,7,'2006-02-15 05:07:09'),
(9,8,'2006-02-15 05:07:09'),
(10,10,'2006-02-15 05:07:09');

INSERT INTO cliente VALUES (1,1,'MARY','SMITH','MARY.SMITH@sakilacustomer.org',5,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(2,1,'PATRICIA','JOHNSON','PATRICIA.JOHNSON@sakilacustomer.org',6,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(3,1,'LINDA','WILLIAMS','LINDA.WILLIAMS@sakilacustomer.org',7,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(4,2,'BARBARA','JONES','BARBARA.JONES@sakilacustomer.org',8,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(5,1,'ELIZABETH','BROWN','ELIZABETH.BROWN@sakilacustomer.org',9,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(6,2,'JENNIFER','DAVIS','JENNIFER.DAVIS@sakilacustomer.org',10,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(7,1,'MARIA','MILLER','MARIA.MILLER@sakilacustomer.org',4, 1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(8,2,'SUSAN','WILSON','SUSAN.WILSON@sakilacustomer.org',5,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(9,2,'MARGARET','MOORE','MARGARET.MOORE@sakilacustomer.org',3,1,'2006-02-14 22:04:36','2006-02-15 04:57:20'),
(10,1,'DOROTHY','TAYLOR','DOROTHY.TAYLOR@sakilacustomer.org',2,1,'2006-02-14 22:04:36','2006-02-15 04:57:20');

INSERT INTO pelicula_actor VALUES (1,1,'2006-02-15 05:05:03'),
(1,2,'2006-02-15 05:05:03'),
(1,3,'2006-02-15 05:05:03'),
(1,4,'2006-02-15 05:05:03'),
(1,5,'2006-02-15 05:05:03'),
(1,6,'2006-02-15 05:05:03'),
(1,7,'2006-02-15 05:05:03'),
(1,8,'2006-02-15 05:05:03'),
(1,9,'2006-02-15 05:05:03'),
(1,10,'2006-02-15 05:05:03');

INSERT INTO inventario VALUES (1,1,1,'2006-02-15 05:09:17'),
(2,1,1,'2006-02-15 05:09:17'),
(3,1,1,'2006-02-15 05:09:17'),
(4,1,1,'2006-02-15 05:09:17'),
(5,1,2,'2006-02-15 05:09:17'),
(6,1,2,'2006-02-15 05:09:17'),
(7,1,2,'2006-02-15 05:09:17'),
(8,1,2,'2006-02-15 05:09:17'),
(9,2,2,'2006-02-15 05:09:17'),
(10,2,2,'2006-02-15 05:09:17');

INSERT INTO alquiler VALUES (1,'2005-05-24 22:53:30',2,2,'2005-05-26 22:04:30',1,'2006-02-15 21:30:53'),
(2,'2005-05-24 22:54:33',1,1,'2005-05-28 19:40:33',1,'2006-02-15 21:30:53'),
(3,'2005-05-24 23:03:39',3,4,'2005-06-01 22:12:39',1,'2006-02-15 21:30:53'),
(4,'2005-05-24 23:04:41',4,3,'2005-06-03 01:43:41',2,'2006-02-15 21:30:53'),
(5,'2005-05-24 23:05:21',5,5,'2005-06-02 04:33:21',1,'2006-02-15 21:30:53'),
(6,'2005-05-24 23:08:07',6,6,'2005-05-27 01:32:07',1,'2006-02-15 21:30:53'),
(7,'2005-05-24 23:11:53',7,7,'2005-05-29 20:34:53',2,'2006-02-15 21:30:53'),
(8,'2005-05-24 23:31:46',8,8,'2005-05-27 23:33:46',2,'2006-02-15 21:30:53'),
(9,'2005-05-25 00:00:40',9,9,'2005-05-28 00:22:40',1,'2006-02-15 21:30:53'),
(10,'2005-05-25 00:02:21',10,10,'2005-05-31 22:44:21',2,'2006-02-15 21:30:53');

INSERT INTO pago VALUES (1,1,1,1,'2.99','2005-05-25 11:30:37','2006-02-15 22:12:30'),
(2,1,1,2,'0.99','2005-05-28 10:35:23','2006-02-15 22:12:30'),
(3,1,1,3,'5.99','2005-06-15 00:54:12','2006-02-15 22:12:30'),
(4,1,2,4,'0.99','2005-06-15 18:02:53','2006-02-15 22:12:30'),
(5,1,2,5,'9.99','2005-06-15 21:08:46','2006-02-15 22:12:30'),
(6,1,1,6,'4.99','2005-06-16 15:18:57','2006-02-15 22:12:30'),
(7,1,1,7,'4.99','2005-06-18 08:41:48','2006-02-15 22:12:30'),
(8,1,2,8,'0.99','2005-06-18 13:33:59','2006-02-15 22:12:30'),
(9,1,1,9,'3.99','2005-06-21 06:24:45','2006-02-15 22:12:30'),
(10,1,2,10,'5.99','2005-07-08 03:17:05','2006-02-15 22:12:30');