USE [master]
GO
/****** Object:  Database [Mario_Karts]    Script Date: 12/1/2019 9:00:34 PM ******/
CREATE DATABASE [Mario_Karts]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Karts_Carreras', FILENAME = N'd:\Mario_Karts\MK_Primary.mdf' , SIZE = 51200KB , MAXSIZE = 204800KB , FILEGROWTH = 20480KB ), 
 FILEGROUP [VP_FG] 
( NAME = N'Datos1', FILENAME = N'd:\Mario_Karts\MK_Datos1.nfd' , SIZE = 204800KB , MAXSIZE = 819200KB , FILEGROWTH = 102400KB )
 LOG ON 
( NAME = N'Log1', FILENAME = N'd:\Mario_Karts\MK_Log.lfd' , SIZE = 307200KB , MAXSIZE = 819200KB , FILEGROWTH = 102400KB )
GO
ALTER DATABASE [Mario_Karts] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mario_Karts].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mario_Karts] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mario_Karts] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mario_Karts] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mario_Karts] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mario_Karts] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mario_Karts] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Mario_Karts] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mario_Karts] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mario_Karts] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mario_Karts] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mario_Karts] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mario_Karts] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mario_Karts] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mario_Karts] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mario_Karts] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Mario_Karts] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mario_Karts] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mario_Karts] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mario_Karts] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mario_Karts] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mario_Karts] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mario_Karts] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mario_Karts] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mario_Karts] SET  MULTI_USER 
GO
ALTER DATABASE [Mario_Karts] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mario_Karts] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mario_Karts] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mario_Karts] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mario_Karts] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mario_Karts] SET QUERY_STORE = OFF
GO
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
