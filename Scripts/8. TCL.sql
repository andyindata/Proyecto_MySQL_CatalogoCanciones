-- Usar esquema y dejar en 0 commit
USE musica;

SELECT @@autocommit;
SELECT @@FOREIGN_KEY_CHECKS;

SET @@autocommit = 0;
SET @@FOREIGN_KEY_CHECKS = 0;
SET @@SQL_SAFE_UPDATES = 0;


-- TCL en Tabla usuarios
-- Comprobar registros de la tabla
SELECT * FROM usuarios;

-- Transacción
START TRANSACTION;
DELETE FROM usuarios WHERE id_usuario = 10;
ROLLBACK;
COMMIT;

-- Reinsertar registro eliminado
INSERT INTO usuarios VALUES
(10, 'Rio Camacho', 'rcamacho@ejemplo.com', '2023-11-26');


-- TCL en Tabla artistas
-- Comprobar registros de la tabla
SELECT * FROM artistas;

-- Transacción
START TRANSACTION;
INSERT INTO artistas VALUES
(11, 'Ariana Grande', 'pop', 'Por definir', 2008),
(12, 'One Direction', 'pop', 'Por definir', 2010);
SAVEPOINT sp1;
INSERT INTO artistas VALUES
(13, 'Yuridia', 'balada', 'Por definir', 2005),
(14, 'LANY', 'rock alternativo', 'Por definir', 2014);
SAVEPOINT sp2;
ROLLBACK TO sp1;
COMMIT;
RELEASE SAVEPOINT sp1;