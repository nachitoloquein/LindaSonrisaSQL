USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[VerFichasUsuario]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[VerFichasUsuario]
	  @nombreOdontologo varchar(80)
	  as
	  begin
	  select f.id, u.NombreUsuario, f.MotivoConsulta, f.Sintomas, f.Diagnostico,
	  f.Receta from Usuario u inner join fichaUsuario f
	  on f.IdNombreUsuario = u.Id
	  where f.IdOdontologo = (select Id from Odontologo where PNombre+' '+SNombre+' '+ApellidoPat+' '+ApellidoMat = @nombreOdontologo)
      end;
GO
