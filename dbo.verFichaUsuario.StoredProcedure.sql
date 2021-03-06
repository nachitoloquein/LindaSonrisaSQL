USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[verFichaUsuario]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[verFichaUsuario]
   @nombreUsuario varchar(80)
   as
   begin
   select f.Id,f.MotivoConsulta, f.Sintomas, f.Diagnostico, f.Receta, o.PNombre+' '+o.ApellidoPat as 'Odontologo' 
   from FichaUsuario f
   inner join Odontologo o 
   on f.IdOdontologo = o.Id
   where f.IdNombreUsuario = (select Id from Usuario where NombreUsuario = @nombreUsuario)
   end;
GO
