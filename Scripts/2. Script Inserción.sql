-- Usar esquema
USE musica;
-- INSERT en tabla Usuarios
INSERT INTO usuarios VALUES
(1, 'Andrea Camacho', 'acamacho@ejemplo.com', '2021-03-14'),
(2, 'Jesus Ramirez', 'jramirez@ejemplo.com', '2021-04-27'),
(3, 'Jose Luis Lara', 'jlara@ejemplo.com', '2022-11-07'),
(4, 'Melissa Rios', 'mrios@ejemplo.com', '2022-01-15'),
(5, 'Karina Solorzano', 'ksolorzano@ejemplo.com', '2022-09-22'),
(6, 'Any Lopez', 'alopez@ejemplo.com', '2021-03-14'),
(7, 'Paola Castro', 'pcastro@ejemplo.com', '2021-09-14'),
(8, 'Jose Murillo', 'jmurillo@ejemplo.com', '2021-09-22');

-- INSERT en tabla Artistas
INSERT INTO artistas VALUES
(1, 'Taylor Swift', 'pop', 'Taylor Swift es una cantante, compositora y actriz estadounidense nacida el 13 de diciembre de 1989 en Reading, Pensilvania. Ha ganado múltiples premios Grammy y es conocida por su música pop y country, así como por sus letras personales. También es una figura influyente en la industria de la música y la cultura pop.', 2004),
(2, 'Adele', 'pop soul', 'Adele Laurie Blue Adkins, conocida como Adele, es una cantante y compositora británica nacida el 5 de mayo de 1988 en Londres. Se destacó en la música con su álbum debut "19" en 2008 y alcanzó fama internacional con "21" en 2011, que incluyó el éxito "Rolling in the Deep". Ha ganado múltiples premios Grammy y es conocida por su poderosa voz y emotivas baladas.', 2006),
(3, 'Harry Styles', 'soft rock', 'Harry Styles es un cantante y actor británico nacido el 1 de febrero de 1994 en Holmes Chapel, Inglaterra. Inicialmente, alcanzó la fama como miembro de la banda One Direction. Después de la separación del grupo, Styles lanzó su exitoso álbum debut homónimo en 2017 y ha continuado su carrera en solitario, ganando reconocimiento por su estilo distintivo y versatilidad musical.', 2010),
(4, 'Sabrina Carpenter', 'pop', 'Sabrina Carpenter es una cantante y actriz estadounidense nacida el 11 de mayo de 1999 en Pensilvania. Comenzó su carrera como actriz en Disney Channel y ganó reconocimiento por su papel en "Girl Meets World". También ha lanzado música pop exitosa, con álbumes como "Eyes Wide Open" y "Singular". Carpenter es conocida por su talento en la música y la actuación.', 2011),
(5, 'Bad Bunny', 'regueton', 'Bad Bunny, cuyo nombre real es Benito Antonio Martínez Ocasio, es un cantante y rapero puertorriqueño nacido el 10 de marzo de 1994 en Vega Baja, Puerto Rico. Se convirtió en una de las figuras más influyentes en la música urbana y el reguetón, destacándose por su estilo y letras innovadoras. Ha lanzado exitosos álbumes como "X 100pre" y "YHLQMDLG" y ha colaborado con artistas de renombre internacional.', 2013),
(6, 'Peso Pluma', 'corridos tumbados', 'Hassan Emilio Kabande Laija (Zapopan, México; 15 de junio de 1999), conocido por su nombre artístico Peso Pluma, es un cantante y compositor mexicano, que se caracteriza en los géneros de corridos tumbados, reguetón y trap latino.', 2020),
(7, 'ABBA', 'dance', 'ABBA es un icónico grupo de música pop sueco formado en 1972. Está compuesto por los miembros Agnetha Fältskog, Björn Ulvaeus, Benny Andersson y Anni-Frid Lyngstad. Han vendido cientos de millones de discos en todo el mundo y son conocidos por éxitos atemporales como "Dancing Queen," "Mamma Mia," y "Waterloo".', 1972), 
(8, 'Queen', 'rock', 'Queen es una influyente banda de rock británica formada en 1970, con miembros destacados como Freddie Mercury, Brian May, John Deacon y Roger Taylor. Son conocidos por su música diversa y su icónico estilo escénico. Queen ha vendido más de 300 millones de álbumes en todo el mundo y es famoso por éxitos como "Bohemian Rhapsody," "We Will Rock You" y "Another One Bites the Dust."', 1970),
(9, 'Olivia Rodrigo', 'pop', 'Olivia Rodrigo es una cantante y actriz estadounidense nacida el 20 de febrero de 2003 en Temecula, California. Alcanzó la fama con su papel en Disney Channel y ganó notoriedad con su sencillo "Drivers License". Su álbum debut "SOUR" (2021) recibió elogios de la crítica y la consolidó como una de las jóvenes artistas más prometedoras en la industria musical.', 2015),
(10, 'Beyonce', 'r&b', 'Beyoncé Giselle Knowles-Carter, conocida como Beyoncé, es una cantante, actriz y productora estadounidense nacida el 4 de septiembre de 1981 en Houston, Texas. Comenzó su carrera en Destinys Child y luego se estableció como una solista exitosa con álbumes como "Dangerously In Love" y "Lemonade". Es una de las artistas más influyentes y premiadas en la música, conocida por su poderosa voz y su impacto en la cultura pop.', 1996);

-- INSERT en tabla Albumes
INSERT INTO albumes VALUES
(1, 'Reputation', 2017, 1),
(2, 'Lover', 2019, 1),
(3, 'folklore', 2020, 1),
(4, 'evermore', 2021, 1),
(5, 'Midnights', 2023, 1),
(6, '21', 2011, 2),
(7, '30', 2021, 2),
(8, 'Fine Line', 2019, 3),
(9, 'Harrys House', 2022, 3),
(10, 'emails i cant send', 2022, 4),
(11, 'Un Verano Sin Ti', 2022, 5),
(12, 'GENESIS', 2023, 6),
(13, 'Voulez-Vous', 1979, 7),
(14, 'A Night At The Opera', 1975, 8),
(15, 'SOUR', 2021, 9),
(16, 'GUTS', 2023, 9),
(17, 'I AM...SASHA FIERCE', 2008, 10),
(18, 'RENAISSANCE', 2022, 10);

-- INSERT en tabla Canciones
INSERT INTO canciones VALUES
(1, 'Call It What You Want', 1, 1, 3, 2017, 330483187),
(2, 'King Of My Heart', 1, 1, 4, 2017, 216650836),
(3, 'I Forgot That You Existed', 1, 2, 3, 2019, 299846994),
(4, 'Lover', 1, 2, 3, 2019, 1055106357),
(5, 'august', 1, 3, 5, 2020, 826512076),
(6, 'champagne problems', 1, 4, 4, 2021, 491516456),
(7, 'Maroon', 1, 5, 4, 2023, 376825632),
(8, 'One and Only', 2, 6, 6, 2011, 256883856),
(9, 'I Drink Wine', 2, 7, 6, 2021, 215235837),
(10, 'Falling', 3, 8, 4, 2019, 1089566301),
(11, 'Keep Driving', 3, 9, 2, 2022, 272997654),
(12, 'Nonsense', 4, 10, 3, 2022, 496642161),
(13, 'Titi Me Pregunto', 5, 11, 4, 2022, 1362700167),
(14, 'LADY GAGA', 6, 12, 3, 2023, 375296882),
(15, 'Chiquitita', 7, 13, 5, 1979, 258972582),
(16, 'Love Of My Life', 8, 14, 4, 1975, 414114649),
(17, 'traitor', 9, 15, 4, 2021, 1337160587),
(18, 'deja vu', 9, 15, 4, 2021, 1374337880),
(19, 'vampire', 9, 14, 3, 2023, 530267909),
(20, 'Halo', 10, 17, 4, 2008, 1422639065),
(21, 'PURE/HONEY', 10, 17, 4, 2022, 83413211),
(22, 'BREAK MY SOUL', 10, 18, 3, 2022, 391974938);

-- INSERT en tabla Playlists
INSERT INTO playlists VALUES
(1, 'Hits Alegres', 'Tu dosis de enería para alegrarte el día', 1, '2023-11-05', 3),
(2, 'Hits Alegres', 'Tu dosis de enería para alegrarte el día', 1, '2023-11-05', 11),
(3, 'Hits Alegres', 'Tu dosis de enería para alegrarte el día', 1, '2023-11-05', 12),
(4, 'Hits Alegres', 'Tu dosis de enería para alegrarte el día', 1, '2023-11-05', 13),
(5, 'Hits Alegres', 'Tu dosis de enería para alegrarte el día', 1, '2023-11-05', 14),
(6, 'Para enamorados', 'Tu, nosotros y esta lista de canciones', 2, '2023-09-28', 1),
(7, 'Para enamorados', 'Tu, nosotros y esta lista de canciones', 2, '2023-09-28', 4),
(8, 'Para enamorados', 'Tu, nosotros y esta lista de canciones', 2, '2023-09-28', 16),
(9, 'awuitado', '¿que se siente ser feliz?', 3, '2022-03-14', 5),
(10, 'awuitado', '¿que se siente ser feliz?', 3, '2022-03-14', 6),
(11, 'awuitado', '¿que se siente ser feliz?', 3, '2022-03-14', 18),
(12, 'awuitado', '¿que se siente ser feliz?', 3, '2022-03-14', 19),
(13, 'Mis me gusta', 'Todas mis canciones', 4, '2023-01-15', 2),
(14, 'Mis me gusta', 'Todas mis canciones', 4, '2023-01-15', 7),
(15, 'Mis me gusta', 'Todas mis canciones', 4, '2023-01-15', 8),
(16, 'Mis me gusta', 'Todas mis canciones', 4, '2023-01-15', 9),
(17, 'Girls Night', 'Its all about the girls tonight', 5, '2021-07-20', 14),
(18, 'Girls Night', 'Its all about the girls tonight', 5, '2021-07-20', 21),
(19, 'Girls Night', 'Its all about the girls tonight', 5, '2021-07-20', 22),
(20, 'Girls Night', 'Its all about the girls tonight', 5, '2021-07-20', 17),
(21, 'Classics', 'Nunca pasan de moda', 6, '2022-04-05', 20),
(22, 'Classics', 'Nunca pasan de moda', 6, '2022-04-05', 16),
(23, 'Classics', 'Nunca pasan de moda', 6, '2022-04-05', 15),
(24, 'The Eras Tour', 'Solo para swifties', 7, '2023-08-27', 1),
(25, 'The Eras Tour', 'Solo para swifties', 7, '2023-08-27', 2),
(26, 'The Eras Tour', 'Solo para swifties', 7, '2023-08-27', 3),
(27, 'The Eras Tour', 'Solo para swifties', 7, '2023-08-27', 4),
(28, 'The Eras Tour', 'Solo para swifties', 7, '2023-08-27', 5),
(29, 'The Eras Tour', 'Solo para swifties', 7, '2023-08-27', 6),
(30, 'The Eras Tour', 'Solo para swifties', 7, '2023-08-27', 7),
(31, 'Fiesta y desmadre', 'A whole mood!', 8, '2022-12-02', 13),
(32, 'awuitado', '¿que se siente ser feliz?', 3, '2022-03-14', 10),
(33, 'Mis me gusta', 'Todas mis canciones', 4, '2023-01-15', 18),
(34, 'Fiesta y desmadre', 'A whole mood!', 8, '2022-12-02', 14),
(35, 'Fiesta y desmadre', 'A whole mood!', 8, '2022-12-02', 12);

-- INSERT en tabla LetrasCanciones
INSERT INTO letras_canciones VALUES
(1, 'I want to wear his initial On a chain round my neck, chain round my neck Not because he owns me But cause he really knows me', 1),
(2, 'And all at once, you are the one I have been waiting for King of my heart, body and soul, ooh whoa', 2),
(3, 'I forgot that you existed It isnt love, it isnt hate Its just indifference', 3),
(4, 'Ladies and gentlemen, will you please stand? With every guitar string scar on my hand I take this magnetic force of a man to be my lover', 5),
(6, 'Sometimes you just dont know the answer Til someones on their knees and asks you', 6),
(7, 'And I lost you The one I was dancin with In New York, no shoes Looked up at the sky and it was maroon', 7),
(8, 'Youve been on my mind I grow fonder every day Lose myself in time Just thinking of your face', 8),
(9, 'How can one become so bounded By choices that somebody else makes?', 9),
(10, 'Im falling again, Im falling again, Im falling What if Im down? What if Im out?', 10),
(11, 'I would ask, "Should we just keep driving?" Should we just keep driving?', 11),
(12, 'Woke up this morning, thought Id write a pop hit How quickly can you take your clothes off pop quiz?', 12),
(13, 'Tití me preguntó Si tengo muchas novia, muchas novia Hoy tengo a una, mañana otra Ey, pero no hay boda', 13),
(14, 'Dom Perignon Lady Gaga, lentes en la cara Tusi lavada', 14),
(15, 'Chiquitita, tell me the truth Im a shoulder you can cry on', 15),
(16, 'Love of my life, cant you see? Bring it back, bring it back, dont take it away from me', 16),
(17, 'It took you two weeks To go off and date her Guess you didnt cheat But youre still a traitor', 17),
(18, 'So when you gonna tell her That we did that, too? She thinks its special But its all reused', 18),
(19, 'Hate to give the satisfaction, asking how youre doing now Hows the castle built off people you pretend to care about?', 19),
(20, 'Everywhere Im looking now Im surrounded by your embrace Baby, I can see your halo', 20),
(21, 'Bad bitches to the left Money bitches to the right You can be both, meet in the middle, dance all night', 21),
(22, 'Now, I just fell in love And I just quit my job im gonna find new drive Damn, they work me so damn hard', 22);

-- INSERT en tabla EventosMusicales
INSERT INTO eventos_musicales VALUES
(1, 'The Eras Tour', '2023-08-27 20:00:00', 'Foro Sol Ciudad de Mexico', '1', '10500', '65000'),
(2, 'The Eras Tour', '2023-11-10 19:30:00', 'Estadio Monumental Buenos Aires', '1', '5000', '80000'),
(3, 'Weekends with Adele', '2023-10-28 21:30:00', 'The Colosseum Las Vegas', '2', '20000', '4000'),
(4, 'Weekends with Adele', '2023-11-04 21:30:00', 'The Colosseum Las Vegas', '2', '20000', '4000'),
(5, 'Love On Tour', '2022-11-25 20:30:00', 'Foro Sol Ciudad de Mexico', '3', '7500', '65000'),
(6, 'Love On Tour', '2022-11-20 20:30:00', 'Arena Guadalajara', '3', '7000', '22000'),
(7, 'Sour Tour', '2024-09-14 20:30:00', 'Pepsi Center Ciudad de Mexico', '9', '5500', '7500'),
(8, 'Sour Tour', '2024-09-16 20:30:00', 'Arena Guadalajara', '9', '4500', '22000'),
(9, 'Renaissance World Tour', '2023-09-01 19:30:00', 'SoFi Stadium Los Angeles', '10', '11000', '70000'),
(10, 'Renaissance World Tour', '2023-09-02 19:30:00', 'SoFi Stadium Los Angeles', '10', '11000', '70000');

-- INSERT en tabla SeguimientoReproduccion
INSERT INTO seguimiento_reproduccion VALUES
(1, 1, 1, '2023-11-11 11:43:00'),
(2, 1, 2, '2023-11-11 08:32:00'),
(3, 1, 3, '2023-11-10 09:13:10'),
(4, 2, 4, '2023-11-01 10:27:50'),
(5, 2, 5, '2023-11-02 10:03:40'),
(6, 2, 6, '2023-11-03 12:04:30'),
(7, 3, 7, '2023-11-04 13:28:00'),
(8, 3, 8, '2023-11-05 14:4:20'),
(9, 4, 9, '2023-11-06 15:25:05'),
(10, 4, 10, '2023-11-07 16:59:00'),
(11, 5, 11, '2023-11-08 17:28:06'),
(12, 5, 12, '2023-11-09 18:09:07'),
(13, 5, 13, '2023-11-10 19:27:00'),
(14, 6, 14, '2023-11-10 20:08:10'),
(15, 6, 15, '2023-11-11 21:08:02'),
(16, 6, 16, '2023-11-11 22:11:03'),
(17, 7, 17, '2023-11-01 06:11:00'),
(18, 7, 18, '2023-11-02 07:23:07'),
(19, 7, 19, '2023-11-03 08:22:09'),
(20, 8, 20, '2023-11-04 11:13:01'),
(21, 8, 21, '2023-11-05 09:13:22'),
(22, 8, 22, '2023-11-06 10:18:27'),
(23, 8, 13, '2023-11-07 11:01:14'),
(24, 8, 3, '2023-11-08 12:45:50'),
(25, 8, 4, '2023-11-09 13:15:13');

-- Pruebas de SELECT
SELECT * FROM usuarios;
SELECT * FROM artistas;
SELECT * FROM albumes;
SELECT * FROM canciones;
SELECT * FROM playlists;
SELECT * FROM letras_canciones;
SELECT * FROM eventos_musicales;
SELECT * FROM seguimiento_reproduccion;



