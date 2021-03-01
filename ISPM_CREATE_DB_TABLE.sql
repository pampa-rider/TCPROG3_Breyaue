create database BD_ISP
use BD_ISP

--Tablas Servidor
create table Ciudad
(
idCiudad int identity (1,1) primary key,
Nombre varchar(50),
)

create table Region
(
idRegion int identity (1,1) primary key,
nombre varchar(50),
)


create table Nodos
(
idNode int identity (1,1) primary key,
nombre varchar(50), 
ipAddress varchar(20) not null, 
idCiudad int not null FOREIGN key REFERENCES Ciudad(idCiudad),
active bit default 'false'
)



--tablas cliente

create table Direcciones(
idDireccion int identity (1,1) primary key,
calle varchar(50),
numero int, -- s/n es null
telefono varchar(50),
email varchar(50),
idCiudad int not null FOREIGN key REFERENCES Ciudad(idCiudad),
idRegion int not null FOREIGN key REFERENCES Region(idRegion),
)

create table Clientes
(
idCliente int identity (1,1) primary key,
apellido VARCHAR(50),
nombre VARCHAR(50),
idDireccion int not null FOREIGN key REFERENCES Direcciones(idDireccion),
tipodoc int not null, 
codigo varchar(50) not null,
)

create table Planes(
idPlan int identity (1,1) primary key,
tipo bit,
nombre varchar(50),
tx int, --transmision
rx int, --recepcion datos
precio smallmoney not null,
)

create table Conexiones(
idConexion int identity (1,1) primary key,
idCliente int not null FOREIGN key REFERENCES Clientes(idCliente),
idNodo int not null FOREIGN key REFERENCES Nodos(idNodo),
idPlan int not null FOREIGN key REFERENCES planes(idPlan),
fecha date null,
ipaddress varchar(24),
bloqueado bit,
)

create table Facturacion
(
idFacturacion int identity (1,1) primary key,
idCliente int not null FOREIGN key REFERENCES Clientes(idCliente),
idConexion int not null FOREIGN key REFERENCES Conexiones(idConexion),
fecha date,
importe smallmoney,
)


create table Tickets
(
idTicket int identity (1,1) primary key,
idConexion int not null FOREIGN key REFERENCES Conexiones(idConexion),
Descripcion varchar(100),
Fecha date,
Resuelto bit, --null pendiente, true resuelto, falso no resuelto
)

