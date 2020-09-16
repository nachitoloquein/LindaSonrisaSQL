USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[FichaUsuario]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FichaUsuario](
	[IdNombreUsuario] [int] NULL,
	[MotivoConsulta] [varchar](80) NULL,
	[Sintomas] [varchar](max) NULL,
	[Diagnostico] [varchar](max) NULL,
	[Receta] [varchar](max) NULL,
	[IdOdontologo] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
