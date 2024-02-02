use b88;
show tables;
select * from movies;
### Excercise - 1 ###
select title from movies;
select director from movies;
select title,director from movies;
select title,year from movies;
select * from movies;

### Excercise - 2 ###
select title from movies where id = 6;
select title,year from movies where year between 2000 and 2010;
select title,year from movies where year not between 2000 and 2010;
select title,year from movies where year <= 2003;

#### Excercise - 3 ###
select title from movies where title like "Toy Story";    -- Matches only Toy Story --
select title from movies where title like "%Toy Story%";  -- Matches only Toy Story 1,2,3 --
select title,director from movies where director like "John Lassester"; -- equal to --
select title,director from movies where director = "John Lassester"; 	-- eual to -- 
select title,director from movies where director not like "John Lassester"; -- Not equal to --
select title,director from movies where director != "John Lassester";    -- Not equal to -- 
select title,director from movies where director <> "John Lassester";	 -- Not equal to -- 
select title from movies where title like "Wall-_";