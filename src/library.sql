DROP DATABASE library;
create database if not exists library;

USE library;

CREATE TABLE books(
id INT PRIMARY KEY AUTO_INCREMENT, 
book_title VARCHAR(120) NOT NULL,
book_description VARCHAR(120) DEFAULT "Опис відсутній",
date_of_publication DATE NOT NULL DEFAULT '2018-01-01',
author VARCHAR(60) NOT NULL,
category VARCHAR(60) NOT NULL
);

INSERT INTO books (book_title, book_description, date_of_publication, author, category)

VALUES

("Фонд", "НФ", '1951-01-01', "Айзек Азімов", "Художні книги"),
("Я, Робот", "НФ", '1950-01-01', "Айзек Азімов", "Художні книги"),
("Чужий в чужій землі", "НФ", '1961-01-01', "Роберт Енсон Гайнлайн", "Художні книги"),
("1984", "Антиутопія", '1949-01-01', "Джордж Орвелл", "Художні книги"),
("Володар перснів", "Фентезі", '1951-01-01', "Джон Роналд Руел Толкін", "Художні книги"),
("Гаррі Поттер", DEFAULT, '1997-06-26', "Джоан Роулінг", "Художні книги"),
("Аналітична економія: макроекономіка і мікроекономіка", "Економіка", '2006-01-01', "С. М. Панчишин", "Навчальні посібники"),
("Економічна теорія. Політекономія", "Економіка", '2014-01-01', "В. Д. Базилевич", "Навчальні посібники"),
("Вивчаємо Java", "Програмування", '2012-01-01', "Кэті С'єрра, Берт Бейтс", "Навчальні посібники"),
("Філософія Java", "Програмування", DEFAULT, "Брюс Еккель", "Навчальні посібники");

SELECT * FROM books;
