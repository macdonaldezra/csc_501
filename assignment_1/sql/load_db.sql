LOAD DATA INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/data/ml-latest/movies.csv"
INTO TABLE Movie
FIELDS TERMINATED BY ","
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(id, title, genres);

LOAD DATA INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/data/ml-latest/ratings.csv" IGNORE
INTO TABLE User
FIELDS TERMINATED BY ","
LINES TERMINATED BY "\n"
IGNORE 1 ROWS
(id);

LOAD DATA INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/data/ml-latest/tags.csv" IGNORE
INTO TABLE Tag
FIELDS TERMINATED BY ","
LINES TERMINATED BY "\n"
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