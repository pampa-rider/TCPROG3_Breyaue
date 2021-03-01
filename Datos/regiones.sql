/* Showing results for bd_isp.xls */
create table Region
(
idRegion int identity (1,1) primary key,
nombre varchar(50),
)


INSERT INTO Region(nombre)
VALUES
(
'GBA_NORTE1'
);

/* INSERT QUERY NO: 2 */
INSERT INTO Region(nombre)
VALUES
(
'GBA_NORTE2'
);

INSERT INTO Region(nombre)
VALUES
(
'CABA_NORTE'
);

/* INSERT QUERY NO: 4 */
INSERT INTO Region(nombre)
VALUES
(
'CABA_SUR1'
);

/* INSERT QUERY NO: 5 */
INSERT INTO Region(nombre)
VALUES
(
'CABA_OESTE'
);

/* INSERT QUERY NO: 6 */
INSERT INTO Region(nombre)
VALUES
(
'CABA_CENTRO'
);

/* INSERT QUERY NO: 7 */
INSERT INTO Region(nombre)
VALUES
(
'GBA_OESTE1'
);

/* INSERT QUERY NO: 8 */
INSERT INTO Region(nombre)
VALUES
(
'GBA_OESTE2'
);

select * from Region