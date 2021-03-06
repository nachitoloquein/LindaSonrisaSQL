USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[DetalleBoleta]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleBoleta](
	[PrecioUnidad] [numeric](10, 0) NOT NULL,
	[Cantidad] [numeric](3, 0) NOT NULL,
	[Descuento] [numeric](6, 0) NOT NULL,
	[Boleta_Id] [int] NOT NULL,
	[Producto_Id] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DetalleBoleta]  WITH CHECK ADD  CONSTRAINT [DetalleBoleta_Boleta_FK] FOREIGN KEY([Boleta_Id])
REFERENCES [dbo].[Boleta] ([Id])
GO
ALTER TABLE [dbo].[DetalleBoleta] CHECK CONSTRAINT [DetalleBoleta_Boleta_FK]
GO
ALTER TABLE [dbo].[DetalleBoleta]  WITH CHECK ADD  CONSTRAINT [DetalleBoleta_Producto_FK] FOREIGN KEY([Producto_Id])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[DetalleBoleta] CHECK CONSTRAINT [DetalleBoleta_Producto_FK]
GO
