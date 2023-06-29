CREATE DATABASE JuanDB;

--drop database "Nombre de la base";

CREATE TABLE Estudiante (
    ID int primary key not null, 
    Nombre varchar(55) not null,
    Apellido varchar(55) not null,
    Email varchar(55) not null ,
    Curso int not null 
);

CREATE TABLE Curso (
    ID int primary key not null,
    NombreCurso varchar(55) not null,
    Profesor varchar(55) not null,
    Salon varchar(55) not null
);

CREATE TABLE Profesor (
    ID int not null,
    NombreProfe varchar(55) not null,
    ApellidoProfe varchar(55) not null,
    especializacion varchar(55) not null,
);

-- sentencia adicciona una columna a la base de datos 
ALTER TABLE estudiante
ADD phone varchar(20) not null;

-- sentencia que elimina la columna de la base de datos
DROP COLUMN estudiante;

--sentencia que cambia el nombre a la columna
EXEC sp_rename 'estudiante.correo','email','COLUMN';

--sentencia que renombra una tabla
EXEC sp_rename 'estudiante'.'estudiantes';

--ejecutar la columna
exec sp_columns Estudiante;

--utilizando constrains
CREATE TABLE Estudiantes (
    ID int primary key not null, 
    Nombre varchar(55) not null,
    Apellido varchar(55) not null,
    Email varchar(55) not null ,
    Curso int not null 
	constraint pk_estudiantes primary key (id)
);
