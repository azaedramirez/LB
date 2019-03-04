create database PRACTICA_2

create table Cita(
Id Uniqueidentifier not null primary key
NumeroMedico varchar(10) not null,
NumeroPaciente varchar(7) not null,
HorarioCita time(8) not null,
DiaCita date(8) not null,
Ubicacion varchar(20) not null,
Descripcion as (Ubicacion + " " + Nombre)
CREATE INDEX IDX_Cita_Id
ON Cita (Id);
)


create table Cliente(
Id Uniqueidentifier not null primary key
NumeroPaciente varchar(7) not null,
Nombre varchar(40) not null,
PrimerApellido varchar(10) not null,
SegundoApellido varchar(10) not null,
FechaNacimiento date not null,
Sexo varchar(1) not null,
TelefonoContacto int not null,
Edad as (datediff(year, FechaNacimiento, getdate())),
CREATE INDEX IDX_Cliente_Id
ON Cliente (Id)
)
create table Medico(
Id Uniqueidentifier not null primary key
NombreMedico varchar(40) not null,
PrimerApellido varchar(50) not null,
SegundoApellido varchar(50) not null,
CedulaProfesional int not null,
CREATE INDEX IDX_Medico_Id
ON Medico (Id)
)
create table Chofer(
Id Uniqueidentifier not null primary key
NombreChofer varchar(40) not null,
PrimerApellido varchar(50) not null,
SegundoApellido varchar(50) not null,
CedulaProfesional int not null,
CREATE INDEX IDX_Chofer_Id
ON Chofer (Id)
)
create table Secretaria(
Id Uniqueidentifier not null primary key
NombreSecretaria varchar(40) not null,
PrimerApellido varchar(50) not null,
SegundoApellido varchar(50) not null,
CedulaProfesional int not null,
CREATE INDEX IDX_Secretaria_Id
ON Secretaria (Id)
)

create table Psicologo(
Id Uniqueidentifier not null primary key
NombrePsicologo varchar(40) not null,
PrimerApellido varchar(50) not null,
SegundoApellido varchar(50) not null,
CedulaProfesional int not null,
CREATE INDEX IDX_Psicologo_Id
ON Psicologo (Id)
)
create table Abogado(
Id Uniqueidentifier not null primary key
NombreAbogado varchar(40) not null,
PrimerApellido varchar(50) not null,
SegundoApellido varchar(50) not null,
CedulaProfesional int not null,
CREATE INDEX IDX_Abogado_Id
ON Abogado (Id)
)

create table Diagnostico(
Id Uniqueidentifier not null primary
FechaCita date not null,
CREATE INDEX IDX_Diagnostico_Id
ON Diagnostico (Id)
)

create table Horarios(
Id Uniqueidentifier not null primary key
Fecha date not null,
HorarioDisponible date not null,
CREATE INDEX IDX_Horario_Id
ON Horario (Id)
)

create table FechaDisponible(
Id Uniqueidentifier not null primary key
Fecha date not null,
CREATE INDEX IDX_FechaDisponible_Id
ON FechaDisponible (Id)
)


