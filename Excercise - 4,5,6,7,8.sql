use b88;
show tables;
select * from movies;
-- Excercise - 4 --
SELECT DISTINCT
    (director)
FROM
    movies
ORDER BY director ASC;

SELECT 
    title, year
FROM
    movies
ORDER BY year DESC
LIMIT 4;

SELECT 
    title
FROM
    movies
ORDER BY title ASC
LIMIT 5; 

SELECT 
    title
FROM
    movies
ORDER BY title asc
LIMIT 5 OFFSET 4;
select * from movies;
select * from movie_sales;
-- Excercise - 5 --
SELECT 
    title, Domestic_sales, International_sales
FROM
    movies
        INNER JOIN
    movie_sales ON movies.id = movie_sales.Movie_id;
    
SELECT 
    title, Domestic_sales, International_sales
FROM
    movies
         JOIN
    movie_sales ON movies.id = movie_sales.Movie_id;
SELECT 
    title, Domestic_sales, International_sales
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.Movie_id
WHERE
    International_sales > Domestic_sales
order by title desc  limit 5;

SELECT 
    title, Rating
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.Movie_id
ORDER BY Rating DESC; 

-- Excercise - 7 --
select * from employee_building;
select * from building_capacity;
select distinct building from employee_building;
select * from building_capacity;
SELECT DISTINCT
    building_name, role
FROM
    building_capacity b
        INNER JOIN
    employee_building b1 ON b.Building_name = b1.Building;
    
-- Excercise - 8 --
SELECT 
    Name, Role
FROM
    employee_building
WHERE
    Building IS NULL;

select Building,Years_employed from employee_building where Building is null;
SELECT DISTINCT
    building_name
FROM
    building_capacity b
        left JOIN
    employee_building b1 ON b.Building_name = b1.Building
WHERE
    Role IS NULL;
    
