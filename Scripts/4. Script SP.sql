-- Usar esquema
USE musica;

-- Crear SP 1 
DROP PROCEDURE IF EXISTS sp_order_tabla;

DELIMITER //
CREATE PROCEDURE sp_order_tabla( IN p_tabla VARCHAR(100),
								 IN p_columna VARCHAR(100),
								 IN p_asc_desc VARCHAR(10))
BEGIN
SET @query = CONCAT('SELECT * FROM ', p_tabla, ' ORDER BY ', p_columna, ' ', p_asc_desc);
PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

-- Crear SP 2
DROP PROCEDURE IF EXISTS sp_insert_usuario;

DELIMITER //
CREATE PROCEDURE sp_insert_usuario ( IN p_nombre_usuario VARCHAR(100),
									 IN p_correo_usuario VARCHAR(200),
									 IN p_fecha_registro DATE)
BEGIN
INSERT INTO usuarios (nombre_usuario, correo_usuario, fecha_registro)
VALUES (p_nombre_usuario, p_correo_usuario, p_fecha_registro);
END //
DELIMITER ;

-- Llamar a SPs
CALL sp_order_tabla ('albumes', 'año_lanzamiento', 'desc');
CALL sp_insert_usuario ('Linda Camacho', 'lcamacho@ejemplo.com', '2023-11-29');
SELECT * FROM usuarios;