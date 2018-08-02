create schema usuarios;

create table usuarios.rol(
	rol varchar(40) not null,
	descripcion varchar(100) not null,
	estado varchar(20),
	constraint rol_pk primary key(rol)
);

create table usuarios.tipo_documento(
	tipo_documento varchar(10) not null,
	nombre_documento varchar(100) not null,
	estado varchar(20),
	primary key (tipo_documento)
);

create table usuarios.cliente(
	tipo_documento varchar(10) not null,
	numero_documento varchar(50) not null,
	primer_nombre varchar(50) not null,
	segundo_nombre varchar(50) null,
	primer_apellido varchar(50) not null,
	segundo_apellido varchar(50) null,
	constraint fk_tipo_documento foreign key (tipo_documento) references usuarios.tipo_documento(tipo_documento),
	constraint cliente_pk primary key (tipo_documento, numero_documento)
);

create table usuarios.cliente_has_rol(
	tipo_documento varchar(10) not null,
	numero_documento varchar(50) not null ,
	rol varchar(40) not null ,
	estado varchar(20) not NULL ,
	fecha_terminacion date not null,
	constraint fk_cliente foreign key (tipo_documento, numero_documento) references usuarios.cliente(tipo_documento, numero_documento),
	constraint fk_rol foreign key (rol) references usuarios.rol(rol)
);

drop table usuarios.cliente_has_rol;