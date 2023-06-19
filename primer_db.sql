CREATE DATABASE primer_db; /* Crea la base de datos */

SHOW DATABASES;

USE primer_db; /*  Usa la base de datos indicada */

SHOW TABLES;

/* Permite crear la tabla segun la informacion que necesitamos manejar */
CREATE TABLE primer_tabla(
    id_registro INT NOT NULL AUTO_INCREMENT,
    campo_1 VARCHAR(30) NOT NULL,
    campo_2 FLOAT,
    PRIMARY KEY (id_registro)
);

SHOW TABLES;

/* Describe la tabla indicada */
DESCRIBE primer_tabla;

/*Muestra TODO(*) el contenido de la tabla indicada*/
SELECT * FROM primer_tabla;

/* Inserta un registro en la tabla indicada */
INSERT INTO primer_tabla (campo_1, campo_2) VALUES ("Hola, soy un varchar", 1123.02);

INSERT INTO primer_tabla (campo_1, campo_2) VALUES ("Hola, soy otro varchar", 0.03);

INSERT INTO primer_tabla (campo_1, campo_2) VALUES ("Hola, soy el ultimo varchar", 1.01);

INSERT INTO primer_tabla (campo_1, campo_2) VALUES ("Hola, soy un extra varchar", null );

/*Seleccionar informacion de una tabla*/
SELECT * FROM primer_tabla;

SELECT campo_1 FROM primer_tabla;

SELECT campo_1, campo_2 FROM primer_tabla;

SELECT * FROM primer_tabla WHERE id_registro = 2;

SELECT * FROM primer_tabla WHERE id_registro = 7;

SELECT * FROM primer_tabla LIMIT 3;

/* Actualiza un registro con nueva informacion */
UPDATE primer_tabla SET campo_1 = “Hola, me modificaron”, campo_2 = 0.0 WHERE id_registro =  1;

/* Elimina un registro DONDE el id sea el correspondiente */
DELETE FROM primer_tabla WHERE id_registro = 2;

INSERT INTO primer_tabla (campo_1, campo_2) VALUES ("Hola, recien llegue", 123.4);

SELECT * FROM primer_tabla;