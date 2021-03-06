USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaPedido] [datetime] NOT NULL,
	[Proveedor_Id] [int] NOT NULL,
	[Empleado_Id] [int] NOT NULL,
	[Total] [numeric](10, 0) NULL,
	[OrdenPedido] [numeric](15, 0) NULL,
	[Producto] [varchar](50) NULL,
	[EstadoProducto] [varchar](50) NULL,
	[Cantidad] [numeric](3, 0) NULL,
 CONSTRAINT [Factura_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [Factura_Empleado_FK] FOREIGN KEY([Empleado_Id])
REFERENCES [dbo].[Empleado] ([Id])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [Factura_Empleado_FK]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [Factura_Proveedor_FK] FOREIGN KEY([Proveedor_Id])
REFERENCES [dbo].[Proveedor] ([Id])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [Factura_Proveedor_FK]
GO
