USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[VerPoductos]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[VerPoductos]
@correo varchar (80)
as
begin
select * from ProductosProveedor
where correo = @correo
end;
GO
