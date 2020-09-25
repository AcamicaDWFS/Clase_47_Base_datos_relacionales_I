USE music;

/*INSERT DE BANDAS*/

INSERT INTO bandas (nombre, integrantes, fecha_inicio, fecha_separacion, pais) 
VALUES ('Nirvana', 3, '1987-01-01', '1994-01-01', 'EUA');

INSERT INTO bandas (nombre, integrantes, fecha_inicio, fecha_separacion, pais) 
VALUES ('Lacrimosa', 2, '1990-01-01', NOW(), 'Alemania');

INSERT INTO bandas (nombre, integrantes, fecha_inicio, fecha_separacion, pais) 
VALUES ('Monsieur Periné', 2, '2007-01-01', NOW(), 'Colombia');

INSERT INTO bandas (nombre, integrantes, fecha_inicio, fecha_separacion, pais) 
VALUES ('Natalia Lafourcade', 1, '1998-01-01', NOW(), 'México');

INSERT INTO bandas (nombre, integrantes, fecha_inicio, fecha_separacion, pais) 
VALUES ('La Oreja de Van Gogh', 5, '1996-01-01', NOW(), 'España');

SELECT * FROM bandas

/*INSERT DE CANCIONES*/

INSERT INTO canciones (nombre, duracion, album, banda, fecha_publicacion)
VALUES ('Nuestra canción', 4, 3, 3,'2016-01-01');

INSERT INTO canciones (nombre, duracion, album, banda, fecha_publicacion)
VALUES ('Smell Like Teen Spirit', 3, 5, 1,'2016-01-01');

INSERT INTO canciones (nombre, duracion, album, banda, fecha_publicacion)
VALUES ('Rosas', 5, 5, 5,'2016-01-01');

INSERT INTO canciones (nombre, duracion, album, banda, fecha_publicacion)
VALUES ('Hasta la raíz', 4, 7, 4,'2015-01-01');

delete from canciones where id = 3

select * from canciones

/*INSERT ALBUMES*/
insert into albumes (nombre_album, banda, fecha_publicacion)
values ('Nevermind', 1, '1991-01-01');

insert into albumes (nombre_album, banda, fecha_publicacion)
values ('Guapa', 5, '2003-01-01');

insert into albumes (nombre_album, banda, fecha_publicacion)
values ('Encanto Tropical', 3, '2018-05-18');

select * from albumes
