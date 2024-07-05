/*Ej 1*/
INSERT INTO CLIENTES VALUES (20567867, "Juan", "perez", "bogota 3005", "2005-7-11"), (21567867, "Lopez", "curte", "admirante 187", "2007-5-11"), (11111111, "Javier", "Milei", "Casa Rosada", "1970-10-22");
insert into PROOVEDORES VALUES (101010, "Pizzas pepito", "308 negra arroyo lane"), (202020, "Empanadas y mas", "Faerye 657"), (303030, "Medialunas de la abuela", "constituyentes 335");
INSERT INTO PRODUCTOS VALUES (1278237, "Pizza", 8000, 101010), (138274, "Empanada", 4000, 202020), (1, "Medialuna", 2000, 303030);
insert into CLIENTES_has_PRODUCTOS values (20567867, 1278237), (11111111, 1);
select NOMBRE_CLIENTES, APELLIDOS_CLIENTES from CLIENTES;
select APELLIDOS_CLIENTES from CLIENTES where NOMBRE_CLIENTES = "Juan" and NACIMIENTO_CLIENTES < "2006-1-1";
select * from PRODUCTOS;
select CLIENTES_DNI_CLIENTES from CLIENTES_has_PRODUCTOS where PRODUCTOS_CODIGO_PRODUCTOS = 1;
update CLIENTES set DIRECCION_CLIENTES = "nose" where DNI_CLIENTES = 11111111;

/*Ej 2*/
insert into CAMIONEROS values (127583, "Lopez", 37584765, 500, "judera 284", "Buenos Aires"), (5334555, "Juan", 34535643, 550, "General paz 255", "Buenos Aires"), (542543, "Chano", 34623324, 600, "Htaet 1983", "Florianopolis");
insert into PROV values (1, "Buenos Aires"), (2, "Santiago del Estero"), (3, "Entre rios");
insert into CAMIONES values (1, "Volkswagen", 500, "Larga distancia"), (345643, "Renault", 600, "Larga distancia"), (556344, "Volkswagen", 250, "Local");
insert into CAMIONEROS_has_CAMIONES values (127583, 1, "2023-4-26"), (5334555, 1, "2022-4-26"), (5334555, 345643, "2023-1-1");
insert into PAQUETES values (23434, "Paquete", "Juan", "gral paz 921", 127583, 1), (4345, "Paquete", "Carlos", "gral paz 921", 5334555, 2), (3, "Paquete", "Perez", "gral paz 921", 5334555, 1);
SELECT CAMIONEROS_DNI FROM CAMIONEROS_has_CAMIONES WHERE CAMIONES_MATRICULA=1 AND DIA="2023-4-26";
SELECT NOMBRE FROM PROV;
UPDATE CAMIONEROS SET SALARIO = SALARIO + (SALARIO * (10/100));
SELECT CODIGO, `DESC`, CAMIONEROS_DNI FROM PAQUETES;
DELETE FROM PAQUETES WHERE CODIGO<100;