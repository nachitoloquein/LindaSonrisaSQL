USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[BuscarUsuarioPorId]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[BuscarUsuarioPorId]
						 @id int
						 as
						 begin
						 select * from Usuario
						 where Id = @id
						 end
GO
