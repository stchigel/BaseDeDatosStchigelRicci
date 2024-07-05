create database claseddl;
use claseddl;
/* ejercicio 1 */
create table cliente (
dni int primary key, 
nombre varchar(45),
apellido varchar(45),
direccion varchar(45),
nacimiento date
);
create table proovedores (
dni int primary key, 
nombre varchar(45),
direccion varchar(45)
);
create table productos (
codigo int primary key,
nombre varchar(45),
precio int,
proovedores_dni int,
foreign key (proovedores_dni) references proovedores(dni)
ON UPDATE SET NULL
ON DELETE SET NULL /*Esta es la que usamos para probar null*/
);
create table cliente_has_productos (
cliente_dni int,
productos_codigo int,
primary key (cliente_dni, productos_codigo),
foreign key (cliente_dni) references cliente(dni),
foreign key (productos_codigo) references productos(codigo)
on update cascade
on delete cascade /*Esta es la que usamos para probar cascade*/
);

/* Ejercico 2 */
create table camiones (
matricula varchar(45) primary key,
modelo varchar(45),
potencia int,
tipo varchar(45)
);

create table camioneros (
dni int primary key,
nombre varchar(45),
telefono int,
salario int,
direccion varchar(45),
ciudad varchar(45)
);

create table camiones_has_camioneros(
camioneros_dni int,
camiones_matricula varchar(45),
primary key (camioneros_dni, camiones_matricula),
foreign key (camioneros_dni) references camioneros(dni),
foreign key (camiones_matricula) references camiones(matricula)
on update restrict
on delete restrict /*Esta es la que usamos para probar restrict*/
);

create table prov(
codigo int primary key,
nombre varchar(45)
);

create table paquetes (
codigo int primary key,
descripcion varchar(45),
destinatario varchar(45),
direccion varchar(45),
camioneros_dni int,
prov_codigo int,
foreign key (camioneros_dni) references camioneros(dni),
foreign key (prov_codigo) references prov(codigo)
);

/* Ejercicio 5 */

create table paciente (
codigo int primary key, 
nombre varchar(45),
apellido varchar(45),
direccion varchar(45),
ciudad varchar(45),
prov varchar(45),
cod_postal int,
telefono int,
nacimiento date
);

create table medico (
codigo int primary key, 
nombre varchar(45),
apellido varchar(45),
telefono int,
especialidad varchar(45)
);

create table ingresos (
codigo int primary key,
n_hab int,
n_cama int,
fecha date,
paciente_codigo int,
medico_codigo int,
foreign key (paciente_codigo) references paciente(codigo),
foreign key (medico_codigo) references medico(codigo)
);

/* Ejercico 6 */
create table provedor(
codigo int primary key,
nombre varchar(45),
apellido varchar(45),
direccion varchar(45),
provincia varchar(45),
telefono int
);

create table ej6_productos(
codigo int primary key,
descripcion varchar(45),
strock int,
precio int
);

create table ej6_cliente(
codigo int primary key,
nombre varchar(45),
apellido varchar(45),
direccion varchar(45),
telefono int
);

create table provedor_has_productos(
provedor_codigo int,
productos_codigo int,
primary key (provedor_codigo, productos_codigo),
foreign key (provedor_codigo) references provedor(codigo),
foreign key (productos_codigo) references ej6_productos(codigo)
);

create table productos_has_cliente(
cliente_codigo int,
productos_codigo int,
numero_compra int,
fecha varchar(45),
primary key (cliente_codigo, productos_codigo),
foreign key (cliente_codigo) references ej6_cliente(codigo),
foreign key (productos_codigo) references ej6_productos(codigo)
);

/* TP TURISMO*/
create table clientes(
dni int primary key,
direccion varchar(45),
nombre varchar(45),
telefono bigint(45),
celular int,
apellido varchar(45)
);

create table alojamientos(
idAlojamientos int primary key,
nombre varchar(45),
categoria varchar(45),
direccion varchar(45),
telefono bigint(45),
Cantidad_Personas int,
cocina varchar(45),
garaje varchar(45),
parrilla varchar(45),
Cantidad_pisos int,
Bar varchar(45)
);

create table Pago(
idPago int primary key,
nombre varchar(45)
);

create table paquete (
idPaquete int primary key,
lugar varchar(45),
dias int,
noches int,
costo int,
excursiones int,
viaje varchar(45),
alojamientos_idAlojamientos int,
Pago_idPago int,
foreign key (alojamientos_idAlojamientos) references alojamientos(idAlojamientos),
foreign key (Pago_idPago) references Pago(idPago)
);

create table reservas(
clientes_dni int,
paquete_idPaquete int,
cantPersonas int,
fechaIn date,
fechaFin date,
primary key (clientes_dni, paquete_idPaquete),
foreign key (clientes_dni) references clientes(dni),
foreign key (paquete_idPaquete) references paquete(idPaquete)
);

/*Agregado*/
alter table reservas add column descuento float;

create table empleado(
dni int primary key,
nombre varchar(45),
apellido varchar(45),
nacimiento date
);

alter table reservas add column empleado_dni int;
alter table reservas add foreign key (empleado_dni) references empleado(dni);
