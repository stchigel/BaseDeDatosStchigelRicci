select min(Dias) from Paquete;
select max(Dias) from Paquete;
select avg(Costo) from Paquete where Dias = 3;
select sum(CantPersonas) from Reservas where FechaIn >= "2024-7-1" and FechaFin <= "2024-7-31";
select distinct Lugar from Paquete;
select sum(Dias) from Paquete where Lugar="Bariloche";
select count(paquete_idPaquete) from Reservas where Paquete_idPaquete = 1;
select count(Paquete_idPaquete), Paquete_idPaquete from Reservas group by Paquete_idPaquete;
update Paquete set Costo = Costo + (Costo * 10/100);
select count(Alojamientos_idAlojamientos), Alojamientos_idAlojamientos from Paquete group by Alojamientos_idAlojamientos;
update Paquete set Excursiones = Excursiones + 1 where Lugar = "Salta"; 
select sum(Costo), Lugar from Paquete group by Lugar;
select Alojamientos_idAlojamientos from Paquete group by Alojamientos_idAlojamientos having count(*)>3;
select Lugar from Paquete group by Lugar having sum(Costo) > 100000;
select Lugar from Paquete group by Lugar having avg(Costo) > 25000;
select avg(CantPersonas), Paquete_idPaquete from Reservas group by Paquete_idPaquete;
select max(Costo), Lugar from Paquete group by Lugar;
select count(*), Clientes_DNI from Reservas group by Clientes_DNI;
select count(*), Lugar, Dias from Paquete group by Lugar, Dias order by Lugar, Dias asc;
select distinct lugar, Costo, idPaquete from Paquete order by Costo;