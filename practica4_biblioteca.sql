CREATE TABLE Autor (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100)
);

CREATE TABLE Libro (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    anio_publicacion INT
);

CREATE TABLE Libro_Autor (
    id_libro INT REFERENCES Libro(id),
    id_autor INT REFERENCES Autor(id),
    PRIMARY KEY (id_libro, id_autor)
);

CREATE TABLE Usuario (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100)
);

CREATE TABLE Prestamo (
    id SERIAL PRIMARY KEY,
    id_libro INT REFERENCES Libro(id),
    id_usuario INT REFERENCES Usuario(id),
    fecha_prestamo DATE,
    fecha_devolucion DATE
);

