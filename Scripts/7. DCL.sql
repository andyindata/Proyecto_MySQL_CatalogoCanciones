-- Ver usuarios y permisos
USE mysql;
SELECT * FROM user;
SHOW GRANTS FOR root@localhost;

-- Crear usuario con permisos de solo lectura a todas las tablas
CREATE USER IF NOT EXISTS usuariolectura@localhost IDENTIFIED BY 'contraseña1';
GRANT SELECT ON musica.* TO 'usuariolectura@localhost';

-- Crear usuario con permisos de lectura, inserción y modificación de datos
CREATE USER IF NOT EXISTS usuario2@localhost IDENTIFIED BY 'contraseña2';
GRANT SELECT, INSERT, UPDATE ON musica.* TO 'usuario2@localhost';

-- Ver permisos de usuarios creados
SHOW GRANTS FOR usuariolectura@localhost;
SHOW GRANTS FOR usuario2@localhost;