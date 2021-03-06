USE [master]
GO
/****** Object:  Database [FashionStore]    Script Date: 17/03/2021 2:11:51 AM ******/
CREATE DATABASE [FashionStore]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FashionStore_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FashionStore.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FashionStore_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\FashionStore.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FashionStore] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FashionStore].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FashionStore] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FashionStore] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FashionStore] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FashionStore] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FashionStore] SET ARITHABORT OFF 
GO
ALTER DATABASE [FashionStore] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FashionStore] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FashionStore] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FashionStore] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FashionStore] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FashionStore] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FashionStore] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FashionStore] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FashionStore] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FashionStore] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FashionStore] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FashionStore] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FashionStore] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FashionStore] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FashionStore] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FashionStore] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FashionStore] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FashionStore] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FashionStore] SET  MULTI_USER 
GO
ALTER DATABASE [FashionStore] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FashionStore] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FashionStore] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FashionStore] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FashionStore] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FashionStore] SET QUERY_STORE = OFF
GO
USE [FashionStore]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 17/03/2021 2:11:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Message] [varchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginData]    Script Date: 17/03/2021 2:11:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginData](
	[id] [int] NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 17/03/2021 2:11:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Price] [varchar](50) NULL,
	[Qty] [varchar](50) NULL,
	[pic] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([id], [Name], [Email], [Message]) VALUES (1, N'qww', N'qw@as.com', N'qwr')
SET IDENTITY_INSERT [dbo].[Contact] OFF
INSERT [dbo].[LoginData] ([id], [UserName], [UserPassword]) VALUES (1, N'fashion@gmail.com', N'admin')
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [Name], [Price], [Qty], [pic]) VALUES (1, N'Shoes', N'120', N'4', N'Items/b1.jpg')
INSERT [dbo].[Product] ([id], [Name], [Price], [Qty], [pic]) VALUES (2, N'Mens Shoe', N'100', N'4', N'Items/b2.png')
INSERT [dbo].[Product] ([id], [Name], [Price], [Qty], [pic]) VALUES (3, N'Casual SHoes', N'120', N'12', N'Items/b3.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
USE [master]
GO
ALTER DATABASE [FashionStore] SET  READ_WRITE 
GO
