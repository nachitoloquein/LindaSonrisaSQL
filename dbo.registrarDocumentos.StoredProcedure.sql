USE [LindaSonrisa]
GO
/****** Object:  StoredProcedure [dbo].[registrarDocumentos]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[registrarDocumentos]
							@nombreUsuario varchar(50),
							@liquidacionSueldo image,
							@certificadoAFP image,
							@finiquito image,
							@pensionMensual image,
							@jubilacion image,
							@idempleador int
							as
							begin
							insert into recepcionSolicitudes (nombreUsuario, liquidacionSueldo, certificadoAFP, finiquito,
							pensionMensual, jubilacion, idempleador)
							values (@nombreUsuario, @liquidacionSueldo, @certificadoAFP, @finiquito,
							@pensionMensual, @jubilacion, @idempleador)
							end;
GO
