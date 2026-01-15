START TRANSACTION;

CREATE TABLE customers (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE restaurants (
    id INT PRIMARY KEY,
    restaurantName VARCHAR(50),
    address VARCHAR(100),
    phoneNumber INT
);

CREATE TABLE menu (
    id INT PRIMARY KEY,
    menu_item VARCHAR(25),
    price INT,
    restaurant_id INT NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id)
);

CREATE TABLE location1 (
    id INT PRIMARY KEY,
    menu_item VARCHAR(25) UNIQUE,
    location_id INT,
    item_name VARCHAR(25),
    item_price INT,
    orders VARCHAR(50),
    order_id INT,
    restaurant_id INT NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id)
);

CREATE TABLE location2 (
    id INT PRIMARY KEY,
    menu_item VARCHAR(25) UNIQUE,
    location_id INT,
    item_name VARCHAR(25),
    item_price INT,
    orders VARCHAR(50),
    order_id INT,
    restaurant_id INT NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id)
);
Commit;