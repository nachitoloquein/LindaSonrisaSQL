USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarActualizarEspecialidad]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[AgregarActualizarEspecialidad]
(										  @id int,
										@Descripcion       Varchar(50)) 
										  as
										    BEGIN  
											if(@id = 0)
											begin
            INSERT INTO Especialidad
                        (  
                         Descripcion)  
            VALUES     (   
                         @Descripcion) 
						 end
						 else
						 begin
						 update Especialidad
						 set
						 Descripcion = @Descripcion
						 where id = @id
						 end
						 end
GO
