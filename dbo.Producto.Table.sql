USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreProducto] [varchar](50) NOT NULL,
	[FechaElaboracion] [datetime] NOT NULL,
	[FechaVencimiento] [datetime] NULL,
	[TipoProducto_Id] [int] NOT NULL,
	[Cantidad] [numeric](4, 0) NOT NULL,
	[precio] [numeric](8, 0) NULL,
	[Id_Empleador] [int] NULL,
	[Correo] [varchar](80) NULL,
 CONSTRAINT [Producto_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [Producto_TipoProducto_FK] FOREIGN KEY([TipoProducto_Id])
REFERENCES [dbo].[TipoProducto] ([Id])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [Producto_TipoProducto_FK]
GO
