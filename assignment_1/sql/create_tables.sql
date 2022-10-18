CREATE TABLE Movie (
    id INT NOT NULL,
    title VARCHAR(80),
    genres VARCHAR(80),
    PRIMARY KEY (id)
);

CREATE TABLE User (
    id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Rating (
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    rating SMALLINT,
    date_time TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (movie_id) REFERENCES Movie(id)
);

CREATE TABLE MovieTag (
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    tag VARCHAR(80),
    date_time TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (movie_id) REFERENCES Movie(id),
    UNIQUE(tag)
);
