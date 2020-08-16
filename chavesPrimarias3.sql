create database escola

use escola

create table aluno(
ra int primary key,
rg varchar(15),
nome varchar (100),
telefone numeric(15)
)

create table curso(
idcurso int primary key identity(1,1),
horas varchar(10),
grade varchar(100)
)
create table perlet(
idperlet int primary key identity(1,1),
horario varchar(10),
salas varchar(30)
)

create table matricula(
matricula int primary key,
fk_RA int,
idcurso int,
idperlet int,
dia date,
pk_matricula int,
constraint fk_matri_RA foreign key (ra) references aluno(ra) 
)

 constraint fk_curso foreign key references aluno(RA) 
 constraint fk_ra foreign key (aluno) references aluno(RA) 
constraint pk_matricula primary key clustered (ra,idcurso,idperlet)
drop table matricula
drop table aluno
drop table curso 
drop table perlet