USE [master]
GO
/****** Object:  Database [Textura]    Script Date: 15/12/2021 00:43:16 ******/
CREATE DATABASE [Textura]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Textura', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Textura.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Textura_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Textura_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Textura] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Textura].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Textura] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Textura] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Textura] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Textura] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Textura] SET ARITHABORT OFF 
GO
ALTER DATABASE [Textura] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Textura] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Textura] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Textura] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Textura] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Textura] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Textura] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Textura] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Textura] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Textura] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Textura] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Textura] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Textura] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Textura] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Textura] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Textura] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Textura] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Textura] SET RECOVERY FULL 
GO
ALTER DATABASE [Textura] SET  MULTI_USER 
GO
ALTER DATABASE [Textura] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Textura] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Textura] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Textura] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Textura] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Textura] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Textura', N'ON'
GO
ALTER DATABASE [Textura] SET QUERY_STORE = OFF
GO
USE [Textura]
GO
/****** Object:  Table [dbo].[Capa]    Script Date: 15/12/2021 00:43:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Capa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](255) NOT NULL,
	[Color] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Color]    Script Date: 15/12/2021 00:43:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[R] [int] NOT NULL,
	[G] [int] NOT NULL,
	[B] [int] NOT NULL,
	[IdCapa] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Capa] ON 
GO
INSERT [dbo].[Capa] ([Id], [Nombre], [Color]) VALUES (1, N'tierra', N'Aqua')
GO
INSERT [dbo].[Capa] ([Id], [Nombre], [Color]) VALUES (2, N'rio1', N'Azure')
GO
INSERT [dbo].[Capa] ([Id], [Nombre], [Color]) VALUES (3, N'lago', N'BlueViolet')
GO
INSERT [dbo].[Capa] ([Id], [Nombre], [Color]) VALUES (4, N'bosque', N'GreeYellow')
GO
INSERT [dbo].[Capa] ([Id], [Nombre], [Color]) VALUES (7, N'sal', N'Black')
GO
SET IDENTITY_INSERT [dbo].[Capa] OFF
GO
SET IDENTITY_INSERT [dbo].[Color] ON 
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (1, 144, 125, 111, 1)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (24, 157, 144, 135, 1)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (25, 164, 148, 133, 1)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (26, 164, 148, 128, 1)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (27, 113, 114, 93, 1)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (29, 25, 52, 37, 4)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (30, 40, 65, 42, 4)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (31, 36, 63, 34, 4)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (32, 12, 51, 67, 3)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (33, 12, 42, 66, 3)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (34, 11, 41, 65, 3)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (35, 10, 44, 57, 3)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (38, 251, 251, 250, 7)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (39, 175, 154, 135, 1)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (40, 117, 152, 109, 3)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (41, 101, 123, 103, 3)
GO
INSERT [dbo].[Color] ([Id], [R], [G], [B], [IdCapa]) VALUES (42, 189, 165, 148, 1)
GO
SET IDENTITY_INSERT [dbo].[Color] OFF
GO
ALTER TABLE [dbo].[Color]  WITH CHECK ADD  CONSTRAINT [FK_Color_Capa] FOREIGN KEY([IdCapa])
REFERENCES [dbo].[Capa] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Color] CHECK CONSTRAINT [FK_Color_Capa]
GO
USE [master]
GO
ALTER DATABASE [Textura] SET  READ_WRITE 
GO
