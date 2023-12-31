USE [master]
GO
/****** Object:  Database [Mango_Order]    Script Date: 25/10/2023 5:39:36 PM ******/
CREATE DATABASE [Mango_Order]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mango_Order', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Mango_Order.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mango_Order_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\Mango_Order_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Mango_Order] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mango_Order].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mango_Order] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mango_Order] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mango_Order] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mango_Order] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mango_Order] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mango_Order] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Mango_Order] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mango_Order] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mango_Order] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mango_Order] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mango_Order] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mango_Order] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mango_Order] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mango_Order] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mango_Order] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Mango_Order] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mango_Order] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mango_Order] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mango_Order] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mango_Order] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mango_Order] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Mango_Order] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mango_Order] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mango_Order] SET  MULTI_USER 
GO
ALTER DATABASE [Mango_Order] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mango_Order] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mango_Order] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mango_Order] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mango_Order] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mango_Order] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Mango_Order] SET QUERY_STORE = ON
GO
ALTER DATABASE [Mango_Order] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Mango_Order]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/10/2023 5:39:36 PM ******/
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
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 25/10/2023 5:39:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[OrderDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OrderHeaderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHeaders]    Script Date: 25/10/2023 5:39:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHeaders](
	[OrderHeaderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NULL,
	[CouponCode] [nvarchar](max) NULL,
	[Discount] [float] NOT NULL,
	[OrderTotal] [float] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[OrderTime] [datetime2](7) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[PaymentIntentId] [nvarchar](max) NULL,
	[StripeSessionId] [nvarchar](max) NULL,
 CONSTRAINT [PK_OrderHeaders] PRIMARY KEY CLUSTERED 
(
	[OrderHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231020184247_AddOrderTables', N'7.0.10')
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (1, 1, 1, 1, N'Samosa', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (2, 2, 1, 1, N'Samosa', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (3, 3, 1, 1, N'Samosa', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (4, 3, 3, 1, N'Sweet Pie', 10.99)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (5, 4, 1, 1, N'Samosa', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (6, 4, 3, 1, N'Sweet Pie', 10.99)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (7, 5, 1, 1, N'Samosa', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (8, 5, 3, 1, N'Sweet Pie', 10.99)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (9, 6, 1, 1, N'Samosa', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (10, 6, 3, 1, N'Sweet Pie', 10.99)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (11, 7, 1, 1, N'Samosa', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (12, 7, 3, 1, N'Sweet Pie', 10.99)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (13, 8, 1, 1, N'Samosa', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (14, 8, 3, 1, N'Sweet Pie', 10.99)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (15, 9, 1, 2, N'Samosa', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (16, 9, 3, 2, N'Sweet Pie', 10.99)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (17, 10, 1, 1, N'Samosa', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (18, 11, 1, 1, N'Samosa', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (19, 12, 1, 2, N'Cánh thiên thần', 15)
INSERT [dbo].[OrderDetails] ([OrderDetailsId], [OrderHeaderId], [ProductId], [Count], [ProductName], [Price]) VALUES (20, 12, 2, 3, N'Cánh ác quỷ', 13.99)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderHeaders] ON 

INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (1, N'0d1c1c60-7e90-414f-bd1f-6ea4d86413c3', NULL, 0, 15, N'hung', N'1213', N'qau@gmail.com', CAST(N'2023-10-21T02:02:05.5616005' AS DateTime2), N'Cancelled', N'pi_3O3O0TFF4Wh8nThn0cpAip2e', N'cs_test_a1u7pQRNwaQneCYwbNtl7loUiGyL99NlXM6kodhRRUQwkOhCRp0ts4EdEm')
INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (2, N'0d1c1c60-7e90-414f-bd1f-6ea4d86413c3', NULL, 0, 15, N'hung', N'1213', N'qau@gmail.com', CAST(N'2023-10-21T02:06:07.2190890' AS DateTime2), N'Pending', NULL, N'cs_test_a1SNQAQyDyvlUrXCjnGfXJuZHBJ0BwYMH8uVhqV5oRmPVAYEcNNPv92Bhe')
INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (3, N'0d1c1c60-7e90-414f-bd1f-6ea4d86413c3', NULL, 0, 25.99, N'hung', N'1213', N'qau@gmail.com', CAST(N'2023-10-21T02:07:03.4070434' AS DateTime2), N'Pending', NULL, N'cs_test_b1kGlDWsvOZHm1M8S0Dyx9r3Jc726HfoCbMduyKjn0VxFcwKE2jN3AEZRu')
INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (4, N'0d1c1c60-7e90-414f-bd1f-6ea4d86413c3', NULL, 0, 25.99, N'hung', N'1213', N'qau@gmail.com', CAST(N'2023-10-21T02:07:03.7255422' AS DateTime2), N'Pending', NULL, N'cs_test_b1CmGkvjerWaq5qLbYJX4Ckq7FQouS3GVZ1Gq73fK4dqLF5NRPBgdZfsyf')
INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (5, N'0d1c1c60-7e90-414f-bd1f-6ea4d86413c3', N'100FF', 10, 15.99, N'hung', N'1213', N'qau@gmail.com', CAST(N'2023-10-21T02:07:49.8018045' AS DateTime2), N'Pending', NULL, NULL)
INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (6, N'0d1c1c60-7e90-414f-bd1f-6ea4d86413c3', N'100FF', 10, 15.99, N'hung', N'1213', N'qau@gmail.com', CAST(N'2023-10-21T02:09:50.3590885' AS DateTime2), N'Pending', NULL, NULL)
INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (7, N'0d1c1c60-7e90-414f-bd1f-6ea4d86413c3', N'100FF', 10, 15.99, N'aaaa', N'13111', N'qau@gmail.com', CAST(N'2023-10-21T02:10:22.6436959' AS DateTime2), N'Pending', NULL, NULL)
INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (8, N'0d1c1c60-7e90-414f-bd1f-6ea4d86413c3', N'', 0, 25.99, N'hung', N'1213', N'qau@gmail.com', CAST(N'2023-10-21T02:10:39.0563607' AS DateTime2), N'Pending', NULL, N'cs_test_b1dZbkoqqOQOWKqrqFiV6E8oNjcVUlWWzDYerIN22kF0KUrPRIU117q3K9')
INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (9, N'0d1c1c60-7e90-414f-bd1f-6ea4d86413c3', N'10OFF', 10, 41.98, N'hung', N'1213', N'qau@gmail.com', CAST(N'2023-10-21T02:15:34.2168487' AS DateTime2), N'ReadyForPickup', N'pi_3O3OBKFF4Wh8nThn08OAWSmU', N'cs_test_b1eP8EaCXxoudqT1XTgz5rOWANbWKwrB4KYQtqjZ6Mwem5ZJR8Swq5Fj1V')
INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (10, N'177fc0e0-e4e1-4d6a-9755-97df0e99b577', NULL, 0, 15, N'hung', N'13111', N'cau@gmail.com', CAST(N'2023-10-25T15:28:51.3187154' AS DateTime2), N'Pending', NULL, N'cs_test_a1r1TTJRpnFnxlUdh5QdoBtvEODBMtdHJIsxnGr08xAVEfx6rimXRN3ImU')
INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (11, N'177fc0e0-e4e1-4d6a-9755-97df0e99b577', NULL, 0, 15, N'ga', N'1213', N'ban@gmail.com', CAST(N'2023-10-25T15:29:22.6190797' AS DateTime2), N'Approved', N'pi_3O52T8FF4Wh8nThn0smDBRZs', N'cs_test_a1np7IPls8egzJQIkhzeDVG4OEgIQkY2OtDPodhDGPS5Bku4Ii8cD5FIcz')
INSERT [dbo].[OrderHeaders] ([OrderHeaderId], [UserId], [CouponCode], [Discount], [OrderTotal], [Name], [Phone], [Email], [OrderTime], [Status], [PaymentIntentId], [StripeSessionId]) VALUES (12, N'f6778528-d60f-42d3-98ca-da970a7798cc', N'20OFF', 20, 51.97, N'con ga', N'0123412', N'banca@gmail.com', CAST(N'2023-10-25T17:11:52.2318704' AS DateTime2), N'Completed', N'pi_3O544HFF4Wh8nThn17t6hjGC', N'cs_test_b1ZMNIHYrWxd6rAfhTs4ric53PYdicjZomEswu9MAazwuEVVEZTmqYARDk')
SET IDENTITY_INSERT [dbo].[OrderHeaders] OFF
GO
/****** Object:  Index [IX_OrderDetails_OrderHeaderId]    Script Date: 25/10/2023 5:39:37 PM ******/
CREATE NONCLUSTERED INDEX [IX_OrderDetails_OrderHeaderId] ON [dbo].[OrderDetails]
(
	[OrderHeaderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderHeaderId] FOREIGN KEY([OrderHeaderId])
REFERENCES [dbo].[OrderHeaders] ([OrderHeaderId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetails] CHECK CONSTRAINT [FK_OrderDetails_OrderHeaders_OrderHeaderId]
GO
USE [master]
GO
ALTER DATABASE [Mango_Order] SET  READ_WRITE 
GO
