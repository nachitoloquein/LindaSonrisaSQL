USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[BuscarTipoProductoPorId]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BuscarTipoProductoPorId]
@Id int
as
begin 
select * from TipoProducto
where id = @Id
end;
GO
