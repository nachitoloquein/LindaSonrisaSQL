USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[cargarUsuario]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[cargarUsuario]
as
begin
select Id, NombreUsuario from Usuario
end;
GO
