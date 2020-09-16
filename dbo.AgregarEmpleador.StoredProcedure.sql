USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarEmpleador]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AgregarEmpleador]
@PrimerNombre varchar(50),
@SegundoNombre varchar(50),
@ApellidoPat varchar(50),
@ApellidoMat varchar(50),
@CorreoElectrónico varchar(50),
@Contrasena varchar(50)
as
begin
insert into Empleado (PrimerNombre, SegundoNombre, ApellidoPat, ApellidoMat, CorreoElectronico, Contrasena, Niveles_Id)
values (@PrimerNombre, @SegundoNombre, @ApellidoPat, @ApellidoMat, @CorreoElectrónico, @Contrasena, 3)
end;
GO
