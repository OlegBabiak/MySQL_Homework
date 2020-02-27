DROP DATABASE library3;
create database if not exists library3;
 
USE library3;
CREATE TABLE books3(
id INT PRIMARY KEY AUTO_INCREMENT,
price REAL NOT NULL,
book_title VARCHAR(120) NOT NULL,
book_description TEXT,
date_of_publication DATE NOT NULL DEFAULT '2018-01-01',
category VARCHAR(60) NOT NULL,
isbn  BIGINT(20) NOT NULL UNIQUE,
number_of_pages SMALLINT NOT NULL,
authors_name VARCHAR(45) NOT NULL,
authors_last_name VARCHAR(45) NOT NULL,
authors_email VARCHAR(50) NOT NULL UNIQUE,
authors_age TINYINT NOT NULL,
authors_date_of_birth DATE NOT NULL,
author_awards VARCHAR(120) 
);

INSERT INTO books3 (price, book_title, book_description, date_of_publication, category, isbn, number_of_pages, authors_name, authors_last_name, authors_email, authors_age, authors_date_of_birth, author_awards)
VALUES
(70.15, "Фонд", "НФ", '1951-01-01',"Художні книги",  9786171233560, 224, "Айзек", "Азімов", "asimovguy@asimovonline.com", 72,  '1920-01-02', "Премія Г'юго 1966 за серію «Фундація» (як «Найкращу НФ серію усіх часів»)"),
(192.2002, "Я, Робот", "НФ", '1950-01-01',"Художні книги",  9780007532278, 256 , "Айзек", "Осіпов", "asimov@asimovonline.com", 72,  '1920-01-02', "Премія Неб'юла 1976 за повість «Двохсотлітня людина»"),
(108.30, "Чужинець на чужій землі", "НФ", '1961-01-01',  "Художні книги", 9786171215191, 720, "Роберт Енсон", "Гайнлайн", "Chairman@HeinleinSociety.org", 80, '1907-07-07', "Перший лауреат найпрестижнішої премії фантастики за заслуги перед жанром Гросмейстер фантастики (1975)"),
(98.35, "Путівник по Галактиці для космотуристів", "НФ", '1979-01-01',  "Художні книги", 9789661043588, 696, "Дуглас", "Адамс", "douglasadams@bbc.co.uk", 49, '1952-03-11', "№ 1 в списку бестселерів Sunday Times (1979)"),
(166.40, "1984", "Антиутопія", '1949-01-01', "Художні книги", 9789662355574, 312, "Джордж", "Орвелл", "jeremy.wikeley@orwellfoundation.com", 46, '1903-06-25', "Премія Прометей 1984 - зал слави»"),
(189.45, "Володар перснів", "Фентезі", '1951-01-01', "Художні книги", 7825447105261, 704, "Джон Роналд Руел", "Толкін", "subscribe@harpercollins.co.uk", 81,  '1892-01-03', "1957 - International Fantasy Award в категорії «Художня проза» (Fiction)"),
(107.98, "Гаррі Поттер", "Фентезі", '1997-06-26', "Художні книги", 9789667047399, 320, "Джоан", "Роулінг", "institute@bloomsbury.com", 54,  '1965-07-31', "Кавалер Ордену Британської імперії (2000)"),
(120.89, "Дев'ять принців Амбера", "Фентезі", '1970-08-16', "Художні книги", 9789661042802, 280, "Роджер", "Желязни", "RogerJosephZelazny@mail.com", 58,  '1937-05-13', "премії Небюла, премії Х'юго, премії Локус"),
(130.5005, "Керрі", "Містика", '1974-04-05', "Художні книги", 9786171251144, 224, "Стівен", "Кінг", "StephenEdwinKing@gmail.com", 72,  '1947-09-21', "Премія Едгара Алана По (2007)"),
(225.25, "Сяйво", "Жахи", '1977-01-28', "Художні книги", 9789661462792, 682, "Стівен", "Кінг", "StephenKing@gmail.com", 72,  '1947-09-21', "Премія Едгара Алана По (2007)"),
(150.79,"Відьмак", "Фентезі", '1990-01-20', "Художні книги", 9786171204980, 288, "Анджей", "Сапковський", "AndrzejSapkowski@gmail.com", 71,  '1948-06-21', "Janusz A. Zajdel Award (1990)"),
(350.97, "Пісня льоду й полум'я", "Фентезі", '1996-03-21', "Художні книги", 9786175381786, 800, "Джордж", "Мартін", "GeorgeRaymondRichardMartin@gmail.com", 71,  '1948-09-20', "премія «Локус» за найкращий фентезійний роман (2012)"),
(144.4444, "Чорний ворон", "Історичний роман", '2009-12-05', "Художні книги", 9789662151251, 352, "Василь", "Шкляр", "VasylShkliar@gmail.com", 68,  '1951-06-10', "Національна премія України імені Тараса Шевченка (2011)"),
(126.26, "Записки українського самашедшего", "Проза життя", '2010-12-15', "Художні книги", 9789667047887, 416, "Ліна", "Костенко", "LinaKostenko@gmail.com", 89,  '1930-03-19', "У 2015 році мала планета Сонячної системи № 290127 отримала назву Лінакостенко"),
(160.60, "Пригоди бравого вояка Швейка", "Cатира", '1921-12-12', "Художні книги", 9789667047719, 736 , "Ярослав", "Гашек", "JaroslavHasek@mail.com", 39,  '1883-04-30', "2734 Гашек — астероїд, названий на честь літератора (1976)"),
(132.32, "Мандрівник", "Антиутопія", '2005-06-28', "Художні книги", 9789663434155, 480 , "Джон", "Дванадцять Галок", "JXIIH@mail.com", 45,  '1974-12-25', DEFAULT),
(226.26, "Феномен Степана Бандери", "Монографія", '2006-01-01', "Монографія", 9789666653397, 736 , "Євген", "Перепічка", "perepichka@gmail.com", 88,  '1931-11-21', DEFAULT),
(150, "Борислав сміється", "Повість присвячена опису страйку", '1882-01-03', "Художні книги", 9786176735731, 232 , "Іван", "Франко", "franko@mail.com", 59,  '1856-08-27', "На честь Івана Франка 1962 року місто Станіслав було перейменовано в Івано-Франківськ"),
(315, "Аналітична економія: макроекономіка і мікроекономіка", "Економіка", '2006-03-21', "Навчальні посібники", 9786176293507, 606, "Степан",  "Панчишин", "zncnan@mail.lviv.ua",  69, '1950-08-18', DEFAULT ),
(550, "Макроекономіка", "Економіка", '1995-09-01', "Навчальні посібники", 9785845915269, 544, "Пол Ентоні",  "Самуельсон", "Samuelson@mit.edu",  94, '1915-05-15',"Лауреат Нобелівської премії з економіки 1970 року"),
(288, "Економіка : монографія", "Економіка", '1993-01-01', "Навчальні посібники", 9785845915270, 495, "Пол Ентоні",  "Самуельсон", "Samuelsonp@mit.edu",  94, '1915-05-15',"Лауреат Нобелівської премії з економіки 1970 року"),
(580, "Мікроекономіка", "Економіка", '1993-09-01', "Навчальні посібники", 9785845915275, 676, "Пол Ентоні",  "Самуельсон", "Samuelsonpol@mit.edu",  94, '1915-05-15',"Лауреат Нобелівської премії з економіки 1970 року"),
(255, "Економічна теорія. Політекономія", "Економіка", '2007-04-08', "Навчальні посібники", 9663110495269, 719, "Віктор", "Базилевич", "office.chief@univ.net.ua", 70, '1949-05-28', "Заслужений діяч науки і техніки України (2005)" ),
(400, "Вивчаємо Java", "Програмування", '2012-01-01', "Навчальні посібники", 9785699545742, 720,  "Кэті", "С'єрра", "KathySierra@mit.edu", 62, '1957-07-31', DEFAULT),
(949, "Філософія Java", "Програмування", '1998-01-01', "Навчальні посібники", 9785459008593, 1168, "Брюс", "Еккель", "BruceEckel@mail.com", 62, '1957-07-08', DEFAULT);

SELECT * FROM books3;
set sql_safe_updates = 0;
update books3 set authors_last_name = "Азімов" WHERE id = 2;
update books3 set authors_last_name = "Твелф Гоукс" WHERE id = 16;
SELECT * FROM books3;
SELECT count(*) FROM books3 WHERE author_awards IS NOT NULL;
SELECT * FROM books3 WHERE number_of_pages =(SELECT min(number_of_pages) FROM books3);
SELECT max(number_of_pages) FROM books3;
SELECT sum(price) FROM books3 WHERE category = "Художні книги";
SELECT MIN(price) FROM books3;
SELECT * FROM books3 WHERE price =(SELECT MIN(price) FROM books3);
SELECT * FROM books3 WHERE price like '%.____' ORDER BY book_title ASC;
SELECT * FROM books3 ORDER BY date_of_publication ASC LIMIT 5, 5;
SELECT * FROM books3 ORDER BY date_of_publication ASC LIMIT 10, 6;
SELECT * FROM books3 WHERE authors_name LIKE "Пол%";
SELECT * FROM books3 WHERE authors_last_name LIKE "%інг%";
SELECT * FROM books3 WHERE number_of_pages LIKE "28%";
SELECT * FROM books3 WHERE price BETWEEN 50 AND 120 ORDER BY price;
SELECT * FROM books3 WHERE price NOT BETWEEN 200 AND 600;
DELETE FROM books3 WHERE id = 19;
DELETE FROM books3 WHERE authors_name = "Віктор";
DELETE FROM books3 WHERE isbn = 9785845915270;
