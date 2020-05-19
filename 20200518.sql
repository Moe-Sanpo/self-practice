ALTER TABLE library.books ADD COLUMN id integer; 

CREATE SEQUENCE library.book_seq 
	INCREMENT 1
	start 1;

UPDATE library.books SET id = nextval('library.book_seq');

SELECT * FROM library.books ORDER BY id;

ALTER TABLE library.books ALTER COLUMN price SET DATA TYPE integer USING price::integer;

ALTER TABLE library.books ADD COLUMN created_at timestamp without time zone DEFAULT now();