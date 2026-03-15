USE clase3;
DROP TABLE IF EXISTS motores_bd;
CREATE TABLE motores_bd(
id INT PRIMARY KEY,
motor VARCHAR(50),
tipo VARCHAR(50),
descripcion TEXT
);
GO
INSERT INTO motores_bd
VALUES
(1,'MySQL','Relacional','Motor relacional muy usado en aplicaciones web, con version gratuita y version paga'),
(2,'MariaDB','Relacional','Motor compatible con MySQL, open source y alternativa independiente de Oracle'),
(3,'Oracle','Relacional','Motor propietario muy solido, usado en grandes empresas y con licencias costosas'),
(4,'PostgreSQL','Relacional','Motor open source muy avanzado, potente y considerado alternativa a MySQL'),
(5,'SQL Server','Relacional','Motor de Microsoft, muy usado en empresas y bien integrado con Azure'),
(6,'IBM DB2','Relacional','Motor propietario de IBM, estable y usado en empresas medianas y grandes'),
(7,'MongoDB','NoSQL','Motor orientado a documentos JSON, bueno para datos no estructurados'),
(8,'Redis','NoSQL','Motor clave-valor muy rapido, usado mucho como cache en memoria'),
(9,'Cassandra','NoSQL','Motor distribuido y muy escalable, pensado para grandes volumenes de datos');
GO

SELECT * FROM motores_bd;
