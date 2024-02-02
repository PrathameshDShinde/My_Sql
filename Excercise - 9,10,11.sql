use b88;
show tables;
select * from movies;
select * from movie_sales;
-- Excercise - 9 --
SELECT 
    title,
    (domestic_sales + international_sales) / 1000000 AS combined_sales
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.Movie_id;
    
SELECT 
    title, (Rating / 10) * 100 AS combined_rating
FROM
    movies m
        INNER JOIN
    movie_sales m1 ON m.id = m1.Movie_id;
    
SELECT 
    title, year
FROM
    movies
WHERE
    year % 2 = 0;
    
SELECT 
    title, year
FROM
    movies
WHERE
    year < 2005
ORDER BY year DESC
LIMIT 2 OFFSET 2;

### You can create views for that - Virtual table It will get stored but 
### take much space in memory
CREATE VIEW mv2 AS
    (SELECT 
        title,
        (domestic_sales + international_sales) / 1000000 AS combined_sale
    FROM
        movies m
            INNER JOIN
        movie_sales m1 ON m.id = m1.Movie_id);
SELECT 
    title, combined_sale
FROM
    mv2
ORDER BY combined_sale DESC
LIMIT 2;

SELECT 
    MAX(combined_sales) AS max_sales
FROM
    mv1;
    
SELECT 
    title, MAX(combined_sales) AS max_sales
FROM
    mv1
GROUP BY title;

-- Excercise - 10 --
select * from employee_building;
SELECT 
    Name,MAX(Years_employed) AS max_years_employed
FROM
    employee_building
group by Name order by max_years_employed desc limit 1;
SELECT 
    Role, AVG(Years_employed) AS avg_years_employee
FROM
    employee_building
GROUP BY Role
ORDER BY avg_years_employee DESC;
select Role,sum(Years_employed) as sum_years_employed from employee_building group by Role;

-- Excercise - 11 --
select Role,count(Role) as num_Artist from employee_building where Role like "Artist" group by Role;
select Role,count(Role) as Num_role from employee_building group by Role;
select Role,sum(Years_employed) from employee_building group by Role having Role = "Engineer";
select Role,sum(Years_employed) from employee_building where Role like "Engineer" group by Role ; 
