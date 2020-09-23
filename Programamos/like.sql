
--Encuentro todos las personas con el correo de gmail
SELECT `nombre`,`apellido`,`email`,`edad`,`fecha`,`casado` 
FROM `personas` WHERE `email` like '%@gmail.com';