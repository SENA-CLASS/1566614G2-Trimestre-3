-- DDL lenguaje de definicion de datos (Data Definition Language)

-- Gestion de tablas

-- crear una tabla temporal 

create schema adsi;

create temporary table adsi.tabla1(
	a int primary key
);

insert into adsi.tabla1 value(1);

select * from adsi.tabla1;

drop table adsi.tabla1;

-- crear talblas normales

create table adsi.tabla1(
 id int primary key auto_increment,
 campo2 varchar(100)
);

create table adsi.tabla2(
	campo1 int primary key auto_increment,
    campo2 int not null,
    campo3 int null,
    campo4 int unique,
    campo5 int,
    unique index campo5_idx (campo5),
    campo6 int
    comment 'este es el comentario del campo6',
	campo2_tabla1 int not null,
     foreign key (campo2_tabla1) references adsi.tabla1(id),
	campo7 int default 6,
    campo8 int, 
    check(campo8 > 10)
) comment 'esta es la tabla 2';

-- llave primaria

create table adsi.tabla1 (
	a int primary key
);

create table adsi.tabla1(
	a int,
    primary key(a)
);

create table adsi.tabla2(
	campo2 int primary key,
    campo1 varchar(10) unique not null,
    campo3 varchar(10) null,
    campo4 varchar(10),
    index campo3_idx (campo3),
    unique index campo4_idx (campo4)
);



-- llave primaria compuesta

create table if not exists adsi.tabla1 (
	a int ,
    b int,
    primary key(a,b)
) character set utf8;

-- reglas de integridad

-- no null

create table if not exists adsi.tabla1 (
	a int ,
    b int not null,
    primary key(a)
) character set utf8;

-- default

create table if not exists adsi.tabla1 (
	a int ,
    b int default '1',
    primary key(a)
) character set utf8;


-- unique

create table if not exists adsi.tabla1 (
	a int ,
    b int unique,
    primary key(a)
) character set utf8;

-- llave primaria con nombre

create table if not exists adsi.tabla1 (
	a int ,
    b int ,
	constraint llave_Primaria primary key(a)
) character set utf8;

-- foreing key

create table adsi.billetera(
	id int primary key,
    marca varchar(50)
);

create table adsi.billete(
	id int primary key,
    id_billetera int not null,
    foreign key (id_billetera) references adsi.billetera(id)
);


create table adsi.billetera(
	id int primary key,
    marca varchar(50)
);

create table adsi.billete(
	id int,
    id_billetera int not null,
    constraint fk_billetera foreign key (id_billetera) references adsi.billetera(id),
    primary key(id, id_billetera)
);

create table adsi.casa(
	matricula varchar(10) primary key,
    direccion varchar(45)
);

create table adsi.persona(
	tipo_documento varchar(10),
    numero_documento varchar(45),
    nombre varchar(45),
    casa_matricula varchar(10) not null,
    constraint fk_pesona_casa foreign key(casa_matricula) references adsi.casa(matricula),
    primary key(tipo_documento, numero_documento,casa_matricula)
);

-- un muchos a muchos
create table adsi.casa(
	matricula varchar(10) primary key comment 'matricula inmoviliaria del inmueble',
    direccion varchar(45) comment 'la direcciòn del inmueble'
);

create table adsi.persona(
	tipo_documento varchar(10) comment 'addfasdfasdfasdfadfdsfsfa',
    numero_documento varchar(45),
    nombre varchar(45),
    primary key(tipo_documento, numero_documento)
);

create table adsi.persona_has_casa(
	tipo_documento varchar(10),
    numero_documento varchar(45),
    matricula varchar(10),
    constraint fk_phc_casa foreign key (matricula) references adsi.casa(matricula),
    constraint fk_phc_persona foreign key(tipo_documento, numero_documento) references adsi.persona(tipo_documento, numero_documento)
    on update cascade on delete no action
    ,
    primary key(tipo_documento, numero_documento, matricula),
    index fk_psc_persona_idx (tipo_documento ASC, numero_documento ASC),
    index fk_psc_casa_idx (matricula asc)
);

-- autoincrement

create table adsi.ejemplo1(
	
    b varchar(10),
    a int auto_increment,
    primary key(a,b)
);

-- borrar una tabla

drop table nombrelatabla;

-- alter table

describe adsi.ejemplo1;


create table adsi.ejemplo1(
	
    b varchar(10),
    a int auto_increment,
    primary key(a,b)
);

-- adicionar columna
alter table adsi.ejemplo1 add column (campo4 int, campo5 int);

-- eliminar una columna 

alter table adsi.ejemplo1 drop column campo4;

-- modificar una columna
alter table adsi.ejemplo1 modify campo5 varchar(10);


-- ejemplo creacion de bases de datso con alters
create table adsi.casa(
	matricula varchar(10),
    direccion varchar(45)
);

alter table adsi.casa add primary key (matricula);
alter table adsi.casa change column matricula matricula VARCHAR(10) NOT NULL COMMENT 'matricula inmoviliaria del inmueble';
alter table adsi.casa change column direccion direccion VARCHAR(45) NOT NULL COMMENT 'la direcciòn del inmueble';

create table adsi.persona(
	tipo_documento varchar(10),
    numero_documento varchar(45),
    nombre varchar(45)
);

alter table adsi.persona add primary key(tipo_documento, numero_documento);
alter table adsi.persona change column tipo_documento tipo_documento VARCHAR(10) NOT NULL COMMENT 'addfasdfasdfasdfadfdsfsfa';



create table adsi.persona_has_casa(
	tipo_documento varchar(10),
    numero_documento varchar(45),
    matricula varchar(10)
);

alter table adsi.persona_has_casa add constraint fk_phc_casa foreign key (matricula) references adsi.casa(matricula);
alter table adsi.persona_has_casa add constraint fk_phc_persona foreign key(tipo_documento, numero_documento) references adsi.persona(tipo_documento, numero_documento);
alter table adsi.persona_has_casa add primary key(tipo_documento, numero_documento, matricula);
alter table adsi.persona_has_casa add index fk_psc_persona_idx (tipo_documento ASC, numero_documento ASC);
alter table adsi.persona_has_casa add index fk_psc_casa_idx (matricula asc);

alter table adsi.persona_has_casa drop index fk_psc_persona_idx;
alter table adsi.persona_has_casa drop foreign key fk_phc_casa;
alter table adsi.persona_has_casa drop foreign key fk_phc_persona;
alter table adsi.persona_has_casa drop primary key;


-- create index

create index  fk_psc_persona_idx2  on adsi.persona_has_casa (tipo_documento ASC, numero_documento ASC);

-- drop index

drop index fk_psc_persona_idx2 on adsi.persona_has_casa;

-- rename table

rename table adsi.casa to adsi.casa1;

-- truncate table borra la informacion de la base de datos si esta no tiene llaves foraneas hacia otras tablas

truncate table adsi.casa1;




















