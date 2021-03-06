USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[recepcionSolicitudes]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[recepcionSolicitudes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[nombreUsuario] [varchar](50) NULL,
	[liquidacionSueldo] [varbinary](max) NULL,
	[certificadoAFP] [varbinary](max) NULL,
	[finiquito] [varbinary](max) NULL,
	[pensionMensual] [varbinary](max) NULL,
	[jubilacion] [varbinary](max) NULL,
	[idempleador] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
