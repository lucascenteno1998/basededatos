USE clase4;
DROP TABLE IF EXISTS restricciones_clase4;
CREATE TABLE restricciones_clase4(
id INT PRIMARY KEY,
concepto VARCHAR(50),
descripcion TEXT
);
GO
INSERT INTO restricciones_clase4
VALUES
(1,'CREATE TABLE','Sentencia SQL usada para crear tablas indicando nombre, columnas, tipos de datos, restricciones y valores por defecto'),
(2,'DEFAULT','Define un valor por defecto para una columna cuando no se inserta un valor'),
(3,'NOT NULL','Restriccion que impide que una columna tenga valores nulos'),
(4,'UNIQUE','Restriccion que obliga a que los valores de una columna o combinacion de columnas no se repitan'),
(5,'PRIMARY KEY','Restriccion que identifica de forma unica cada fila de una tabla y no permite valores nulos'),
(6,'FOREIGN KEY','Restriccion que relaciona una columna con la clave primaria de otra tabla o de la misma tabla'),
(7,'CHECK','Restriccion que obliga a que una condicion sea verdadera para aceptar el dato'),
(8,'REFERENCES','Palabra clave que indica la tabla y columna principal a la que apunta una clave foranea'),
(9,'ON DELETE CASCADE','Al borrar un registro de la tabla principal tambien borra los registros relacionados en la tabla secundaria'),
(10,'ON DELETE SET NULL','Al borrar un registro de la tabla principal coloca en NULL la clave foranea relacionada en la tabla secundaria');
GO

SELECT * FROM restricciones_clase4;


USE clase4;
DROP TABLE IF EXISTS ejemplos_restricciones_clase4;
CREATE TABLE ejemplos_restricciones_clase4(
id INT PRIMARY KEY,
concepto VARCHAR(50),
ejemplo TEXT
);
GO
INSERT INTO ejemplos_restricciones_clase4
VALUES
(1,'CREATE TABLE','CREATE TABLE alumnos (id INT PRIMARY KEY, nombre VARCHAR(50));'),
(2,'DEFAULT','fecha_alta DATE DEFAULT GETDATE()'),
(3,'NOT NULL','nombre VARCHAR(50) NOT NULL'),
(4,'UNIQUE','email VARCHAR(100) UNIQUE'),
(5,'PRIMARY KEY','id INT PRIMARY KEY'),
(6,'FOREIGN KEY','FOREIGN KEY (id_curso) REFERENCES cursos(id_curso)'),
(7,'CHECK','edad INT CHECK (edad >= 18)'),
(8,'REFERENCES','REFERENCES cursos(id_curso)'),
(9,'ON DELETE CASCADE','FOREIGN KEY (id_curso) REFERENCES cursos(id_curso) ON DELETE CASCADE'),
(10,'ON DELETE SET NULL','FOREIGN KEY (id_curso) REFERENCES cursos(id_curso) ON DELETE SET NULL');
GO

SELECT * FROM ejemplos_restricciones_clase4;
