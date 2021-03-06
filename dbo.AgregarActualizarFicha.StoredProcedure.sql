USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[AgregarActualizarFicha]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[AgregarActualizarFicha]

(     @IdNombreUsuario int,
      @MotivoConsulta varchar(80),
      @Sintomas       varchar(max),
      @Diagnostico    varchar(max),
      @Receta         varchar(max),
      @NombreOdontologo varchar(80)  ,
	  @Id int)
      as 
      BEGIN 
      if(@Id = 0)

      begin 
      insert into FichaUsuario
      (
	  idNombreUsuario,
      MotivoConsulta,
      Sintomas,
      Diagnostico,
      Receta,
      IdOdontologo)
      VALUES(
	  @IdNombreUsuario,
      @MotivoConsulta,
      @Sintomas,
      @Diagnostico,
      @Receta,
      (select Id from Odontologo where @NombreOdontologo = PNombre+' '+SNombre+' '+ApellidoPat+' '+ApellidoMat))
      end
      else
      begin 
      update FichaUsuario
      set 
	  idNombreUsuario = @IdNombreUsuario,
      MotivoConsulta = @MotivoConsulta,
      Sintomas = @Sintomas,
      Diagnostico = @Diagnostico,
      Receta = @Receta
      where Id = @Id
      end
end;
GO
