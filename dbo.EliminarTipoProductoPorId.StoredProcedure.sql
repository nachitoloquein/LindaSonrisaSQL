USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[EliminarTipoProductoPorId]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarTipoProductoPorId]
@id int
as
begin
delete TipoProducto
where id = @id
end;
GO
