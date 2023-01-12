TRUNCATE TABLE albums RESTART IDENTITY;
TRUNCATE TABLE artists RESTART IDENTITY;


INSERT INTO albums (title, release_year, artist_id) VALUES ('Circles', 2020, 1);
INSERT INTO albums (title, release_year, artist_id) VALUES ('The Off-Season', 2021, 2);
INSERT INTO albums (title, release_year, artist_id) VALUES ('Stony Hill', 2017, 3);

INSERT INTO artists (id, name, genre) VALUES (1, 'Mac Miller', 'Hip Hop/Rap');
INSERT INTO artists (id, name, genre) VALUES (2, 'J Cole', 'Hip Hop/Rap');
INSERT INTO artists (id, name, genre) VALUES (3, 'Damien Marley', 'Reggae'); 