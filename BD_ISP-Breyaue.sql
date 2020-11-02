create database BD_ISP


create table ciudad
(
idCiudad int not null primary key,
nombre varchar(50),
)

create table Region
(
idRegion int not null primary key,
nombre varchar(50),
)

create table direcciones(
idDireccion int not null primary key,
calle varchar(50),
numero int, -- s/n es null
telefono varchar(50),
email varchar(50),
idCiudad int not null FOREIGN key REFERENCES Ciudad(idCiudad),
idRegion int not null FOREIGN key REFERENCES Region(idRegion),
)


create table clientes
(
idCliente int not null primary key,
apellido VARCHAR(50),
nombre VARCHAR(50),
idDireccion int not null FOREIGN key REFERENCES direcciones(idDireccion),
tipoid int not null,
codigoid int not null,
persona bit, -- 0 fisica, 1 juridica
)

create table nodos
(
idNodo int not null primary key,
nombre varchar(50), 
ipaddress varchar(16) not null, 
idCiudad int not null FOREIGN key REFERENCES ciudad(idCiudad),
idRegion int not null FOREIGN key REFERENCES region(idRegion),
)

create table planes(
idPlan int not null primary key,
tipo bit,
nombre varchar(50),
tx int, --transmision
rx int, --recepcion datos
precio smallmoney not null,
)


create table Conexiones(
idConexion int not null primary key,
idCliente int not null FOREIGN key REFERENCES clientes(idCliente),
idNodo int not null FOREIGN key REFERENCES nodos(idNodo),
idPlan int not null FOREIGN key REFERENCES planes(idPlan),
fecha date,
ipaddress varchar(16),
bloqueado bit,
)

create table Facturacion
(
idFacturacion int not null primary key,
idCliente int not null FOREIGN key REFERENCES clientes(idCliente),
idPlan int not null FOREIGN key REFERENCES planes(idPlan),
fecha date,
importe smallmoney,
)

create table tickets
(
idTicket int not null primary key,
idCliente int not null FOREIGN key REFERENCES clientes(idCliente),
idPlan int not null FOREIGN key REFERENCES planes(idPlan),
idNodo int not null FOREIGN key REFERENCES nodos(idNodo),
descripcion varchar(100),
fecha date,
resuelto bit, --null pendiente, true resuelto, falso no resuelto
)