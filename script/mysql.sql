
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

CREATE TABLE events (
  event_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  date date,
  description varchar(1024),
  PRIMARY KEY (event_id));

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