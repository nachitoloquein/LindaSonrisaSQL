USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[RecuperarContrasena]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RecuperarContrasena]  
@Correo as varchar(50)  
as  
begin  
 declare @resultado as varchar(50)  
  
  select @resultado= contrasena  
  from Usuario  
  where CorreoElectronico = @Correo  
   group by Contrasena  
  
 select convert(varchar,@resultado) as contrasena  
  
end  
  
GO
