USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[EliminarEmpleadoPorID]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
	 create procedure [dbo].[EliminarEmpleadoPorID]
						 @id int
						 as
						 begin
						 delete from Empleado
						 where id = @id
						 end
GO
