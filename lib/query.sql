.headers on 
.mode column
.width auto

-- SELECT * FROM characters;
-- SELECT * FROM series;
-- SELECT * FROM books;
-- SELECT * FROM authors;
-- SELECT * FROM character_books;
-- SELECT * FROM subgenres;

--   it 'selects all of the books titles and years in the first series and orders them chronologically' do
-- SELECT books.title, books.year FROM books INNER JOIN series ON books.series_id = series.id WHERE series.id = 1;

--   it 'returns the name and motto of the character with the longest motto' do
-- SELECT characters.name, characters.motto FROM characters ORDER BY LENGTH(characters.motto) DESC LIMIT 1;

--   it 'determines the most prolific species of characters and return its value and count' do
-- SELECT characters.species, COUNT(characters.species) FROM characters GROUP BY characters.species ORDER BY COUNT(characters.species) DESC LIMIT 1;

--   it "selects the authors names and their series' subgenres" do
-- SELECT authors.name, subgenres.name from authors INNER JOIN series ON series.author_id = authors.id LEFT OUTER JOIN subgenres ON series.subgenre_id = subgenres.id;

--   it 'selects the series title with the most characters that are the species "human"' do
-- SELECT series.title FROM series LEFT OUTER JOIN books ON series.id = books.series_id INNER JOIN character_books ON character_books.book_id = books.id INNER JOIN characters on characters.id = character_books.character_id WHERE characters.species = "human" GROUP BY series.title ORDER BY COUNT(series.title) DESC LIMIT 1

--   it 'selects all of the character names and the number of books they have appeared in, grouped by character name, in descending order by number of books and ascending order by character name' do
SELECT characters.name, COUNT(books.title) FROM characters
INNER JOIN character_books ON characters.id = character_books.character_id
INNER JOIN books ON books.id = character_books.book_id
GROUP BY characters.name ORDER BY COUNT(books.title) DESC, characters.name ASC