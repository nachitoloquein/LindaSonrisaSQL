USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarAdmin]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AgregarAdmin]
@CorreoElectronico varchar (50),
@Contrasena varchar (50),
@Nombre varchar (50),
@Apellido varchar (50)
as
begin
insert into Administrador(CorreoElectronico, Contrasena, Nombre, Apellido, Niveles_Id)
values (@CorreoElectronico, @Contrasena, @Nombre, @Apellido, 1)
end;
GO
