USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[ActualizarEstado]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ActualizarEstado]
as
begin
UPDATE Atencion
            SET    estado = 'Realizada' 
            WHERE  horaAtencion < convert(time,GETDATE())
			and FechaAtencion <= convert(date,GETDATE())
			end;
GO
