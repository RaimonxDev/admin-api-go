INSERT INTO companies (name, rut, email, phone, address) VALUES
    ( 'Comercial el alba', '12345678-9', 'email@alba.com', '124576877', 'Calle falsa 98'),
    ( 'Comecan', '56565788-9', 'email@comecan.com', '1234546789', 'Calle comecan 13'),
    ( 'milka', '12565678-9', 'email@milka.com', '123465489', 'Calle milka 88'),
    ( 'bravery', '56125678-9', 'email@bravery.com', '1234556789', 'Calle bravery 223'),
    ( 'vya', '52345678-9', 'email@vya', '123456659', 'Calle vya 45'),
    ( 'proplan', '73456678-9', 'email@proplan', '67456789', 'Calle proplan 3'),
    ( 'eukanuba', '82345378-9', 'email@euka', '273456789', 'Calle eukanuba 234')
;

INSERT INTO roles (name) VALUES
    ( 'Admin'),
    ( 'Seller'),
    ( 'Customer');

INSERT INTO users (name, email, password, company_id, roles_id) VALUES
    ( 'Ramon','ramon-alba@admin.cl', '1234', 1, 1),
    ( 'Jesus', 'jesus-alba@seller.cl', '4567', 1, 2),
    ( 'Miguel', 'miguel-alba@seller.cl', '123456', 1, 3),
    ( 'Meilyn','meilyn-comencan@admin.cl', '1234', 2, 1),
    ( 'Andreina', 'andreina-comencan@seller.cl', '4567', 2,2);