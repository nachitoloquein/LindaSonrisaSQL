USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[CargarProfesional]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CargarProfesional]
as
begin
select id, pnombre+' '+ snombre+' '+ apellidopat+' '+ apellidomat as 'Nombre'
from Odontologo
end;
GO
