USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarActualizarOdontologo]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AgregarActualizarOdontologo] 

(	@id int,
    @PNombre       Varchar(50), --declarar variables 
    @ApellidoPat   Varchar(50),
    @SNombre       Varchar(50),
    @ApellidoMat   varchar(50),
    @Especialidad_id int,
	@Contrasena varchar(50))
    as
    BEGIN  
    if(@id = 0) 
      
    begin

    INSERT INTO Odontologo 
    (  
    PNombre,
    ApellidoPat,
    SNombre,
    ApellidoMat,
    Especialidad_id,
	Contrasena)  
    VALUES         (   
    @PNombre,
    @ApellidoPat,
    @SNombre,
    @ApellidoMat,
    @Especialidad_id,
	@Contrasena) 
    end
    else
    begin
    update Odontologo
    set
    PNombre = @PNombre,
    ApellidoPat = @ApellidoPat,
    SNombre = @SNombre,
    ApellidoMat = @ApellidoMat,
    Especialidad_id = @Especialidad_id,
	Contrasena = @Contrasena
    where id = @id
    end
end;
GO
