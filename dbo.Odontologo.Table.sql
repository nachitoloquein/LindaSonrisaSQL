USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[Odontologo]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odontologo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PNombre] [varchar](50) NOT NULL,
	[ApellidoPat] [varchar](50) NOT NULL,
	[SNombre] [varchar](50) NOT NULL,
	[ApellidoMat] [varchar](50) NOT NULL,
	[Especialidad_Id] [int] NOT NULL,
	[Contrasena] [varchar](50) NULL,
 CONSTRAINT [Odontologo_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Odontologo]  WITH CHECK ADD  CONSTRAINT [Odontologo_Especialidad_FK] FOREIGN KEY([Especialidad_Id])
REFERENCES [dbo].[Especialidad] ([Id])
GO
ALTER TABLE [dbo].[Odontologo] CHECK CONSTRAINT [Odontologo_Especialidad_FK]
GO
