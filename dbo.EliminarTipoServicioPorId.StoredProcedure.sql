USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[EliminarTipoServicioPorId]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarTipoServicioPorId]
@id int
as
begin
delete TipoServicio
where id = @id
end;
GO
