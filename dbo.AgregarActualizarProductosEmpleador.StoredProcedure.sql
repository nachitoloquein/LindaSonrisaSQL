USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarActualizarProductosEmpleador]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AgregarActualizarProductosEmpleador]
@Id int,
@NombreProducto varchar (50),
@FechaElaboracion date,
@FechaVencimiento date,
@TipoProductoId int,
@Cantidad numeric (10),
@Precio numeric (10),
@Correo varchar(50)
as
begin
if(@id = 0)
    begin
	insert into Producto
	(NombreProducto,
	FechaElaboracion,
	FechaVencimiento,
	TipoProducto_Id,
	Cantidad,
	Precio,
	Correo,
	Id_Empleador)
	values
	(@NombreProducto,
	@FechaElaboracion,
	@FechaVencimiento,
	@TipoProductoId,
	@Cantidad,
	@Precio,
	@Correo,
	(select id from Empleado where CorreoElectronico =  @Correo))
	end
	else
	begin
	update producto
	set
	NombreProducto =  @NombreProducto,
	FechaElaboracion = @FechaElaboracion,
	FechaVencimiento = @FechaVencimiento,
	TipoProducto_Id =  @TipoProductoId,
	Cantidad = @Cantidad,
	precio = @Precio
	where Id =  @Id
	end
	end;






GO
