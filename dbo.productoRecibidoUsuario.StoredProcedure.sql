USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[productoRecibidoUsuario]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[productoRecibidoUsuario]
 @id int
 as
 begin
 update Boleta
 set EstadoProducto = 'Recibido'
 where Id = @id
 and EstadoProducto = 'Enviado'
 end;
GO
