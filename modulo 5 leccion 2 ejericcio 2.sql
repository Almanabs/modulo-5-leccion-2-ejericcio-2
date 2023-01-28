CREATE TABLE series_netflix (
nombre varchar(50) PRIMARY KEY,
temporadas INT,
genero varchar(50),
anio_estreno INT
);

INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('Black Mirror', 5, 'Sci-fi', 2011);

-- ingresar un nuevo registro a la tabla
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('Stranger Things', 4, 'Sci-fi/Horror', 2016);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('The Crown', 4, 'Historical', 2016);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('The Witcher', 2, 'Fantasy', 2019);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('Narcos', 3, 'Crime', 2015);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('Breaking Bad', 5, 'Crime', 2008);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('Money Heist', 5, 'Crime', 2017);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('The Haunting of Hill House', 2, 'Horror', 2018);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('La Casa de Papel', 5, 'Crime', 2017);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('Cyber Punk 2077', 1, 'Ciencia ficción', 2022);

--ordenar las series con mas de 3 temp por año y orden descendente


SELECT nombre, temporadas, genero, anio_estreno
FROM series_netflix
WHERE temporadas > 3
ORDER BY anio_estreno DESC;

-- serie mas antigua
SELECT MIN(anio_estreno) FROM series_netflix;

-- serie mas nueva
SELECT MAX(anio_estreno) FROM series_netflix;

-- PROMEDIO AÑO SERIES
SELECT AVG(anio_estreno) FROM series_netflix;

-- PROMEDIO TEMPORADAS SERIES
SELECT AVG(temporadas) FROM series_netflix;

--LISTA DE SERIES CON 1,2,4,5 O 7 TEMPORADAS
SELECT * FROM series_netflix WHERE temporadas IN (1, 2, 4, 5, 7);

-- LISTA DE SERIES SIN 1,2,4,5 O 7 TEMPORADAS
SELECT nombre, temporadas
FROM series_netflix
WHERE temporadas NOT IN (1, 2, 4, 5, 7);

--BORRAR SERIES SUPERIOR AL AÑO 2010
DELETE FROM series_netflix WHERE anio_estreno > 2010;

--REINGRESAR DATOS BORRADOS
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('Stranger Things', 4, 'Sci-fi/Horror', 2016);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('The Crown', 4, 'Historical', 2016);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('The Witcher', 2, 'Fantasy', 2019);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('Breaking Bad', 5, 'Crime', 2008);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('Money Heist', 5, 'Crime', 2017);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('The Haunting of Hill House', 2, 'Horror', 2018);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('La Casa de Papel', 5, 'Crime', 2017);
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('Cyber Punk 2077', 1, 'Ciencia ficción', 2022);

--AGREGAR DOCTOR HOUSE
INSERT INTO series_netflix (nombre, temporadas, genero, anio_estreno)
VALUES ('Doctor House', 8, 'Drama medico', 2004);

--listar todas las series entre los años 2005 y 2020
WHERE anio_estreno BETWEEN 2005 AND 2020;

--listar todas las series con nombre comenzado con B o termine en E
SELECT * FROM series_netflix WHERE nombre LIKE 'B%' OR nombre LIKE '%e';

--listar las series cuyo año de estreno mas la cantidad de temporadas excede 2010
SELECT nombre, temporadas, genero, anio_estreno
FROM series_netflix
WHERE (anio_estreno + temporadas) > 2010;

SELECT * FROM series_netflix;

