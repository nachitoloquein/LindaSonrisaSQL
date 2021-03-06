USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[historialVentasProveedor]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[historialVentasProveedor]
	@correo varchar(80)
	as
	begin
	select f.id, e.primerNombre +' '+ e.ApellidoPat as 'Empleado', f.FechaPedido, f.Total, f.OrdenPedido, f.Producto, f.cantidad, f.estadoProducto  
	from Empleado e inner join factura f on f.Empleado_Id = e.Id
	where f.Proveedor_Id = (select Id from Proveedor where CorreoElectronico = @correo)
	end;
GO
