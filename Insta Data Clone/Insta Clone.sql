CREATE DATABASE ig_clone;

USE ig_clone;

/*Users*/
CREATE TABLE users(
	id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
	username VARCHAR(255) NOT NULL,
	created_at TIMESTAMP DEFAULT NOW()
);

/*Photos*/
CREATE TABLE photos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	image_url VARCHAR(355) NOT NULL,
	user_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(user_id) REFERENCES users(id)
);

/*Comments*/
CREATE TABLE comments(
	id INT AUTO_INCREMENT PRIMARY KEY,
	comment_text VARCHAR(255) NOT NULL,
	user_id INT NOT NULL,
	photo_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(photo_id) REFERENCES photos(id)
);

/*Likes*/
CREATE TABLE likes(
	user_id INT NOT NULL,
	photo_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY(user_id) REFERENCES users(id),
	FOREIGN KEY(photo_id) REFERENCES photos(id),
	PRIMARY KEY(user_id, photo_id)
);

/*follows*/
CREATE TABLE follows(
	follower_id INT NOT NULL,
	followee_id INT NOT NULL,
	created_at TIMESTAMP DEFAULT NOW(),
	FOREIGN KEY (follower_id) REFERENCES users(id),
	FOREIGN KEY (followee_id) REFERENCES users(id),
	PRIMARY KEY(follower_id, followee_id)
);

/*Tags*/
CREATE TABLE tags(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
	tag_name VARCHAR(255) UNIQUE NOT NULL,
	created_at TIMESTAMP DEFAULT NOW()
);

/*junction table: Photos - Tags*/
CREATE TABLE photo_tags(
	photo_id INT NOT NULL,
	tag_id INT NOT NULL,
	FOREIGN KEY(photo_id) REFERENCES photos(id),
	FOREIGN KEY(tag_id) REFERENCES tags(id),
	PRIMARY KEY(photo_id, tag_id)
);


INSERT INTO users (username, created_at) VALUES ('Xander_Thompson', '2017-02-16 18:22:10.846'), ('Zara_McKinney', '2017-04-02 17:11:21.417'), ('Finn_Wheeler', '2017-02-21 11:12:32.574'), ('Leah_Johnson', '2016-08-13 01:28:43.085'), ('Luca_Parker', '2016-12-07 01:04:39.298'), ('Maya_Schmidt', '2017-04-30 13:26:14.496'), ('Nina_Ferguson', '2016-12-12 06:50:07.996'), ('Sophie_Griffith', '2016-08-20 02:19:45.512'), ('Leo_Wright', '2016-06-24 19:36:30.978'), ('Ellie_Brooks', '2016-08-07 16:25:48.561'), ('Zane_Taylor', '2017-05-04 16:32:15.577'), ('Jasper_Lee', '2017-01-19 01:34:14.296'), ('Diana_Henderson', '2017-03-29 17:09:02.344'), ('Oscar_Morris', '2017-02-06 23:29:16.394'), ('Aiden_Clark', '2016-10-05 14:10:20.453'), ('Ella_Rodriguez', '2016-08-02 21:32:45.646'), ('Benjamin_Scott', '2017-02-06 22:05:43.425'), ('Maya_White', '2016-10-21 18:16:56.390'), ('Chloe_Smith', '2017-04-29 18:53:39.650'), ('Nathaniel_Kelly', '2016-08-31 02:42:30.288'), ('Sophie_Adams', '2017-01-23 11:51:15.467'), ('Mia_Peterson', '2016-12-27 09:48:17.380'), ('Harper_Bailey', '2017-01-23 23:14:18.569'), ('Sebastian_Hall', '2017-04-18 02:32:43.597'), ('Kara_Ward', '2016-10-03 12:49:20.774'), ('Liam_Bradley', '2016-06-07 12:47:00.703'), ('Ethan_Brown', '2017-03-18 03:10:07.047'), ('Maggie_Young', '2016-08-18 07:15:02.823'), ('Elliot_Miller', '2016-09-11 18:51:56.965'), ('Ava_Turner', '2016-09-23 21:24:20.222'), ('Olivia_Simmons', '2016-09-29 20:28:12.457'), ('Jack_Roberts', '2016-08-26 19:36:22.199'), ('Maxwell_Garcia', '2016-11-14 12:32:01.405'), ('Amelia_Kelly', '2016-07-08 21:42:00.982'), ('Isaac_Martinez', '2017-03-30 03:25:21.937'), ('Megan_Perez', '2016-08-04 15:42:20.322'), ('Chase_Taylor', '2016-07-27 00:56:44.310'), ('Archer_Wilson', '2016-05-14 07:56:25.835'), ('Zoey_Harris', '2016-06-08 17:48:08.478'), ('Carter_Gonzalez', '2016-05-19 09:51:25.779'), ('Brianna_Walker', '2016-07-17 17:25:44.855'), ('Dylan_Thompson', '2016-12-11 18:04:45.344'), ('Lila_Bennett', '2016-10-06 07:57:44.491'), ('Amos_Clark', '2016-07-07 11:40:26.557'), ('Elena_Richards', '2017-02-05 21:23:37.392'), ('Lennon_Price', '2016-07-09 21:37:07.610'), ('Harley_Jenkins', '2016-09-02 03:48:38.340'), ('Daniel_Gonzalez', '2016-06-26 03:10:22.202'), ('Eva_Clark', '2016-10-30 12:42:31.387'), ('Elise_Phillips', '2016-08-23 19:47:44.102'), ('Zane_Harris', '2017-04-17 14:14:45.662'), ('Isla_Knight', '2017-01-01 05:58:22.276'), ('Sadie_Lopez', '2017-02-07 07:49:33.830'), ('Theo_Grant', '2016-12-21 04:43:37.761'), ('Nora_Moore', '2017-04-04 12:17:33.931'), ('Riley_Scott', '2016-08-22 18:05:42.167');
INSERT INTO photos(image_url, user_id) VALUES ('https://random-image1.com', 1), ('https://random-image2.org', 1), ('https://random-image3.net', 1), ('https://random-image4.biz', 1), ('https://random-image5.org', 1), ('https://random-image6.biz', 2), ('https://random-image7.com', 2), ('https://random-image8.net', 2), ('https://random-image9.biz', 2), ('https://random-image10.org', 3), ('https://random-image11.com', 3), ('https://random-image12.net', 3), ('https://random-image13.biz', 3), ('https://random-image14.org', 4), ('https://random-image15.com', 4), ('https://random-image16.biz', 4), ('https://random-image17.com', 6), ('https://random-image18.net', 6), ('https://random-image19.org', 6), ('https://random-image20.biz', 6), ('https://random-image21.com', 6), ('https://random-image22.biz', 8), ('https://random-image23.net', 8), ('https://random-image24.com', 8), ('https://random-image25.biz', 8), ('https://random-image26.net', 9), ('https://random-image27.biz', 9), ('https://random-image28.org', 9), ('https://random-image29.com', 9), ('https://random-image30.biz', 10), ('https://random-image31.net', 10), ('https://random-image32.org', 10), ('https://random-image33.com', 11), ('https://random-image34.com', 11), ('https://random-image35.net', 11), ('https://random-image36.biz', 11), ('https://random-image37.org', 12), ('https://random-image38.com', 12), ('https://random-image39.net', 12), ('https://random-image40.biz', 12), ('https://random-image41.org', 13), ('https://random-image42.com', 13), ('https://random-image43.net', 13), ('https://random-image44.biz', 13), ('https://random-image45.org', 14), ('https://random-image46.com', 15), ('https://random-image47.net', 15), ('https://random-image48.biz', 15), ('https://random-image49.org', 16), ('https://random-image50.com', 16);
INSERT INTO follows(follower_id, followee_id) VALUES 
(2, 1), (2, 3), (2, 4), (2, 5),
(3, 6), (3, 7), (4, 8), (5, 9),
(6, 10), (7, 11), (8, 12), (9, 13),
(10, 14), (11, 15), (12, 16), (13, 17),
(14, 18), (15, 19), (16, 20), (17, 21),
(18, 22), (19, 23), (20, 24), (21, 25),
(22, 26), (23, 27), (24, 28), (25, 29),
(26, 30), (27, 31), (28, 32), (29, 33),
(30, 34), (31, 35), (32, 36), (33, 37),
(34, 38), (35, 39), (36, 40), (37, 41),
(38, 42), (39, 43), (40, 44), (41, 45),
(42, 46), (43, 47), (44, 48), (45, 49),
(46, 50), (47, 51), (48, 52), (49, 53);
INSERT INTO comments(comment_text, user_id, photo_id) VALUES 
('Amazing shot!', 2, 1), 
('Love the colors in this one!', 3, 2),
('So beautiful!', 4, 3),
('Great capture!', 5, 4),
('Incredible view!', 6, 5),
('Perfect lighting!', 7, 6),
('Awesome composition!', 8, 7),
('Wow, so stunning!', 9, 8),
('This is breathtaking!', 10, 9),
('Impressive shot!', 11, 10),
('Simply stunning!', 12, 11),
('Such a peaceful moment!', 13, 12),
('The light is amazing!', 14, 13),
('Exquisite detail!', 15, 14),
('This is so peaceful!', 16, 15),
('Amazing perspective!', 17, 16),
('Wonderful shot!', 18, 17),
('The colors are mesmerizing!', 19, 18),
('So captivating!', 20, 19),
('Beautiful scenery!', 21, 20),
('Love the vibe!', 22, 21),
('Incredible clarity!', 23, 22),
('Such an epic moment!', 24, 23),
('The composition is perfect!', 25, 24),
('Stunning colors!', 26, 25),
('Gorgeous view!', 27, 26),
('The light is perfect here!', 28, 27),
('Such an amazing capture!', 29, 28),
('Breathtaking moment!', 30, 29),
('Incredible scenery!', 31, 30),
('Such a unique angle!', 32, 31),
('What a view!', 33, 32),
('Fantastic shot!', 34, 33),
('Unbelievable clarity!', 35, 34),
('Amazing details!', 36, 35),
('Great timing!', 37, 36),
('Love the composition!', 38, 37),
('Perfect shot!', 39, 38),
('Truly stunning!', 40, 39),
('Such a peaceful scene!', 41, 40),
('What an amazing place!', 42, 41),
('This is a masterpiece!', 43, 42),
('Impressive work!', 44, 43),
('Fantastic shot, love it!', 45, 44),
('Such a clear view!', 46, 45),
('Incredible moment!', 47, 46),
('So detailed!', 48, 47),
('Such a serene shot!', 49, 48),
('This is perfection!', 50, 49);

-- Random likes data
INSERT INTO likes(user_id, photo_id) VALUES 
(2, 1), (5, 1), (9, 1), (10, 1), 
(1, 2), (3, 2), (7, 3), (8, 3),
(4, 4), (6, 5), (12, 5), (15, 6),
(2, 7), (3, 8), (11, 9), (9, 10),
(12, 11), (13, 12), (14, 13), (15, 14),
(16, 15), (17, 16), (18, 17), (19, 18),
(20, 19), (21, 20), (22, 21), (23, 22),
(24, 23), (25, 24), (26, 25), (27, 26),
(28, 27), (29, 28), (30, 29), (31, 30),
(32, 31), (33, 32), (34, 33), (35, 34),
(36, 35), (37, 36), (38, 37), (39, 38),
(40, 39), (41, 40), (42, 41), (43, 42),
(44, 43), (45, 44), (46, 45), (47, 46),
(48, 47), (49, 48), (50, 49), (51, 50);
INSERT INTO tags(tag_name) VALUES 
('sunset'), ('photography'), ('sunrise'), 
('landscape'), ('nature'), ('travel'), 
('adventure'), ('beach'), ('sky'), 
('mountain'), ('cityscape'), ('wildlife'),
('forest'), ('waterfall'), ('snow'), 
('vacation'), ('outdoors'), ('sunshine'),
('forest', 'trees'), ('clouds'), ('nature_lovers'), 
('explore', 'discover'), ('worldtraveler'), ('landscapephotography'), 
('mountainscape'), ('roadtrip'), ('urbanexploration'), ('wildlifephotography'),
('greenery'), ('sunrisephotography'), ('oceanview'), ('peaceful'), 
('scenicview'), ('landscape_lovers'), ('traveler', 'adventurer'),
('cityscapephotography'), ('cloudscape'), ('bluesky'), ('sea'),
('wildlife_in_nature'), ('adventure_lovers'), ('beautifulview'), ('photographylovers'),
('urbanlife'), ('animals', 'wildlife'), ('exploration'), ('scenicphotography'), 
('naturephotography'), ('vacationmode'), ('exploremore'), ('travelgram'), ('outdoorlife'),
('outdoorsphotography'), ('lifestylephotography');
INSERT INTO photo_tags(photo_id, tag_id) VALUES 
(1, 18), (1, 17), (1, 21), (2, 19), (2, 17), (2, 20),
(3, 18), (3, 19), (3, 21), (4, 20), (4, 17), (4, 19),
(5, 21), (5, 18), (5, 17), (6, 18), (6, 19), (6, 20),
(7, 21), (7, 18), (7, 19), (8, 17), (8, 20), (8, 21),
(9, 18), (9, 17), (9, 21), (10, 20), (10, 17), (10, 19),
(11, 19), (11, 21), (11, 17), (12, 18), (12, 20), (12, 21),
(13, 19), (13, 17), (13, 21), (14, 18), (14, 21), (14, 19),
(15, 19), (15, 17), (15, 18), (16, 20), (16, 17), (16, 19),
(17, 18), (17, 21), (17, 17), (18, 19), (18, 20), (18, 21);
