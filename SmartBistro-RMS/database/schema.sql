CREATE TABLE users (
  user_id INT PRIMARY KEY,
  full_name VARCHAR(100),
  role VARCHAR(50),
  email VARCHAR(100)
);

CREATE TABLE menu_items (
  item_id INT PRIMARY KEY,
  item_name VARCHAR(100),
  price DECIMAL(10,2),
  category VARCHAR(50)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  table_number INT,
  order_status VARCHAR(50),
  created_at TIMESTAMP
);

CREATE TABLE order_items (
  order_item_id INT PRIMARY KEY,
  order_id INT,
  item_id INT,
  quantity INT,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (item_id) REFERENCES menu_items(item_id)
);

CREATE TABLE inventory_items (
  inventory_id INT PRIMARY KEY,
  item_name VARCHAR(100),
  quantity_available INT,
  reorder_level INT
);
