USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[BuscarEmpleadoPorId]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[BuscarEmpleadoPorId]
						 @id int
						 as
						 begin
						 select * from Empleado
						 where Id = @id
						 end
GO
