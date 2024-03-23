-- Usar esquema
USE musica;

-- Crear Funcion 1
DROP FUNCTION IF EXISTS fn_contar_canciones_titulo ;

DELIMITER //
CREATE FUNCTION fn_contar_canciones_titulo
( P_titulo_buscado VARCHAR(100) )

RETURNS INT 
DETERMINISTIC
BEGIN

DECLARE v_num_canciones INT;
SET v_num_canciones = ( SELECT COUNT(*) FROM canciones WHERE titulo_cancion = P_titulo_buscado );

RETURN v_num_canciones;

END//
DELIMITER ;

-- Crear Funcion 2
DROP FUNCTION IF EXISTS fn_iva_evento ;

DELIMITER //
CREATE FUNCTION fn_iva_evento
( p_iva DECIMAL(4,2),
p_id_evento INT )

RETURNS INT 
DETERMINISTIC
BEGIN

DECLARE v_con_iva INT;
SET v_con_iva = ( SELECT precio_entradas * p_iva AS precio_con_iva
					FROM eventos_musicales WHERE id_evento = p_id_evento );

RETURN v_con_iva;

END//
DELIMITER ;

-- Llamar a funciones
SELECT fn_contar_canciones_titulo('Lover') AS NumCanciones;
SELECT fn_iva_evento (1.16, 1) AS PrecioEventoIva;

