USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[historialVentasEmpleado]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[historialVentasEmpleado]
 @correo varchar(80)
 as
 begin 
 select b.Id, convert(date,b.FechaPedido) as 'FechaPedido',  u.NombreUsuario, b.Total, b.Producto, b.EstadoProducto, b.cantidad, 
 t.descripcion as 'tipoProducto', c.descripcion as 'Comuna', b.direccion from Boleta b inner join Usuario u
 on b.Usuario_Id = u.Id
 inner join comuna c
 on b.idComuna = c.Id
 inner join TipoProducto t
 on b.idTipoProducto = t.Id
 where b.Empleado_Id = (select Id from Empleado where @correo = CorreoElectronico)
 end;
GO
