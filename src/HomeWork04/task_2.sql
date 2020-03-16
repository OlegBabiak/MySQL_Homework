DROP DATABASE IF EXISTS toy_shop;
create database toy_shop;
use toy_shop;

create table category_toys(
id int primary key auto_increment,
name varchar(20) not null
);
insert into category_toys(name)
values
("Машинки"),
("Конструктори"),
("Ляльки"),
("Настільні ігри");

create table country_of_productions(
id int primary key auto_increment,
name varchar(30)
);
insert into country_of_productions(name)
values
("Україна"),
("Данія"),
("Малайзія"),
("Китай");

create table toys(
id int primary key auto_increment,
name varchar(50) not null,
category_toy_id INT NOT NULL,
country_of_production_id INT NOT NULL,
CONSTRAINT category_toys_id_FC FOREIGN KEY (category_toy_id) REFERENCES category_toys(id),
CONSTRAINT country_of_productions_id_FC FOREIGN KEY (country_of_production_id) REFERENCES country_of_productions(id)
);
insert into toys(name, category_toy_id, country_of_production_id)
values
("Радіокерована машина", 1, 4),
("Hot Wheels", 1, 3),
("Lego", 2, 2),
("Електороконструктор", 2, 1),
("Barbie", 3, 4),
("Подорож Україною", 4, 1),
("Манчкін", 4, 1);


create table towns(
id int primary key auto_increment,
name varchar(30) not null
);
insert into towns(name)
values
("Львів"),
("Дніпро");

create table addresses(
id int primary key auto_increment,
name varchar(100) not null,
town_id int not null,
CONSTRAINT town_id_FC FOREIGN KEY (town_id) REFERENCES towns(id)
);
insert into addresses(name, town_id)
values
("Вул. Наукова, 35А, ТЦ «ВАМ»", 1),
("вул. Гетьмана Мазепи, 1Б, СТРЦ «Спартак»", 1),
("Вул. Князя Володимира Великого, 1А", 2);

create table customers(
id int primary key auto_increment,
customer_name varchar(30) not null,
customer_surname varchar(30)
);
insert into customers(customer_name,customer_surname)
values
("Андрій","Коваль"),
("Тарас","Лісоруб"),
("Петро","Гора");

create table orders(
id int primary key auto_increment,
customer_id int not null,
toy_id int not null,
address_id int not null,
CONSTRAINT customer_id_FC FOREIGN KEY (customer_id) REFERENCES customers(id),
CONSTRAINT toy_id_FC FOREIGN KEY (toy_id) REFERENCES toys(id),
CONSTRAINT address_id_FC FOREIGN KEY (address_id) REFERENCES addresses(id)
);
insert into orders(customer_id, toy_id, address_id)
values
(1, 1, 3),
(2, 6, 2),
(3, 5, 1);
 
 select * from country_of_productions;
 select * from toys;
 select * from orders;
 