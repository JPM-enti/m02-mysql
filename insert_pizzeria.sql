INSERT INTO PIZZES (nom, preu_base) VALUES
('Pizza Margarita', 7.50),
('Pizza BBQ Pollo', 10.50),
('Pizza Vegetal', 8.00),
('Pizza Carbonara', 9.75),
('Pizza Mediterránea', 9.00);

INSERT INTO MASSES (nom, preu) VALUES
('Masa Fina', 2.00),
('Masa Rellena de Queso', 3.50),
('Masa Sin Gluten', 2.00),
('Masa Integral', 2.80),
('Masa de Ajo y Romero', 2.50);

INSERT INTO AL·LERGÒGENS (nom, descripció) VALUES
('Gluten', 'No apto para celiacos.'),
('Lactosa', 'No apto para intolerantes a la lactosa'),
('Frutos secos', 'Alergia común.'),
('Huevo', 'Alergia común.'),
('Pescado', 'Alergia común.');


INSERT INTO TIPUS_INGREDIENTS (nom, descripció) VALUES
('Verdura', 'Origen vegetal.'),
('Quesos', 'Lácteos.'),
('Carne', 'Origen animal.'),
('Aceites y Salsas', 'Ingredientes líquidos.'),
('Especias', 'Condimentos.');


INSERT INTO INGREDIENTS (nom, preu, descripció, id_tipus) VALUES
('Tomate', 0.80, 'Salsa', 1),
('Jamon Serrano', 1.60, 'Ingrediente basico.', 3),
('Champiñones', 1.00, 'Ingrediente exotico.', 1),
('Bacon', 1.50, 'Ingrediente basico', 3),
('Aceite de oliva', 0.50, 'Aceite Extra.', 4);


