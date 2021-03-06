USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarActualizarProveedor]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[AgregarActualizarProveedor]
 @id int,
                                          @Nombre  VARCHAR(50),  
											 @Apellido  VARCHAR(50),  
                                          @NumeroTel    Numeric,  
                                          @Rubro      Varchar(50),
										  @Correo varchar(50),
										  @Contrasena varchar(50)
										  as
										    BEGIN  
											if(@id = 0)
											begin
											insert into Proveedor
											(Nombre, Apellidos, NumeroTelefonico, Rubro_Id, CorreoElectronico, Contrasena, Niveles_Id)
											values
											(@Nombre, @Apellido, @NumeroTel, @Rubro, @Correo, @Contrasena, 2)
											end
						 else
						 begin
						 update Proveedor
						 set
						 Nombre = @Nombre,  
                         Apellidos= @Apellido,  
                         NumeroTelefonico= @NumeroTel,  
                         Rubro_Id= @Rubro,
						 CorreoElectronico= @correo,
						 Contrasena= @contrasena
						 where id = @id
						 end
						 end
GO
