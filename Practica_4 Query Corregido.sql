create database BAR;
use BAR;

CREATE TABLE Sucursal(
  ID int not null,
Direccion varchar(30),
  Capacidad int, 
  primary key (`ID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE Empleado (
  ID int not null,
  Nombre varchar(20),
  ApellidoPa varchar(20),
  ApellidoMa varchar(20),
  FechaNac date,
  Telefono int,
  Direccion varchar(30),
  ID_EmpleadoSucursal int,
  primary key(`ID`)

  )ENGINE=InnoDB DEFAULT CHARSET=latin1;
  
CREATE TABLE Plato (
  ID int NOT NULL,
  Nombre varchar(20),
  Precio int,
  Descripcion varchar(60),
  Cantidad int,
  PRIMARY KEY (`ID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE Ticket (
  ID int not null,
  ID_SucursalTicket int,
  Subtotal double,
  Total double,
  FechaEmision date,
  PRIMARY KEY (`ID`)
  )ENGINE=InnoDB DEFAULT CHARSET=latin1;
  
  CREATE TABLE Bebida (
  ID int not null,
 Nombre varchar(20),
  Precio double,
  Descripcion varchar(60),
  Cantidad int, 
 PRIMARY KEY (`ID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE Pedido (
  ID int not null,
  ID_Plato int, 
  ID_Bebida int, 
  ID_Ticket int, 
  ID_Empleado int,
  PRIMARY KEY (`ID`),
   FOREIGN KEY(`ID_Plato`) REFERENCES `Plato`(`ID`),
   FOREIGN KEY(`ID_Bebida`) REFERENCES `Bebida`(`ID`),
   FOREIGN KEY(`ID_Ticket`) REFERENCES `Ticket`(`ID`),
   FOREIGN KEY(`ID_Empleado`) REFERENCES `Empleado`(`ID`)
   )ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE Nomina (
  ID int not null,
  ID_EmpleadoNomina int, 
  Sueldo double,
primary key(`ID`),
foreign key (ID_EmpleadoNomina) references `Empleado`(`ID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE Turno (
  ID int not null,
 ID_EmpleadoTurno int,
  Turno varchar(15), 
  primary key(`ID`),
  foreign key (ID_EmpleadoTurno) references `Empleado`(`ID`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;


create table ExEmpleado(
ID int not null,
  Nombre varchar(20),
  ApellidoPa varchar(20),
  ApellidoMa varchar(20),
 primary key(`ID`)
 )ENGINE=InnoDB DEFAULT CHARSET=latin1;
