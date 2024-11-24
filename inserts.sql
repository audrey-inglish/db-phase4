
--data inserts for the actor table
INSERT INTO playwright.actor (actor_name,start_date,end_date) VALUES
	 ('Michael Johnson','2024-01-02',NULL),
	 ('Emily Davis','2023-03-12',NULL),
	 ('James Brown','2023-10-17',NULL),
	 ('Sarah Wilson','2023-09-20',NULL),
	 ('David Miller','2023-07-18',NULL),
	 ('Laura Moore','2023-04-16',NULL),
	 ('Daniel Taylor','2023-11-29',NULL),
	 ('Olivia Anderson','2023-05-13',NULL),
	 ('Matthew Thomas','2023-03-26',NULL),
	 ('Sophia Jackson','2023-06-17',NULL);
INSERT INTO playwright.actor (actor_name,start_date,end_date) VALUES
	 ('William White','2023-09-27',NULL),
	 ('Emma Harris','2023-09-20',NULL),
	 ('Joshua Martin','2023-06-09',NULL),
	 ('Amelia Thompson','2023-07-16',NULL),
	 ('Christopher Garcia','2023-05-23',NULL),
	 ('Isabella Martinez','2023-03-18',NULL),
	 ('Andrew Robinson','2023-07-01',NULL),
	 ('Mia Clark','2023-03-24',NULL),
	 ('Joseph Rodriguez','2023-11-30',NULL),
	 ('Charlotte Lewis','2023-07-29',NULL);
INSERT INTO playwright.actor (actor_name,start_date,end_date) VALUES
	 ('Ethan Lee','2023-04-04',NULL),
	 ('Ava Walker','2023-06-12',NULL),
	 ('Alexander Hall','2023-12-13',NULL),
	 ('Edmund Rios','2023-05-06',NULL),
	 ('Tomasz Mata','2023-09-07',NULL),
	 ('Dean Massey','2023-10-09',NULL),
	 ('Gideon Connor','2023-06-05',NULL),
	 ('Lorna Case','2023-09-18',NULL),
	 ('Tori Gonzales','2023-03-02',NULL),
	 ('Alan Holloway','2023-05-09',NULL);
INSERT INTO playwright.actor (actor_name,start_date,end_date) VALUES
	 ('Herbert Booth','2023-01-29',NULL),
	 ('Savannah Church','2023-05-15',NULL),
	 ('Darla Harvey','2023-09-16',NULL),
	 ('Rich Irwin','2023-08-17',NULL),
	 ('Frank Rich','2023-05-28',NULL),
	 ('Isaiah Pena','2023-05-15',NULL),
	 ('Addie Garza','2023-09-16',NULL),
	 ('Patrica Rios','2023-08-17',NULL),
	 ('Hazel Trevino','2023-06-05',NULL),
	 ('Angelina Aguilar','2023-04-04',NULL);
INSERT INTO playwright.actor (actor_name,start_date,end_date) VALUES
	 ('Elvis Salazar','2023-05-06',NULL),
	 ('Bernie Palmer','2023-10-09',NULL),
	 ('Ross Fisher','2023-04-04',NULL),
	 ('Jackson Kidd','2023-08-17',NULL),
	 ('Joseph York','2023-07-29',NULL),
	 ('Emmanuel Stevens','2023-06-05',NULL),
	 ('Chance Barrett','2023-03-18',NULL),
	 ('Della Galloway','2023-05-15',NULL),
	 ('Arlene Ray','2023-06-05',NULL),
	 ('Darin Chapman','2023-01-29',NULL);
INSERT INTO playwright.actor (actor_name,start_date,end_date) VALUES
	 ('Marcelino Thompson','2023-07-01',NULL),
	 ('Enid Ray','2023-01-29',NULL),
	 ('Eddie Weiss','2023-05-28',NULL),
	 ('Newton Mclaughlin','2023-07-01',NULL),
	 ('Bruce Wang','2023-01-29',NULL),
	 ('Joann Clarke','2023-05-28',NULL),
	 ('Aline Beck','2023-03-24',NULL),
	 ('Brendon Barrett','2023-03-19',NULL),
	 ('John Doe','2023-10-29','2024-11-24'),
	 ('Jane Smith','2023-03-20','2024-11-15');

--data inserts for the dayofweek table
INSERT INTO playwright.dayofweek (id,day_name) VALUES
	 (1,'Monday'),
	 (2,'Tuesday'),
	 (3,'Wednesday'),
	 (4,'Thursday'),
	 (5,'Friday'),
	 (6,'Saturday'),
	 (0,'Sunday');

--data inserts for the paired_cert table
INSERT INTO playwright.paired_cert (role_3_cert_id,role_4_cert_id) VALUES
	 (51,52),
	 (53,54),
	 (55,56),
	 (57,58),
	 (59,60),
	 (61,62),
	 (63,64);

INSERT INTO playwright.play_role (role_name) VALUES
	 ('Wadsworth'),
	 ('Miss Scarlet'),
	 ('Professor Plum'),
	 ('Colonel Mustard'),
	 ('Mrs. Peacock'),
	 ('Mr. Green'),
	 ('Mrs. White'),
	 ('Yvette'),
	 ('Man');

--data inserts for the showtime table
INSERT INTO playwright.showtime (start_time,end_time) VALUES
	 ('07:00:00','08:45:00'),
	 ('08:00:00','09:45:00'),
	 ('09:00:00','10:45:00'),
	 ('10:00:00','11:45:00'),
	 ('11:00:00','12:45:00'),
	 ('12:00:00','13:45:00'),
	 ('13:00:00','14:45:00'),
	 ('14:00:00','15:45:00'),
	 ('15:00:00','16:45:00'),
	 ('16:00:00','17:45:00');
INSERT INTO playwright.showtime (start_time,end_time) VALUES
	 ('17:00:00','18:45:00'),
	 ('18:00:00','19:45:00'),
	 ('19:00:00','20:45:00');

--data inserts for stage table
INSERT INTO playwright.stage (stage_name) VALUES
	 ('Stage 1'),
	 ('Stage 2');


--data inserts for role_cert
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (4,2,'2024-01-01','2024-07-01'),
	 (1,1,'2024-01-01','2024-07-01'),
	 (2,5,'2024-01-01','2024-07-01'),
	 (5,6,'2024-01-01','2024-07-01'),
	 (6,7,'2024-01-01','2024-07-01'),
	 (7,8,'2024-01-01','2024-07-01'),
	 (8,9,'2024-01-01','2024-07-01'),
	 (9,1,'2024-01-01','2024-07-01'),
	 (10,2,'2024-01-01','2024-07-01'),
	 (11,5,'2024-01-01','2024-07-01');
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (12,6,'2024-01-01','2024-07-01'),
	 (13,7,'2024-01-01','2024-07-01'),
	 (14,8,'2024-01-01','2024-07-01'),
	 (15,9,'2024-01-01','2024-07-01'),
	 (20,9,'2024-01-01','2024-07-01'),
	 (22,1,'2024-01-01','2024-07-01'),
	 (23,2,'2024-01-01','2024-07-01'),
	 (24,5,'2024-01-01','2024-07-01'),
	 (25,6,'2024-01-01','2024-07-01'),
	 (26,7,'2024-01-01','2024-07-01');
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (27,8,'2024-01-01','2024-07-01'),
	 (28,9,'2024-01-01','2024-07-01'),
	 (29,1,'2024-01-01','2024-07-01'),
	 (30,2,'2024-01-01','2024-07-01'),
	 (31,5,'2024-01-01','2024-07-01'),
	 (32,6,'2024-01-01','2024-07-01'),
	 (33,7,'2024-01-01','2024-07-01'),
	 (34,8,'2024-01-01','2024-07-01'),
	 (35,9,'2024-01-01','2024-07-01'),
	 (42,1,'2024-01-01','2024-07-01');
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (43,2,'2024-01-01','2024-07-01'),
	 (44,5,'2024-01-01','2024-07-01'),
	 (45,6,'2024-01-01','2024-07-01'),
	 (46,7,'2024-01-01','2024-07-01'),
	 (47,8,'2024-01-01','2024-07-01'),
	 (48,9,'2024-01-01','2024-07-01'),
	 (49,1,'2024-01-01','2024-07-01'),
	 (50,2,'2024-01-01','2024-07-01'),
	 (51,5,'2024-01-01','2024-07-01'),
	 (52,6,'2024-01-01','2024-07-01');
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (53,7,'2024-01-01','2024-07-01'),
	 (54,8,'2024-01-01','2024-07-01'),
	 (55,9,'2024-01-01','2024-07-01'),
	 (16,3,'2024-01-01','2024-07-01'),
	 (3,4,'2024-01-01','2024-07-01'),
	 (18,3,'2024-01-01','2024-07-01'),
	 (17,4,'2024-01-01','2024-07-01'),
	 (21,3,'2024-01-01','2024-07-01'),
	 (19,4,'2024-01-01','2024-07-01'),
	 (36,3,'2024-01-01','2024-07-01');
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (37,4,'2024-01-01','2024-07-01'),
	 (38,3,'2024-01-01','2024-07-01'),
	 (39,4,'2024-01-01','2024-07-01'),
	 (40,3,'2024-01-01','2024-07-01'),
	 (41,4,'2024-01-01','2024-07-01'),
	 (56,3,'2024-01-01','2024-07-01'),
	 (57,4,'2024-01-01','2024-07-01'),
	 (6,6,'2024-01-01','2024-07-01'),
	 (4,2,'2024-11-01','2025-06-01'),
	 (1,1,'2024-11-01','2025-06-01');
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (2,5,'2024-11-01','2025-06-01'),
	 (5,6,'2024-11-01','2025-06-01'),
	 (6,7,'2024-11-01','2025-06-01'),
	 (7,8,'2024-11-01','2025-06-01'),
	 (8,9,'2024-11-01','2025-06-01'),
	 (9,1,'2024-11-01','2025-06-01'),
	 (10,2,'2024-11-01','2025-06-01'),
	 (11,5,'2024-11-01','2025-06-01'),
	 (12,6,'2024-11-01','2025-06-01'),
	 (13,7,'2024-11-01','2025-06-01');
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (14,8,'2024-11-01','2025-06-01'),
	 (15,9,'2024-11-01','2025-06-01'),
	 (20,9,'2024-11-01','2025-06-01'),
	 (22,1,'2024-11-01','2025-06-01'),
	 (23,2,'2024-11-01','2025-06-01'),
	 (24,5,'2024-11-01','2025-06-01'),
	 (25,6,'2024-11-01','2025-06-01'),
	 (26,7,'2024-11-01','2025-06-01'),
	 (27,8,'2024-11-01','2025-06-01'),
	 (28,9,'2024-11-01','2025-06-01');
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (29,1,'2024-11-01','2025-06-01'),
	 (30,2,'2024-11-01','2025-06-01'),
	 (31,5,'2024-11-01','2025-06-01'),
	 (32,6,'2024-11-01','2025-06-01'),
	 (33,7,'2024-11-01','2025-06-01'),
	 (34,8,'2024-11-01','2025-06-01'),
	 (35,9,'2024-11-01','2025-06-01'),
	 (42,1,'2024-11-01','2025-06-01'),
	 (43,2,'2024-11-01','2025-06-01'),
	 (44,5,'2024-11-01','2025-06-01');
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (45,6,'2024-11-01','2025-06-01'),
	 (46,7,'2024-11-01','2025-06-01'),
	 (47,8,'2024-11-01','2025-06-01'),
	 (48,9,'2024-11-01','2025-06-01'),
	 (49,1,'2024-11-01','2025-06-01'),
	 (50,2,'2024-11-01','2025-06-01'),
	 (51,5,'2024-11-01','2025-06-01'),
	 (52,6,'2024-11-01','2025-06-01'),
	 (53,7,'2024-11-01','2025-06-01'),
	 (54,8,'2024-11-01','2025-06-01');
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (55,9,'2024-11-01','2025-06-01'),
	 (16,3,'2024-11-01','2025-06-01'),
	 (3,4,'2024-11-01','2025-06-01'),
	 (18,3,'2024-11-01','2025-06-01'),
	 (17,4,'2024-11-01','2025-06-01'),
	 (21,3,'2024-11-01','2025-06-01'),
	 (19,4,'2024-11-01','2025-06-01'),
	 (36,3,'2024-11-01','2025-06-01'),
	 (37,4,'2024-11-01','2025-06-01'),
	 (38,3,'2024-11-01','2025-06-01');
INSERT INTO playwright.role_certification (actor_id,role_id,certification_date,expiration_date) VALUES
	 (39,4,'2024-11-01','2025-06-01'),
	 (40,3,'2024-11-01','2025-06-01'),
	 (41,4,'2024-11-01','2025-06-01'),
	 (56,3,'2024-11-01','2025-06-01'),
	 (57,4,'2024-11-01','2025-06-01'),
	 (6,6,'2024-11-01','2025-06-01');


--data inserts for actor_normalneed
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (5,0,1,NULL),
	 (11,0,2,NULL),
	 (5,0,3,NULL),
	 (11,0,4,NULL),
	 (5,0,5,NULL),
	 (11,0,6,NULL),
	 (23,0,7,NULL),
	 (30,0,8,NULL),
	 (23,0,9,NULL),
	 (30,0,10,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (23,0,11,NULL),
	 (30,0,12,NULL),
	 (37,0,13,NULL),
	 (12,0,1,NULL),
	 (1,0,2,NULL),
	 (12,0,3,NULL),
	 (1,0,4,NULL),
	 (12,0,5,NULL),
	 (1,0,6,NULL),
	 (24,0,7,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (31,0,8,NULL),
	 (24,0,9,NULL),
	 (31,0,10,NULL),
	 (24,0,11,NULL),
	 (31,0,12,NULL),
	 (38,0,13,NULL),
	 (NULL,0,1,10),
	 (NULL,0,2,11),
	 (NULL,0,3,10),
	 (NULL,0,4,11);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (NULL,0,5,10),
	 (NULL,0,6,11),
	 (NULL,0,7,12),
	 (NULL,0,8,13),
	 (NULL,0,9,12),
	 (NULL,0,10,13),
	 (NULL,0,11,12),
	 (NULL,0,12,13),
	 (NULL,0,13,14),
	 (6,0,1,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (13,0,2,NULL),
	 (6,0,3,NULL),
	 (13,0,4,NULL),
	 (6,0,5,NULL),
	 (13,0,6,NULL),
	 (25,0,7,NULL),
	 (32,0,8,NULL),
	 (25,0,9,NULL),
	 (32,0,10,NULL),
	 (25,0,11,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (32,0,12,NULL),
	 (39,0,13,NULL),
	 (7,0,1,NULL),
	 (14,0,2,NULL),
	 (7,0,3,NULL),
	 (14,0,4,NULL),
	 (7,0,5,NULL),
	 (14,0,6,NULL),
	 (26,0,7,NULL),
	 (33,0,8,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (26,0,9,NULL),
	 (33,0,10,NULL),
	 (26,0,11,NULL),
	 (33,0,12,NULL),
	 (40,0,13,NULL),
	 (8,0,1,NULL),
	 (15,0,2,NULL),
	 (8,0,3,NULL),
	 (15,0,4,NULL),
	 (8,0,5,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (15,0,6,NULL),
	 (27,0,7,NULL),
	 (34,0,8,NULL),
	 (27,0,9,NULL),
	 (34,0,10,NULL),
	 (27,0,11,NULL),
	 (34,0,12,NULL),
	 (41,0,13,NULL),
	 (9,0,1,NULL),
	 (16,0,2,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (9,0,3,NULL),
	 (16,0,4,NULL),
	 (9,0,5,NULL),
	 (16,0,6,NULL),
	 (28,0,7,NULL),
	 (35,0,8,NULL),
	 (28,0,9,NULL),
	 (35,0,10,NULL),
	 (28,0,11,NULL),
	 (35,0,12,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (42,0,13,NULL),
	 (10,0,1,NULL),
	 (17,0,2,NULL),
	 (10,0,3,NULL),
	 (17,0,4,NULL),
	 (10,0,5,NULL),
	 (17,0,6,NULL),
	 (29,0,7,NULL),
	 (36,0,8,NULL),
	 (29,0,9,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (36,0,10,NULL),
	 (29,0,11,NULL),
	 (36,0,12,NULL),
	 (43,0,13,NULL),
	 (5,1,1,NULL),
	 (11,1,2,NULL),
	 (5,1,3,NULL),
	 (11,1,4,NULL),
	 (5,1,5,NULL),
	 (11,1,6,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (23,1,7,NULL),
	 (30,1,8,NULL),
	 (23,1,9,NULL),
	 (30,1,10,NULL),
	 (23,1,11,NULL),
	 (30,1,12,NULL),
	 (37,1,13,NULL),
	 (12,1,1,NULL),
	 (1,1,2,NULL),
	 (12,1,3,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (1,1,4,NULL),
	 (12,1,5,NULL),
	 (1,1,6,NULL),
	 (24,1,7,NULL),
	 (31,1,8,NULL),
	 (24,1,9,NULL),
	 (31,1,10,NULL),
	 (24,1,11,NULL),
	 (31,1,12,NULL),
	 (38,1,13,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (NULL,1,1,10),
	 (NULL,1,2,11),
	 (NULL,1,3,10),
	 (NULL,1,4,11),
	 (NULL,1,5,10),
	 (NULL,1,6,11),
	 (NULL,1,7,12),
	 (NULL,1,8,13),
	 (NULL,1,9,12),
	 (NULL,1,10,13);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (NULL,1,11,12),
	 (NULL,1,12,13),
	 (NULL,1,13,14),
	 (6,1,1,NULL),
	 (13,1,2,NULL),
	 (6,1,3,NULL),
	 (13,1,4,NULL),
	 (6,1,5,NULL),
	 (13,1,6,NULL),
	 (25,1,7,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (32,1,8,NULL),
	 (25,1,9,NULL),
	 (32,1,10,NULL),
	 (25,1,11,NULL),
	 (32,1,12,NULL),
	 (39,1,13,NULL),
	 (7,1,1,NULL),
	 (14,1,2,NULL),
	 (7,1,3,NULL),
	 (14,1,4,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (7,1,5,NULL),
	 (14,1,6,NULL),
	 (26,1,7,NULL),
	 (33,1,8,NULL),
	 (26,1,9,NULL),
	 (33,1,10,NULL),
	 (26,1,11,NULL),
	 (33,1,12,NULL),
	 (40,1,13,NULL),
	 (8,1,1,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (15,1,2,NULL),
	 (8,1,3,NULL),
	 (15,1,4,NULL),
	 (8,1,5,NULL),
	 (15,1,6,NULL),
	 (27,1,7,NULL),
	 (34,1,8,NULL),
	 (27,1,9,NULL),
	 (34,1,10,NULL),
	 (27,1,11,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (34,1,12,NULL),
	 (41,1,13,NULL),
	 (9,1,1,NULL),
	 (16,1,2,NULL),
	 (9,1,3,NULL),
	 (16,1,4,NULL),
	 (9,1,5,NULL),
	 (16,1,6,NULL),
	 (28,1,7,NULL),
	 (35,1,8,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (28,1,9,NULL),
	 (35,1,10,NULL),
	 (28,1,11,NULL),
	 (35,1,12,NULL),
	 (42,1,13,NULL),
	 (10,1,1,NULL),
	 (17,1,2,NULL),
	 (10,1,3,NULL),
	 (17,1,4,NULL),
	 (10,1,5,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (17,1,6,NULL),
	 (29,1,7,NULL),
	 (36,1,8,NULL),
	 (29,1,9,NULL),
	 (36,1,10,NULL),
	 (29,1,11,NULL),
	 (36,1,12,NULL),
	 (43,1,13,NULL),
	 (5,2,1,NULL),
	 (11,2,2,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (5,2,3,NULL),
	 (11,2,4,NULL),
	 (5,2,5,NULL),
	 (11,2,6,NULL),
	 (23,2,7,NULL),
	 (30,2,8,NULL),
	 (23,2,9,NULL),
	 (30,2,10,NULL),
	 (23,2,11,NULL),
	 (30,2,12,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (37,2,13,NULL),
	 (12,2,1,NULL),
	 (1,2,2,NULL),
	 (12,2,3,NULL),
	 (1,2,4,NULL),
	 (12,2,5,NULL),
	 (1,2,6,NULL),
	 (24,2,7,NULL),
	 (31,2,8,NULL),
	 (24,2,9,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (31,2,10,NULL),
	 (24,2,11,NULL),
	 (31,2,12,NULL),
	 (38,2,13,NULL),
	 (NULL,2,1,10),
	 (NULL,2,2,11),
	 (NULL,2,3,10),
	 (NULL,2,4,11),
	 (NULL,2,5,10),
	 (NULL,2,6,11);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (NULL,2,7,12),
	 (NULL,2,8,13),
	 (NULL,2,9,12),
	 (NULL,2,10,13),
	 (NULL,2,11,12),
	 (NULL,2,12,13),
	 (NULL,2,13,14),
	 (6,2,1,NULL),
	 (13,2,2,NULL),
	 (6,2,3,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (13,2,4,NULL),
	 (6,2,5,NULL),
	 (13,2,6,NULL),
	 (25,2,7,NULL),
	 (32,2,8,NULL),
	 (25,2,9,NULL),
	 (32,2,10,NULL),
	 (25,2,11,NULL),
	 (32,2,12,NULL),
	 (39,2,13,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (7,2,1,NULL),
	 (14,2,2,NULL),
	 (7,2,3,NULL),
	 (14,2,4,NULL),
	 (7,2,5,NULL),
	 (14,2,6,NULL),
	 (26,2,7,NULL),
	 (33,2,8,NULL),
	 (26,2,9,NULL),
	 (33,2,10,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (26,2,11,NULL),
	 (33,2,12,NULL),
	 (40,2,13,NULL),
	 (8,2,1,NULL),
	 (15,2,2,NULL),
	 (8,2,3,NULL),
	 (15,2,4,NULL),
	 (8,2,5,NULL),
	 (15,2,6,NULL),
	 (27,2,7,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (34,2,8,NULL),
	 (27,2,9,NULL),
	 (34,2,10,NULL),
	 (27,2,11,NULL),
	 (34,2,12,NULL),
	 (41,2,13,NULL),
	 (9,2,1,NULL),
	 (16,2,2,NULL),
	 (9,2,3,NULL),
	 (16,2,4,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (9,2,5,NULL),
	 (16,2,6,NULL),
	 (28,2,7,NULL),
	 (35,2,8,NULL),
	 (28,2,9,NULL),
	 (35,2,10,NULL),
	 (28,2,11,NULL),
	 (35,2,12,NULL),
	 (42,2,13,NULL),
	 (10,2,1,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (17,2,2,NULL),
	 (10,2,3,NULL),
	 (17,2,4,NULL),
	 (10,2,5,NULL),
	 (17,2,6,NULL),
	 (29,2,7,NULL),
	 (36,2,8,NULL),
	 (29,2,9,NULL),
	 (36,2,10,NULL),
	 (29,2,11,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (36,2,12,NULL),
	 (43,2,13,NULL),
	 (5,3,1,NULL),
	 (11,3,2,NULL),
	 (5,3,3,NULL),
	 (11,3,4,NULL),
	 (5,3,5,NULL),
	 (11,3,6,NULL),
	 (23,3,7,NULL),
	 (30,3,8,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (23,3,9,NULL),
	 (30,3,10,NULL),
	 (23,3,11,NULL),
	 (30,3,12,NULL),
	 (37,3,13,NULL),
	 (12,3,1,NULL),
	 (1,3,2,NULL),
	 (12,3,3,NULL),
	 (1,3,4,NULL),
	 (12,3,5,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (1,3,6,NULL),
	 (24,3,7,NULL),
	 (31,3,8,NULL),
	 (24,3,9,NULL),
	 (31,3,10,NULL),
	 (24,3,11,NULL),
	 (31,3,12,NULL),
	 (38,3,13,NULL),
	 (NULL,3,1,10),
	 (NULL,3,2,11);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (NULL,3,3,10),
	 (NULL,3,4,11),
	 (NULL,3,5,10),
	 (NULL,3,6,11),
	 (NULL,3,7,12),
	 (NULL,3,8,13),
	 (NULL,3,9,12),
	 (NULL,3,10,13),
	 (NULL,3,11,12),
	 (NULL,3,12,13);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (NULL,3,13,14),
	 (6,3,1,NULL),
	 (13,3,2,NULL),
	 (6,3,3,NULL),
	 (13,3,4,NULL),
	 (6,3,5,NULL),
	 (13,3,6,NULL),
	 (25,3,7,NULL),
	 (32,3,8,NULL),
	 (25,3,9,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (32,3,10,NULL),
	 (25,3,11,NULL),
	 (32,3,12,NULL),
	 (39,3,13,NULL),
	 (7,3,1,NULL),
	 (14,3,2,NULL),
	 (7,3,3,NULL),
	 (14,3,4,NULL),
	 (7,3,5,NULL),
	 (14,3,6,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (26,3,7,NULL),
	 (33,3,8,NULL),
	 (26,3,9,NULL),
	 (33,3,10,NULL),
	 (26,3,11,NULL),
	 (33,3,12,NULL),
	 (40,3,13,NULL),
	 (8,3,1,NULL),
	 (15,3,2,NULL),
	 (8,3,3,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (15,3,4,NULL),
	 (8,3,5,NULL),
	 (15,3,6,NULL),
	 (27,3,7,NULL),
	 (34,3,8,NULL),
	 (27,3,9,NULL),
	 (34,3,10,NULL),
	 (27,3,11,NULL),
	 (34,3,12,NULL),
	 (41,3,13,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (9,3,1,NULL),
	 (16,3,2,NULL),
	 (9,3,3,NULL),
	 (16,3,4,NULL),
	 (9,3,5,NULL),
	 (16,3,6,NULL),
	 (28,3,7,NULL),
	 (35,3,8,NULL),
	 (28,3,9,NULL),
	 (35,3,10,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (28,3,11,NULL),
	 (35,3,12,NULL),
	 (42,3,13,NULL),
	 (10,3,1,NULL),
	 (17,3,2,NULL),
	 (10,3,3,NULL),
	 (17,3,4,NULL),
	 (10,3,5,NULL),
	 (17,3,6,NULL),
	 (29,3,7,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (36,3,8,NULL),
	 (29,3,9,NULL),
	 (36,3,10,NULL),
	 (29,3,11,NULL),
	 (36,3,12,NULL),
	 (43,3,13,NULL),
	 (5,4,1,NULL),
	 (11,4,2,NULL),
	 (5,4,3,NULL),
	 (11,4,4,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (5,4,5,NULL),
	 (11,4,6,NULL),
	 (23,4,7,NULL),
	 (30,4,8,NULL),
	 (23,4,9,NULL),
	 (30,4,10,NULL),
	 (23,4,11,NULL),
	 (30,4,12,NULL),
	 (37,4,13,NULL),
	 (12,4,1,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (1,4,2,NULL),
	 (12,4,3,NULL),
	 (1,4,4,NULL),
	 (12,4,5,NULL),
	 (1,4,6,NULL),
	 (24,4,7,NULL),
	 (31,4,8,NULL),
	 (24,4,9,NULL),
	 (31,4,10,NULL),
	 (24,4,11,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (31,4,12,NULL),
	 (38,4,13,NULL),
	 (NULL,4,1,10),
	 (NULL,4,2,11),
	 (NULL,4,3,10),
	 (NULL,4,4,11),
	 (NULL,4,5,10),
	 (NULL,4,6,11),
	 (NULL,4,7,12),
	 (NULL,4,8,13);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (NULL,4,9,12),
	 (NULL,4,10,13),
	 (NULL,4,11,12),
	 (NULL,4,12,13),
	 (NULL,4,13,14),
	 (6,4,1,NULL),
	 (13,4,2,NULL),
	 (6,4,3,NULL),
	 (13,4,4,NULL),
	 (6,4,5,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (13,4,6,NULL),
	 (25,4,7,NULL),
	 (32,4,8,NULL),
	 (25,4,9,NULL),
	 (32,4,10,NULL),
	 (25,4,11,NULL),
	 (32,4,12,NULL),
	 (39,4,13,NULL),
	 (7,4,1,NULL),
	 (14,4,2,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (7,4,3,NULL),
	 (14,4,4,NULL),
	 (7,4,5,NULL),
	 (14,4,6,NULL),
	 (26,4,7,NULL),
	 (33,4,8,NULL),
	 (26,4,9,NULL),
	 (33,4,10,NULL),
	 (26,4,11,NULL),
	 (33,4,12,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (40,4,13,NULL),
	 (8,4,1,NULL),
	 (15,4,2,NULL),
	 (8,4,3,NULL),
	 (15,4,4,NULL),
	 (8,4,5,NULL),
	 (15,4,6,NULL),
	 (27,4,7,NULL),
	 (34,4,8,NULL),
	 (27,4,9,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (34,4,10,NULL),
	 (27,4,11,NULL),
	 (34,4,12,NULL),
	 (41,4,13,NULL),
	 (9,4,1,NULL),
	 (16,4,2,NULL),
	 (9,4,3,NULL),
	 (16,4,4,NULL),
	 (9,4,5,NULL),
	 (16,4,6,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (28,4,7,NULL),
	 (35,4,8,NULL),
	 (28,4,9,NULL),
	 (35,4,10,NULL),
	 (28,4,11,NULL),
	 (35,4,12,NULL),
	 (42,4,13,NULL),
	 (10,4,1,NULL),
	 (17,4,2,NULL),
	 (10,4,3,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (17,4,4,NULL),
	 (10,4,5,NULL),
	 (17,4,6,NULL),
	 (29,4,7,NULL),
	 (36,4,8,NULL),
	 (29,4,9,NULL),
	 (36,4,10,NULL),
	 (29,4,11,NULL),
	 (36,4,12,NULL),
	 (43,4,13,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (5,5,1,NULL),
	 (11,5,2,NULL),
	 (5,5,3,NULL),
	 (11,5,4,NULL),
	 (5,5,5,NULL),
	 (11,5,6,NULL),
	 (23,5,7,NULL),
	 (30,5,8,NULL),
	 (23,5,9,NULL),
	 (30,5,10,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (23,5,11,NULL),
	 (30,5,12,NULL),
	 (37,5,13,NULL),
	 (12,5,1,NULL),
	 (1,5,2,NULL),
	 (12,5,3,NULL),
	 (1,5,4,NULL),
	 (12,5,5,NULL),
	 (1,5,6,NULL),
	 (24,5,7,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (31,5,8,NULL),
	 (24,5,9,NULL),
	 (31,5,10,NULL),
	 (24,5,11,NULL),
	 (31,5,12,NULL),
	 (38,5,13,NULL),
	 (NULL,5,1,10),
	 (NULL,5,2,11),
	 (NULL,5,3,10),
	 (NULL,5,4,11);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (NULL,5,5,10),
	 (NULL,5,6,11),
	 (NULL,5,7,12),
	 (NULL,5,8,13),
	 (NULL,5,9,12),
	 (NULL,5,10,13),
	 (NULL,5,11,12),
	 (NULL,5,12,13),
	 (NULL,5,13,14),
	 (6,5,1,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (13,5,2,NULL),
	 (6,5,3,NULL),
	 (13,5,4,NULL),
	 (6,5,5,NULL),
	 (13,5,6,NULL),
	 (25,5,7,NULL),
	 (32,5,8,NULL),
	 (25,5,9,NULL),
	 (32,5,10,NULL),
	 (25,5,11,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (32,5,12,NULL),
	 (39,5,13,NULL),
	 (7,5,1,NULL),
	 (14,5,2,NULL),
	 (7,5,3,NULL),
	 (14,5,4,NULL),
	 (7,5,5,NULL),
	 (14,5,6,NULL),
	 (26,5,7,NULL),
	 (33,5,8,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (26,5,9,NULL),
	 (33,5,10,NULL),
	 (26,5,11,NULL),
	 (33,5,12,NULL),
	 (40,5,13,NULL),
	 (8,5,1,NULL),
	 (15,5,2,NULL),
	 (8,5,3,NULL),
	 (15,5,4,NULL),
	 (8,5,5,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (15,5,6,NULL),
	 (27,5,7,NULL),
	 (34,5,8,NULL),
	 (27,5,9,NULL),
	 (34,5,10,NULL),
	 (27,5,11,NULL),
	 (34,5,12,NULL),
	 (41,5,13,NULL),
	 (9,5,1,NULL),
	 (16,5,2,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (9,5,3,NULL),
	 (16,5,4,NULL),
	 (9,5,5,NULL),
	 (16,5,6,NULL),
	 (28,5,7,NULL),
	 (35,5,8,NULL),
	 (28,5,9,NULL),
	 (35,5,10,NULL),
	 (28,5,11,NULL),
	 (35,5,12,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (42,5,13,NULL),
	 (10,5,1,NULL),
	 (17,5,2,NULL),
	 (10,5,3,NULL),
	 (17,5,4,NULL),
	 (10,5,5,NULL),
	 (17,5,6,NULL),
	 (29,5,7,NULL),
	 (36,5,8,NULL),
	 (29,5,9,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (36,5,10,NULL),
	 (29,5,11,NULL),
	 (36,5,12,NULL),
	 (43,5,13,NULL),
	 (5,6,1,NULL),
	 (11,6,2,NULL),
	 (5,6,3,NULL),
	 (11,6,4,NULL),
	 (5,6,5,NULL),
	 (11,6,6,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (23,6,7,NULL),
	 (30,6,8,NULL),
	 (23,6,9,NULL),
	 (30,6,10,NULL),
	 (23,6,11,NULL),
	 (30,6,12,NULL),
	 (37,6,13,NULL),
	 (12,6,1,NULL),
	 (1,6,2,NULL),
	 (12,6,3,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (1,6,4,NULL),
	 (12,6,5,NULL),
	 (1,6,6,NULL),
	 (24,6,7,NULL),
	 (31,6,8,NULL),
	 (24,6,9,NULL),
	 (31,6,10,NULL),
	 (24,6,11,NULL),
	 (31,6,12,NULL),
	 (38,6,13,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (NULL,6,1,10),
	 (NULL,6,2,11),
	 (NULL,6,3,10),
	 (NULL,6,4,11),
	 (NULL,6,5,10),
	 (NULL,6,6,11),
	 (NULL,6,7,12),
	 (NULL,6,8,13),
	 (NULL,6,9,12),
	 (NULL,6,10,13);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (NULL,6,11,12),
	 (NULL,6,12,13),
	 (NULL,6,13,14),
	 (6,6,1,NULL),
	 (13,6,2,NULL),
	 (6,6,3,NULL),
	 (13,6,4,NULL),
	 (6,6,5,NULL),
	 (13,6,6,NULL),
	 (25,6,7,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (32,6,8,NULL),
	 (25,6,9,NULL),
	 (32,6,10,NULL),
	 (25,6,11,NULL),
	 (32,6,12,NULL),
	 (39,6,13,NULL),
	 (7,6,1,NULL),
	 (14,6,2,NULL),
	 (7,6,3,NULL),
	 (14,6,4,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (7,6,5,NULL),
	 (14,6,6,NULL),
	 (26,6,7,NULL),
	 (33,6,8,NULL),
	 (26,6,9,NULL),
	 (33,6,10,NULL),
	 (26,6,11,NULL),
	 (33,6,12,NULL),
	 (40,6,13,NULL),
	 (8,6,1,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (15,6,2,NULL),
	 (8,6,3,NULL),
	 (15,6,4,NULL),
	 (8,6,5,NULL),
	 (15,6,6,NULL),
	 (27,6,7,NULL),
	 (34,6,8,NULL),
	 (27,6,9,NULL),
	 (34,6,10,NULL),
	 (27,6,11,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (34,6,12,NULL),
	 (41,6,13,NULL),
	 (9,6,1,NULL),
	 (16,6,2,NULL),
	 (9,6,3,NULL),
	 (16,6,4,NULL),
	 (9,6,5,NULL),
	 (16,6,6,NULL),
	 (28,6,7,NULL),
	 (35,6,8,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (28,6,9,NULL),
	 (35,6,10,NULL),
	 (28,6,11,NULL),
	 (35,6,12,NULL),
	 (42,6,13,NULL),
	 (10,6,1,NULL),
	 (17,6,2,NULL),
	 (10,6,3,NULL),
	 (17,6,4,NULL),
	 (10,6,5,NULL);
INSERT INTO playwright.actor_normalneed (role_cert_id,dayofweek_id,preferred_showtime_id,pair_cert_id) VALUES
	 (17,6,6,NULL),
	 (29,6,7,NULL),
	 (36,6,8,NULL),
	 (29,6,9,NULL),
	 (36,6,10,NULL),
	 (29,6,11,NULL),
	 (36,6,12,NULL),
	 (43,6,13,NULL);
