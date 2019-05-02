use bar;

SELECT * FROM Empleado;
select count(ID) from Empleado;
select max(FechaNac) from Empleado;
select count(ID) from Empleado;
select sum(total) from Ticket;

select ID_EmpleadoSucursal, count(*) from Empleado
group by ID_EmpleadoSucursal;

select Sueldo, count(*) from Nomina
group by Sueldo;


select count(*), Sueldo from Nomina
group by Sueldo
having Sueldo>2000;

select count(*), Sueldo from Nomina
group by Sueldo
having Sueldo<2000;
select count(*), Precio from Plato
group by Precio
having Precio>=50;

select count(*), Precio from Bebida
group by Precio
having Precio>60;

select Nombre+ApellidoMa+ApellidoPa as NombreCompleto from Empleado;

select Precio as PrecioUnitario from Plato ;


select * from Empleado
where nombre = 'Alexis';

select * from Empleado
where ApellidoMa = 'Lopez';

select * from Nomina
where Sueldo = 2500;

select * from Plato
where Precio>80;

select * from Bebida
where Precio<45;

select * from Empleado
where ID = 1001;

select * from Pedido
where ID_Ticket = 1001;

select * from Pedido
where ID_Empleado = 1015;

select * from ExEmpleado
where ID = 001;
