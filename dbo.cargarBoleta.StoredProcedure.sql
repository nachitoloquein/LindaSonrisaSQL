USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[cargarBoleta]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[cargarBoleta]  
 @NombreUsuario varchar(80)  
 as  
 begin  
 select top 1 b.Total, b.Producto, b.cantidad, t.Descripcion, c.descripcion as 'Comuna', b.direccion from Boleta b inner join TipoProducto t   
 on b.idTipoProducto = t.Id  
 inner join comuna c 
 on c.id = b.idcomuna
 where @NombreUsuario = (select NombreUsuario from Usuario where NombreUsuario =  @NombreUsuario)  
 order by b.Id desc  
 end; 
GO
