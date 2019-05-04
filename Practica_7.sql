use BAR;

CREATE VIEW NominaResumen as
select Id_EmpleadoNomina, Sueldo from Nomina;

CREATE VIEW VistaEmpleado as
select Nombre, ApellidoMa, ApellidoPa, FechaNac from Empleado;

CREATE VIEW NominaResumen2 as
select * from Nomina
where Sueldo = 2500;

create VIEW BebidasSinAlcohol as
select * from Bebida
where Precio<40;

CREATE VIEW DetalleDeOrden as 
select * from Pedido
where ID_Empleado = 1015;

create view EmpleadosGenerales as
select * from Nomina
where Sueldo<2000;

create view EmpleadosRelevantes as 
select * from Nomina
where Sueldo>2000;