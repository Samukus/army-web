
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
  phone VARCHAR(16),
  adress VARCHAR(128),

  PRIMARY KEY (username));

CREATE TABLE user_roles (
  user_role_id int(11) NOT NULL AUTO_INCREMENT,
  username varchar(45) NOT NULL,
  role varchar(45) NOT NULL,
  PRIMARY KEY (user_role_id),
  UNIQUE KEY uni_username_role (role,username),
  KEY fk_username_idx (username),
  CONSTRAINT fk_username FOREIGN KEY (username) REFERENCES users (username));

INSERT INTO users(username,password,enabled,fname,sname,tname,
                  date,work_role,category,description,rank,phone,adress)
VALUES ('mkyong','123456', true, "Ibram", "Gaunt", "", "1994-01-01", "Commisar", "A+", "Biography here", "Retired General", "+78994123418", "Novosibirsk, Trudovaya, 13");
INSERT INTO users(username,password,enabled)
VALUES ('alex','123456', true);

INSERT INTO user_roles (username, role)
VALUES ('mkyong', 'ROLE_USER');
INSERT INTO user_roles (username, role)
VALUES ('mkyong', 'ROLE_ADMIN');
INSERT INTO user_roles (username, role)
VALUES ('alex', 'ROLE_USER');