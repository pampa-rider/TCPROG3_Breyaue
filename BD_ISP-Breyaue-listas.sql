USE ISPM

/*
CREATE VIEW LISTA_DEUDORES AS

SELECT DISTINCT  C.nombre, C.apellido, F.idCliente,
(SELECT SUM(Importe) from Facturacion where Fecha_pago is null and idCliente=F.idCliente) as Deuda
FROM Facturacion as F 
inner join Clientes as C on C.idCliente = F.idCliente
WHERE F.Fecha_pago IS NULL
SELECT * FROM LISTA_DEUDORES;
SELECT * FROM LISTA_DEUDORES WHERE idCliente=6
*/

--CREATE VIEW LISTA_SEMESRAL
--Select (select * from Facturacion where Fecha_pago is not null and Fecha_pago > '01/07/2020') AS Primer_Semestre,
--(select * from Facturacion where Fecha_pago is not null and Fecha_pago < '01/07/2020') AS Segundo_Semestre 
--FROM Facturacion
--SELECT * FROM LISTA_SEMESTRAL

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

