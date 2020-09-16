USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[cargarProductoDeEmpleados]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[cargarProductoDeEmpleados]
 @idEmpleado int
 as
 begin
 select Id, NombreProducto
 from Producto
 where @idEmpleado = Id_Empleador
 end;
GO
