USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[eliminarAtencion]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[eliminarAtencion]
@id int
as
begin
delete Atencion where Id = @id
end;
GO
