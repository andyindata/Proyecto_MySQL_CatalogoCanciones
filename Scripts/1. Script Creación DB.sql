-- Crear esquema
DROP SCHEMA IF EXISTS musica;
CREATE SCHEMA IF NOT EXISTS musica;
USE musica;

-- Crear tablas
-- Tabla Usuarios
CREATE TABLE IF NOT EXISTS usuarios (
id_usuario int NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_usuario varchar (100) NOT NULL,
correo_usuario varchar (200) NOT NULL,
fecha_registro date NOT NULL
);

-- Tabla Artistas
CREATE TABLE IF NOT EXISTS artistas (
id_artista int NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_artista varchar (100) NOT NULL,
genero_musical varchar (100) NOT NULL,
biografia text NOT NULL,
año_inicio_carrera int NOT NULL
);

-- Tabla Albumes
CREATE TABLE IF NOT EXISTS albumes (
id_album int NOT NULL AUTO_INCREMENT PRIMARY KEY,
titulo_album varchar (100) NOT NULL,
año_lanzamiento int NOT NULL,
id_artista int NOT NULL,
CONSTRAINT fk_albumes_artista FOREIGN KEY (id_artista) REFERENCES artistas (id_artista)
);

-- Tabla Canciones
CREATE TABLE IF NOT EXISTS canciones (
id_cancion int NOT NULL AUTO_INCREMENT PRIMARY KEY,
titulo_cancion varchar (100) NOT NULL,
id_artista int NOT NULL,
id_album int NOT NULL,
duracion int NOT NULL,
año_lanzamiento int NOT NULL,
numero_reproducciones int NOT NULL,
CONSTRAINT fk_canciones_artista FOREIGN KEY (id_artista) REFERENCES artistas (id_artista),
CONSTRAINT fk_canciones_album FOREIGN KEY (id_album) REFERENCES albumes (id_album)
);

-- Tabla Playlists
CREATE TABLE IF NOT EXISTS playlists (
id_playlist int NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_playlist varchar (100) NOT NULL,
descripcion varchar (100) NOT NULL,
id_usuario_propietario int NOT NULL,
fecha_creacion date NOT NULL,
id_cancion int NOT NULL,
CONSTRAINT fk_playlist_usuario FOREIGN KEY (id_usuario_propietario) REFERENCES usuarios (id_usuario),
CONSTRAINT fk_playlist_cancion FOREIGN KEY (id_cancion) REFERENCES canciones (id_cancion)
);

-- Tabla LetrasCanciones
CREATE TABLE IF NOT EXISTS letras_canciones (
id_letra int NOT NULL AUTO_INCREMENT PRIMARY KEY,
letra_cancion text NOT NULL,
id_cancion int NOT NULL,
CONSTRAINT fk_letras_cancion FOREIGN KEY (id_cancion) REFERENCES canciones (id_cancion)
);

-- Tabla EventosMusicales
CREATE TABLE IF NOT EXISTS eventos_musicales (
id_evento int NOT NULL AUTO_INCREMENT PRIMARY KEY,
nombre_evento varchar (100) NOT NULL,
fecha_hora datetime NOT NULL,
lugar varchar (100) NOT NULL,
id_artista int NOT NULL,
precio_entradas int NOT NULL,
capacidad_lugar int NOT NULL,
CONSTRAINT fk_eventos_artista FOREIGN KEY (id_artista) REFERENCES artistas (id_artista)
);

-- SeguimientoReproduccion
CREATE TABLE IF NOT EXISTS seguimiento_reproduccion (
id_seguimiento int NOT NULL AUTO_INCREMENT PRIMARY KEY,
id_usuario int NOT NULL,
id_cancion_reproducida int NOT NULL,
fecha_hora_reproduccion datetime NOT NULL,
CONSTRAINT fk_seguimiento_usuario FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario),
CONSTRAINT fk_seguimiento_cancion FOREIGN KEY (id_cancion_reproducida) REFERENCES canciones (id_cancion)
);







