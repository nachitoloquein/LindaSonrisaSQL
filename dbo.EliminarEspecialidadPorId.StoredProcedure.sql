USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[EliminarEspecialidadPorId]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarEspecialidadPorId]
@id int
as
begin
delete Especialidad
where id = @id
end;
GO
