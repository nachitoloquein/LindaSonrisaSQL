USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[PedidoEnviadoUsuario]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[PedidoEnviadoUsuario]
 @id int
 as
 begin
 update Boleta
 set EstadoProducto = 'Enviado'
 where Id = @id
 end;
GO
