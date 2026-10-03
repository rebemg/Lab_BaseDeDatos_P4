# Practica 4
Rebeca Moreno González

## Objetivo

Conocer la sintaxis básica de SQL y sus sublenguajes, aprender a crear y modificar estructuras mediante el DDL y apreciar la estandarización de SQL.

## Decisiones

Para la actividad guiada, primero se creó la tabla `empleado` con columnas básicas (`id`, `nombre`, `puesto`, `salario`). Después, mediante `ALTER TABLE`, se añadió la columna `fecha_contratacion` para registrar cuándo fue contratado cada empleado.

También se creó la tabla `prueba_tipos` con diferentes tipos de datos (`INT`, `NUMERIC`, `DATE`, `VARCHAR`, `BOOLEAN`) para comprobar cómo PostgreSQL maneja valores enteros, decimales, fechas, cadenas y valores lógicos.

Para el reto, se creó la tabla `Autor` para almacenar los datos de cada autor. La tabla `Libro` guarda la información de cada libro, como el título y el año de publicación. Para representar la relación N:M entre libros y autores, se diseñó la tabla intermedia `Libro_Autor`.

La tabla `Usuario` almacena los datos de los usuarios de la biblioteca, mientras que la tabla `Prestamo` registra los préstamos realizados, relacionando cada libro con el usuario que lo solicitó, junto con las fechas de préstamo y devolución.

Estas decisiones permitieron que la base de datos quedara normalizada: cada tabla contiene únicamente la información que le corresponde y las relaciones se establecen mediante claves foráneas. Con ello se evita la duplicación de datos y se asegura la integridad referencial.

## Pruebas realizadas

- En ambas actividades utilicé el comando `\dt` para mostrar las tablas.
- También inserté datos como prueba.
- Eliminé una tabla para comprobar el funcionamiento de `DROP`.
- Verifiqué con `\d` que se agregara correctamente la columna `fecha_contratacion`.

## Errores

El error con el que me encontré realizando esta práctica fue el **SQL state: 42P07**, ya que como las tablas ya existían, al volver a ejecutar el script era como si se intentaran crear nuevamente.

Lo resolví haciendo que cada vez que se ejecute el script se "reinicien" las tablas, eliminándolas antes de volver a crearlas. De esta manera se puede ejecutar nuevamente el script sin que aparezca el error de que las tablas ya existen.

## Conclusión

En conclusión, con esta práctica aprendí un poco más sobre SQL y sobre las diferentes formas en las que se puede trabajar con una base de datos. También entendí mejor la diferencia entre DDL, DML, DCL y TCL, y para qué sirve cada uno al momento de crear, modificar, consultar o administrar los datos. Al realizar los ejercicios pude practicar la creación de bases de datos y tablas, el uso de diferentes tipos de datos y comandos como `ALTER TABLE` y `DROP`. Con esto pude entender mejor cómo se pueden organizar y modificar las estructuras de una base de datos y la importancia de utilizar SQL para trabajar de una forma más ordenada con la información.
