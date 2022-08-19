-- 1) ¿Cuáles son los nombres y la ocupación de cada uno de los empleados? 
SELECT nombre, trabajo as ocupacion FROM empleados;

-- Output: 
-- +-----------+----------------------------+
-- | nombre    | ocupacion                  |
-- +-----------+----------------------------+
-- | Juan      | Programador Senior         |
-- | Gonzalo   | Programador Senior         |
-- | Ana       | Desarrollador Web          |
-- | Maria     | Desarrollador Web          |
-- | Alfred    | Programador                |
-- | Juan      | Programador                |
-- | Eduardo   | Programador                |
-- | Alejandro | Programador                |
-- | Hernan    | Especialista Multimedia    |
-- | Pablo     | Especialista Multimedia    |
-- | Arturo    | Especialista Multimedia    |
-- | Jimena    | Diseñador Web              |
-- | Roberto   | Administrador de sistemas  |
-- | Daniel    | Administrador de sistemas  |
-- | Miguel    | Ejecutivo de Ventas Senior |
-- | Monica    | Ejecutivo de ventas        |
-- | Alicia    | Ejecutivo de ventas        |
-- | Jose      | Ejecutivo de ventas        |
-- | Sabrina   | Gerente de Soporte tecnico |
-- | Pedro     | Gerente de finanzas        |
-- | Mariano   | Presidente                 |
-- +-----------+----------------------------+

-- 2) ¿Cuál es el nombre y la edad de cada uno de los empleados?
SELECT nombre, edad FROM empleados;

-- Output:
-- +-----------+------+
-- | nombre    | edad |
-- +-----------+------+
-- | Juan      |   32 |
-- | Gonzalo   |   32 |
-- | Ana       |   27 |
-- | Maria     |   26 |
-- | Alfred    |   31 |
-- | Juan      |   36 |
-- | Eduardo   |   25 |
-- | Alejandro |   32 |
-- | Hernan    |   33 |
-- | Pablo     |   43 |
-- | Arturo    |   32 |
-- | Jimena    |   32 |
-- | Roberto   |   35 |
-- | Daniel    |   34 |
-- | Miguel    |   36 |
-- | Monica    |   30 |
-- | Alicia    |   27 |
-- | Jose      |   27 |
-- | Sabrina   |   32 |
-- | Pedro     |   36 |
-- | Mariano   |   28 |
-- +-----------+------+

-- 3) ¿Cuál es el nombre y la edad de todos los programadores?
SELECT nombre, edad FROM empleados WHERE LOWER(trabajo) LIKE 'programador%';

-- Output:
-- +-----------+------+
-- | nombre    | edad |
-- +-----------+------+
-- | Juan      |   32 |
-- | Gonzalo   |   32 |
-- | Alfred    |   31 |
-- | Juan      |   36 |
-- | Eduardo   |   25 |
-- | Alejandro |   32 |
-- +-----------+------+

-- 4) ¿Cuáles son los empleados de mas de 30 años?
SELECT nombre, apellido FROM empleados WHERE edad > 30;

-- Output:
-- +-----------+-----------+
-- | nombre    | apellido  |
-- +-----------+-----------+
-- | Juan      | Hagan     |
-- | Gonzalo   | Pillai    |
-- | Alfred    | Fernandez |
-- | Juan      | Agüero    |
-- | Alejandro | Nanda     |
-- | Hernan    | Rosso     |
-- | Pablo     | Simon     |
-- | Arturo    | Hernandez |
-- | Jimena    | Cazado    |
-- | Roberto   | Luis      |
-- | Daniel    | Gutierrez |
-- | Miguel    | Harper    |
-- | Sabrina   | Allende   |
-- | Pedro     | Campeon   |
-- +-----------+-----------+

-- 5) ¿Cuál es el apellido y el mail de los empleados llamados Juan?
SELECT nombre, apellido FROM empleados WHERE LOWER(nombre) LIKE 'juan%';

-- Output:
-- +--------+----------+
-- | nombre | apellido |
-- +--------+----------+
-- | Juan   | Hagan    |
-- | Juan   | Agüero   |
-- +--------+----------+

-- 6) ¿Cuál es el nombre de las personas que trabajan como Programadores o Desarrolladores Web?
SELECT nombre FROM empleados WHERE LOWER(trabajo) LIKE 'programador%' OR LOWER(trabajo) LIKE 'desarrollador web%';

-- Output:
-- +-----------+
-- | nombre    |
-- +-----------+
-- | Juan      |
-- | Gonzalo   |
-- | Ana       |
-- | Maria     |
-- | Alfred    |
-- | Juan      |
-- | Eduardo   |
-- | Alejandro |
-- +-----------+

-- 7) Mostrar una lista (id_emp, nombre, apellido, trabajo) de las personas cuyo numero de empleado esté entre 15 y 20.
SELECT id_emp, nombre, apellido, trabajo FROM empleados WHERE id_emp > 15 AND id_emp < 20;

-- Output:
-- +--------+---------+----------+----------------------------+
-- | id_emp | nombre  | apellido | trabajo                    |
-- +--------+---------+----------+----------------------------+
-- |     16 | Monica  | Sanchez  | Ejecutivo de ventas        |
-- |     17 | Alicia  | Simlai   | Ejecutivo de ventas        |
-- |     18 | Jose    | Iriarte  | Ejecutivo de ventas        |
-- |     19 | Sabrina | Allende  | Gerente de Soporte tecnico |
-- +--------+---------+----------+----------------------------+

-- 8) ¿Cuáles son los Programadores que ganan menos de $80000?
SELECT nombre FROM empleados WHERE LOWER(trabajo) LIKE 'programador%' AND salario < 80000;

-- Output:
-- +-----------+
-- | nombre    |
-- +-----------+
-- | Alfred    |
-- | Alejandro |
-- +-----------+

-- 9) ¿Cuáles son los Programadores que ganan entre $75000 y $90000?
SELECT nombre FROM empleados WHERE salario > 75000 AND salario < 90000;

-- Output:
-- +---------+
-- | nombre  |
-- +---------+
-- | Maria   |
-- | Juan    |
-- | Eduardo |
-- | Pablo   |
-- +---------+

-- 10) ¿Cuáles son los trabajadores cuyo apellido comienza con S?
SELECT apellido, nombre FROM empleados WHERE apellido LIKE 'S%';

-- Output:
-- +----------+---------+
-- | apellido | nombre  |
-- +----------+---------+
-- | Sacan    | Eduardo |
-- | Simon    | Pablo   |
-- | Sanchez  | Monica  |
-- | Simlai   | Alicia  |
-- +----------+---------+

-- 11) ¿Cuáles son los trabajadores cuyo nombre termina en l?
SELECT nombre, apellido FROM empleados WHERE nombre LIKE '%l';

-- Outpt:
-- +--------+-----------+
-- | nombre | apellido  |
-- +--------+-----------+
-- | Daniel | Gutierrez |
-- | Miguel | Harper    |
-- +--------+-----------+

-- 12) Agregar un empleado con ID_empleado 22 con los siguientes datos: Francisco Perez,  Programador, 26 años, salario 90000, mail: francisco@bignet.com.
INSERT INTO empleados (nombre, apellido, trabajo, edad, salario, mail) VALUES ('Francisco', 'Perez', 'Programador', 26, 90000, 'francisco@bignet.com');

-- Output:
-- Query OK, 1 row affected (0,01 sec)

-- 13) Borrar los datos de Hernan Rosso.
DELETE FROM empleados WHERE nombre='Hernan' AND apellido='Rosso';

-- Output:
-- Query OK, 1 row affected (0,01 sec)

-- 14) Modificar el salario de Daniel Gutierrez a 90000.
UPDATE empleados SET salario=90000 WHERE nombre='Daniel' AND apellido='Gutierrez';

-- Output:
-- Query OK, 1 row affected (0,01 sec)
-- Rows matched: 1  Changed: 1  Warnings: 0