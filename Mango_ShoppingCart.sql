USE [master]
GO
/****** Object:  Database [Mango_ShoppingCart]    Script Date: 25/10/2023 5:40:51 PM ******/
CREATE DATABASE [Mango_ShoppingCart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mango_ShoppingCart', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Mango_ShoppingCart.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mango_ShoppingCart_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Mango_ShoppingCart_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Mango_ShoppingCart] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mango_ShoppingCart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mango_ShoppingCart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Mango_ShoppingCart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mango_ShoppingCart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mango_ShoppingCart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Mango_ShoppingCart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mango_ShoppingCart] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Mango_ShoppingCart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mango_ShoppingCart] SET  MULTI_USER 
GO
ALTER DATABASE [Mango_ShoppingCart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mango_ShoppingCart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mango_ShoppingCart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mango_ShoppingCart] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mango_ShoppingCart] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mango_ShoppingCart] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Mango_ShoppingCart] SET QUERY_STORE = ON
GO
ALTER DATABASE [Mango_ShoppingCart] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Mango_ShoppingCart]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/10/2023 5:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 25/10/2023 5:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetails](
	[CartDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[CartHeaderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_CartDetails] PRIMARY KEY CLUSTERED 
(
	[CartDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartHeaders]    Script Date: 25/10/2023 5:40:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartHeaders](
	[CartHeaderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[CouponCode] [nvarchar](max) NULL,
 CONSTRAINT [PK_CartHeaders] PRIMARY KEY CLUSTERED 
(
	[CartHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230909203153_AddShoppingCardTables', N'7.0.10')
GO
SET IDENTITY_INSERT [dbo].[CartDetails] ON 

INSERT [dbo].[CartDetails] ([CartDetailsId], [CartHeaderId], [ProductId], [Count]) VALUES (6, 10, 1, 1)
INSERT [dbo].[CartDetails] ([CartDetailsId], [CartHeaderId], [ProductId], [Count]) VALUES (10, 12, 1, 9)
INSERT [dbo].[CartDetails] ([CartDetailsId], [CartHeaderId], [ProductId], [Count]) VALUES (11, 12, 4, 4)
INSERT [dbo].[CartDetails] ([CartDetailsId], [CartHeaderId], [ProductId], [Count]) VALUES (13, 14, 1, 2)
INSERT [dbo].[CartDetails] ([CartDetailsId], [CartHeaderId], [ProductId], [Count]) VALUES (14, 14, 3, 2)
INSERT [dbo].[CartDetails] ([CartDetailsId], [CartHeaderId], [ProductId], [Count]) VALUES (15, 15, 1, 1)
INSERT [dbo].[CartDetails] ([CartDetailsId], [CartHeaderId], [ProductId], [Count]) VALUES (16, 16, 1, 2)
INSERT [dbo].[CartDetails] ([CartDetailsId], [CartHeaderId], [ProductId], [Count]) VALUES (17, 16, 2, 3)
SET IDENTITY_INSERT [dbo].[CartDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[CartHeaders] ON 

INSERT [dbo].[CartHeaders] ([CartHeaderId], [UserId], [CouponCode]) VALUES (10, N'string', N'string')
INSERT [dbo].[CartHeaders] ([CartHeaderId], [UserId], [CouponCode]) VALUES (12, N'2', N'100FF')
INSERT [dbo].[CartHeaders] ([CartHeaderId], [UserId], [CouponCode]) VALUES (14, N'0d1c1c60-7e90-414f-bd1f-6ea4d86413c3', N'10OFF')
INSERT [dbo].[CartHeaders] ([CartHeaderId], [UserId], [CouponCode]) VALUES (15, N'177fc0e0-e4e1-4d6a-9755-97df0e99b577', NULL)
INSERT [dbo].[CartHeaders] ([CartHeaderId], [UserId], [CouponCode]) VALUES (16, N'f6778528-d60f-42d3-98ca-da970a7798cc', N'20OFF')
SET IDENTITY_INSERT [dbo].[CartHeaders] OFF
GO
/****** Object:  Index [IX_CartDetails_CartHeaderId]    Script Date: 25/10/2023 5:40:51 PM ******/
CREATE NONCLUSTERED INDEX [IX_CartDetails_CartHeaderId] ON [dbo].[CartDetails]
(
	[CartHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CartDetails]  WITH CHECK ADD  CONSTRAINT [FK_CartDetails_CartHeaders_CartHeaderId] FOREIGN KEY([CartHeaderId])
REFERENCES [dbo].[CartHeaders] ([CartHeaderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartDetails] CHECK CONSTRAINT [FK_CartDetails_CartHeaders_CartHeaderId]
GO
USE [master]
GO
ALTER DATABASE [Mango_ShoppingCart] SET  READ_WRITE 
GO
