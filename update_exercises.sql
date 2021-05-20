USE codeup_test_db;

-- all albums in your table
SELECT * FROM albums;

--all albums before 1980

SELECT name FROM albums WHERE release_date < 1980;

--all albums by MJ

SELECT name FROM albums WHERE artist = "Michael Jackson";

--make all albums 10x sales
UPDATE albums
SET sales * 10;

--added select
SELECT sales FROM albums;

--move all albums before 1980 to 1800s
UPDATE albums
SET release_date = '1800s'
WHERE release_date < 1980;

--added select
SELECT * FROM albums WHERE release_date < 1980;

--change MJ to Peter Jackson

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

--added select
SELECT * FROM albums WHERE artist = 'Peter Jackson';

