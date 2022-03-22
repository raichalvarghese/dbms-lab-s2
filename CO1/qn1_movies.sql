drop database MOVIE;
create database MOVIE;
USE MOVIE;
drop table actors;
CREATE TABLE `actors` (
  `actor` varchar(20) DEFAULT NULL,
  `ayear` int DEFAULT NULL
);
INSERT INTO `actors` (`actor`, `ayear`) VALUES
('Cage', 1964),
('Hanks', 1956),
('Manguire', 1975),
('McDormand', 1957);
drop table acts;
CREATE TABLE `acts` (
  `actor` varchar(20) DEFAULT NULL,
  `title` varchar(20) DEFAULT NULL
);

INSERT INTO `acts` (`actor`, `title`) VALUES
('Cage', 'Raising Arizona'),
('Maguire', 'Spiderman'),
('Maguire', 'Wonder Boys'),
('McDormand', 'Fargo'),
('McDormand', 'Raising Arizona'),
('McDormand', 'Wonder Boys');



CREATE TABLE `directors` (
  `director` varchar(20) DEFAULT NULL,
  `dyear` int DEFAULT NULL
);


INSERT INTO `directors` (`director`, `dyear`) VALUES
('Coen', 1954),
('Hanson', 1945),
('Raimi', 1959);


CREATE TABLE `movies` (
  `title` varchar(20) DEFAULT NULL,
  `director` varchar(20) DEFAULT NULL,
  `myear` int DEFAULT NULL,
  `rating` int DEFAULT NULL
);


INSERT INTO `movies` (`title`, `director`, `myear`, `rating`) VALUES
('Fargo', 'Coen', 1996, 8),
('Raising Arizona', 'Coen', 1987, 8),
('Spiderman', 'Raimi', 2002, 7),
('Wonder Boys', 'Hanson', 2000, 8);

SELECT * FROM `Movies` WHERE myear>1997;
SELECT * FROM `Movies` WHERE director='Hanson' and myear>1997;
SELECT title,rating FROM `Movies`;
SELECT actor from Actors;
SELECT director FROM `Movies`;


select distinct Movies.director,Acts.actor from Movies inner join Acts on Movies.title=Acts.title;

select distinct Movies.title from Movies inner join Acts on Movies.title=Acts.title where Movies.director='Coen' and Acts.actor='McDormand';
 
-- **********************************

drop view ad;
create view ad  as
select distinct actor,director
from Actors,Directors where dyear>=1945;
select distinct actor,director from ad ;

drop view cm;
create view cm as
select distinct title,actor,director
from Movies,Acts where director='Coen' and actor='McDormand';
select distinct title from cm ;

select * from Acts;
select * from Movies inner join Acts on Movies.title=Acts=title;