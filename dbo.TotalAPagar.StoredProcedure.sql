USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[TotalAPagar]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE procedure [dbo].[TotalAPagar]  
@cantidad int,  
@id int  
as   
begin  
declare @total numeric(10)  
select @total = precio * @cantidad from ProductosProveedor  
where id= @id  
and @cantidad <= Cantidad  
select @total as 'Total'  
end;
GO
