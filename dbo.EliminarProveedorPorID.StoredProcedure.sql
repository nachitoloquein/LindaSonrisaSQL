USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[EliminarProveedorPorID]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarProveedorPorID]
@id int
as
begin
delete Proveedor
where Id = @id
end;
GO
