USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[Atencion]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Atencion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FechaPedidoAtencion] [datetime] NOT NULL,
	[FechaAtencion] [date] NOT NULL,
	[HoraAtencion] [time](7) NOT NULL,
	[Odontologo_Id] [int] NOT NULL,
	[TipoServicio_Id] [int] NOT NULL,
	[Estado] [varchar](20) NULL,
	[nombre_usuario] [varchar](50) NULL,
 CONSTRAINT [Atencion_PK] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Atencion]  WITH CHECK ADD  CONSTRAINT [Atencion_Odontologo_FK] FOREIGN KEY([Odontologo_Id])
REFERENCES [dbo].[Odontologo] ([Id])
GO
ALTER TABLE [dbo].[Atencion] CHECK CONSTRAINT [Atencion_Odontologo_FK]
GO
ALTER TABLE [dbo].[Atencion]  WITH CHECK ADD  CONSTRAINT [Atencion_TipoServicio_FK] FOREIGN KEY([TipoServicio_Id])
REFERENCES [dbo].[TipoServicio] ([Id])
GO
ALTER TABLE [dbo].[Atencion] CHECK CONSTRAINT [Atencion_TipoServicio_FK]
GO
