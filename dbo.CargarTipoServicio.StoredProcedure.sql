USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[CargarTipoServicio]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CargarTipoServicio]
as
begin
select * 
from TipoServicio
end;
GO
