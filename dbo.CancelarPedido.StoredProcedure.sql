USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[CancelarPedido]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[CancelarPedido]
 @id int
 as
 begin
 update Factura
 set EstadoProducto = 'Cancelado'
 where Id = @id
 and EstadoProducto = 'Pendiente'
 end;
GO
