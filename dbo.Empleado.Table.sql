USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PrimerNombre] [varchar](50) NOT NULL,
	[SegundoNombre] [varchar](50) NULL,
	[ApellidoMat] [varchar](50) NOT NULL,
	[ApellidoPat] [varchar](50) NOT NULL,
	[CorreoElectronico] [varchar](50) NOT NULL,
	[Contrasena] [varchar](50) NOT NULL,
	[Niveles_Id] [int] NOT NULL,
 CONSTRAINT [Empleado_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uq_correoEmpleado] UNIQUE NONCLUSTERED 
(
	[CorreoElectronico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Empleado]  WITH CHECK ADD  CONSTRAINT [Empleado_Niveles_FK] FOREIGN KEY([Niveles_Id])
REFERENCES [dbo].[Niveles] ([Id])
GO
ALTER TABLE [dbo].[Empleado] CHECK CONSTRAINT [Empleado_Niveles_FK]
GO
