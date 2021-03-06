USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[historialProductoCompraUsuario]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historialProductoCompraUsuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaCompra] [date] NOT NULL,
	[EstadoProducto] [varchar](50) NULL,
	[Producto] [varchar](50) NULL,
	[TotalPagado] [numeric](7, 0) NULL
) ON [PRIMARY]
GO
