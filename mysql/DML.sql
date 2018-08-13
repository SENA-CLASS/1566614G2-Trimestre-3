-- DML

-- insert
create schema adsi;

drop table adsi.casa1;

create table adsi.casa1(
  matricula varchar(20),
  direccion varchar(20),
  primary key (matricula)
);
select * from adsi.casa1;

insert into adsi.casa1(matricula, direccion) values ('235','23542354');
insert into adsi.casa1 values ('1234','23542354'); -- menos me gusta
insert into adsi.casa1 values ('12346','23542354'), ('345235','23542354');


CREATE TABLE adsi.ejemplo2 (
  idnew_table INT NOT NULL,
  hora TIME NULL,
  fecha DATE NULL,
  
  PRIMARY KEY (idnew_table));
  
  -- insert con on duplicate
  INSERT INTO adsi.ejemplo2
  (idnew_table ,
  fecha,hora  )
VALUES
(3,
'2017-01-01',
'12:00:00') on duplicate key update fecha='2017-01-02', hora='15:00:00';

-- insert con set
insert into adsi.casa1 set matricula='234', direccion='sdfasd';

select * from adsi.casa1;
-- insert con una subconsulta

INSERT INTO adsi.casa2
(matricula,
direccion)
SELECT * FROM adsi.casa1;

-- update
select * from adsi.casa1;

UPDATE adsi.casa1
SET
direccion = 'nue'
WHERE matricula = '1234'; -- where

  rollback ;

INSERT INTO `Horario_DB2`.`Documento`
(`id_Documento`,
`Nombre`,
`Estado`)
VALUES
('CC',
'CEDULA DE CIUDADANIA',
true);

INSERT INTO Horario_DB2.Persona
(numero_Documento,
primer_Nombre,
segundo_Nombre,
primer_Apellido,
segundo_Apellido,
document)
VALUES
('80013833',
'Hernando',
'Enrique',
'Moreno',
'Moreno',
'CC');

UPDATE `Horario_DB2`.`Persona`
SET
`numero_Documento` = '12345',
`primer_Nombre` = 'herna',
`segundo_Nombre` = 'enri',
`primer_Apellido` ='mor',
`segundo_Apellido` = 'mor',
`document` = 'CC'
WHERE `numero_Documento` = '80013833' AND `document` = 'CC';

UPDATE `Horario_DB2`.`Documento`
SET
`id_Documento` = 'CCC',
`Nombre` = 'Cedula colombiana de ciudadania',
`Estado` = true
WHERE `id_Documento` = 'CC';

-- delete

DELETE FROM adsi.casa1
WHERE matricula='1234';


-- consulta 

select * from adsi.casa1;
SELECT c.matricula FROM adsi.casa1 c;


select * from observador_de_proyectos.cliente c where c.numero_documento='99021305606';

-- alias son nombre mas cortos que se le dan a una tabla

select * from observador_de_proyectos.cliente c where c.numero_documento='99021305606'; 
select * from observador_de_proyectos.cliente as c where c.numero_documento='99021305606'; 


-- seudonimos sirve para cambiar el nombre de un campo en una consulta

select c.tipo_documento as 'TIPO DOCUMENTO', c.numero_documento as 'NUMERO DE DOCUMENTO' from observador_de_proyectos.cliente c where c.numero_documento='99021305606';


-- select ALL

select * from observador_de_proyectos.cliente;

select numero_documento from observador_de_proyectos.cliente;

-- DISTINCT trae los datos pero no muestra los repetidos

select distinct(c.primer_nombre) from observador_de_proyectos.cliente c; 

select distinctrow(c.primer_nombre) from observador_de_proyectos.cliente c; 

-- where 
select * from observador_de_proyectos.cliente c where c.tipo_documento='CC' and (c.numero_documento like '9%' or c.primer_nombre like 'a%');

-- group by
select c.primer_nombre from observador_de_proyectos.cliente c group by c.primer_nombre; -- es igual al distinc
select c.primer_nombre from observador_de_proyectos.cliente c group by c.primer_nombre asc; -- es igual al distinc
select c.primer_nombre from observador_de_proyectos.cliente c group by c.primer_nombre desc; -- es igual al distinc


create schema ejemplo;

create table ejemplo.tabla(
	id int primary key auto_increment,
	Store_Name varchar(40),
    sales float,
    txn_date date
);

INSERT INTO `ejemplo`.`tabla` (`Store_Name`, `sales`, `txn_date`) VALUES ('los angeles', '150', '2017-01-01');
INSERT INTO `ejemplo`.`tabla` (`Store_Name`, `sales`, `txn_date`) VALUES ('san diaego', '200', '2017-01-01');
INSERT INTO `ejemplo`.`tabla` (`Store_Name`, `sales`, `txn_date`) VALUES ('los angeles', '300', '2017-01-01');
INSERT INTO `ejemplo`.`tabla` (`Store_Name`, `sales`, `txn_date`) VALUES ('boston', '50', '2017-01-01');

select * from ejemplo.tabla;

select t.Store_Name, sum(t.sales) from ejemplo.tabla t group by t.Store_Name asc;

-- select de un null
select * from observador_de_proyectos.cliente o where o.segundo_apellido is null;

-- order by
select * from observador_de_proyectos.cliente o order by o.primer_nombre asc;
select * from observador_de_proyectos.cliente o order by o.numero_documento desc;

-- limit
select * from observador_de_proyectos.cliente o order by o.numero_documento desc limit 5;

-- contar

select count(*) from observador_de_proyectos.cliente;
select count(*) from observador_de_proyectos.cliente_has_rol;

-- uso del operador in
select * from observador_de_proyectos.cliente_has_rol chr where chr.numero_documento = '1000063252' ;
select * from observador_de_proyectos.cliente_has_rol chr where chr.numero_documento = '1001270013' ;
select * from observador_de_proyectos.cliente_has_rol chr where chr.numero_documento in ('1000063252', '1001270013') ;

-- uso del any esigual que el some
select * from observador_de_proyectos.cliente c where c.numero_documento = any (select fi.numero_documento from observador_de_proyectos.instructor_ficha fi where fi.ficha= '1349397');
select * from observador_de_proyectos.cliente c where c.numero_documento = some (select fi.numero_documento from observador_de_proyectos.instructor_ficha fi where fi.ficha= '1349397');

select fi.numero_documento from observador_de_proyectos.instructor_ficha fi where fi.ficha= '1349397';

-- between
select * from observador_de_proyectos.cliente c where c.numero_documento between '1000376352' and '1010238811';
select * from observador_de_proyectos.cliente c where c.numero_documento >= '1000376352' and  c.numero_documento<='1010238811';

-- like
select * from observador_de_proyectos.cliente c where c.numero_documento like '100%';
select * from observador_de_proyectos.cliente c where c.numero_documento like '%9';
select * from observador_de_proyectos.cliente c where c.numero_documento like '%9%';
select * from observador_de_proyectos.cliente c where c.numero_documento like '1%9%0';
select * from observador_de_proyectos.cliente c where c.numero_documento like '1%5%';

-- JOINS

-- join implicitos

SELECT 
    c.primer_nombre,
    c.primer_apellido,
    cr.rol,
    cr.fecha_terminacion,
    cr.estado
FROM
    observador_de_proyectos.cliente c,
    observador_de_proyectos.cliente_has_rol cr
WHERE
    c.tipo_documento = cr.tipo_documento
        AND c.numero_documento = cr.numero_documento
        AND c.tipo_documento = 'CC'
        AND c.numero_documento = '80013833';
        
SELECT 
	t.descripcion,
    c.primer_nombre,
    c.primer_apellido,
    cr.rol,
    cr.fecha_terminacion,
    cr.estado,
    r.descripcion
FROM
    observador_de_proyectos.cliente c,
    observador_de_proyectos.cliente_has_rol cr, 
    observador_de_proyectos.rol r, 
    observador_de_proyectos.tipo_documento t
    
WHERE
	(c.tipo_documento = cr.tipo_documento
        AND c.numero_documento = cr.numero_documento and cr.rol = r.id_rol and t.documento= c.tipo_documento)
        
       and  c.tipo_documento = 'CC'
        AND c.numero_documento = '80013833';

-- join explicito

SELECT 
    c.primer_nombre,
    c.primer_apellido,
    cr.rol,
    cr.fecha_terminacion,
    cr.estado
FROM
    observador_de_proyectos.cliente c
        JOIN
    observador_de_proyectos.cliente_has_rol cr ON (c.tipo_documento = cr.tipo_documento
        AND c.numero_documento = cr.numero_documento)
WHERE
    c.tipo_documento = 'CC'
        AND c.numero_documento = '80013833';

SELECT 
	
    t.descripcion,
    c.primer_nombre,
    c.primer_apellido,
    cr.rol,
    cr.fecha_terminacion,
    cr.estado,
    r.descripcion
FROM
    observador_de_proyectos.cliente c
        inner JOIN
    (observador_de_proyectos.cliente_has_rol cr, observador_de_proyectos.rol r, observador_de_proyectos.tipo_documento t) 
    ON (c.tipo_documento = cr.tipo_documento
        AND c.numero_documento = cr.numero_documento and cr.rol = r.id_rol and t.documento= c.tipo_documento)
WHERE
    c.tipo_documento = 'CC'
        AND c.numero_documento = '80013833';
        
        
SELECT 
	
    t.descripcion,
    c.primer_nombre,
    c.primer_apellido,
    cr.rol,
    cr.fecha_terminacion,
    cr.estado,
    r.descripcion
FROM
    observador_de_proyectos.cliente c
        inner JOIN
    observador_de_proyectos.cliente_has_rol cr on c.tipo_documento = cr.tipo_documento AND c.numero_documento = cr.numero_documento
		inner join
	observador_de_proyectos.rol r on cr.rol = r.id_rol
		inner join
	observador_de_proyectos.tipo_documento t on t.documento= c.tipo_documento
WHERE
    c.tipo_documento = 'CC'
        AND c.numero_documento = '80013833';
        
       
-- left join
SELECT 
    *
FROM
    observador_de_proyectos.cliente c left JOIN observador_de_proyectos.aprendiz a 
    ON c.tipo_documento = a.tipo_documento and c.numero_documento = a.numero_documento
;

-- right join

SELECT 
    *
FROM
    observador_de_proyectos.aprendiz a JOIN observador_de_proyectos.cliente c 
    ON c.tipo_documento = a.tipo_documento and c.numero_documento = a.numero_documento
;


-- cross join producto cartesiano de las dos tablas
SELECT 
    *
FROM
    observador_de_proyectos.aprendiz a cross JOIN observador_de_proyectos.cliente c 
;

-- usando el using
SELECT 
    *
FROM
    observador_de_proyectos.aprendiz a cross JOIN observador_de_proyectos.cliente c using(tipo_documento, numero_documento) 
;

select count(*) from  observador_de_proyectos.cliente;
          
-- subconsultas
        
SELECT 
    *
FROM
    (SELECT 
		c.tipo_documento,
        c.numero_documento,
        t.descripcion,
            c.primer_nombre,
            c.primer_apellido,
            cr.rol,
            cr.fecha_terminacion,
            cr.estado,
            r.descripcion as des
    FROM
        observador_de_proyectos.cliente c, observador_de_proyectos.cliente_has_rol cr, observador_de_proyectos.rol r, observador_de_proyectos.tipo_documento t
    WHERE
        (c.tipo_documento = cr.tipo_documento
            AND c.numero_documento = cr.numero_documento
            AND cr.rol = r.id_rol
            AND t.documento = c.tipo_documento)) as a
WHERE
    a.tipo_documento = 'CC'
        AND a.numero_documento = '80013833';
        
SELECT 
    *
FROM
    observador_de_proyectos.cliente c
WHERE
    c.numero_documento IN (SELECT 
            a.numero_documento
        FROM
            observador_de_proyectos.aprendiz a);


select * from observador_de_proyectos.aprendiz inner join observador_de_proyectos.cliente using(tipo_documento, numero_documento);

-- insertar una imagen
-- PARA METER UN CAMPO LONBLOG PARA UNA IMAGEN cambiar la ruta se la variable del archivo my.ini secure-file-priv

create table ejemplodml.imagenes(
id_imagen int auto_increment primary key,
imagen longblob
);

insert into ejemplodml.imagenes(imagen) values (load_file('D:/imagenes/images2.jpg'));

create schema ejemplo3;
CREATE TABLE ejemplo3.ANIMAL(
ID_ANIMAL INT NOT NULL AUTO_INCREMENT,
NOMBRE_ANIMAL VARCHAR(40),
EDAD INT,
FECHA_NACIMIENTO DATE,
TIPO_ANIMAL ENUM ('PERRO', 'GATO'),
PRIMARY KEY(ID_ANIMAL)
);

ALTER TABLE ejemplo3.ANIMAL ADD COLUMN FOTO longblob;
INSERT INTO ejemplo3.ANIMAL (NOMBRE_ANIMAL, TIPO_ANIMAL, FOTO) 
VALUES ('PILI','PERRO', load_file('D:\imagenes\images2.jpg'));

INSERT INTO ejemplo3.ANIMAL  (ID_ANIMAL,NOMBRE_ANIMAL, TIPO_ANIMAL, FOTO) 
VALUES ('15','PILI','PERRO', load_file('D:\imagenes\images2.jpg')) ON DUPLICATE KEY UPDATE TIPO_ANIMAL='gato' ;

desc ejemplo3.ANIMAL;

insert into ejemplo3.ANIMAL
set NOMBRE_ANIMAL='firulais',
	TIPO_ANIMAL= 'perro';
    


select load_file('C:/Program Files/MySQL/MySQL Workbench 6.3 CE/images/ima/descarga.jpg');

select load_file('C:/imagenes/descarga.jpg');

-- cuando necesito insertar varios registros en una sola sentencia insert
INSERT INTO EJEMPLO3.ANIMAL (NOMBRE_ANIMAL, TIPO_ANIMAL, FOTO) 
VALUES ('PILI','PERRO', load_file('C:/imagen/maxresdefault.jpg')),
('PILI','PERRO', load_file('C:/imagen/maxresdefault.jpg')),
('PILI','PERRO', load_file('C:/imagen/maxresdefault.jpg')),
('PILI','PERRO', load_file('C:/imagen/maxresdefault.jpg')),
('PILI','PERRO', load_file('C:/imagen/maxresdefault.jpg'));

-- replace
-- replace

REPLACE INTO ejemplo3.ANIMAL (ID_ANIMAL,NOMBRE_ANIMAL, TIPO_ANIMAL, FOTO)
VALUES (9,'PILI','PERRO', 'iamgen');


-- ver el auto commit
SELECT @@AUTOCOMMIT;
        
        

        
        
        

























































