drop table autores_livros cascade constraints;
drop table livros cascade constraints;
drop table autores cascade constraints;

-- create table - constraints n�vel de coluna
create table autores
(cod_autor int         constraint autores_pk primary key,
 nome      varchar(50) constraint autores_livros_nn not null,
 sobrenome varchar(50) constraint autores_sobrenome_nn not null);
 
 -- create table - constraints n�vel de coluna
 create table livros
 (cod_livro int constraint livros_pk primary key,
  titulo    varchar(100) not null);
------------------------------------------------------------------------------  
  drop table livros;
 -- create table - constraint PK em n�vel de TABELA

create table livros
 (cod_livro int ,
  titulo    varchar(100) not null,
  constraint livros_pk primary key(cod_livro));
 ------------------------------------------------------------------------------
 -- create table - constraints PK n�vel de tabela (nesse caso, obrigat�rio)
 drop table livros_autores;
  create table livros_autores
  (cod_livro int,
   cod_autor int ,
   constraint livros_autores_pk primary key (cod_livro,cod_autor));
------------------------------------------------------------------------------
 -- constraint PK ap�s a cria��o da tabela 
  drop table livros_autores;
  
   create table livros_autores
  (cod_livro int,
   cod_autor int );

-- Adi��o de PK ap�s a cria��o da tabela
   alter table livros_autores
   add
   constraint livros_autores_pk primary key(cod_livro,cod_autor);

-- Dois alter table (um para cada constraint FK ) 
   alter table livros_autores
   add 
   constraint livros_fk foreign key(cod_livro) references livros(cod_livro);
   
   alter table livros_autores
   add 
   constraint autores_fk foreign key(cod_autor)   references autores;

------------------------------------------------------------------------------ 
   alter table livros_autores 
   drop constraint autores_fk;
   alter table livros_autores 
   drop constraint livros_fk;
------------------------------------------------------------------------------
-- Adi��o de constraint com um alter table.
   alter table livros_autores
   add 
   (constraint livros_fk foreign key(cod_livro) references livros(cod_livro),
   constraint autores_fk foreign key(cod_autor) references autores);
------------------------------------------------------------------------------
-- cria�ao de FK durante o create table
  
  drop table livros_autores;
  
 create table livros_autores
  (cod_livro int constraint livros_fk  references livros,
   cod_autor int constraint autores_fk references autores,
   constraint livros_autores_pk primary key(cod_livro,cod_autor));