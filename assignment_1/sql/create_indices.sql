CREATE UNIQUE INDEX user_movie_ratings ON Rating(user_id, movie_id);
CREATE INDEX user_movie_tags ON MovieTag(user_id, movie_id, tag_id);