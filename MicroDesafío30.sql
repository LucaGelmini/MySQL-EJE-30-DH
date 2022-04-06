/*
 * Microdesafío número 30 
 */

-- PASO 1
-- a)
select title, g.name from series s
inner join genres g
on s.genre_id = g.id;
-- b)
select title , a.first_name, a.last_name
from episodes e
inner join actor_episode ae
on e.id = ae.episode_id
inner join actors a
on ae.actor_id = a.id;

-- PASO 2
select distinct first_name, last_name
from actors a
inner join actor_movie am
on a.id = am.actor_id
inner join movies m 
on am.movie_id = m.id
where m.title like 'La Guerra de las galaxias%';

-- PASO 3
select title, coalesce (g.name, 'No tiene género') genero
from movies m
left join genres g
on m.genre_id = g.id;

-- PASO 4
select title, datediff(end_date,release_date) as duración
from series s;

-- PASO 5
-- a)
select last_name, first_name
from actors
where length(last_name)  > 6
order by last_name asc;

-- b)
select count(id) as cantidad_de_episodios
from episodes;

-- c)
SELECT  ser.title , COUNT(serie_id) as nro_temporadas
FROM seasons sea
inner join series ser on sea.serie_id = ser.id
GROUP BY serie_id 
HAVING COUNT(serie_id);

-- d)
SELECT  g.name , COUNT(genre_id) as nro_pelis
FROM movies m
inner join genres g 
on m.genre_id = g.id 
GROUP BY genre_id 
HAVING COUNT(genre_id)>3;





