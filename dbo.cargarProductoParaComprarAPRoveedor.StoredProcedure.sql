USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[cargarProductoParaComprarAPRoveedor]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[cargarProductoParaComprarAPRoveedor]  
@IdProveedor int
as  
select id, nombreProducto  
from ProductosProveedor  
where IdProveedor = @IdProveedor
GO
