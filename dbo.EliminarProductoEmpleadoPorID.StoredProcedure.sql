USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[EliminarProductoEmpleadoPorID]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EliminarProductoEmpleadoPorID]
@Id int
as
begin
delete Producto 
where Id = @Id
end;
GO
