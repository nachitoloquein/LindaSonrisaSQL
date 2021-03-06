USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[ClientePaga]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[ClientePaga]
@cantidad int,
@id int,
@nombreUsuario varchar(50)
as
begin
declare @resultado int
declare @total numeric(10)
select @resultado = beneficio from Usuario where NombreUsuario = @nombreUsuario
if(@resultado=0)
begin
select @total = precio * @cantidad from Producto
where Id =  @id
and @cantidad <= Cantidad
select @total as 'Total'
end
else
begin
select @total = precio * @cantidad*0.90 from Producto
where Id =  @id
and @cantidad <= Cantidad
select @total as 'Total'
end
end;
GO
