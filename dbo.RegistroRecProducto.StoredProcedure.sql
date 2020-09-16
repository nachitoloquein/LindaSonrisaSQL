USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[RegistroRecProducto]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[RegistroRecProducto]
	as
	begin
	select concat ('00',p.id,'00',pr.id,pr.FechaVencimiento,'00',t.id)
	from proveedor as p, Producto as pr, TipoProducto as t
	end;
GO
