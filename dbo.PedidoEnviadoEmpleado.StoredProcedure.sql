USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[PedidoEnviadoEmpleado]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[PedidoEnviadoEmpleado]
	@id int
	as
	begin 
	update Factura 
	set estadoproducto = 'Enviado'
	where Id = @id
	end;
GO
