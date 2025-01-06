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
