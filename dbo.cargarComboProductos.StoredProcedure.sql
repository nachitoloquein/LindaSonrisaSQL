USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[cargarComboProductos]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cargarComboProductos]
as
begin 
select id, nombreProducto from ProductosProveedor
end;
GO
