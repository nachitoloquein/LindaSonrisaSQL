USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[DetalleFactura]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleFactura](
	[PrecioUnidad] [numeric](10, 0) NOT NULL,
	[Cantidad] [numeric](10, 0) NOT NULL,
	[Descuento] [numeric](10, 0) NOT NULL,
	[Factura_Id] [int] NOT NULL,
	[Producto_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [DetalleFactura_Factura_FK] FOREIGN KEY([Factura_Id])
REFERENCES [dbo].[Factura] ([Id])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [DetalleFactura_Factura_FK]
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [DetalleFactura_Producto_FK] FOREIGN KEY([Producto_Id])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [DetalleFactura_Producto_FK]
GO
