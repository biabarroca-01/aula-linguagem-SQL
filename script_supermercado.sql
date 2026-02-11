CREATE database supermercado;

CREATE TABLE cliente(
id int NOT NULL,
nome varchar(50) NOT NULL,
cpf varchar(11) NOT NULL,
CONSTRAINT pk_id_cliente PRIMARY KEY (id)
); 

CREATE TABLE produto(
id int NOT NULL,
descricao varchar(100) NOT NULL,
cod_barras varchar(14) NOT NULL,
valor decimal (16,2)
); 

alter table produto add constraint pk_produto primary key (id);
alter table produto add column situacao boolean not null;
alter table produto alter column descricao type varchar (200);
alter table produto drop column situacao;
