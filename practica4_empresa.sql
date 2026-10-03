DROP TABLE IF EXISTS empleado CASCADE;
DROP TABLE IF EXISTS departamento CASCADE;
DROP TABLE IF EXISTS prueba_tipos CASCADE;
CREATE TABLE empleado (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    puesto VARCHAR(50),
    salario NUMERIC(10,2)
);

CREATE TABLE departamento (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE prueba_tipos (
    id SERIAL PRIMARY KEY,
    cantidad INT,
    precio NUMERIC(10,2),
    fecha_registro DATE,
    descripcion VARCHAR(100),
    activo BOOLEAN
);

INSERT INTO prueba_tipos (cantidad, precio, fecha_registro, descripcion, activo)
VALUES
(10, 99.99, '2026-10-02', 'Producto de prueba A', TRUE),
(5, 49.50, '2026-09-30', 'Producto de prueba B', FALSE),
(20, 150.00, '2026-10-01', 'Producto de prueba C', TRUE);

SELECT * FROM prueba_tipos;

ALTER TABLE empleado
ADD COLUMN fecha_contratacion DATE;

DROP TABLE prueba_tipos;

INSERT INTO empleado (nombre, puesto, salario, fecha_contratacion)
VALUES ('Ana Torres', 'Analista', 15000, '2026-10-02');

SELECT * FROM empleado;