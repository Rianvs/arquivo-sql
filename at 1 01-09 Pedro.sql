CREATE DATABASE SoundWave;
USE SoundWave;
CREATE TABLE artistas (id_artista INT PRIMARY KEY,
nome_artista VARCHAR(100));
INSERT INTO artistas (id_artista, nome_artista)
VALUES (1, 'The Beatles'),

 (2, 'Pink Floyd'),
 
 (3, 'Queen');
CREATE TABLE albuns (id_albun INT PRIMARY KEY,
titulo_album VARCHAR(100),
id_artista INT,
FOREIGN KEY (id_artista) REFERENCES artistas(id_artista));
INSERT INTO albuns (id_albun, titulo_album, id_artista) 
VALUES (1, 'Abbey Road', 1),

 (2, 'The Wall', 2),
 
 (3, 'A Night at the Opera', 3),
 
 (4, 'Álbum Sem Artista', NULL);
 SELECT artistas.nome_artista, albuns.titulo_album FROM albuns
 LEFT JOIN artistas ON albuns.id_artista = artistas.id_artista;