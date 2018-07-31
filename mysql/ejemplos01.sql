create schema ejemplo01;

use ejemplo01;

create table tabla(
 id int primary key,
 campo1 varchar(20)
);

insert into tabla values (1, 'hola');

commit;

select * from tabla;


rollback;

create table tabla2(
	campo1 int primary key, 
    campo2 int not null,
    campo3 int default 1,
    campo4 int unique

);

SHOW ENGINES; -- permite ver los motores de bases de datos que tiene mi mysql 

use ejemplo; -- este comando sirve para moverme por los schemas
use sys;


show tables; -- mostrar las tablas del esquema que tengo señalado

create schema ejemplo2; -- creat schema

create schema ejemplo4 DEFAULT CHARACTER SET big5  DEFAULT COLLATE big5_chinese_ci ;

create database ejemplo3; -- hace lo mismo que en el schema pero solo mysql

drop schema ejemplo2; -- borrar un esquema

drop database ejemplo3; -- borrar una base de datos

ALTER SCHEMA ejemplo  DEFAULT CHARACTER SET big5  DEFAULT COLLATE big5_chinese_ci ; -- modificar un esquema




