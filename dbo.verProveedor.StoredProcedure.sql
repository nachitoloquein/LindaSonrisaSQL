USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[verProveedor]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[verProveedor]
as
begin select p.Id,p.Nombre, p.Apellidos, p.NumeroTelefonico, r.descripcion, p.CorreoElectronico, p.Contrasena from Proveedor
as p inner join Rubro as r on p.Rubro_Id = r.Id
end;
GO
