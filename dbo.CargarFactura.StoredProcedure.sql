USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[CargarFactura]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure  [dbo].[CargarFactura]
 @CorreoEmpleado varchar(80)
 as
 begin
 select top 1 * from Factura 
 where @CorreoEmpleado = (select CorreoElectronico from Empleado where CorreoElectronico = @CorreoEmpleado)
 order by Id desc
 end;
GO
