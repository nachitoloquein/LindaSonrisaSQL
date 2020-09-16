USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[historialCuentas]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historialCuentas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[nombreCuenta] [varchar](50) NULL
) ON [PRIMARY]
GO
