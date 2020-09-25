CREATE DATABASE IF NOT EXISTS music;
USE music;

CREATE TABLE bandas (
id bigint (20) NOT NULL AUTO_INCREMENT,
nombre varchar (50) NOT NULL,
integrantes integer (20) NOT NULL,
fecha_inicio datetime NOT NULL,
fecha_separacion datetime NULL,
pais varchar (20) NOT NULL,

PRIMARY KEY (id)
)


CREATE TABLE canciones (
id bigint (20) NOT NULL AUTO_INCREMENT,
nombre varchar (50) NOT NULL,
duracion integer NOT NULL,
album  integer NOT NULL,
banda integer NOT NULL,
fecha_publicacion datetime NOT NULL,

PRIMARY KEY (id)
)


CREATE TABLE albumes (
id bigint (20) NOT NULL AUTO_INCREMENT,
nombre_album varchar (50) NOT NULL,
banda integer NOT NULL,
fecha_publicacion datetime NOT NULL,

PRIMARY KEY (id)
)