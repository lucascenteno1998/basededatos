use clase2;
DROP TABLE IF EXISTS descripcion_entidad_instancia;
create table descripcion_entidad_instancia(
id int primary key,
concepto_entidad_instancia  varchar(50),
descripcion text
);
go

insert into descripcion_entidad_instancia(id,concepto_entidad_instancia,descripcion)
values
(1,'entidad','Algo importante del negocio sobre lo que se necesita guardar información, normalmente son sustantivos ejemplo alumno cliente producto vehiculo'),
(2,'instancia','Una instancia es un elemento específico de la entidad, ejemplo en la entidad alumno serian juan martines o lucas centeno o pedro corty');
go

use clase2;
DROP TABLE IF EXISTS tipos_atributos;
create table tipos_atributos(
id int primary key,
concepto_tipos_atributos  varchar(50),
descripcion text
);
go

insert into tipos_atributos (id,concepto_tipos_atributos,descripcion)
values
(1,'volatil','Son los que cambian con el tiempo,EJEMPLO:EDAD'),
(2,'no volatil','Son los que no cambian casi nunca.EJEMPLO:FECHA_NACIEMIETO'),
(3,'obligatorios','Son los que deben tener valor.EJEMPLO:NOMBRE'),
(4,'opcionales','Son los que pueden ser NULL.EJEMPLO:TELEFONO_SECUNDARIO');
go

USE clase2;
DROP TABLE IF EXISTS modelo_entidad_relacion;
CREATE TABLE modelo_entidad_relacion(
id INT PRIMARY KEY,
concepto VARCHAR(50),
descripcion TEXT
);
GO

INSERT INTO modelo_entidad_relacion
VALUES
(1,'Modelo Entidad-Relacion','sirve para diseñar la base de datos antes de programarla, se identifica clave primaria y clave foranea, frace clave...alumno pertenece a...');
GO

Use clase2;
DROP TABLE IF EXISTS tipos_keys;
Create table tipos_keys(
id int primary key,
concepto varchar(50),
descripcion TEXT
);
go
INSERT INTO tipos_keys
VALUES
(1,'PRIMARY KEY','Clave primaria que identifica de forma unica cada registro de una tabla'),
(2,'FOREIGN KEY','Clave foranea que conecta una tabla con otra mediante la clave primaria');
go


USE clase2;
GO
DROP TABLE IF EXISTS alumnosejemplo;
DROP TABLE IF EXISTS cursosejemplo;
GO
CREATE TABLE cursosejemplo(
id_curso INT PRIMARY KEY,
nombre VARCHAR(50)
);
GO
CREATE TABLE alumnosejemplo(
id_alumno INT PRIMARY KEY,
nombre VARCHAR(50),
id_curso INT,
FOREIGN KEY (id_curso) REFERENCES cursosejemplo(id_curso)
);
GO


USE clase2;
DROP TABLE IF EXISTS relaciones_tablas;
CREATE TABLE relaciones_tablas(
id INT PRIMARY KEY,
concepto VARCHAR(50),
descripcion TEXT
);
GO
INSERT INTO relaciones_tablas
VALUES
(1,'Relacion 1:1','Un registro de una tabla se relaciona con un solo registro de otra tabla'),
(2,'Relacion 1:N','Un registro de una tabla se relaciona con muchos registros de otra tabla'),
(3,'Relacion N:N','Muchos registros de una tabla se relacionan con muchos registros de otra tabla mediante una tabla intermedia');
GO

SELECT * FROM descripcion_entidad_instancia;
SELECT * FROM tipos_atributos;
SELECT * FROM tipos_keys
SELECT * FROM alumnosejemplo
SELECT * FROM relaciones_tablas;
