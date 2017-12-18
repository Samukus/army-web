
CREATE  TABLE users (
  username VARCHAR(45) NOT NULL ,
  password VARCHAR(45) NOT NULL ,
  enabled TINYINT NOT NULL DEFAULT 1 ,
  fname VARCHAR(45),
  sname VARCHAR(45),
  tname VARCHAR(45),
  date date,
  work_role VARCHAR(45),
  category VARCHAR(45),
  description VARCHAR(1024),
  rank VARCHAR(45),
  status VARCHAR(45),
  phone VARCHAR(16),
  adress VARCHAR(128),
  email VARCHAR(128),
  photo_link VARCHAR(512),

  PRIMARY KEY (username));

CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));

CREATE TABLE awards (
  award_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  date date,
  award_name varchar(1024),
  PRIMARY KEY (award_id));

CREATE TABLE duties (
  duty_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  date_start date,
  date_end date,
  rank varchar(64),
  military_unit varchar(1024),
  PRIMARY KEY (duty_id));

CREATE TABLE diagnoses (
  award_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  date date,
  name varchar(1024),
  description varchar(1024),
  PRIMARY KEY (award_id));

CREATE TABLE events (
  event_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  date date,
  description varchar(1024),
  PRIMARY KEY (event_id));

CREATE TABLE posts (
  post_id int(11) NOT NULL AUTO_INCREMENT,
  author varchar(45),
  date date,
  title varchar(256),
  description varchar(1024),
  image VARCHAR(1024),
  enabled TINYINT NOT NULL DEFAULT 1,
  PRIMARY KEY (post_id));

# soldier_img_0.jpg
# soldier_img_1.jpg
# soldier_img_2.jpg
# soldier_img_3.jpg
# soldier_img_4.jpg
# soldier_img_scared.jpg

INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong','123456', true, "Ibram", "Gaunt", "Thirdname", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('alex','123456', true, "Alexey", "Skrobotov", "Yurevich", "1994-04-12", "Suldier", "B-", "Biography here", "Soldier in reserve", "In reserve", "+78994123418", "Novosibirsk, Kr, 94", "test_alex@mail.com", "resources/pictures/soldier_img_0.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('kaldio','123456', true, "Anton", "Lovchikov", "Alexeyevich", "1994-10-30", "Suldier", "B-", "Simple guy from novosibirsk", "Soldier in reserve", "In reserve", "+715687456954", "Novosibirsk, Olenya, 51", "alovhikiv@mail.com", "resources/pictures/soldier_img_scared.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('test0','123456', true, "Vahtan", "Kirde", "Alexeyevich", "1994-10-30", "Suldier", "B-", "Simple guy from novosibirsk", "Soldier in reserve", "In reserve", "+715687456954", "Novosibirsk, Olenya, 51", "alovhikiv@mail.com", "resources/pictures/soldier_img_0.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('test1','123456', true, "Boryan", "Pau", "Alexeyevich", "1994-10-30", "Suldier", "B-", "Simple guy from novosibirsk", "Soldier in reserve", "In reserve", "+715687456954", "Novosibirsk, Olenya, 51", "alovhikiv@mail.com", "resources/pictures/soldier_img_1.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('test2','123456', true, "Alaverdi", "Loned", "Alexeyevich", "1994-10-30", "Suldier", "B-", "Simple guy from novosibirsk", "Soldier in reserve", "In reserve", "+715687456954", "Novosibirsk, Olenya, 51", "alovhikiv@mail.com", "resources/pictures/soldier_img_2.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('test3','123456', true, "Cuanish", "Gesheft", "Alexeyevich", "1994-10-30", "Suldier", "B-", "Simple guy from novosibirsk", "Soldier in reserve", "In reserve", "+715687456954", "Novosibirsk, Olenya, 51", "alovhikiv@mail.com", "resources/pictures/soldier_img_3.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('test4','123456', true, "Meeruert", "Van", "Alexeyevich", "1994-10-30", "Suldier", "B-", "Simple guy from novosibirsk", "Soldier in reserve", "In reserve", "+715687456954", "Novosibirsk, Olenya, 51", "alovhikiv@mail.com", "resources/pictures/soldier_img_4.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('test5','123456', true, "Sergey", "Paryshev", "Alexeyevich", "1994-10-30", "Suldier", "B-", "Simple guy from novosibirsk", "Soldier in reserve", "In reserve", "+715687456954", "Novosibirsk, Olenya, 51", "alovhikiv@mail.com", "resources/pictures/soldier_img_cat.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('trall','123456', true, "Trall", "Ebal", "Alexeyevich", "1994-10-30", "Suldier", "B-", "Simple guy from novosibirsk", "Soldier in reserve", "In reserve", "+715687456954", "Novosibirsk, Olenya, 51", "alovhikiv@mail.com", "resources/pictures/trall.jpg");

INSERT INTO user_roles (username, role)
VALUES ('mkyong', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('alex', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('kaldio', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('test0', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('test1', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('test2', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('test3', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('test4', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('test5', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('trall', 'ROLE_USER');

INSERT INTO user_roles (username, role)
VALUES ('mkyong', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('trall', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('test2', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('test5', 'ROLE_ADMIN');

INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-01", "In developing client code for web service", "In developing client code for web services I've often found it necessary to explore post blobs coming from my app. Often times the server isn't available and this isn't an easy thing to do. Thus, I've put together a simple service which will dump the contents of an* HTTP POST to a file which can be viewed at leisure.", "resources/pictures/post_img_0.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-02", "View your posts here", "To view posts, browse to the year, month, day, and time of your upload (and directory name if you used the dir option) Obviously, this means all posts are visible to everybody so don't test a mobile banking app with your actual account info here.", "resources/pictures/post_img_1.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-03", "How to use it", "Just point your client to this service: http://posttestserver.com/post.php and fire away. By default it will return a 200 (see below for info on how to change this) with a URL pointing to the contents and a few lines describing the post.", "resources/pictures/post_img_2.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-04", "Supports", "Regular http posts Https via: https://posttestserver.com/post.php multipart/form-data file uploads (Example)", "resources/pictures/post_img_3.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-05", "Feedback", "Need something? Did I do something wrong? Let me know what's on your mind: me(at)henrycipolla(dotcom)", "resources/pictures/post_img_4.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-06", "See what your site looks like in different viewports with Responsinator", "The beauty of Responsinator lies in its simplicity. Just type in your web page's URL and this free, browser-based tool shows you how your web page renders in the most popular screen shapes and sizes.
Brilliantly, you can then interact with your page, clicking on links, typing into search fields and so on. Note that these are generic devices, though, not specific ones.", "resources/pictures/post_img_5.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-07", "DevTools Device Mode emulates different devices within Chrome", "DevTools' Device Mode offers an easy way for developers to simulate mobile devices within the Chrome browser. Use it to learn how your site appears across different screen sizes and resolutions, including Retina screens.
You can even simulate device inputs for touch, geolocation and device orientation within the emulator.", "resources/pictures/post_img_0.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-08", "Geolocations", "Test Post description #7 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "resources/pictures/post_img_1.jpg");