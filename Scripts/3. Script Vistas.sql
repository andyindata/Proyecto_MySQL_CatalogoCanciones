-- Usar esquema
USE musica;

-- Crear VIEW 1
CREATE OR REPLACE VIEW vw_canciones_por_artista AS
( SELECT A.id_artista, B.nombre_artista, COUNT(*) AS total_canciones_por_artista
FROM canciones A
JOIN artistas B
ON A.id_artista = B.id_artista
GROUP BY A.id_artista, B.nombre_artista );

-- Crear VIEW 2
CREATE OR REPLACE VIEW vw_artistas_generos AS
( SELECT DISTINCT genero_musical FROM artistas );

-- Crear VIEW 3
CREATE OR REPLACE VIEW vw_albumes_lanzamiento AS
( SELECT titulo_album, año_lanzamiento FROM albumes ORDER BY año_lanzamiento );

-- Crear VIEW 4
CREATE OR REPLACE VIEW vw_eventos_musicales_taylor AS
( SELECT * FROM eventos_musicales WHERE id_artista = '1' );

-- Crear VIEW 5
CREATE OR REPLACE VIEW vw_seguimiento_reproduccion_canciones_usuarios AS
(
SELECT C.nombre_usuario, B.titulo_cancion, A.fecha_hora_reproduccion
FROM seguimiento_reproduccion AS A 
LEFT JOIN canciones AS B
ON A.id_cancion_reproducida = B.id_cancion
LEFT JOIN usuarios AS C 
ON A.id_usuario = C.id_usuario
ORDER BY A.fecha_hora_reproduccion
);

-- Pruebas SELECT de VIEWS
SELECT * FROM vw_canciones_por_artista;
SELECT * FROM vw_artistas_generos;
SELECT * FROM vw_albumes_lanzamiento;
SELECT * FROM vw_eventos_musicales_taylor;
SELECT * FROM vw_seguimiento_reproduccion_canciones_usuarios;