USE [master]
GO
/****** Object:  Database [Mango_Product]    Script Date: 25/10/2023 5:40:13 PM ******/
CREATE DATABASE [Mango_Product]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mango_Product', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Mango_Product.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mango_Product_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Mango_Product_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Mango_Product] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mango_Product].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mango_Product] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mango_Product] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mango_Product] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mango_Product] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mango_Product] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mango_Product] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Mango_Product] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mango_Product] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mango_Product] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mango_Product] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mango_Product] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mango_Product] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mango_Product] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mango_Product] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mango_Product] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Mango_Product] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mango_Product] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mango_Product] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mango_Product] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mango_Product] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mango_Product] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Mango_Product] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mango_Product] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mango_Product] SET  MULTI_USER 
GO
ALTER DATABASE [Mango_Product] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mango_Product] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mango_Product] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mango_Product] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mango_Product] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mango_Product] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Mango_Product] SET QUERY_STORE = ON
GO
ALTER DATABASE [Mango_Product] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Mango_Product]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/10/2023 5:40:13 PM ******/
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
/****** Object:  Table [dbo].[Products]    Script Date: 25/10/2023 5:40:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CategoryName] [nvarchar](max) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[ImageLocalPath] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230909164206_addProductAndSeedTables', N'7.0.10')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Description], [CategoryName], [ImageUrl], [ImageLocalPath]) VALUES (1, N'Cánh thiên thần', 15, N'Đẹp dịu dàng mà không chói lóa', N'Avatar', N'http://localhost:7000/ProductImages/1.jpg', N'wwwroot\ProductImages\1.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Description], [CategoryName], [ImageUrl], [ImageLocalPath]) VALUES (2, N'Cánh ác quỷ', 13.99, N'Vẻ đẹp của ác quỷ', N'Avatar', N'http://localhost:7000/ProductImages/2.jpg', N'wwwroot\ProductImages\2.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Description], [CategoryName], [ImageUrl], [ImageLocalPath]) VALUES (3, N'Halloween', 10.99, N'Treat or trick?', N'Avatar', N'http://localhost:7000/ProductImages/3.jpg', N'wwwroot\ProductImages\3.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Description], [CategoryName], [ImageUrl], [ImageLocalPath]) VALUES (4, N'Hỏa tiêm thương', 15, N'Cây thương của Natra mạnh oải cả chưởng', N'Weapon', N'http://localhost:7000/ProductImages/4.jpg', N'wwwroot\ProductImages\4.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Description], [CategoryName], [ImageUrl], [ImageLocalPath]) VALUES (12, N'Huyền thiết trọng kiếm', 99, N'Kiếm của độc cô cầu bại', N'Weapon', N'http://localhost:7000/ProductImages/12.jpg', N'wwwroot\ProductImages\12.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Description], [CategoryName], [ImageUrl], [ImageLocalPath]) VALUES (24, N'Bất tử chi giáp', 99, N'Giáp nạm vàng của nữ hoàng Cleopatra', N'Protector', N'http://localhost:7000/ProductImages/24.jpg', N'wwwroot\ProductImages\24.jpg')
INSERT [dbo].[Products] ([ProductId], [Name], [Price], [Description], [CategoryName], [ImageUrl], [ImageLocalPath]) VALUES (27, N'Hải tặc', 55, N'Ta nhất định sẽ trở thành vua hải tặc', N'Avatar', N'http://localhost:7000/ProductImages/27.jpg', N'wwwroot\ProductImages\27.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
USE [master]
GO
ALTER DATABASE [Mango_Product] SET  READ_WRITE 
GO
