USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[HistorialCompras]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HistorialCompras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaCompra] [date] NOT NULL,
	[Producto] [varchar](1) NULL,
	[idUsuario] [int] NULL,
	[TotalPagado] [numeric](7, 0) NULL
) ON [PRIMARY]
GO
