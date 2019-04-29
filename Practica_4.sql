drop database if exists `BAR`;
create database `bar`;
use `BAR`;


drop table if exists `BAR`;
create table `BAR`(
	`Nombre` varchar(100) NOT NULL,
	`Dirección` varchar(100) NOT NULL,
	`Contacto` varchar(100) NOT NULL,
	PRIMARY KEY (`Nombre`)
)ENGINE=InnoDB DEFAULT CHARSET=latin1;

drop table if exists `DUEÑO`;
create table `DUEÑO`(
	`Nombre` varchar(15) NOT NULL,
	`Apellido` varchar(15) NOT NULL,
	`Contacto` varchar(100) NOT NULL,
	PRIMARY KEY (`Contacto`)

) ENGINE=InnoDB DEFAULT CHARSET=latin1;

drop table if exists `CUENTA`;
create table `CUENTA`(
	`Orden_Id` int NOT NULL AUTO_INCREMENT,
	`Empleado_Nombre` varchar (20) NOT NULL,
	`Empleado_Apellido` varchar (20) NOT NULL,
	`Empleado_id` int NOT NULL,
	`Total` double NOT NULL,	
	PRIMARY KEY (`Orden_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

drop table if exists `Orden`;
create table `Orden`(
	`Ordem_Id` int NOT NULL,
	`Nombre` varchar(100) NOT NULL,
	`Cantidad` varchar(20) NOT NULL,
	`Precio` varchar(20) NOT NULL,
	FOREIGN KEY(`Order_Id`) REFERENCES `CUENTA`(`Order_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

drop table if exists `Cliente`;
create table `Cliente`(
	`Cliente_Id` int NOT NULL AUTO_INCREMENT,
	`Nombre` varchar(15) NOT NULL,
	`Apellido` varchar(15) NOT NULL,
	`Contacto` varchar(20) DEFAULT NULL,
	`Email_Id` varchar(50) DEFAULT NULL,	
	PRIMARY KEY (`Cliente_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


drop table if exists `MESERO`;
create table `MESERO`(
	`Mesero_Id` int NOT NULL AUTO_INCREMENT,
	`Nombre` varchar(15) NOT NULL,
	`Apellido` varchar(15) NOT NULL,
	`Contacto` varchar(20) NOT NULL,
 	`Direccion` varchar(30) DEFAULT NULL,
  	`Salario` varchar(30) DEFAULT NULL,
	`Sexo` char(1) DEFAULT NULL,
	`Fecha_De_Nac` date DEFAULT NULL,
	`Fecha_De_ingreso` date NOT NULL,
	PRIMARY KEY (`Mesero_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

drop table if exists `CAJERO`;
create table `CAJERO`(
	`Cajero_Id` int NOT NULL AUTO_INCREMENT,
	`Nombre` varchar(15) NOT NULL,
	`Apellido` varchar(15) NOT NULL,
	`Contacto` varchar(20) NOT NULL,
 	`Direccion` varchar(30) DEFAULT NULL,
  	`Salario` varchar(30) DEFAULT NULL,
	`Sexo` char(1) DEFAULT NULL,
	`Fecha_De_Nac` date DEFAULT NULL,
	`Fecha_De_ingreso` date NOT NULL,
	PRIMARY KEY (`Cajero_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

drop table if exists `Cocinero`;
create table `Cocinero`(
	`Cocinero_Id` int NOT NULL AUTO_INCREMENT,
	`Nombre` varchar(15) NOT NULL,
	`Apellido` varchar(15) NOT NULL,
	`Contacto` varchar(20) NOT NULL,
 	`Direccion` varchar(30) DEFAULT NULL,
  	`Salario` varchar(30) DEFAULT NULL,
	`Sexo` char(1) DEFAULT NULL,
	`Fecha_De_Nac` date DEFAULT NULL,
	`Fecha_De_ingreso` date NOT NULL,
	PRIMARY KEY (`Cocinero_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;





drop table if exists `MENU`;
create table `MENU`(
	`Menu_Id` int NOT NULL AUTO_INCREMENT,
	`Nombre` varchar(100) NOT NULL,
	`Precio` varchar(20) NOT NULL,	
	`Tipo` varchar(20) DEFAULT NULL,
	`Categoria` varchar(30) NOT NULL,
	PRIMARY KEY(`Menu_Id`,`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

drop table if exists `DETALLE DE VENTA`;
create table `DETALLE DE VENTA`(
	`Fecha` date NOT NULL,
	`Daily` int NOT NULL,
	`Weekly` int DEFAULT NULL,
	`Monthly` int DEFAULT NULL,
	`Rname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



drop table if exists `MESAS`;
create table `MESAS`(
	`Num_De_Mesa` varchar(9) NOT NULL,
	`Detalles` varchar(200) DEFAULT NULL,
	PRIMARY KEY (`Num_De_Mesa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

drop table if exists `RESERVA`;
create table `RESERVA`(
	`Reserva_Id` int NOT NULL AUTO_INCREMENT,
	`Mesa_Num` varchar(30) NOT NULL,
	`Fecha` varchar(30) NOT NULL,
	`Tiempo` varchar(30) NOT NULL,
	`Cust_Id` int NOT NULL,
	PRIMARY KEY (`Reserva_Id`),
	FOREIGN KEY (`Cust_Id`) REFERENCES `CUSTOMER`(`Customer_Id`),
	FOREIGN KEY (`Num_De_Mesa`) REFERENCES `MESAS`(`Num_De_Mesa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
