-- Load movies into Movie table
LOAD DATA LOCAL
INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/assignment_1/data/ml-latest/movies.csv" IGNORE
INTO TABLE Movie
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(id, title, genres);

-- Load Ratings table with user creatd labels
LOAD DATA LOCAL 
INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/assignment_1/data/ml-latest/ratings.csv" IGNORE
INTO TABLE Rating
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(user_id, movie_id, rating, @t)
SET date_time = FROM_UNIXTIME(@t);

-- Load tags into Tag table
LOAD DATA LOCAL 
INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/assignment_1/data/ml-latest/computed-tags.csv"
INTO TABLE Tag
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(id, name, emotion, score);

-- Load user created movie tags into the MovieTag table
LOAD DATA LOCAL 
INFILE "/home/macdonaldezra/Desktop/code/uvic/csci_501/assignment_1/ml-latest/indexed-tags.csv" IGNORE
INTO TABLE MovieTag
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(user_id, movie_id, tag_id, @t)
SET date_time = FROM_UNIXTIME(@t);
