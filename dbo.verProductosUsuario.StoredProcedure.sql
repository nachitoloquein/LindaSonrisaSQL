USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[verProductosUsuario]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[verProductosUsuario]
 @nombreUsuario varchar(50)
 as
 begin
 select b.Id, b.FechaPedido, e.PrimerNombre+' '+e.ApellidoPat as 'Empleado', b.Total, b.Producto,
 b.EstadoProducto, b.cantidad from Boleta b inner join Empleado e on b.Empleado_Id = e.Id
 where b.Usuario_Id = (select Id from Usuario where NombreUsuario = @nombreUsuario)
 end;
GO
