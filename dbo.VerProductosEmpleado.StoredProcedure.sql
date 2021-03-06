USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[VerProductosEmpleado]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[VerProductosEmpleado]  
@correo varchar (80)  
as  
begin  
select p.id, p.NombreProducto, p.FechaElaboracion, p.FechaVencimiento, t.descripcion, p.Cantidad, p.precio from Producto p inner join TipoProducto t on t.Id = p.TipoProducto_Id
where Correo = @Correo  
end;
GO
