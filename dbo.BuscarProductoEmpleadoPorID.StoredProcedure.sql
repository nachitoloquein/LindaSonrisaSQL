USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[BuscarProductoEmpleadoPorID]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[BuscarProductoEmpleadoPorID]
@Id int
as
begin
select * from Producto
where Id =  @Id
end;
GO
