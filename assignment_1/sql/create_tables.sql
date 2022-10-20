CREATE TABLE Movie (
    id INT NOT NULL,
    title VARCHAR(200),
    genres VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE User (
    id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE Rating (
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    rating FLOAT,
    date_time TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (movie_id) REFERENCES Movie(id)
);

CREATE TABLE Tag (
    id INT NOT NULL,
    tag VARCHAR(200),
    score FLOAT,
    label VARCHAR(15),
    PRIMARY KEY (id)
);

CREATE TABLE MovieTag (
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    tag_id INT NOT NULL,
    date_time TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES User(id),
    FOREIGN KEY (movie_id) REFERENCES Movie(id),
    FOREIGN KEY (tag_id) REFERENCES Tag(id),
    UNIQUE(tag)
);
