--Encuentro todos las personas mayores de 18
SELECT `nombre`,`apellido`,`email`,`edad`,`fecha`,`casado` 
FROM `personas` WHERE `edad` > 18;

--Busco las personas casadas
SELECT `nombre`,`apellido`,`email`,`edad`,`fecha`,`casado` FROM `personas` WHERE `casado` = 'si';