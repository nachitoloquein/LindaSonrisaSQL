USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[pedidoRecibidoEmpleado]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[pedidoRecibidoEmpleado]  
 @id int  
 as  
 begin   
 update Factura   
 set estadoproducto = 'Recibido'  
 where Id = @id  
 and EstadoProducto = 'Enviado'
 end;
GO
