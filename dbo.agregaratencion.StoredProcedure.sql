USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[agregaratencion]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[agregaratencion]
@fechaAtencion date,
@horaAtencion time,
@nombreUsuario varchar(80),
@odontologo_id int,
@tipoServicio_Id int
as 
begin
insert into Atencion(FechaPedidoAtencion, FechaAtencion, HoraAtencion, Odontologo_Id, TipoServicio_Id, Estado, nombre_usuario)
values (GETDATE(), @fechaAtencion, @horaAtencion, @odontologo_id, @tipoServicio_Id , 'No Realizada',@nombreUsuario)
end;
GO
