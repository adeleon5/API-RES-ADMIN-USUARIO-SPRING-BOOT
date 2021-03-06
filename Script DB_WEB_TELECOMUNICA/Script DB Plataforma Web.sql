CREATE DATABASE DB_WEB_TELECOMUNICA
GO
USE [DB_WEB_TELECOMUNICA]
GO
/****** Object:  Table [dbo].[asig_acceso]    Script Date: 13/08/2020 20:42:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asig_acceso](
	[rol_id] [int] NOT NULL,
	[menu_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rol_id] ASC,
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[asig_rol]    Script Date: 13/08/2020 20:42:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[asig_rol](
	[usuario_id] [int] NOT NULL,
	[rol_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[usuario_id] ASC,
	[rol_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 13/08/2020 20:42:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) NOT NULL,
	[icono] [varchar](255) NOT NULL,
	[raiz] [int] NOT NULL,
	[ruta] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 13/08/2020 20:42:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 13/08/2020 20:42:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[activo] [varchar](255) NOT NULL,
	[clave] [varchar](255) NOT NULL,
	[correo] [varchar](255) NOT NULL,
	[nombre] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[asig_acceso]  WITH CHECK ADD  CONSTRAINT [FK30yo1kxs9fnswey14lpjnx6r1] FOREIGN KEY([menu_id])
REFERENCES [dbo].[menu] ([id])
GO
ALTER TABLE [dbo].[asig_acceso] CHECK CONSTRAINT [FK30yo1kxs9fnswey14lpjnx6r1]
GO
ALTER TABLE [dbo].[asig_acceso]  WITH CHECK ADD  CONSTRAINT [FKh23cvgegvmwuybhjjin2rideb] FOREIGN KEY([rol_id])
REFERENCES [dbo].[rol] ([id])
GO
ALTER TABLE [dbo].[asig_acceso] CHECK CONSTRAINT [FKh23cvgegvmwuybhjjin2rideb]
GO
ALTER TABLE [dbo].[asig_rol]  WITH CHECK ADD  CONSTRAINT [FK5rp57es0yf7p3bfvnbr2wp35w] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[asig_rol] CHECK CONSTRAINT [FK5rp57es0yf7p3bfvnbr2wp35w]
GO
ALTER TABLE [dbo].[asig_rol]  WITH CHECK ADD  CONSTRAINT [FKehaaqf8d2qs6ug74jcpxryils] FOREIGN KEY([rol_id])
REFERENCES [dbo].[rol] ([id])
GO
ALTER TABLE [dbo].[asig_rol] CHECK CONSTRAINT [FKehaaqf8d2qs6ug74jcpxryils]
GO
