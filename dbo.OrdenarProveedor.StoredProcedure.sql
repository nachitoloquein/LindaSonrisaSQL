USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[OrdenarProveedor]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[OrdenarProveedor]
as
begin
select id, correoElectronico
from Proveedor
end;
GO
