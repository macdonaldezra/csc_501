CREATE TABLE Movie (
    id INT NOT NULL,
    title VARCHAR(200),
    genres VARCHAR(100),
    PRIMARY KEY (id)
);

CREATE TABLE Rating (
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    rating FLOAT,
    date_time TIMESTAMP,
    FOREIGN KEY (movie_id) REFERENCES Movie(id)
);

CREATE TABLE Tag (
    id INT NOT NULL,
    name VARCHAR(200),
    score FLOAT,
    emotion VARCHAR(20),
    PRIMARY KEY (id)
);

CREATE TABLE MovieTag (
    movie_id INT NOT NULL,
    tag_id INT NOT NULL,
    user_id INT NOT NULL,
    date_time TIMESTAMP,
    FOREIGN KEY (movie_id) REFERENCES Movie(id),
    FOREIGN KEY (tag_id) REFERENCES Tag(id)
);