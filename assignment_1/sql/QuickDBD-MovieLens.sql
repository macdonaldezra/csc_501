CREATE TABLE `Movie` (
    `id` int  NOT NULL ,
    `title` varchar(80)  NOT NULL ,
    `genres` varchar(80)  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `User` (
    `id` int  NOT NULL ,
    PRIMARY KEY (
        `id`
    )
);

CREATE TABLE `MovieTag` (
    `movie_id` int  NOT NULL ,
    `user_id` int  NOT NULL ,
    `name` varchar(80)  NOT NULL ,
    `date_time` timestamp  NOT NULL 
);

CREATE TABLE `Rating` (
    `user_id` int  NOT NULL ,
    `movie_id` int  NOT NULL ,
    `rating` smallint  NOT NULL ,
    `date_time` timestamp  NOT NULL 
);

ALTER TABLE `MovieTag` ADD CONSTRAINT `fk_MovieTag_movie_id` FOREIGN KEY(`movie_id`)
REFERENCES `Movie` (`id`);

ALTER TABLE `MovieTag` ADD CONSTRAINT `fk_MovieTag_user_id` FOREIGN KEY(`user_id`)
REFERENCES `User` (`id`);

ALTER TABLE `Rating` ADD CONSTRAINT `fk_Rating_user_id` FOREIGN KEY(`user_id`)
REFERENCES `User` (`id`);

ALTER TABLE `Rating` ADD CONSTRAINT `fk_Rating_movie_id` FOREIGN KEY(`movie_id`)
REFERENCES `Movie` (`id`);

