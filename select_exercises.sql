USE codeup_test_db;

--the name of all albums by Pink Floyd

SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- the year Sgt. Pepper's Lonely Hearts Club Band was released

SELECT release_date FROM albums WHERE artist = 'Sgt. Pepper''s Lonely Club Band';

-- genre for nevermind

SELECT genre FROM albums WHERE artist = 'Nevermind';

--Albums released in 1990's

SELECT name FROM albums WHERE release_date = 1990;

--Which albums had less than 20 million certified sales

SELECT name FROM albums WHERE sales <= 20.0;

-- all the albums with genre of "Rock"

SELECT name FROM albums WHERE genre = 'Rock';



