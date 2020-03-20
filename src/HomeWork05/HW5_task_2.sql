DROP DATABASE IF EXISTS toy_shop;
create database toy_shop;
use toy_shop;

create table category_toys(
id_category_toys int primary key auto_increment,
name_category_toys varchar(20) not null
);
insert into category_toys(name_category_toys)
values
("Машинки"),
("Конструктори"),
("Ляльки"),
("Настільні ігри");

create table country_of_productions(
id_country_of_productions int primary key auto_increment,
name_country_of_productions varchar(30)
);
insert into country_of_productions(name_country_of_productions)
values
("Україна"),
("Данія"),
("Малайзія"),
("Китай");

create table toys(
id_toys int primary key auto_increment,
name_toys varchar(50) not null,
category_toy_id INT NOT NULL,
country_of_production_id INT NOT NULL,
CONSTRAINT category_toys_id_FC FOREIGN KEY (category_toy_id) REFERENCES category_toys(id_category_toys),
CONSTRAINT country_of_productions_id_FC FOREIGN KEY (country_of_production_id) REFERENCES country_of_productions(id_country_of_productions)
);
insert into toys(name_toys, category_toy_id, country_of_production_id)
values
("Радіокерована машина", 1, 4),
("Hot Wheels", 1, 3),
("Lego", 2, 2),
("Електороконструктор", 2, 1),
("Barbie", 3, 4),
("Подорож Україною", 4, 1),
("Манчкін", 4, 1);


create table towns(
id_towns int primary key auto_increment,
name_towns varchar(30) not null
);
insert into towns(name_towns)
values
("Львів"),
("Дніпро");

create table addresses(
id_addresses int primary key auto_increment,
name varchar(100) not null,
town_id int not null,
CONSTRAINT town_id_FC FOREIGN KEY (town_id) REFERENCES towns(id_towns)
);
insert into addresses(name, town_id)
values
("Вул. Наукова, 35А, ТЦ «ВАМ»", 1),
("вул. Гетьмана Мазепи, 1Б, СТРЦ «Спартак»", 1),
("Вул. Князя Володимира Великого, 1А", 2);

create table customers(
id_customers int primary key auto_increment,
customer_name varchar(30) not null,
customer_surname varchar(30)
);
insert into customers(customer_name,customer_surname)
values
("Андрій","Коваль"),
("Тарас","Лісоруб"),
("Петро","Гора");

create table orders(
id_orders int primary key auto_increment,
customer_id int not null,
toy_id int not null,
address_id int not null,
CONSTRAINT customer_id_FC FOREIGN KEY (customer_id) REFERENCES customers(id_customers),
CONSTRAINT toy_id_FC FOREIGN KEY (toy_id) REFERENCES toys(id_toys),
CONSTRAINT address_id_FC FOREIGN KEY (address_id) REFERENCES addresses(id_addresses)
);
insert into orders(customer_id, toy_id, address_id)
values
(1, 1, 3),
(2, 6, 2),
(3, 5, 1);
 
 select * from country_of_productions;
 select * from toys;
 select * from orders;
 
 select id_toys, name_toys, name_category_toys, name_country_of_productions from toy_shop.toys AS t
 JOIN toy_shop.category_toys AS c
 ON t.category_toy_id = c.id_category_toys
 JOIN toy_shop.country_of_productions AS cp
 ON t.country_of_production_id = cp.id_country_of_productions
 WHERE id_toys = 1 or id_toys = 2 or id_toys = 7;
 
 select id_toys, name_toys, name_category_toys, name_country_of_productions from toy_shop.toys AS t
 JOIN toy_shop.category_toys AS c
 ON t.category_toy_id = c.id_category_toys
 JOIN toy_shop.country_of_productions AS cp
 ON t.country_of_production_id = cp.id_country_of_productions
 WHERE name_category_toys = "Настільні ігри"
 ORDER BY name_toys;
 
 
 select id_toys, name_toys, name_category_toys, name_country_of_productions from toy_shop.toys AS t
 JOIN toy_shop.category_toys AS c
 ON t.category_toy_id = c.id_category_toys
 JOIN toy_shop.country_of_productions AS cp
 ON t.country_of_production_id = cp.id_country_of_productions
 ORDER BY name_toys DESC;
 