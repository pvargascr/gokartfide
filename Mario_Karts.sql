create database Mario_Karts;
USE [Mario_Karts]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 12/1/2019 9:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrador](
	[id_admin] [int] NOT NULL,
	[nombre_admin] [varchar](100) NOT NULL,
	[apellido1_admin] [varchar](100) NOT NULL,
	[apellido2_admin] [varchar](100) NOT NULL,
	[correo_admin] [varchar](100) NOT NULL,
	[usuario_admin] [varchar](100) NOT NULL,
	[contrasena_admin] [varchar](100) NOT NULL,
	[telefono_admin] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carrera]    Script Date: 12/1/2019 9:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carrera](
	[id_carrera] [int] NOT NULL,
	[fecha_carrera] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_carrera] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 12/1/2019 9:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[id_Cliente] [int] NOT NULL,
	[nombre_cliente] [varchar](100) NOT NULL,
	[apellido1_cliente] [varchar](100) NOT NULL,
	[apellido2_cliente] [varchar](100) NOT NULL,
	[correo_cliente] [varchar](100) NOT NULL,
	[telefono_cliente] [varchar](8) NOT NULL,
	[edad_cliente] [int] NOT NULL,
	[tpoliza_cliente] [varchar](2) NOT NULL,
	[apodo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GoKart]    Script Date: 12/1/2019 9:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GoKart](
	[id_gokart] [int] NOT NULL,
	[estado_gokart] [varchar](50) NOT NULL,
	[cilindrada_gokart] [int] NOT NULL,
	[tcombustible_gokart] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_gokart] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Resultados_Carrera]    Script Date: 12/1/2019 9:00:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resultados_Carrera](
	[id_carrera] [int] NOT NULL,
	[id_gokart] [int] NOT NULL,
	[id_Cliente] [int] NOT NULL,
	[tiempo_carrera] [varchar](12) NULL,
 CONSTRAINT [PK_Carrera] PRIMARY KEY CLUSTERED 
(
	[id_carrera] ASC,
	[id_gokart] ASC,
	[id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Resultados_Carrera]  WITH CHECK ADD FOREIGN KEY([id_carrera])
REFERENCES [dbo].[Carrera] ([id_carrera])
GO
ALTER TABLE [dbo].[Resultados_Carrera]  WITH CHECK ADD FOREIGN KEY([id_Cliente])
REFERENCES [dbo].[Cliente] ([id_Cliente])
GO
ALTER TABLE [dbo].[Resultados_Carrera]  WITH CHECK ADD FOREIGN KEY([id_gokart])
REFERENCES [dbo].[GoKart] ([id_gokart])
GO
USE [master]
GO
ALTER DATABASE [Mario_Karts] SET  READ_WRITE 
GO
