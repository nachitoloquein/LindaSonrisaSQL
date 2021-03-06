USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarActualizarUsuario]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AgregarActualizarUsuario]
(										  @id int,
                                          @nombreUsuario   VARCHAR(50),  
                                          @contrasena     VARCHAR(50),  
                                          @correo       Varchar(50)) 
										  as
										    BEGIN  
											if(@id = 0)
											begin
            INSERT INTO Usuario
                        (  
                         NombreUsuario,  
                         CorreoElectronico,  
                         Contrasena,  
                         Niveles_Id)  
            VALUES     (   
                         @nombreUsuario,  
                         @correo,  
                         @contrasena,  
                         4) 
						 end
						 else
						 begin
						 update Usuario
						 set
						 NombreUsuario=@nombreUsuario,
						 CorreoElectronico=@correo,
						 Contrasena=@contrasena
						 where id = @id
						 end
						 end
GO
