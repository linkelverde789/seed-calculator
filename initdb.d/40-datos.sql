\connect stardew;

INSERT INTO semillas (nombre, precio_base, numero_de_cosechas, multiple, estacion, valor_por_dia, precio_cosecha_individual)
VALUES
-- Primavera
('Coliflor', 80, 2, FALSE, 'Primavera', 7.92, 175),
('Patata', 50, 4, FALSE, 'Primavera', 5.00, 80),
('Allium azul', 30, 3, FALSE, 'Primavera', 2.86, 50),
('Ajo', 40, 6, FALSE, 'Primavera', 5.00, 60),
('Col rizada', 70, 4, FALSE, 'Primavera', 6.67, 110),
('Chirivía', 20, 6, FALSE, 'Primavera', 3.75, 35),
('Ruibarbo', 100, 2, FALSE, 'Primavera', 9.23, 220),
('Tulipán', 20, 4, FALSE, 'Primavera', 1.67, 30),
('Arroz sin moler', 40, 4, TRUE, 'Primavera', -1.67, 30),
('Zanahoria', 0, 9, FALSE, 'Primavera', 11.67, 35),
('Grano de café', 2500, 9, TRUE, 'Primavera', 20.77, 15),
('Judía verde', 60, 6, TRUE, 'Primavera', 7.20, 40),
('Fresa', 100, 5, TRUE, 'Primavera', 20.83, 120),

-- Verano
('Melón', 80, 2, FALSE, 'Verano', 14.17, 250),
('Amapola', 100, 3, FALSE, 'Verano', 5.71, 140),
('Rábano', 40, 4, FALSE, 'Verano', 8.33, 90),
('Lombarda', 100, 3, FALSE, 'Verano', 17.78, 260),
('Carambola', 400, 2, FALSE, 'Verano', 26.92, 750),
('Lentejuela de verano', 50, 3, FALSE, 'Verano', 5.00, 90),
('Girasol', 200, 3, FALSE, 'Verano', 3.33, 80),
('Trigo', 10, 6, FALSE, 'Verano', 3.75, 25),
('Arándano', 80, 4, TRUE, 'Verano', 20.80, 50),
('Grano de café', 2500, 9, TRUE, 'Verano', 20.77, 15),
('Maíz', 150, 4, TRUE, 'Verano', 1.92, 50),
('Lúpulo', 60, 17, TRUE, 'Verano', 13.52, 25),
('Chile', 40, 8, TRUE, 'Verano', 10.77, 40),
('Tomate', 50, 5, TRUE, 'Verano', 9.26, 60),

-- Otoño
('Amaranto', 70, 3, FALSE, 'Otoño', 11.43, 150),
('Alcachofa', 30, 3, FALSE, 'Otoño', 16.25, 160),
('Remolacha', 20, 4, FALSE, 'Otoño', 13.33, 100),
('Col china', 50, 6, FALSE, 'Otoño', 7.50, 80),
('Rosa hada', 200, 2, FALSE, 'Otoño', 7.50, 290),
('Calabaza', 100, 2, FALSE, 'Otoño', 16.92, 320),
('Girasol', 200, 3, FALSE, 'Otoño', 3.33, 80),
('Baya de gema dulce', 1000, 1, FALSE, 'Otoño', 83.33, 3000),
('Trigo', 10, 6, FALSE, 'Otoño', 3.75, 25),
('Ñame', 60, 2, FALSE, 'Otoño', 10.00, 160),
('Grosella', 240, 5, TRUE, 'Otoño', 18.89, 75),
('Berenjena', 20, 5, TRUE, 'Otoño', 11.20, 60),
('Uva', 60, 6, TRUE, 'Otoño', 16.80, 80);