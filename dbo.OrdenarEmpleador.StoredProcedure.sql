USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[OrdenarEmpleador]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[OrdenarEmpleador]
as
begin
select id, primerNombre+' '+ segundoNombre+' '+ApellidoPat+' '+ApellidoMat as 'Nombre Empleador' from Empleado
end;
GO
