USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[Pagar]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TotalAPagar] [numeric](10, 0) NOT NULL,
	[FechaPago] [datetime] NOT NULL,
	[FormaPago_Id] [int] NOT NULL,
	[Producto_Id] [int] NOT NULL,
 CONSTRAINT [Pagar_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pagar]  WITH CHECK ADD  CONSTRAINT [Pagar_FormaPago_FK] FOREIGN KEY([FormaPago_Id])
REFERENCES [dbo].[FormaPago] ([Id])
GO
ALTER TABLE [dbo].[Pagar] CHECK CONSTRAINT [Pagar_FormaPago_FK]
GO
ALTER TABLE [dbo].[Pagar]  WITH CHECK ADD  CONSTRAINT [Pagar_Producto_FKv2] FOREIGN KEY([Producto_Id])
REFERENCES [dbo].[Producto] ([Id])
GO
ALTER TABLE [dbo].[Pagar] CHECK CONSTRAINT [Pagar_Producto_FKv2]
GO
