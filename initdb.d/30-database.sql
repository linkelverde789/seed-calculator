\connect stardew;
CREATE TYPE estacion AS ENUM ('Primavera', 'Verano', 'Otoño', 'Invierno');

-- Crear la tabla semillas
CREATE TABLE semillas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio_base NUMERIC(10, 2) NOT NULL,
    numero_de_cosechas INT NOT NULL,
    multiple BOOLEAN NOT NULL,
    estacion estacion NOT NULL,
    valor_por_dia NUMERIC(10, 2) NOT NULL,
    precio_cosecha_individual NUMERIC(10, 2) NOT NULL
);

