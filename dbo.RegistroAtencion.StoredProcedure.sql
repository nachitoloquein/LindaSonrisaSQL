USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[RegistroAtencion]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[RegistroAtencion]  
(@nombreUsuario varchar (50))  
as  
begin  
select distinct a.id, convert(date,a.FechaPedidoAtencion,6) as 'Fecha Pedido Atención', a.FechaAtencion as 'Fecha de Atención', convert(time,a.HoraAtencion,24) as 'Hora de Atención', o.PNombre +' '+ o.SNombre +' '+ o.ApellidoPat +' '+  
o.ApellidoMat as 'Nombre Del Odontologo', t.descripcion as 'Descripcion', a.estado as 'Estado'  
from atencion as a inner join Odontologo as o  
on a.Odontologo_Id = o.id  
inner join TipoServicio as t  
on a.TipoServicio_Id = t.Id  
where Nombre_Usuario=@nombreUsuario;  
end;
GO
