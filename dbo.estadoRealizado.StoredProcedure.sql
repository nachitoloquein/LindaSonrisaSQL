USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[estadoRealizado]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[estadoRealizado]  
   @id int  
   as  
   begin  
   update Atencion   
   set  
   Estado = 'Realizada'  
   where Id = @id  
   and Estado = 'No Realizada'
   end;
GO
