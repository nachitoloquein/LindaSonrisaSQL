USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[VerEmpleados]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[VerEmpleados]
						 as
						 begin
						 select * from Empleado
						 end
GO
