USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[eliminarSolicitud]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarSolicitud]
@id int
as
begin
delete recepcionSolicitudes where Id = @id
end;
GO
