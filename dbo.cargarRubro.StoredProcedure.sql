USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[cargarRubro]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cargarRubro]
as
begin
select * from Rubro
end
GO
