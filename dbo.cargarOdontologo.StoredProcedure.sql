USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[cargarOdontologo]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[cargarOdontologo]
as
begin
select ID, pnombre+' '+SNombre+' '+apellidopat+' '+ApellidoMat as 'odontologo'
from Odontologo
end;
GO
