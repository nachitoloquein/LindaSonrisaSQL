USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarActualizarEmpleado]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AgregarActualizarEmpleado]
(										  @id int,
                                          @primerNombre  VARCHAR(50),  
										   @segundoNombre VARCHAR(50),  
										    @apellidoMat  VARCHAR(50),  
											 @apellidoPat  VARCHAR(50),  
                                          @contrasena     VARCHAR(50),  
                                          @correo       Varchar(50)) 
										  as
										    BEGIN  
											if(@id = 0)
											begin
            INSERT INTO Empleado
                        (  
                         PrimerNombre,  
                         SegundoNombre,  
                         ApellidoMat,  
                         ApellidoPat,
						 CorreoElectronico,
						 Contrasena,
						 Niveles_Id)  
            VALUES     (   
                         @primerNombre,  
                          @segundoNombre ,  
										    @apellidoMat ,  
											 @apellidoPat  ,  
                                          @correo  ,
										   @contrasena    ,
                         3) 
						 end
						 else
						 begin
						 update Empleado
						 set
						 PrimerNombre = @primerNombre,  
                         SegundoNombre= @segundoNombre,  
                         ApellidoMat= @apellidoMat,  
                         ApellidoPat= @apellidoPat,
						 CorreoElectronico= @correo,
						 Contrasena= @contrasena
						 where id = @id
						 end
						 end
GO
