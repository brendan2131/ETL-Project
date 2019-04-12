CREATE DATABASE top_songs_db;

USE top_songs_db;

CREATE TABLE spotify (
  spotify_position INT PRIMARY KEY,
  song_name VARCHAR(200) NOT NULL,
  artists VARCHAR(200) NOT NULL,
  duration_ms DOUBLE (20,1)
  );

CREATE TABLE billboard (
  id INT PRIMARY KEY,
  peak_position INT,
  song_name VARCHAR(200) NOT NULL,
  artists VARCHAR(200) NOT NULL,
  number_of_weeks INT,
  average_chart_position FLOAT (20,18)
  );
  
SELECT spotify.spotify_position, spotify.song_name, spotify.artists, spotify.duration_ms, billboard.peak_position, billboard.number_of_weeks
FROM spotify
INNER JOIN billboard ON spotify.song_name=billboard.song_name
;