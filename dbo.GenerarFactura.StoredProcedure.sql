USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[GenerarFactura]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[GenerarFactura]    
@Proveedor_Id int ,    
@CorreoEmpleado varchar(50),    
@Total numeric(10),    
@Producto varchar(50),
@Cantidad int
as    
begin    
insert into Factura(FechaPedido, Proveedor_Id, Empleado_Id, Total, OrdenPedido, Producto, EstadoProducto, cantidad)    
values    
(convert(date,getdate()), @Proveedor_Id, (select id from Empleado where CorreoElectronico = @CorreoEmpleado),    
@Total, next value for seq_ordenPedido , @Producto, 'Pendiente', @Cantidad)    
 end;
GO
