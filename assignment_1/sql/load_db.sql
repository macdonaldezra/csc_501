-- Load movies into Movie table
LOAD DATA LOCAL
INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/assignment_1/data/ml-latest/movies.csv" IGNORE
INTO TABLE Movie
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(id, title, genres);

-- Load all users who have created a rating or a tag
LOAD DATA LOCAL 
INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/assignment_1/data/ml-latest/ratings.csv" IGNORE
INTO TABLE User
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(id);

LOAD DATA LOCAL 
INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/assignment_1/data/ml-latest/tags.csv" IGNORE
INTO TABLE User
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(id);

LOAD DATA LOCAL 
INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/assignment_1/data/ml-latest-small/ratings.csv" IGNORE
INTO TABLE Rating
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(user_id, movie_id, rating, @time)
SET time = FROM_UNIXTIME(@time);


-- Load tags into Tag table
LOAD DATA LOCAL 
INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/assignment_1/data/ml-latest/tags.csv" IGNORE
INTO TABLE Tag
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(id);

-- LOAD DATA INFILE "./data/ml-latest/movies.csv"
-- INTO TABLE movie
-- FIELDS TERINATED BY ","
-- LINES TERMINATED BY "\n"
-- IGNORE 1 ROWS;
-- (movie_id, title, genres);

-- LOAD DATA INFILE "./data/ml-latest/movies.csv"
-- INTO TABLE movie
-- FIELDS TERINATED BY ","
-- LINES TERMINATED BY "\n"
-- IGNORE 1 ROWS;
-- (movie_id, title, genres);