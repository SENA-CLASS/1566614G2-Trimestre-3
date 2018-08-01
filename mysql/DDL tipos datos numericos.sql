-- crear una base de datos
create database adsi;
CREATE SCHEMA `new_schema` DEFAULT CHARACTER SET utf8 ;

-- crear un schema
create schema grupo1349397; 

-- en mysql un schema es igual a una database

-- eliminar un schema
drop schema adsi;

-- elimar una base de datos
drop database adsi;

alter schema adsi default character set latin1;
ALTER SCHEMA ejemplo  DEFAULT CHARACTER SET utf8;
ALTER SCHEMA `ejemplo`  DEFAULT CHARACTER SET latin1 ;

-- muestra todos los character set
SHOW CHARACTER SET;

-- muesta tdos los collation
show collation;

-- tipos de datos
-- numericos

-- bit

CREATE TABLE adsi.tipo_datos (
    a INT PRIMARY KEY,
    campo_bit BIT,
    campo2 bit(64)
);
INSERT INTO adsi.tipo_datos (a,campo_bit,campo2) VALUES ('3',b'1',b'11111111111111111111111111');

UPDATE adsi.tipo_datos SET campo_bit=b'0' WHERE `a`='3';

CREATE TABLE t (b BIT(8));
INSERT INTO t SET b = b'11111111';

-- tinyint
CREATE TABLE adsi.tipo_datos (
    a INT PRIMARY KEY,
    campo_1 tinyint, -- -128 hasta 127 
    campo_2 tinyint unsigned, -- 0 a 255
    campo_3 tinyint zerofill -- llena con ceros los numeros a la izquierda
);

INSERT INTO adsi.tipo_datos (a,campo_1,campo_2) VALUES ('1','127','123');

drop table adsi.tipo_datos;

-- boolean, bool
drop table adsi.tipo_datos;
CREATE TABLE adsi.tipo_datos (
    a INT PRIMARY KEY,
    campo_1 boolean,
    campo_2 bool
);

INSERT INTO adsi.tipo_datos (a,campo_1,campo_2) VALUES ('1',true,false);

-- smallint
drop table adsi.tipo_datos;
CREATE TABLE adsi.tipo_datos (
    a INT PRIMARY KEY,
    campo_1 smallint,
    campo_2 smallint unsigned,
    campo_3 smallint(5) zerofill
);

INSERT INTO adsi.tipo_datos (a,campo_1,campo_2, campo_3) VALUES ('1',32767,65535, 12345);

-- mediumint

CREATE TABLE adsi.tipo_datos (
    a INT PRIMARY KEY,
    campo_1 mediumint,
    campo_2 mediumint unsigned,
    campo_3 mediumint(8) zerofill
    
);

INSERT INTO adsi.tipo_datos (a,campo_1,campo_2, campo_3) VALUES ('1',8388607,16777215, 1);

-- int
CREATE TABLE adsi.tipo_datos (
    a INT PRIMARY KEY,
    campo_1 int, -- 4 bytes
    campo_2 int unsigned, -- 4bytes
    campo_3 int(10) zerofill 
    
);

INSERT INTO adsi.tipo_datos (a,campo_1,campo_2, campo_3) VALUES ('1',2147483647,4294967295, 1);

-- integer
CREATE TABLE adsi.tipo_datos (
    a INT PRIMARY KEY,
    campo_1 integer,
    campo_2 integer unsigned,
    campo_3 integer(10) zerofill
    
);

INSERT INTO adsi.tipo_datos (a,campo_1,campo_2, campo_3) VALUES ('1',2147483647,4294967295, 1);

-- bigint
CREATE TABLE adsi.tipo_datos (
    a INT PRIMARY KEY,
    campo_1 bigint, -- 8 bytes
    campo_2 bigint unsigned, -- 8 bytes
    campo_3 bigint(24) zerofill 
    
);

INSERT INTO adsi.tipo_datos (a,campo_1,campo_2, campo_3) VALUES ('1',9223372036854775807,18446744073709551615, 1);

-- serial
CREATE TABLE adsi.tipo_datos (
    campo_2 serial,
    campo_1 int,
    primary key(campo_2)
);


CREATE TABLE adsi.tipo_datos (
    campo_1 BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
    a int,
    primary key(campo_1)
);

INSERT INTO adsi.tipo_datos (a) VALUES (50);

-- REALES

-- decimal
CREATE TABLE adsi.tipo_datos (
    a int,
    campo_1 decimal(10,10), --  1268761641 
    campo_2 decimal(10,3) unsigned, -- 12 BYTES
    campo_3 decimal(10,3) zerofill,
    primary key(a)
);

INSERT INTO adsi.tipo_datos (a, campo_1, campo_2, campo_3) VALUES (1,'3.1','10.1','1.5');

-- dec es igual al decimal
CREATE TABLE adsi.tipo_datos (
    a int,
    campo_1 dec(10,3),
    campo_2 dec(10,3) unsigned,
    campo_3 dec(10,3) zerofill,
    primary key(a)
);
INSERT INTO adsi.tipo_datos (a, campo_1, campo_2, campo_3) VALUES (1,'3.1','10.1','1.5');

-- numeric es igual al decimal
CREATE TABLE adsi.tipo_datos (
    a int,
    campo_1 numeric(10,3),
    campo_2 numeric(10,3) unsigned,
    campo_3 numeric(10,3) zerofill,
    primary key(a)
);
INSERT INTO adsi.tipo_datos (a, campo_1, campo_2, campo_3) VALUES (1,'3.1','10.1','1.5');
-- fixed es igual al decimal
CREATE TABLE adsi.tipo_datos (
    a int,
    campo_1 fixed(10,3),
    campo_2 fixed(10,3) unsigned,
    campo_3 fixed(10,3) zerofill,
    primary key(a)
);
INSERT INTO adsi.tipo_datos (a, campo_1, campo_2, campo_3) VALUES (1,'3.1','10.1','1.5');

-- float 
CREATE TABLE adsi.tipo_datos (
    a int,
    campo_1 float(10,3), -- 4 BYTES
    campo_2 float(28,3) unsigned, -- 8BYTES
    campo_3 float(10,3) zerofill,
    primary key(a)
);
INSERT INTO adsi.tipo_datos (a, campo_1, campo_2, campo_3) VALUES (1,'3.1','10.1','1.5');

-- double 
CREATE TABLE adsi.tipo_datos (
    a int,
    campo_1 double(10,3),
    campo_2 double(10,3) unsigned,
    campo_3 double(10,3) zerofill,
    primary key(a)
);
INSERT INTO adsi.tipo_datos (a, campo_1, campo_2, campo_3) VALUES (1,'3.1','10.1','1.5');

-- double precision
CREATE TABLE adsi.tipo_datos (
    a int,
    campo_1 double precision(10,3),
    campo_2 double precision(10,3) unsigned,
    campo_3 double precision(10,3) zerofill,
    primary key(a)
);
INSERT INTO adsi.tipo_datos (a, campo_1, campo_2, campo_3) VALUES (1,'3.1','10.1','1.5');
-- DEPENDE DE LA LA VARIABLE DE ENTORNO DE REAL_AS_FLOAT
-- Treat REAL as a synonym for FLOAT. By default, MySQL treats REAL as a synonym for DOUBLE

-- float 
CREATE TABLE adsi.tipo_datos (
    a int,
    campo_1 float(4),
    campo_2 float(4) unsigned,
    campo_3 float(4) zerofill,
    primary key(a)
);
INSERT INTO adsi.tipo_datos (a, campo_1, campo_2, campo_3) VALUES (1,'3.1','10.1','1.5');



drop table adsi.tipo_datos;
commit;
rollback;








