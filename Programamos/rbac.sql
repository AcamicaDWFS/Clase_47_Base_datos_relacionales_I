CREATE DATABASE  IF NOT EXISTS rbac;
USE rbac;

DROP TABLE IF EXISTS permission;
 
CREATE TABLE permission (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  title varchar(75) NOT NULL,
  slug varchar(100) NOT NULL,
  description tinytext,
  active tinyint(1) NOT NULL DEFAULT '0',
  createdAt datetime NOT NULL,
  updatedAt datetime DEFAULT NULL,
  content text,
  PRIMARY KEY (id),
  UNIQUE KEY uq_slug (slug)
);


DROP TABLE IF EXISTS role;

CREATE TABLE role (
  id bigint(20) AUTO_INCREMENT NOT NULL ,
  title varchar(75) NOT NULL,
  slug varchar(100) NOT NULL,
  description tinytext,
  active tinyint(1) NOT NULL DEFAULT '0',
  createdAt datetime NOT NULL,
  updatedAt datetime DEFAULT NULL,
  content text,
  PRIMARY KEY (id),
  UNIQUE KEY uq_slug (slug)
);


DROP TABLE IF EXISTS role_permission;

CREATE TABLE role_permission (
  roleId bigint(20) NOT NULL,
  permissionId bigint(20) NOT NULL,
  createdAt datetime NOT NULL,
  updatedAt datetime DEFAULT NULL,
  PRIMARY KEY (roleId, permissionId),
  KEY idx_rp_role (roleId),
  KEY idx_rp_permission (permissionId),
  CONSTRAINT fk_rp_permission FOREIGN KEY (permissionId) REFERENCES permission (id),
  CONSTRAINT fk_rp_role FOREIGN KEY (roleId) REFERENCES role (id)
) ;

DROP TABLE IF EXISTS user;

CREATE TABLE user (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  roleId bigint(20) NOT NULL,
  firstName varchar(50) DEFAULT NULL,
  middleName varchar(50) DEFAULT NULL,
  lastName varchar(50) DEFAULT NULL,
  mobile varchar(15) DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  passwordHash varchar(32) NOT NULL,
  registeredAt datetime NOT NULL,
  lastLogin datetime DEFAULT NULL,
  intro tinytext,
  profile text,
  PRIMARY KEY (id),
  UNIQUE KEY uq_mobile (mobile),
  UNIQUE KEY uq_email (email),
  KEY idx_user_role (roleId),
  CONSTRAINT fk_user_role FOREIGN KEY (roleId) REFERENCES role (id)
) ;