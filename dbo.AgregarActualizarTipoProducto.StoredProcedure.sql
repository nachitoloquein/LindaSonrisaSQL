USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarActualizarTipoProducto]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AgregarActualizarTipoProducto]

(	@id int,
    @Descripcion       Varchar(50))
    as
    BEGIN  
    if(@id = 0)
    begin

    INSERT INTO TipoProducto
    (  
    Descripcion)  
    VALUES         (   
    @Descripcion) 
    end
    else
    begin
    update TipoProducto
    set
    Descripcion = @Descripcion
    where id = @id
    end
end;
GO
