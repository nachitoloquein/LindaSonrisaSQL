USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[otorgarBeneficio]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[otorgarBeneficio]
@nombreUsuario varchar(50)
as
begin 
update usuario set Beneficio = 1
where NombreUsuario = @nombreUsuario
end;
GO
