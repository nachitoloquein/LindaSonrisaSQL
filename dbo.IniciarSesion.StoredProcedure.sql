USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[IniciarSesion]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[IniciarSesion]
@nombreUsuario varchar(50),
@contrasena varchar(50)
as
begin
select count(*) from Usuario
where nombreUsuario= @nombreUsuario 
and contrasena = @contrasena
end;
GO
