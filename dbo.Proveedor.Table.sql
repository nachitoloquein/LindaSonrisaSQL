USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[Proveedor]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedor](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellidos] [varchar](100) NOT NULL,
	[NumeroTelefonico] [numeric](10, 0) NOT NULL,
	[Rubro_Id] [int] NOT NULL,
	[CorreoElectronico] [varchar](50) NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
	[Niveles_Id] [int] NOT NULL,
 CONSTRAINT [Proveedor_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_correoProveedor] UNIQUE NONCLUSTERED 
(
	[CorreoElectronico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD  CONSTRAINT [Proveedor_Niveles_FK] FOREIGN KEY([Niveles_Id])
REFERENCES [dbo].[Niveles] ([Id])
GO
ALTER TABLE [dbo].[Proveedor] CHECK CONSTRAINT [Proveedor_Niveles_FK]
GO
ALTER TABLE [dbo].[Proveedor]  WITH CHECK ADD  CONSTRAINT [Proveedor_Rubro_FK] FOREIGN KEY([Rubro_Id])
REFERENCES [dbo].[Rubro] ([Id])
GO
ALTER TABLE [dbo].[Proveedor] CHECK CONSTRAINT [Proveedor_Rubro_FK]
GO
