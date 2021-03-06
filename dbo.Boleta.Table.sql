USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[Boleta]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleta](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaPedido] [datetime] NOT NULL,
	[Usuario_Id] [int] NOT NULL,
	[Empleado_Id] [int] NOT NULL,
	[Total] [numeric](10, 0) NULL,
	[Producto] [varchar](50) NULL,
	[EstadoProducto] [varchar](50) NULL,
	[cantidad] [numeric](3, 0) NULL,
	[idTipoProducto] [int] NULL,
	[idComuna] [int] NULL,
	[Direccion] [varchar](100) NULL,
	[ordenPedido] [numeric](10, 0) NULL,
 CONSTRAINT [Boleta_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Boleta]  WITH CHECK ADD  CONSTRAINT [Boleta_Empleado_FK] FOREIGN KEY([Empleado_Id])
REFERENCES [dbo].[Empleado] ([Id])
GO
ALTER TABLE [dbo].[Boleta] CHECK CONSTRAINT [Boleta_Empleado_FK]
GO
ALTER TABLE [dbo].[Boleta]  WITH CHECK ADD  CONSTRAINT [Boleta_Usuario_FK] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[Usuario] ([Id])
GO
ALTER TABLE [dbo].[Boleta] CHECK CONSTRAINT [Boleta_Usuario_FK]
GO
