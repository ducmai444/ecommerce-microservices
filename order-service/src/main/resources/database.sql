
CREATE TABLE carts (
	cart_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	user_id INT(11),
	created_at TIMESTAMP DEFAULT LOCALTIMESTAMP NOT NULL NULL_TO_DEFAULT,
	updated_at TIMESTAMP
);

-- Chèn dữ liệu vào bảng carts
INSERT INTO carts (user_id, created_at, updated_at)
VALUES
    (1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


CREATE TABLE orders (
	order_id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
	cart_id INT(11),
	order_date TIMESTAMP DEFAULT LOCALTIMESTAMP NOT NULL NULL_TO_DEFAULT,
	order_desc VARCHAR(255),
	order_fee DECIMAL(7, 2),
	created_at TIMESTAMP DEFAULT LOCALTIMESTAMP NOT NULL NULL_TO_DEFAULT,
	updated_at TIMESTAMP
);

-- Chèn dữ liệu vào bảng orders
INSERT INTO orders (cart_id, order_date, order_desc, order_fee, created_at, updated_at)
VALUES
    (1, CURRENT_TIMESTAMP, 'Đơn hàng 1', 50.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (2, CURRENT_TIMESTAMP, 'Đơn hàng 2', 75.50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
    (3, CURRENT_TIMESTAMP, 'Đơn hàng 3', 120.25, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


ALTER TABLE orders
ADD CONSTRAINT fk5_assign FOREIGN KEY (cart_id) REFERENCES carts (cart_id);

