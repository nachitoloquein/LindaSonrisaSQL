USE [LindaSonrisa]
GO
/****** Object:  Table [dbo].[comuna]    Script Date: 15-09-2020 23:45:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comuna](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](80) NULL
) ON [PRIMARY]
GO
