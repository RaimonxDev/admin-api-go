CREATE TABLE IF NOT EXISTS Companies (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    rut VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(100) NOT NULL,
    address VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    company_id INT NOT NULL,
    FOREIGN KEY (company_id) REFERENCES Companies(id)
);

CREATE TABLE IF NOT EXISTS Roles(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Customers (
    seller_id INT NOT NULL REFERENCES Users(id),
    company_id INT NOT NULL REFERENCES Companies(id)
);

CREATE TABLE IF NOT EXISTS Products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    net_price FLOAT NOT NULL,
    suggested_price FLOAT NOT NULL,
    brand VARCHAR(100) NOT NULL,
    company_id INT NOT NULL,
    FOREIGN KEY (company_id) REFERENCES Companies(id)
);

CREATE TABLE IF NOT EXISTS ProductCategories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    company_id INT NOT NULL,
    FOREIGN KEY (company_id) REFERENCES Companies(id)
                                             );
