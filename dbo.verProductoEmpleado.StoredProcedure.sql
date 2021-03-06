USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[verProductoEmpleado]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[verProductoEmpleado]
	@correo varchar(80)
	as
	begin
	select f.Id, f.FechaPedido, p.nombre+' '+p.apellidos as 'Proveedor', f.total, f.ordenpedido, f.producto,
	f.EstadoProducto, f.cantidad from Factura f inner join Proveedor p on f.Proveedor_Id = p.Id
	where f.Empleado_Id = (select Id from Empleado where CorreoElectronico =@correo )
	end;
GO
