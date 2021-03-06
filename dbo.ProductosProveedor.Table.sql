USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[ProductosProveedor]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductosProveedor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[IdTipoProducto] [int] NULL,
	[Precio] [numeric](10, 0) NULL,
	[Cantidad] [numeric](10, 0) NULL,
	[Correo] [varchar](80) NULL,
	[IdProveedor] [int] NULL
) ON [PRIMARY]
GO
