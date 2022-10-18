CREATE TABLE Movie (
    id INT NOT NULL,
    title VARCHAR(80),
    genres VARCHAR(80),
    PRIMARY KEY (id),
);

CREATE TABLE User (
    id INT NOT NULL,
    movie_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES Movie(id),
    PRIMARY KEY (id),
);

CREATE TABLE Rating (
    id INT NOT NULL,
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    rating SMALLINT,
    date_time TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (movie_id) REFERENCES Movie(id),
);

CREATE TABLE Tag (
    id INT NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    tag VARCHAR(80),
    date_time TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (movie_id) REFERENCES Movie(id),
);
