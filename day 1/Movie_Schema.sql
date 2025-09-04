CREATE DATABASE Class_task1;
USE class_task1;
CREATE TABLE Director (
    dir_id INT PRIMARY KEY,
    name VARCHAR(20),
    phno INT,
    email VARCHAR(30)
);
INSERT INTO Director
VALUES (
        101,
        'SS Rajamauli',
        1234567890,
        'rajamauli@gmail.com'
    ),
    (
        102,
        'Prashant Neel',
        0987654321,
        'mohitsuri@gmail.com'
    );
DROP TABLE Director;
DROP DATABASE Class_task1;
CREATE TABLE Movie (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(20),
    release_date DATE,
    dir_id1 INT,
    FOREIGN KEY (dir_id1) REFERENCES Director (dir_id)
);
INSERT INTO Movie
VALUES (201, 'Bahubali', '2019-04-23', 101),
    (202, 'KGF', '2018-07-21', 102);
CREATE TABLE Actor (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(30),
    actor_gender CHAR(1),
    actor_age INT,
    actor_phno INT
);
INSERT INTO Actor
VALUES (301, 'Prabhas', 'M', 41, 0987654321),
    (302, 'Yash', 'M', 37, 1234567890);
CREATE TABLE movie_cast (
    movie_id INT,
    actor_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movie (movie_id),
    FOREIGN KEY (actor_id) REFERENCES Actor (actor_id)
);
INSERT INTO movie_cast
VALUES (201, 301),
    (202, 302);
CREATE TABLE Genre (Genre_id INT PRIMARY KEY, Genre_Type VARCHAR(30));
INSERT INTO Genre
VALUES (401, 'Epic Action Movie'),
    (402, 'Action Movie');
CREATE TABLE movie_genre (
    movie_id INT,
    Genre_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movie (movie_id),
    FOREIGN KEY (Genre_id) REFERENCES Genre (Genre_id)
);
INSERT INTO movie_genre
VALUES (201, 401),
    (202, 402);
CREATE TABLE movie_rating (
    rating DECIMAL(5, 1),
    movie_id INT,
    FOREIGN KEY (movie_id) REFERENCES Movie (movie_id)
);
DROP TABLE movie_rating;
INSERT INTO movie_rating
VALUES (9.8, 201),
    (10.0, 202);
SELECT *
FROM Director;
SHOW TABLES;
DESCRIBE Director;
SELECT *
FROM Director;
SELECT *
FROM Movie;
SELECT *
FROM Actor;
SELECT *
FROM movie_cast;
SELECT *
FROM Genre;
SELECT *
FROM movie_genre;
SELECT *
FROM movie_rating;
select *
from Director as d
    left join Movie as m on d.dir_id = m.dir_id1;