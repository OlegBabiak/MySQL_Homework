DROP DATABASE IF EXISTS library5;
create database library5;
 
USE library5;

CREATE TABLE authors(
id INT PRIMARY KEY AUTO_INCREMENT,
authors_name VARCHAR(45) NOT NULL,
authors_last_name VARCHAR(45) NOT NULL,
authors_email VARCHAR(50) NOT NULL UNIQUE,
authors_age TINYINT NOT NULL,
authors_date_of_birth DATE NOT NULL,
author_awards VARCHAR(120) 
);

INSERT INTO authors (authors_name, authors_last_name, authors_email, authors_age, authors_date_of_birth, author_awards)
VALUES
("Айзек", "Азімов", "asimovguy@asimovonline.com", 72,  '1920-01-02', "Премія Г'юго 1966 за серію «Фундація» (як «Найкращу НФ серію усіх часів»)"),
("Роберт Енсон", "Гайнлайн", "Chairman@HeinleinSociety.org", 80, '1907-07-07', "Перший лауреат найпрестижнішої премії фантастики за заслуги перед жанром Гросмейстер фантастики (1975)"),
("Дуглас", "Адамс", "douglasadams@bbc.co.uk", 49, '1952-03-11', "№ 1 в списку бестселерів Sunday Times (1979)"),
("Євген", "Перепічка", "perepichka@gmail.com", 88,  '1931-11-21', DEFAULT),
("Кэті", "С'єрра", "KathySierra@mit.edu", 62, '1957-07-31', DEFAULT),
("Берт", "Бейтс", "BertBeits@mit.edu", 64, '1955-03-20', DEFAULT);

CREATE TABLE books(
id INT PRIMARY KEY AUTO_INCREMENT,
price REAL NOT NULL,
book_title VARCHAR(120) NOT NULL,
book_description TEXT,
date_of_publication DATE NOT NULL DEFAULT '2018-01-01',
isbn  BIGINT(20) NOT NULL UNIQUE,
number_of_pages SMALLINT NOT NULL
);

INSERT INTO books (price, book_title, book_description, date_of_publication, isbn, number_of_pages)
VALUES
(70.15, "Фонд", "НФ", '1951-01-01', 9786171233560, 224),
(192.2002, "Я, Робот", "НФ", '1950-01-01', 9780007532278, 256),
(108.30, "Чужинець на чужій землі", "НФ", '1961-01-01', 9786171215191, 720),
(98.35, "Путівник по Галактиці для космотуристів", "НФ", '1979-01-01', 9789661043588, 696),
(226.26, "Феномен Степана Бандери", "Монографія", '2006-01-01', 9789666653397, 736),
(400, "Вивчаємо Java", "Програмування", '2012-01-01', 9785699545742, 720);

CREATE TABLE authors_books(
id INT PRIMARY KEY AUTO_INCREMENT,
author_id INT NOT NULL,
CONSTRAINT author_id_FC FOREIGN KEY (author_id) REFERENCES authors(id),
book_id INT NOT NULL,
CONSTRAINT book_id_FC FOREIGN KEY (book_id) REFERENCES books(id)
);

INSERT INTO authors_books (author_id, book_id)
VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 6);

CREATE TABLE categories(
id INT PRIMARY KEY AUTO_INCREMENT,
category VARCHAR(60) NOT NULL,
book_id INT NOT NULL,
CONSTRAINT books_id_FC FOREIGN KEY (book_id) REFERENCES books(id)
);

INSERT INTO categories (category, book_id)
VALUES
("Художні книги", 1),
("Художні книги", 2),
("Художні книги", 3),
("Художні книги", 4),
("Монографія", 5),
("Навчальні посібники", 6);


 select * from authors;
 select * from books;
 select * from categories;
 select * from authors_books;
 
 select ab.id, b.price, b.book_title,c.category, a.authors_name, a.authors_last_name  from library5.authors_books AS ab
 right JOIN library5.authors AS a
 ON ab.author_id = a.id
 JOIN library5.books AS b
 ON ab.book_id = b.id
 JOIN library5.categories AS c
 ON b.id = c.id
 WHERE ab.id = 1 or ab.id = 2 or ab.id = 5;
 
 select ab.id, b.price, b.book_title,c.category, a.authors_name, a.authors_last_name  from library5.authors_books AS ab
 right JOIN library5.authors AS a
 ON ab.author_id = a.id
 JOIN library5.books AS b
 ON ab.book_id = b.id
 JOIN library5.categories AS c
 ON b.id = c.id
 WHERE a.authors_name = "Дуглас";
 
 select ab.id, b.price, b.book_title, c.category, a.authors_name, a.authors_last_name  from library5.authors_books AS ab
 right JOIN library5.authors AS a
 ON ab.author_id = a.id
 JOIN library5.books AS b
 ON ab.book_id = b.id
 JOIN library5.categories AS c
 ON b.id = c.id
 WHERE b.price < 250.00
 ORDER BY b.book_title DESC; 
