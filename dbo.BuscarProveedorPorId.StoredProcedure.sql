USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[BuscarProveedorPorId]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BuscarProveedorPorId]
@id int
as
begin
select * from Proveedor
where Id = @id
end;
GO
