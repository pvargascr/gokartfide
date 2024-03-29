create database Mario_Karts;
USE [Mario_Karts]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 12/1/2019 9:00:34 PM ******/

CREATE TABLE [dbo].[Administrador](
	[id_admin] [int] NOT NULL,
	[nombre_admin] [varchar](100) NOT NULL,
	[apellido1_admin] [varchar](100) NOT NULL,
	[apellido2_admin] [varchar](100) NOT NULL,
	[correo_admin] [varchar](100) NOT NULL,
	[usuario_admin] [varchar](100) NOT NULL,
	[contrasena_admin] [varchar](100) NOT NULL,
	[telefono_admin] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

insert into Administrador values (1,'Pablo','Vargas','Sandi','pablo.vargas@mariokarts.com','pvargas', 'mecha123','8585858')
insert into Administrador values (2,'Valeria','Matamoros','Navarro','valeria.matamoros@mariokarts.com','vmatamoros', 'Mac1234','12345678')
insert into Administrador values (3,'Wilheln','Cerdas','Briese','Wilheln.Cerdas@mariokarts.com','wcerdas', 'cafe420','87654321')

/****** Object:  Table [dbo].[Carrera]    Script Date: 12/1/2019 9:00:34 PM ******/

CREATE TABLE [dbo].[Carrera](
	[id_carrera] [int] NOT NULL,
	[fecha_carrera] [datetime] NOT NULL,
 PRIMARY KEY CLUSTERED 
(
	[id_carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

insert into Carrera values (1,'2019-12-19 21:11:01')
insert into Carrera values (2,'2019-12-18 01:11:01')
insert into Carrera values (3,'2019-12-17 21:18:01')
insert into Carrera values (4,'2019-12-19 11:11:01')
insert into Carrera values (5,'2019-12-19 11:22:01')
insert into Carrera values (7,'2019-12-19 21:11:02')
insert into Carrera values (9,'2019-12-12 12:11:01')
insert into Carrera values (34,'2019-12-16 21:11:01')
insert into Carrera values (31,'2019-12-11 21:11:01')
insert into Carrera values (33,'2019-12-12 21:11:01')
insert into Carrera values (12,'2019-12-19 21:21:01')
insert into Carrera values (434,'2019-12-14 21:11:01')
insert into Carrera values (54,'2019-12-14 21:13:01')
insert into Carrera values (45,'2019-12-15 11:11:01')
insert into Carrera values (432,'2019-12-15 21:11:01')
insert into Carrera values (324,'2019-12-13 21:11:01')
insert into Carrera values (234,'2019-12-17 01:11:01')
insert into Carrera values (219,'2019-12-10 21:10:01')
insert into Carrera values (2341,'2019-12-10 21:19:01')

/****** Object:  Table [dbo].[Cliente]    Script Date: 12/1/2019 9:00:34 PM ******/

CREATE TABLE [dbo].[Cliente](
	[id_Cliente] [int] NOT NULL,
	[nombre_cliente] [varchar](100) NOT NULL,
	[apellido1_cliente] [varchar](100) NOT NULL,
	[apellido2_cliente] [varchar](100) NOT NULL,
	[correo_cliente] [varchar](100) NOT NULL,
	[telefono_cliente] [varchar](8) NOT NULL,
	[edad_cliente] [int] NOT NULL,
	[tpoliza_cliente] [varchar](2) NOT NULL,
	[apodo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

insert into Cliente values (1,'Pablo','Rojas','Rojas','micorreo@gmail.com','32323232',23,'10','destroyer')
insert into Cliente values (3,'Mario','Marquez','Rojas','micorreo@gmail.com','32323232',12,'10','mar10')
insert into Cliente values (23,'Maria','Arley','Salazar','micorreo@gmail.com','32323232',44,'10','maria')
insert into Cliente values (12,'Jose','Mora','Corrales','micorreo@gmail.com','32323232',23,'10','JM')
insert into Cliente values (123,'Jose Pablo','Cruz','Rojas','micorreo@gmail.com','32323232',12,'10','jcruz')
insert into Cliente values (43,'Rose','Mora','Espinoza','micorreo@gmail.com','32323232',23,'10','Rose')
insert into Cliente values (12,'Rosa','Mora','Rojas','micorreo@gmail.com','32323232',23,'10','Rosex')
insert into Cliente values (553,'Juan','Mora','Rojas','micorreo@gmail.com','32323232',12,'10','Juancho')
insert into Cliente values (1231,'Edgar','Rojas','Rojas','micorreo@gmail.com','32323232',22,'10','Rojitas')
insert into Cliente values (098,'Mario','Mora','Mora','micorreo@gmail.com','32323232',18,'10','Marito')
insert into Cliente values (77,'Mirna','Kempes','Rojas','micorreo@gmail.com','32323232',34,'10','Mir')
insert into Cliente values (13,'Pablo','Sanabria','Rojas','micorreo@gmail.com','32323232',23,'10','Pablex')

/****** Object:  Table [dbo].[GoKart]    Script Date: 12/1/2019 9:00:34 PM ******/

CREATE TABLE [dbo].[GoKart](
	[id_gokart] [int] NOT NULL,
	[estado_gokart] [varchar](50) NOT NULL,
	[cilindrada_gokart] [int] NOT NULL,
	[tcombustible_gokart] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_gokart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

insert into GoKart values (1232, 'activo','100','gas')
insert into GoKart values (1233, 'inactivo','150','gas')
insert into GoKart values (1234, 'activo','100','gas')
insert into GoKart values (1235, 'activo','100','gas')
insert into GoKart values (1236, 'inactivo','150','gas')
insert into GoKart values (1237, 'activo','100','gas')
insert into GoKart values (1238, 'inactivo','100','gas')
insert into GoKart values (1332, 'activo','100','gas')
insert into GoKart values (1552, 'activo','50','gas')
insert into GoKart values (1222, 'activo','100','gasolina')
insert into GoKart values (1282, 'activo','100','gas')
insert into GoKart values (8832, 'activo','150','gas')
insert into GoKart values (7232, 'activo','100','gasolina')
insert into GoKart values (9832, 'activo','100','gas')
insert into GoKart values (1285, 'activo','50','gasolina')
insert into GoKart values (1532, 'activo','100','gas')
insert into GoKart values (1551, 'activo','50','gasolina')
insert into GoKart values (1216, 'inactivo','100','gas')
insert into GoKart values (1132, 'activo','100','gas')

/****** Object:  Table [dbo].[Resultados_Carrera]    Script Date: 12/1/2019 9:00:34 PM ******/

CREATE TABLE [dbo].[Resultados_Carrera](
	[id_carrera] [int] NOT NULL,
	[id_gokart] [int] NOT NULL,
	[id_Cliente] [int] NOT NULL,
	[tiempo_carrera] [varchar](12) NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[id_carrera] ASC,
	[id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Resultados_Carrera]  WITH CHECK ADD FOREIGN KEY([id_carrera])
REFERENCES [dbo].[Carrera] ([id_carrera])
GO
ALTER TABLE [dbo].[Resultados_Carrera]  WITH CHECK ADD FOREIGN KEY([id_Cliente])
REFERENCES [dbo].[Cliente] ([id_Cliente])
GO
ALTER TABLE [dbo].[Resultados_Carrera]  WITH CHECK ADD FOREIGN KEY([id_gokart])
REFERENCES [dbo].[GoKart] ([id_gokart])

ALTER DATABASE [Mario_Karts] SET  READ_WRITE 
GO
use Mario_Karts

insert into Resultados_Carrera values (1,1232,1,'12:23')
insert into Resultados_Carrera values (1,1233,23,'12:25')
insert into Resultados_Carrera values (1,1132,12,'15:23')
insert into Resultados_Carrera values (34,1232,1,'14:24')
insert into Resultados_Carrera values (34,1237,123,'16:23')
insert into Resultados_Carrera values (34,1238,77,'11:23')
insert into Resultados_Carrera values (2341,2341,43,'12:23')
insert into Resultados_Carrera values (2341,1551,12,'12:23')
insert into Resultados_Carrera values (2341,1282,13,'12:23')
insert into Resultados_Carrera values (2341,1285,13,'12:23')
insert into Resultados_Carrera values (2341,1216,553,'12:23') 


create table Proveedor(
id_proveedor int primary key not null,
nombre_proveedor varchar(30) not null,
cedjur_proveedor int not null,
telefono_proveedor int not null,
correo_proveedor varchar(50) not null
);

insert into proveedor values (1,'QWMoto', 400055122, 2256215, 'qwmoto@autoparts.com') 
insert into proveedor values (2,'Highper', 402001505, 22542582, 'highpersa@hotmail.com') 
insert into proveedor values (3,'MadeMoto', 201445500, 84651142, 'mademotocr@repuestos.com') 
insert into proveedor values (4,'EaglePower', 4510001515, 89562051, 'eaglepower@hotmail.com') 
insert into proveedor values (5,'Hiperfect', 102145551, 22568420, 'hiperfect@partes.com') 
insert into proveedor values (6,'TeleMoto', 2022155000, 60511642, 'telemotocr@repuestos.com') 

select * from Proveedor

create table Componente(
id_componente int primary key not null,
detalle_componente varchar(100) not null,
marca_componente varchar(50) not null,
precio_componente money not null,
id_proveedor int not null,
foreign key (id_proveedor) references Proveedor (id_proveedor) on delete cascade
);

insert into componente values (1, 'Aleación de aluminio', 'Changzou', 7820, 1)
insert into componente values (2, 'Reductor caja de cambios', 'Chongqing',52000, 1)
insert into componente values (3, 'Cadena Kart Jackshaft', 'Taizhou', 3520, 2)
insert into componente values (4, 'Embrage', 'KDC', 8950, 2)
insert into componente values (5, 'Carburador', 'GX200', 9050, 2)
insert into componente values (6, 'Husillo de Aluminio', 'TONGBA', 1500, 3)
insert into componente values (7, 'Asiento Negro', 'EGS', 15250, 3)
insert into componente values (8, 'Pedal', 'Mademoto', 602150, 3)
insert into componente values (9, 'Piñón', 'Tongbao', 2550, 4)
insert into componente values (10, 'Embrague', 'Hotthick', 7820, 4)
insert into componente values (11, 'Kart', 'Asy', 420000, 2)
insert into componente values (12, 'Bola rodamiento', 'Geekinstyle', 250150, 2)
insert into componente values (13, 'Parachoques de seguridad', 'Asy', 7820, 1)
insert into componente values (14, 'Marco de aluminio', 'Lainmei',39200, 1)
insert into componente values (15, 'Carburador', 'GX', 7820, 3)

select * from Componente

create table Reparacion(
id_reparacion int identity(1,1)  primary key,
id_admin int,
id_gokart int ,
id_componente int,
estado_reparacion bit not null, -- 0 funcional / 1 en reparacion
detalle_reparacion varchar(150) not null,
)
use Mario_Karts

ALTER TABLE [dbo].[Reparacion]  WITH CHECK ADD FOREIGN KEY([id_admin])
REFERENCES [dbo].[Administrador] ([id_admin]) on delete cascade
GO
ALTER TABLE [dbo].[Reparacion]  WITH CHECK ADD FOREIGN KEY([id_gokart])
REFERENCES [dbo].[GoKart] ([id_gokart]) on delete cascade
GO
ALTER TABLE [dbo].[Reparacion]  WITH CHECK ADD FOREIGN KEY([id_componente])
REFERENCES [dbo].[Componente] ([id_componente]) on delete cascade
GO


create table bitacoraReparaciones(
id_admin int,
id_goKart int,
id_componente int,
fecha datetime,
estado_reparación bit
constraint pk_id_goKart_id_componente_fecha primary key clustered(id_goKart asc, id_componente asc, fecha asc)
);

create table bitacoraDaños(
	id_bitacoraDaños int IDENTITY(1,1) primary key,
	id_goKart int,
	id_admin int,
	id_componente int,
	detalle_reparacion varchar(150),
	fecha datetime,	
);

create table movimientoComponente(
	id_movimientoComponente int IDENTITY(1,1) primary key,
	id_componete int,
	detalle_componente varchar(50),
	usuario varchar(50),
	fecha datetime,
	tipo_movimiento_componente varchar(50)
);


create table bitacoraCliente(
	id_bitacoraCliente int IDENTITY (1,1) primary key,
	id_cliente int,
	nombre_cliente varchar(100),
	apellido1_cliente varchar(100),
	correo_cliente varchar(100),
	fecha datetime,
	tipo_movimiento_cliente varchar(50)
);

/*

											PROCEDIMIENTOS ALMACENADOS Y CURSORES

*/

-- 1

create proc crearReparacion @id_Componente int, @id_gokart int, @id_administrador int, @detalle_reparacion varchar(100)
as
begin
	declare @estado_reparacion bit
	if (select estado_reparacion from Reparacion where id_gokart = @id_gokart) = 1
begin
	print 'El vehiculo ya se encuentra en reparación'
end
	else
begin
	set @estado_reparacion = 1;
	insert into Reparacion values(@id_administrador,@id_gokart,@id_Componente,@estado_reparacion,@detalle_reparacion);
	print 'Reparacion Ingresada';
	
end
end

declare @id_Componente int, @id_gokart int, @id_administrador int, @detalle_reparacion varchar(100);
set @id_Componente = 1
set @id_gokart = 1232
set @id_administrador = 1
set @detalle_reparacion = 'Se despapayo tere'
exec crearReparacion @id_Componente, @id_gokart, @id_administrador, @detalle_reparacion;

select * from Reparacion;
select * from GoKart where id_gokart = 1232

-- 2 
create proc crearCarrera @id_carrera int, @id_gokart int, @id_cliente int, @tiempoCarrera varchar(12)
as
begin
	declare @activo varchar(10) = (select estado_gokart from GoKart where id_gokart = @id_gokart)
	if @activo = 'activo'
begin
	insert into Resultados_Carrera values(@id_carrera,@id_gokart,@id_cliente,@tiempoCarrera);
	print 'Resultado Insertado';
end
	else
begin
print 'El vehiculo no se encuentra activo'
end
end

declare @id_carrera int, @id_gokart int, @id_cliente int, @tiempoCarrera varchar(12);
set @id_carrera = 1;
set @id_gokart = 1232;
set @id_cliente = 123;
set @tiempoCarrera = '15:12';
exec crearCarrera @id_carrera, @id_gokart, @id_cliente, @tiempoCarrera;

select * from Resultados_Carrera;
select * from GoKart;
-- 3
create proc reparacionCombustible
as
begin
select b.tcombustible_gokart, count(a.id_reparacion) as 'Cantidad de Reparaciones' from Reparacion a, GoKart b where a.id_gokart = b.id_gokart group by b.tcombustible_gokart
end

exec reparacionCombustible -- Aqui solo aparece 1 porque de todos los gokarts solo a uno se le está en reparacion,
                           -- aparecerán más cuando se vayan agregando mas gokarts a reparación.
select * from GoKart;
select * from Reparacion;

-- 4
alter proc conteoGokartEspec @id_gokart int
as
begin
select a.id_gokart, (select COUNT(*) from Reparacion where id_gokart = @id_gokart) as 'Cantidad de Reparaciones', COUNT(c.id_carrera) as 'Cantidad de carreras' from GoKart a, Reparacion b, Carrera c, Resultados_Carrera d where a.id_gokart = b.id_gokart and a.id_gokart = d.id_gokart and d.id_carrera = c.id_carrera and a.id_gokart = @id_gokart group by a.id_gokart
end

declare @id_gokart int
set @id_gokart = 1232
exec conteoGokartEspec @id_gokart

select * from Reparacion;
select * from Resultados_Carrera;

-- 5 
create proc conteoGokartTodos
as
begin
declare @id_gokart int
declare conteosGokart cursor for select id_gokart from GoKart
open conteosGokart
fetch conteosGokart into @id_gokart
while(@@FETCH_STATUS = 0)
begin
select a.id_gokart, (select COUNT(*) from Reparacion where id_gokart = @id_gokart) as 'Cantidad de reparación', COUNT(c.id_carrera) as 'Cantidad de carreras' from GoKart a, Reparacion b, Carrera c, Resultados_Carrera d where a.id_gokart = b.id_gokart and a.id_gokart = d.id_gokart and d.id_carrera = c.id_carrera and a.id_gokart = @id_gokart group by a.id_gokart
fetch conteosGokart into @id_gokart
end
close conteosGokart
deallocate conteosGokart
end
go

exec conteoGokartTodos

-- 6 
create proc sacarTaller @id_gokart int, @detalle_reparacion varchar(100)
as
begin
	declare @estado_reparacion bit
	set @estado_reparacion = (select estado_reparacion from Reparacion where id_gokart = @id_gokart)
	if @estado_reparacion = 1 
begin
	update Reparacion set detalle_reparacion = @detalle_reparacion, estado_reparacion = 0 where id_gokart = @id_gokart;
	update GoKart set estado_gokart = 'activo' where id_gokart = @id_gokart;
	delete from Reparacion where id_gokart = @id_gokart
	print 'Vehiculo ha salido del taller exitosamente'
end
	else
begin
	print 'El vehiculo ya se encuentra activo'
end
end

declare @id_gokart int, @detalle_reparacion varchar(100)
set @id_gokart = 1232
set @detalle_reparacion = 'Regletas Malas'
exec sacarTaller @id_gokart, @detalle_reparacion


select * from Reparacion;
select * from GoKart where id_gokart = 1232

-- 7
create proc carrerasCliente 
as
begin
	declare @id_cliente int
	declare conteoCliente cursor for select id_Cliente from Cliente
	open conteoCliente
	fetch conteoCliente into @id_cliente
	while(@@FETCH_STATUS = 0)
begin
	select * from Resultados_Carrera a where id_Cliente = @id_cliente
	fetch conteoCliente into @id_cliente
end
close conteoCliente;
deallocate conteoCliente
end

exec carrerasCliente

-- 8
create proc cantidadCliente
as
begin
declare @id_cliente int
declare numCliente cursor for select id_Cliente from Cliente
open numCliente
fetch numCliente into @id_cliente
while(@@FETCH_STATUS = 0)
begin
select nombre_cliente from Cliente where id_Cliente = @id_cliente
fetch numCliente into @id_cliente
end
close numCliente
deallocate numCliente
end

exec cantidadCliente

--9
create proc proveedorComponente
as
begin
declare @id_proveedor int
declare componenteProveedor cursor for select id_proveedor from Proveedor
open componenteProveedor
fetch componenteProveedor into @id_proveedor
while(@@FETCH_STATUS = 0)
begin
select * from Componente where id_proveedor = @id_proveedor
fetch componenteProveedor into @id_proveedor
end
close componenteProveedor
deallocate componenteProveedor
end

exec proveedorComponente

/*

													TRIGGERS

*/


-- 1

create trigger reparacionGokart on Reparacion after insert
as
begin
declare @estado_gokart varchar(50)
declare @id_admin int
declare @id_gokart int
declare @id_componente int
set @id_gokart = (select id_gokart from inserted)
set @id_admin = (select id_admin from inserted)
set @id_componente = (select id_componente from inserted)
set @estado_gokart = (select estado_gokart from GoKart where id_gokart = @id_gokart)
if @estado_gokart = 'activo'
begin
update GoKart set estado_gokart = 'inactivo' where id_gokart = @id_gokart
insert into bitacoraReparaciones values (@id_admin, @id_gokart, @id_componente, GETDATE(),1);
end
end

-- Primer procedimiento almacenado (Para dar el ejemplo con el trigger)
declare @id_Componente int, @id_gokart int, @id_administrador int, @detalle_reparacion varchar(100);
set @id_Componente = 1
set @id_gokart = 1232
set @id_administrador = 1
set @detalle_reparacion = 'Se despapayo tere'
exec crearReparacion @id_Componente, @id_gokart, @id_administrador, @detalle_reparacion;

select * from Reparacion
select * from GoKart

-- 2
create trigger ComponenteMovimiento on Componente after delete, insert, update
as
begin
	declare @id_componente int, @detalle_componete varchar(50)
	if (select count(*) from deleted)>0
begin
	set @id_componente = (select id_componente from deleted)
	set @detalle_componete = (select detalle_componente from deleted)
	insert into movimientoComponente values(@id_componente,@detalle_componete,SUSER_NAME(),GETDATE(),'Eliminado')
end
	else if (select COUNT(*) from inserted)>0
begin
	set @id_componente = (select id_componente from inserted)
	set @detalle_componete = (select detalle_componente from inserted)
	insert into movimientoComponente values(@id_componente,@detalle_componete,SUSER_NAME(),GETDATE(),'Agregado') 
end
end

insert into componente values (16, 'Vidrios', 'GX', 7820, 3)
delete Componente where id_componente = 16
select * from Componente;
select * from movimientoComponente;


-- 3
alter trigger reparacionDaños on Reparacion after insert
as
begin
declare @id_admin int, @id_gokart int, @id_componente int, @detalle varchar(100)
set @id_admin = (select id_admin from inserted)
set @id_gokart = (select id_gokart from inserted)
set @id_componente = (select id_componente from inserted)
set @detalle = (select detalle_reparacion from inserted)
	insert into bitacoraDaños values(@id_gokart,@id_admin,@id_componente,@detalle,GETDATE())
end

-- Primer procedimiento almacenado (Para dar ejemplo al trigger)

declare @id_Componente int, @id_gokart int, @id_administrador int, @detalle_reparacion varchar(100);
set @id_Componente = 2
set @id_gokart = 1233
set @id_administrador = 1
set @detalle_reparacion = 'Se despapayo tere'
exec crearReparacion @id_Componente, @id_gokart, @id_administrador, @detalle_reparacion;

select * from bitacoraDaños
select * from Reparacion

-- 4
create trigger borrarComponentes on Proveedor after delete
as
begin
declare @id_proveedor int
set @id_proveedor = (select id_proveedor from deleted)
delete from Componente where id_proveedor = @id_proveedor
end

insert into componente values (17, 'Espejos', 'RTC', 7820, 10),(18, 'Espejos', 'RTC', 7820, 10)
insert into proveedor values (10,'TeleMoto', 2022155000, 60511642, 'telemotocr@repuestos.com') 
select * from Componente
select * from Proveedor

delete from Proveedor where id_proveedor = 10

-- 5
create trigger clienteMovimiento on Cliente after insert, delete
as
declare @id_cliente int, @nombre_cliente varchar(100), @apellido1 varchar(100), @correo varchar(100)
begin
	if(select count(*) from inserted)>0
begin
	set @id_cliente = (select id_Cliente from inserted)
	set @nombre_cliente = (select nombre_cliente from inserted)
	set @apellido1 = (select apellido1_cliente from inserted)
	set @correo = (select correo_cliente from inserted)
	insert into bitacoraCliente values (@id_cliente,@nombre_cliente,@apellido1,@correo, GETDATE(), 'Insertado')
end
	else if(select count(*) from deleted)>0
begin	
	set @id_cliente = (select id_Cliente from deleted)
	set @nombre_cliente = (select nombre_cliente from deleted)
	set @apellido1 = (select apellido1_cliente from deleted)
	set @correo = (select correo_cliente from deleted)
	insert into bitacoraCliente values (@id_cliente,@nombre_cliente,@apellido1,@correo, GETDATE(), 'Eliminado')
end
end

select * from bitacoraCliente



