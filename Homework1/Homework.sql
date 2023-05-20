/*
1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. 
Необходимые поля таблицы: product_name (название товара), manufacturer (производитель), product_count (количество), 
price (цена). Заполните БД произвольными данными. 
*/

create database homework1;
use homework1;
create table mobile_phones (
id  int primary key auto_increment,
product_name varchar(30) not NULL,
manufacturer varchar(30) not NULL,
product_count DOUBLE NULL,
price DOUBLE NULL 
);

INSERT mobile_phones(product_name, manufacturer, product_count, price) 
VALUES 
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000);

/* 
2. Напишите SELECT-запрос, который выводит название товара, производителя и цену для товаров, количество которых превышает 2
*/

SELECT product_name, manufacturer, price
FROM mobile_phones
WHERE product_count > 2; 

/*
Выведите SELECT-запросом весь ассортимент товаров марки “Samsung”
*/

SELECT *
FROM mobile_phones
WHERE manufacturer = 'Samsung';

-- 4.* С помощью SELECT-запроса с оператором LIKE / REGEXP найти:
-- 4.1.* Товары, в которых есть упоминание "Iphone"
SELECT *
FROM mobile_phones
WHERE product_name LIKE '%Iphone%';

-- 4.2.* Товары, в которых есть упоминание "Samsung"
SELECT *
FROM mobile_phones
WHERE manufacturer LIKE '%Samsung%';
-- 4.3.* Товары, в названии которых есть ЦИФРЫ
SELECT *
FROM mobile_phones
WHERE product_name RLIKE '[:digit:]';
-- 4.4.* Товары, в названии которых есть ЦИФРА "8"
SELECT *
FROM mobile_phones
WHERE product_name LIKE '%8%';