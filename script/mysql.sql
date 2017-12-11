
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

INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong11','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong12','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong13','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong14','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong15','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong16','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong17','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong18','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong19','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong20','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");
INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong21','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");

INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong22','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "Retired", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");

INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('alex','123456', true, "Alexey", "Skrobotov", "Yurevich", "1994-04-12", "Suldier", "B-", "Biography here", "Soldier in reserve", "In reserve", "+78994123418", "Novosibirsk, Kr, 94", "test_alex@mail.com", "resources/pictures/test-user-avatar.jpg");

INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank, status, phone,adress,email,photo_link)
VALUES ('mkyong23','123456', true, "Ibramafsa", "Gauntfasf", "", "1994-01-01", "Commisarfasf", "A++++", "Biography herefasf", "Retired Generala", "Retirede", "+78994123418", "Novosibirsk, Trudovaya, 13", "test@mail.com", "resources/pictures/test-user-avatar.jpg");

INSERT INTO user_roles (username, role)
VALUES ('mkyong', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('mkyong', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('alex', 'ROLE_USER');

INSERT INTO awards (username, date, award_name)
VALUES ('mkyong', "1994-01-01", "Test Award Name #0");
INSERT INTO awards (username, date, award_name)
VALUES ('mkyong', "1994-01-01", "Test Award Name #1");
INSERT INTO awards (username, date, award_name)
VALUES ('mkyong', "1994-01-01", "Test Award Name #2");
INSERT INTO awards (username, date, award_name)
VALUES ('mkyong', "1994-01-01", "Test Award Name )3");

INSERT INTO duties (username, date_start, date_end, rank, military_unit)
VALUES ('mkyong', "1994-01-01", "1996-02-01", "Soldier", "Test Military Unit");
INSERT INTO duties (username, date_start, date_end, rank, military_unit)
VALUES ('mkyong', "1994-01-01", "1996-02-01", "Soldier", "Test Military Unit");
INSERT INTO duties (username, date_start, date_end, rank, military_unit)
VALUES ('mkyong', "1994-01-01", "1996-02-01", "Soldier", "Test Military Unit");
INSERT INTO duties (username, date_start, date_end, rank, military_unit)
VALUES ('mkyong', "1994-01-01", "1996-02-01", "Soldier", "Test Military Unit");
INSERT INTO duties (username, date_start, date_end, rank, military_unit)
VALUES ('mkyong', "1994-01-01", "1996-02-01", "Soldier", "Test Military Unit");

INSERT INTO diagnoses (username, date, name, description)
VALUES ('mkyong', "1994-01-01", "Test Diagnose Name", "Test Description");
INSERT INTO diagnoses (username, date, name, description)
VALUES ('mkyong', "1994-01-01", "Test Diagnose Name", "Test Description");
INSERT INTO diagnoses (username, date, name, description)
VALUES ('mkyong', "1994-01-01", "Test Diagnose Name", "Test Description");
INSERT INTO diagnoses (username, date, name, description)
VALUES ('mkyong', "1994-01-01", "Test Diagnose Name", "Test Description");
INSERT INTO diagnoses (username, date, name, description)
VALUES ('mkyong', "1994-01-01", "Test Diagnose Name", "Test Description");
INSERT INTO diagnoses (username, date, name, description)
VALUES ('mkyong', "1994-01-01", "Test Diagnose Name", "Test Description");

INSERT INTO events (username, date, description)
VALUES ('mkyong', "1994-01-01", "Test Description");
INSERT INTO events (username, date, description)
VALUES ('mkyong', "1994-01-01", "Test Description");
INSERT INTO events (username, date, description)
VALUES ('mkyong', "1994-01-01", "Test Description");
INSERT INTO events (username, date, description)
VALUES ('mkyong', "1994-01-01", "Test Description");
INSERT INTO events (username, date, description)
VALUES ('mkyong', "1994-01-01", "Test Description");
INSERT INTO events (username, date, description)
VALUES ('mkyong', "1994-01-01", "Test Description");
INSERT INTO events (username, date, description)
VALUES ('mkyong', "1994-01-01", "Test Description");
INSERT INTO events (username, date, description)
VALUES ('mkyong', "1994-01-01", "Test Description");

INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-01", "Test Post Title #0", "Test Post description #0 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "post_img_0.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-02", "Test Post Title #1", "Test Post description #1 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "post_img_1.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-03", "Test Post Title #2", "Test Post description #2 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "post_img_2.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-04", "Test Post Title #3", "Test Post description #3 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "post_img_3.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-05", "Test Post Title #4", "Test Post description #4 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "post_img_4.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-06", "Test Post Title #5", "Test Post description #5 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "post_img_5.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-07", "Test Post Title #6", "Test Post description #6 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "post_img_0.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-08", "Test Post Title #7", "Test Post description #7 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "post_img_1.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-09", "Test Post Title #8", "Test Post description #8 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "post_img_2.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-10", "Test Post Title #9", "Test Post description #9 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "post_img_3.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-11", "Test Post Title #10", "Test Post description #10 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "post_img_4.jpg");
INSERT INTO posts (author, date, title, description, image)
VALUES ('mkyong', "1994-01-11", "Test Post Title #10", "Test Post description #10 ashfjkh asrfh asf asoufh asf jashf ashfo hasiof hasoihf iasf", "");
