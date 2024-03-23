-- Usar esquema
USE musica;

-- Crear tabla auditoria_insert
DROP TABLE IF EXISTS auditoria_insert;
CREATE TABLE IF NOT EXISTS auditoria_insert (
id_auditoria int NOT NULL AUTO_INCREMENT PRIMARY KEY,
evento_dml varchar (10) NOT NULL,
nombre_tabla varchar (50) NOT NULL,
usuario VARCHAR (100) NOT NULL,
fecha_evento DATE
);

-- Crear Trigger 1
DROP TRIGGER IF EXISTS trg_insert_usuario;
DELIMITER //
CREATE TRIGGER trg_insert_usuario AFTER INSERT ON usuarios
FOR EACH ROW
BEGIN
INSERT INTO auditoria_insert (evento_dml, nombre_tabla, usuario, fecha_evento)
VALUES ('INSERT', 'usuarios', current_user(), now());
END //
DELIMITER ;

-- Crear Trigger 2
DROP TRIGGER IF EXISTS trg_insert_albumes;
DELIMITER //
CREATE TRIGGER trg_insert_albumes AFTER INSERT ON albumes
FOR EACH ROW
BEGIN
INSERT INTO auditoria_insert (evento_dml, nombre_tabla, usuario, fecha_evento)
VALUES ('INSERT', 'albumes', current_user(), now());
END //
DELIMITER ;

-- Modificación de tablas para registrar datos en tabla auditoria_insert
INSERT INTO usuarios (nombre_usuario, correo_usuario, fecha_registro) VALUES
('Karime Espinoza', 'kespinoza@ejemplo.com', '2023-08-20');
SELECT * FROM usuarios;

INSERT INTO albumes (titulo_album, año_lanzamiento, id_artista) VALUES
('fruitcake', 2023, 4);
SELECT * FROM albumes;

-- Llamar a tabla auditoria_insert
SELECT * FROM auditoria_insert;

-- Crear tabla auditoria_update
DROP TABLE IF EXISTS auditoria_update;
CREATE TABLE IF NOT EXISTS auditoria_update (
id_auditoria int NOT NULL AUTO_INCREMENT PRIMARY KEY,
campo_new_old varchar (200) NOT NULL,
evento_dml varchar (10) NOT NULL,
nombre_tabla varchar (50) NOT NULL,
usuario VARCHAR (100) NOT NULL,
fecha_evento DATE
);

-- Crear Trigger 3
DROP TRIGGER IF EXISTS trg_update_albumes;
DELIMITER //
CREATE TRIGGER trg_update_albumes BEFORE UPDATE ON albumes
FOR EACH ROW
BEGIN
INSERT INTO auditoria_update (campo_new_old, evento_dml, nombre_tabla, usuario, fecha_evento)
VALUES ( CONCAT('Campo anterior: ', OLD.titulo_album, ' Campo nuevo: ', NEW.titulo_album), 'UPDATE', 'albumes', current_user(), now());
END //
DELIMITER ;

-- Crear Trigger 4
DROP TRIGGER IF EXISTS trg_update_usuarios;
DELIMITER //
CREATE TRIGGER trg_update_usuarios BEFORE UPDATE ON usuarios
FOR EACH ROW
BEGIN
INSERT INTO auditoria_update (campo_new_old, evento_dml, nombre_tabla, usuario, fecha_evento)
VALUES ( CONCAT('Campo anterior: ', OLD.nombre_usuario, ' Campo nuevo: ', NEW.nombre_usuario), 'UPDATE', 'usuarios', current_user(), now());
END //
DELIMITER ;

-- Modificación de tablas para registrar datos en tabla auditoria_update
UPDATE albumes SET titulo_album = 'fruitcake' WHERE id_album = 19 ;
UPDATE usuarios SET nombre_usuario = 'Andrea Camacho' WHERE id_usuario = 1 ;

-- Llamar a tabla auditoria_update
SELECT * FROM auditoria_update;



