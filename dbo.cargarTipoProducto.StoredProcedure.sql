USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[cargarTipoProducto]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cargarTipoProducto]
as
begin 
select * from TipoProducto
end;
GO
