USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[buscarFichaPorId]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[buscarFichaPorId]
	  @id int
	  as
	  begin
	  select * from FichaUsuario where Id = @id
	  end;
GO
