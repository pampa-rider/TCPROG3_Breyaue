--Segundo Parcial Lab3

USE ISPM
--Una relación de uno a muchos.
-- Mostrar una lista de Tickets de soporte no resueltos de clientes particulares

/*
select C.Nombre,C.apellido,T.fecha,T.descripcion FROM TICKETS AS T
inner join Conexiones as Cx on T.idConexion = Cx.idConexion
inner join Clientes as C on C.idCliente = Cx.idCliente
where C.tipodoc !=2 and T.resuelto=0
order by T.fecha DESC
*/

--Una relación de muchos a muchos.
--mostrar nombre, apellido, nombre de ciudad, direccionIP,nombre del nodo de todos los clientes registrados.

/*
SELECT 

Cl.nombre as Nombre,
Cl.apellido as Apellido,
C.Nombre as Ciudad,
Cx.ipaddress as IP,
N.name as Nodo

from Conexiones as Cx
inner join Nodos as N on N.idNode = Cx.idCliente
inner join Ciudad as C on C.idCiudad = N.idCity
inner join Clientes as Cl on Cx.idCliente = Cl.idCliente
order by Cx.ipaddress asc
*/


-- Generar Una Vista

--Todos los tickets resueltos o no segun la region a elegir

--Crear Vista
/*

CREATE VIEW Reporte_Tickets_Hlpdsk AS
SELECT 
Cl.nombre,
Cl.apellido,
C.ipaddress,
T.descripcion, 
T.resuelto,
R.nombre as nombre_region

FROM tickets as T

INNER JOIN Conexiones AS C on C.idConexion = T.idConexion
INNER JOIN Clientes as Cl on Cl.idCliente=C.idCliente
INNER JOIN Direcciones as D on Cl.idDireccion=D.idDireccion
INNER JOIN REGION AS R on R.idRegion=D.idRegion
*/

--DROP VIEW Reporte_Tickets_Hlpdsk
/*
select * from Reporte_Tickets_Hlpdsk
WHERE resuelto=1 

and nombre_region like '%GBA_NORTE%' 

--una forma de filtrar los clientes particulares
--excluyendo los corporativos
and ipaddress not like '%10.%'

*/

GO
--Procedimiento Almacenado
--obtener la recaudacion anual por nodo dependiendo
--su tipo de cliente (particular/corporativo) tener en cuenta
--que el usuario corporativo se rige en la moneda dolares estadounidenses


/*
CREATE VIEW Reporte_Facturacion_Nodos AS 
SELECT DISTINCT 
N.name, 
(SELECT SUM(F.importe)
FROM Facturacion as F
INNER JOIN Conexiones AS Cx on Cx.idCliente=F.idCliente
where Cx.idNodo = N.idNode and year(F.fecha) = year(Fc.fecha))AS RECAUDACION,
CL.tipodoc AS TIPO_DOC,
year(Fc.fecha) as ANIO

FROM Nodos as N
INNER JOIN CONEXIONES AS CxC on Cxc.idNodo=N.idNode
Inner JOIN Clientes AS CL ON CL.idCliente=Cxc.idCliente
INNER JOIN Facturacion AS Fc ON Fc.idCliente=CxC.idCliente
*/

--Crear Procedimiento

/*
CREATE PROCEDURE ISPM_FACTURACION_NODOS(
@tipodoc bigint,
@anio bigint
)
AS BEGIN
select * FROM Reporte_Facturacion_Nodos
where TIPO_DOC=@tipodoc AND ANIO=@anio
END
*/
--exec ISPM_FACTURACION_NODOS 2,2018
--exec ISPM_FACTURACION_NODOS 1,2020

--Usuarios Extranjeros
--exec ISPM_FACTURACION_NODOS 2,2018


--Crear un Procedimiento para agregar nuevos Clientes
--y Direcciones



/*


CREATE PROCEDURE Nuevo_Nodo(
@nodo varchar(50),
@address varchar(20)
@ciudad int;
)
AS
    INSERT INTO Nodos(nombre, ipaddress, idCiudad)
    VALUES(@nodo , @ipaddress , @ciudad);
BEGIN
END


exec Nuevo_Nodo 'LP2','10.2.2.2'




*/


