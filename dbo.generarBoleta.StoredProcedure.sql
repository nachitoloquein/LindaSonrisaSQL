USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[generarBoleta]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[generarBoleta]  
 @Empleado_Id int,  
 @NombreUsuario varchar(50),  
 @Total numeric(10),  
 @Producto varchar(50),  
 @Cantidad int,  
 @idComuna int,  
 @Direccion varchar(100)  
 as  
 begin  
 insert into Boleta(FechaPedido, Empleado_Id, Usuario_Id, Total,  Producto, EstadoProducto,cantidad, idcomuna, direccion, idTipoProducto)  
 values  
 (convert(date,getdate()), @Empleado_Id, (select Id from Usuario where NombreUsuario = @NombreUsuario),  
 @Total, @Producto, 'Pendiente', @Cantidad, @idComuna, @Direccion, (select top 1 TipoProducto_Id from Producto where NombreProducto = @Producto))  
 end;
GO
