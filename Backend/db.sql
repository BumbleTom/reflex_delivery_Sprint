CREATE TABLE retailers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  contact VARCHAR(100)
);

CREATE TABLE riders (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  phone VARCHAR(20)
);

CREATE TABLE requests (
  id SERIAL PRIMARY KEY,
  retailer_id INT REFERENCES retailers(id),
  rider_id INT REFERENCES riders(id),
  customer_name VARCHAR(100),
  item VARCHAR(100),
  status VARCHAR(20)
);

CREATE TABLE statusupdates (
  id SERIAL PRIMARY KEY,
  request_id INT REFERENCES requests(id),
  status VARCHAR(20),
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
