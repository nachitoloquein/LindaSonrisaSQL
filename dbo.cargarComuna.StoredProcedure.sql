USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[cargarComuna]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cargarComuna]
 as
 begin
 select * from comuna
 order by descripcion
 end;
GO
