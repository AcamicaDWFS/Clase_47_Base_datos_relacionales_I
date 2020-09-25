USE music;

/*Muestra todas las bandas*/
select * from bandas;

/*Muestra todas las bandas de M�xico*/
select * from bandas where pais = 'M�xico';

/*Muestra una banda solista*/
select * from bandas where integrantes = 1;

/*Muestra todas las canciones publicadas despu�s del 2015*/
select * from canciones;
select * from canciones where fecha_publicacion > '2015-01-01';

/*Muestra todas las canciones que duren m�s de 3 minutos*/
select * from canciones where duracion > 3;

/*Muestra todos los �lbumes*/
select * from albumes;

/*Cambiar los campos en la interfaz*/
select 
	id as 'ID',
	nombre_album as '�lbum',
	banda as 'Banda',
	fecha_publicacion as 'Publicaci�n'
from albumes; 