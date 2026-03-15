use clase1;
DROP TABLE IF EXISTS definicion;
create table definicion(
id int primary key,
concepto_BD varchar(50),
descripcion text
);
go
insert into definicion (id, concepto_BD, descripcion)
values (1, 'base de datos', 'Conjunto estructurado y centralizado de datos almacenados en un sistema de computadoras que permite recuperar, agregar, modificar y eliminar información.');
go


use clase1;
DROP TABLE IF EXISTS piramide_conocimiento;
create table piramide_conocimiento(
id int primary key,
nivel_piramide_conocimiento varchar (50),
descripcion text
);
go
insert into piramide_conocimiento(id, nivel_piramide_conocimiento, descripcion)
values
(1,'Datos','Valores simples sin contexto'),
(2,'Informacion','Datos organizados que tienen significado'),
(3,'Conocimiento','Interpretacion de la informacion'),
(4,'Toma de decisiones','Uso del conocimiento para decidir');
go

use clase1;
DROP TABLE IF EXISTS conjuntos_elementos_atributos;
create table conjuntos_elementos_atributos(
id int primary key,
concepto_ varchar (100),
descripcion text
);
go
insert into conjuntos_elementos_atributos
values
(1,'Conjunto',
'Grupo de elementos que comparten atributos en comun dentro de una base de datos'),
(2,'Elemento',
'Cada registro individual que pertenece a un conjunto'),
(3,'Atributo',
'Caracteristica o propiedad que describe a los elementos del conjunto');
GO

use clase1;
DROP TABLE IF EXISTS ejemplo_conjuntoalumno;
create table ejemplo_conjuntoalumno(
id int primary key,
dni varchar(50),
nombre varchar(50),
apellido varchar(50),
curso varchar(50),
division varchar(50)
);
GO
insert into ejemplo_conjuntoalumno
values 
(1,'40123456','Juan','Perez','3','A'),
(2,'39876543','Ana','Gomez','3','A'),
(3,'40222333','Luis','Martinez','3','B');
GO

use clase1;
DROP TABLE IF EXISTS tipos_datos;
create table tipos_datos(
id int primary key,
nombre varchar(50),
edad int,
precio decimal (10,2),
fecha_nac date,
activo bit
);
go
insert into tipos_datos
values
(1,'Juan',20,1500.50,'2004-03-15',1),
(2,'Ana',22,2000.75,'2002-07-10',1),
(3,'Luis',19,1800.00,'2005-01-25',0);
GO

use clase1;
drop table if exists CRUD;
create table CRUD(
id int primary key,
siglas varchar(50),
descripcion text,
ejemplo text
);
go
insert into CRUD
values
(1,'Create/crear/insert','insertar un elemento','insert into'),
(2,'Read/leer/select','mostrar datos','SELECT * FROM'),
(3,'Update/actualizar/update','modificar un elemento','Update... set... where id...'),
(4,'Delete/borrar/delete','eliminar un elemento','delete from... where id');
go

use clase1;
drop table if exists lenguaje_SQL;
create table lenguaje_SQL(
id int primary key,
siglas varchar(50),
significado varchar(50),
descripcion text,
comando text
);
go
insert into lenguaje_SQL
values
(1,'DDL','Data Definition Language','crear estructura','CREATE, DROP, ALTER'),
(2,'DML','Data Manipulation Language','manipular datos','INSERT, SELECT, UPDATE, DELETE'),
(3,'DCL','Data Control Language','permisoso','GRANT, REVOKE'),
(4,'TCL','Transaction Control Language','control de cambios','COMMIT, ROLLBACK');
go

use clase1;
drop table if exists comandos;
create table comandos( 
id int primary key,
siglas varchar(50),
tipo varchar(50),
descripcion text
);
go
insert into comandos
values
(1,'CREATE','DDL','Crear objetos de la base de datos tablas, bases, índices'),
(2,'DROP','DDL','Eliminar objetos de la base de datos'),
(3,'ALTER','DDL','Modificar la estructura de una tabla'),
(4,'TRUNCATE','DDL','Vaciar una tabla completamente sin borrar la estructura'),
(5,'INSERT','DML','Insertar datos en una tabla'),
(6,'SELECT','DML','Leer o consultar datos'),
(7,'UPDATE','DML','Modificar datos existentes'),
(8,'DELETE','DML','Eliminar registros de una tabla'),
(9,'GRANT','DCL','Dar permisos a usuarios'),
(10,'REVOKE','DCL','Quitar permisos a usuarios'),
(11,'COMMIT','TCL','Confirmar cambios en la base de datos'),
(12,'ROLLBACK','TCL','Deshacer cambios no confirmados'),
(13,'SAVEPOINT','TCL','Crear un punto de guardado dentro de una transacción');
go


USE clase1;
SELECT * FROM definicion;
SELECT * FROM piramide_conocimiento;
SELECT * FROM conjuntos_elementos_atributos;
SELECT * FROM tipos_datos;
SELECT * FROM CRUD;
SELECT * FROM lenguaje_SQL;
SELECT * FROM comandos;