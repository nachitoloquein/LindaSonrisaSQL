USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[EliminarFichaPorId]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
  create procedure [dbo].[EliminarFichaPorId]
	  @id int
	  as
	  begin
	  delete FichaUsuario where id = @id
	  end;
GO
