USE codeup_test_tb;
DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS authors;

--you have to drop the table in order. drop quotes first bc authors depends on quotes

CREATE TABLE authors (
                            id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                            first_name VARCHAR(100) NOT NULL DEFAULT 'NONE',
                            last_name VARCHAR(100) NOT NULL,
                            PRIMARY KEY (id)
);
CREATE TABLE quotes (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        content TEXT NOT NULL,
                        author_id INT UNSIGNED NOT NULL,
                        PRIMARY KEY (id),
                        FOREIGN KEY (author_id) REFERNCES authors (id)
);




INSERT INTO authors (id, first_name, last_name) VALUES
('Douglas', 'Adams'),
('Mark', 'Twain'),
('Kurt', 'Vonnegut');




# Seeds
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'I love deadlines. I love the whooshing noise they make as they go by.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'),
        'Time is an illusion. Lunchtime doubly so.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Mark' and last_name = 'Twain'),
        'Clothes make the man. Naked people have little or no influence on society.');
INSERT INTO quotes (author_id, content)
values ((select id from authors where first_name = 'Kurt' and last_name = 'Vonnegut'),
        'The universe is a big place, perhaps the biggest.');
INSERT INTO quotes (author_id, content)
VALUES ((select id from authors where first_name = 'Douglas' and last_name = 'Adams'), 'Don''t Panic.');

--SELECT * FROM authors;
--SELECT * FROM quotes;
SELECT
    authors.first_name,
    authors.last_name,
    quotes.content

FROM quotes
SELECT * FROM quotes WHERE first_name = "Dogulas"
JOIN authors on author_id = authors.id

UPDATE authors SET first_name = 'Douglas' WHERE id = 1;




