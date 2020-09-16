USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[cargarFoto]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[cargarFoto]  
@correoEmpleado varchar(80)
as  
begin  
select *  
from recepcionSolicitudes  as r inner join Empleado as e on e.Id = r.idempleador
where e.CorreoElectronico = @correoEmpleado
end;
GO
