USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarUsuario]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[AgregarUsuario] (     
                                          @nombreUsuario   VARCHAR(50),      
                                          @contrasena     VARchar(50),      
                                          @correo       Varchar(50))     
            as    
              BEGIN    
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
        END 
GO
