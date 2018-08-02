
create table ejemplo(
  id int,
  campo1 varchar(10)

);

CREATE SEQUENCE public.seq_ejemplo
    INCREMENT 1
    START 1;

insert into ejemplo values (nextval('seq_ejemplo'), 'hola');

select * from public.ejemplo;