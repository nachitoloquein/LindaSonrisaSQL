USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[VerEspecialidades]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[VerEspecialidades]
						 as
						 begin
						 select * from Especialidad
						 end
GO
