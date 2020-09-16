USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[VerOdontologo]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[VerOdontologo] 
as  
begin  
select o.Id, o.PNombre, o.SNombre, o.ApellidoPat, o.ApellidoMat, e.Descripcion   from Odontologo  o 
inner join Especialidad e
on o.Especialidad_Id = e.Id
end;
GO
