USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[verAtenciones]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[verAtenciones]
	  @nombreOdontologo varchar(80)
	  as
	  begin
	  select a.Id,a.FechaAtencion,a.HoraAtencion,t.Descripcion, a.Estado, nombre_usuario from Atencion a 
	  inner join TipoServicio t
	  on t.Id = a.TipoServicio_Id
	  where Odontologo_Id = (select Id from Odontologo where PNombre+' '+SNombre+' '+ApellidoPat+' '+ApellidoMat = @nombreOdontologo)
	  end;
GO
