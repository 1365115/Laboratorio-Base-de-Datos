USE [Laboratorio 2]
GO
/****** Object:  Table [dbo].[Table_7]    Script Date: 04/09/2017 09:52:48 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_7]') AND type in (N'U'))
DROP TABLE [dbo].[Table_7]
GO
/****** Object:  Table [dbo].[Table_6]    Script Date: 04/09/2017 09:52:48 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_6]') AND type in (N'U'))
DROP TABLE [dbo].[Table_6]
GO
/****** Object:  Table [dbo].[Table_5]    Script Date: 04/09/2017 09:52:48 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_5]') AND type in (N'U'))
DROP TABLE [dbo].[Table_5]
GO
/****** Object:  Table [dbo].[Table_4]    Script Date: 04/09/2017 09:52:48 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_4]') AND type in (N'U'))
DROP TABLE [dbo].[Table_4]
GO
/****** Object:  Table [dbo].[Table_3]    Script Date: 04/09/2017 09:52:48 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_3]') AND type in (N'U'))
DROP TABLE [dbo].[Table_3]
GO
/****** Object:  Table [dbo].[Table_2]    Script Date: 04/09/2017 09:52:48 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_2]') AND type in (N'U'))
DROP TABLE [dbo].[Table_2]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 04/09/2017 09:52:48 p.m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_1]') AND type in (N'U'))
DROP TABLE [dbo].[Table_1]
GO
USE [master]
GO
/****** Object:  Database [Laboratorio 2]    Script Date: 04/09/2017 09:52:48 p.m. ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'Laboratorio 2')
DROP DATABASE [Laboratorio 2]
GO
/****** Object:  Database [Laboratorio 2]    Script Date: 04/09/2017 09:52:48 p.m. ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'Laboratorio 2')
BEGIN
CREATE DATABASE [Laboratorio 2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Laboratorio 2', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Laboratorio 2.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Laboratorio 2_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Laboratorio 2_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END

GO
ALTER DATABASE [Laboratorio 2] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Laboratorio 2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Laboratorio 2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Laboratorio 2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Laboratorio 2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Laboratorio 2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Laboratorio 2] SET ARITHABORT OFF 
GO
ALTER DATABASE [Laboratorio 2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Laboratorio 2] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Laboratorio 2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Laboratorio 2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Laboratorio 2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Laboratorio 2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Laboratorio 2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Laboratorio 2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Laboratorio 2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Laboratorio 2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Laboratorio 2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Laboratorio 2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Laboratorio 2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Laboratorio 2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Laboratorio 2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Laboratorio 2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Laboratorio 2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Laboratorio 2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Laboratorio 2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Laboratorio 2] SET  MULTI_USER 
GO
ALTER DATABASE [Laboratorio 2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Laboratorio 2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Laboratorio 2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Laboratorio 2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Laboratorio 2]
GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 04/09/2017 09:52:48 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Table_1](
	[ID] [uniqueidentifier] NOT NULL,
	[nombre] [nchar](10) NULL,
	[apellidoP] [nchar](10) NULL,
	[apellidoM] [nchar](10) NULL,
	[fechaNacimiento] [date] NULL,
	[nacionalidad] [nchar](10) NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Table_2]    Script Date: 04/09/2017 09:52:48 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_2]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Table_2](
	[Matricula (ID)] [uniqueidentifier] NOT NULL,
	[Facultad] [nvarchar](50) NOT NULL,
	[Carrera] [nchar](25) NOT NULL,
	[Materia 1] [nchar](15) NOT NULL,
	[Calificación Materia 1] [decimal](18, 2) NOT NULL,
	[Materia 2] [nchar](15) NOT NULL,
	[Califiación Materia 2] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Table_3]    Script Date: 04/09/2017 09:52:48 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_3]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Table_3](
	[cliente] [uniqueidentifier] NOT NULL,
	[nombre] [nchar](10) NULL,
	[apellidoP] [nchar](10) NULL,
	[apellidoM] [nchar](10) NULL,
	[saldo] [money] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Table_4]    Script Date: 04/09/2017 09:52:48 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_4]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Table_4](
	[ID] [uniqueidentifier] NULL,
	[numeroEmpleado] [int] NULL,
	[nombre] [nchar](10) NULL,
	[apellidoP] [nchar](10) NULL,
	[apellidoM] [nchar](10) NULL,
	[FechaIngreso] [date] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Table_5]    Script Date: 04/09/2017 09:52:48 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_5]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Table_5](
	[ID] [uniqueidentifier] NULL,
	[nombre] [nchar](10) NULL,
	[apellidoP] [nchar](10) NULL,
	[apellidoM] [nchar](10) NULL,
	[Asistencias] [int] NULL,
	[faltas] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Table_6]    Script Date: 04/09/2017 09:52:48 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_6]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Table_6](
	[ID] [uniqueidentifier] NULL,
	[Colono] [int] NULL,
	[calle] [nchar](10) NULL,
	[numero] [int] NULL,
	[Vehiculo] [nchar](10) NULL,
	[modelo] [int] NULL,
	[deuda] [money] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Table_7]    Script Date: 04/09/2017 09:52:48 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Table_7]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Table_7](
	[ID] [uniqueidentifier] NULL,
	[correo] [nchar](25) NULL,
	[contraseña] [nchar](16) NULL,
	[pais] [nchar](10) NULL,
	[IP] [nchar](36) NULL
) ON [PRIMARY]
END
GO
USE [master]
GO
ALTER DATABASE [Laboratorio 2] SET  READ_WRITE 
GO
