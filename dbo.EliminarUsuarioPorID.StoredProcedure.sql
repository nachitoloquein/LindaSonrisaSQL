USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[EliminarUsuarioPorID]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[EliminarUsuarioPorID]
						 @id int
						 as
						 begin
						 delete from Usuario
						 where id = @id
						 end
GO
