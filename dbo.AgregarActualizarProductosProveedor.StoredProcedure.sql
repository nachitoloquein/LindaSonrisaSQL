USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarActualizarProductosProveedor]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AgregarActualizarProductosProveedor]

(	@id int,
    @NombreProducto      Varchar(50),
	@idTipoProducto int, 
	@Precio numeric(10),
	@Cantidad numeric(10),
	@Correo varchar (80))
    as
    BEGIN  
    if(@id = 0)
    begin

    INSERT INTO ProductosProveedor
    (  
    NombreProducto, IdTipoProducto, Precio, Cantidad, Correo, IdProveedor)  
    VALUES         (   
    @NombreProducto, @idTipoProducto, @Precio, @Cantidad, @Correo, (select id from proveedor where CorreoElectronico =  @Correo)) 
    end
    else
    begin
    update ProductosProveedor
    set
    NombreProducto = @NombreProducto,
	IdTipoProducto = @idTipoProducto,
	Precio = @Precio,
	Cantidad = @Cantidad
    where id = @id
    end
end;
GO
