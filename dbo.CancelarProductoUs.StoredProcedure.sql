USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[CancelarProductoUs]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[CancelarProductoUs]
 @id int
 as
 begin
 update Boleta
 set EstadoProducto = 'Cancelado'
 where Id = @id
 and EstadoProducto = 'Pendiente'
 end;
GO
