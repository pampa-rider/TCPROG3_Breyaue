create table Direcciones(
idDireccion int identity (1,1) primary key,
calle varchar(50),
numero int, -- s/n es null
telefono varchar(50),
email varchar(50),
idCiudad int not null FOREIGN key REFERENCES Ciudad(idCiudad),
idRegion int not null FOREIGN key REFERENCES Region(idRegion),
)

/* INSERT QUERY NO: 1 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Eva Peron ', 864, 1138722941, 'emmanuelbreyaue@gmail.com', 1, 1
);

/* INSERT QUERY NO: 2 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Alvear', 760, 1132568542, 'matiascastellano@gmail.com', 1, 1
);

/* INSERT QUERY NO: 3 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Roma', 658, 348472368, 'Ventas@fredocub.com.ar', 1, 1
);

/* INSERT QUERY NO: 4 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Pablo Lamberti', 1432, 348756528, 'mariaigomez@gmail.com', 1, 1
);

/* INSERT QUERY NO: 5 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Marabotto', 1266, 332756858, 'daniborfazzu@email.ro', 2, 1
);

/* INSERT QUERY NO: 6 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'La rioja', 355, 332765894, 'ivanmilovc@mail.rs', 2, 1
);

/* INSERT QUERY NO: 7 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Cordoba', 1357, 1165925961, 'administracion@fredicorp.com.ar', 11, 6
);

/* INSERT QUERY NO: 8 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Mendoza', 125, 1145896854, 'info@agrochiv-arg.com', 12, 4
);

/* INSERT QUERY NO: 9 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Roma', 778, 3484478961, 'matias.sepulveda@gmail.com', 2, 1
);

/* INSERT QUERY NO: 10 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Centenerio', 768, 1125685416, 'danielaleideheimer@gmx.de', 9, 2
);

/* INSERT QUERY NO: 11 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Carlos Casares', 1268, 1169825874, 'hansmolemann@gmail.com', 14, 2
);

/* INSERT QUERY NO: 12 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'TerrazasVerdes', 256, 1165825413, 'homerosimpson@springfield.org', 11, 7
);

/* INSERT QUERY NO: 13 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Italia', 256, 1125684213, 'josegomez@gmail.com', 8, 7
);

/* INSERT QUERY NO: 14 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Thames', 1258, 1144856952, 'sales@computerstore.com', 11, 3
);

/* INSERT QUERY NO: 15 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Jose Marti', 1125, 1165912567, 'anagonzalez@gmail.com', 11, 8
);

/* INSERT QUERY NO: 16 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'3 de Febrero', 112, 1145892547, 'matiasjulia@hotmail.com', 6, 2
);

/* INSERT QUERY NO: 17 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Thomson', 1995, 1125696589, 'malenasepic@mail.hv', 9, 8
);

/* INSERT QUERY NO: 18 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Hipolito Hirigoyen', 1920, 1125614580, 'marianaferrari@gmail.com', 7, 2
);

/* INSERT QUERY NO: 19 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Cuba', 1952, 1169825612, 'nicolaslanger@gmail.com', 14, 2
);

/* INSERT QUERY NO: 20 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'santa fe', 125, 348784425, 'javierzanon@yahoo.com.ar', 4, 1
);

/* INSERT QUERY NO: 21 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'don bosco', 256, 348442562, 'ventas@cremigal.com.ar', 4, 1
);

/* INSERT QUERY NO: 22 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'chile', 115, 114258658, 'ventas@refreshnow.com.ar', 13, 4
);

/* INSERT QUERY NO: 23 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Talcahuano ', 1256, 1148259500, 'info@celutec.com.ar', 11, 6
);

/* INSERT QUERY NO: 24 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Humberto Primo', 898, 1144584444, 'administracion@bancodelsol.com.ar', 11, 6
);

/* INSERT QUERY NO: 25 */
INSERT INTO Direcciones(calle, numero, telefono, email, idCiudad, idRegion)
VALUES
(
'Juan B Justo', 1121, 1142561420, 'administracion@bancodelsol.com.ar', 11, 5
);

select * from Direcciones