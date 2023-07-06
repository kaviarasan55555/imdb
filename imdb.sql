CREATE DATABASE IMDB;
USE IMDB;

INSERT INTO movie VALUES (1,'Master',7.6);
INSERT INTO movie VALUES (2,96,7.6);

alter table movie add rating decimal(2,1);

CREATE TABLE Movie (
  movie_id INT PRIMARY KEY,
  title VARCHAR(255),
  release_date DATE,
  duration INT,
  description TEXT
);
describe movie;
SELECT * FROM movie;
INSERT INTO Movie (movie_id, title, release_date, duration, description)
VALUES
  (1, 'Movie 1', '2023-01-01', 150, 'Description of Movie 1'),
  (2, 'Movie 2', '2023-02-15', 130, 'Description of Movie 2'),
  (3, 'Movie 3', '2023-03-20', 165, 'Description of Movie 3');
  
 

CREATE TABLE Genre (
  genre_id INT PRIMARY KEY,
  genre_name VARCHAR(50)
);

INSERT INTO Genre (genre_id, genre_name)
VALUES
  (1, 'Action'),
  (2, 'Drama'),
  (3, 'Comedy');
  
  CREATE TABLE Movie_Genre (
  movie_id INT,
  genre_id INT,
  PRIMARY KEY (movie_id, genre_id),
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
  FOREIGN KEY (genre_id) REFERENCES Genre(genre_id)
);

INSERT INTO Movie_Genre (movie_id, genre_id)
VALUES
  (1, 1), 
  (1, 2), 
  (2, 2), 
  (3, 3);
  
  CREATE TABLE Review (
  review_id INT PRIMARY KEY,
  movie_id INT,
  user_id INT,
  rating FLOAT,
  review_text TEXT
 
);

INSERT INTO Review (review_id, movie_id, user_id, rating, review_text)
VALUES
  (1, 1, 101, 4.5, 'Great movie!'),
  (2, 1, 102, 3.8, 'Enjoyed it.'),
  (3, 2, 103, 4.2, 'Good storyline.'),
  (4, 3, 104, 3.5, 'Funny and entertaining.');
  
  
  CREATE TABLE User (
  user_id INT PRIMARY KEY,
  username VARCHAR(50),
  email VARCHAR(255),
  password VARCHAR(255)
);

INSERT INTO User (user_id, username, email, password)
VALUES
  (101, 'user1', 'user1@example.com', 'password1'),
  (102, 'user2', 'user2@example.com', 'password2'),
  (103, 'user3', 'user3@example.com', 'password3'),
  (104, 'user4', 'user4@example.com', 'password4');
  
  
  CREATE TABLE Artist (
  artist_id INT PRIMARY KEY,
  name VARCHAR(100)
);

INSERT INTO Artist (artist_id, name)
VALUES
  (1, 'Actor 1'),
  (2, 'Actor 2'),
  (3, 'Director 1'),
  (4, 'Director 2');
  
  CREATE TABLE Skill (
  skill_id INT PRIMARY KEY,
  skill_name VARCHAR(50)
);

INSERT INTO Skill (skill_id, skill_name)
VALUES
  (1, 'Acting'),
  (2, 'Direction');
  
  
  CREATE TABLE Artist_Skill (
  artist_id INT,
  skill_id INT,
  PRIMARY KEY (artist_id, skill_id),
  FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
  FOREIGN KEY (skill_id) REFERENCES Skill(skill_id)
);


INSERT INTO Artist_Skill (artist_id, skill_id)
VALUES
  (1, 1), 
  (2, 1), 
  (3, 2), 
  (4, 2);
  
  CREATE TABLE Role (
  role_id INT PRIMARY KEY,
  role_name VARCHAR(50)
);

INSERT INTO Role (role_id, role_name)
VALUES
  (1, 'Actor'),
  (2, 'Director');


CREATE TABLE Movie_Artist_Role (
  movie_id INT,
  artist_id INT,
  role_id INT,
  PRIMARY KEY (movie_id, artist_id, role_id),
  FOREIGN KEY (movie_id) REFERENCES Movie(movie_id),
  FOREIGN KEY (artist_id) REFERENCES Artist(artist_id),
  FOREIGN KEY (role_id) REFERENCES Role(role_id)
);
  
  
INSERT INTO Movie_Artist_Role (movie_id, artist_id, role_id)
VALUES
  (1, 1, 1), 
  (1, 2, 1), 
  (2, 3, 2),
  (3, 4, 2);
  
  drop table movie;
  
  
  
  
  
  
  
  
  
