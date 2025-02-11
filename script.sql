USE [master]
GO
/****** Object:  Database [BanHangDienTu]    Script Date: 6/18/2020 7:06:37 PM ******/
CREATE DATABASE [BanHangDienTu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BanHangDienTu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BanHangDienTu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BanHangDienTu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\BanHangDienTu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BanHangDienTu] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BanHangDienTu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BanHangDienTu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BanHangDienTu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BanHangDienTu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BanHangDienTu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BanHangDienTu] SET ARITHABORT OFF 
GO
ALTER DATABASE [BanHangDienTu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BanHangDienTu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BanHangDienTu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BanHangDienTu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BanHangDienTu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BanHangDienTu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BanHangDienTu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BanHangDienTu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BanHangDienTu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BanHangDienTu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BanHangDienTu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BanHangDienTu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BanHangDienTu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BanHangDienTu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BanHangDienTu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BanHangDienTu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BanHangDienTu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BanHangDienTu] SET RECOVERY FULL 
GO
ALTER DATABASE [BanHangDienTu] SET  MULTI_USER 
GO
ALTER DATABASE [BanHangDienTu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BanHangDienTu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BanHangDienTu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BanHangDienTu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BanHangDienTu] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BanHangDienTu', N'ON'
GO
ALTER DATABASE [BanHangDienTu] SET QUERY_STORE = OFF
GO
USE [BanHangDienTu]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 6/18/2020 7:06:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [text] NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/18/2020 7:06:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[slug] [varchar](255) NULL,
	[description] [text] NULL,
	[created_at] [timestamp] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 6/18/2020 7:06:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[address] [text] NULL,
	[membership] [int] NULL,
	[email] [varchar](255) NULL,
	[created_at] [datetime] NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAQ]    Script Date: 6/18/2020 7:06:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQ](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[question] [varchar](255) NULL,
	[answer] [varchar](255) NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_FAQ] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 6/18/2020 7:06:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](255) NULL,
	[customer_id] [bigint] NULL,
	[staff_id] [bigint] NULL,
	[address] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[total_price] [float] NULL,
	[note] [varchar](255) NULL,
	[status] [int] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_detail]    Script Date: 6/18/2020 7:06:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_detail](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[amount] [bigint] NULL,
	[total_price] [float] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_Order_detail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/18/2020 7:06:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[code] [varchar](10) NULL,
	[category_id] [bigint] NULL,
	[name] [varchar](255) NULL,
	[slug] [varchar](255) NULL,
	[overview] [varchar](255) NULL,
	[image] [text] NULL,
	[description] [varchar](255) NULL,
	[detail] [varchar](255) NULL,
	[price] [float] NULL,
	[unit] [varchar](255) NULL,
	[sale] [float] NULL,
	[star] [float] NULL,
	[is_stock] [bit] NULL,
	[is_active] [bit] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 6/18/2020 7:06:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [text] NULL,
	[created_at] [timestamp] NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 6/18/2020 7:06:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[phone] [varchar](255) NULL,
	[address] [varchar](255) NULL,
	[email] [varchar](255) NULL,
	[created_at] [timestamp] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [code], [name], [slug], [description]) VALUES (1, N'1', N'Mobile Phone', NULL, N'Mobile Phone')
INSERT [dbo].[Category] ([id], [code], [name], [slug], [description]) VALUES (2, N'2', N'Camera', NULL, N'Camera')
INSERT [dbo].[Category] ([id], [code], [name], [slug], [description]) VALUES (3, N'3', N'Desktop', NULL, N'Desktop')
INSERT [dbo].[Category] ([id], [code], [name], [slug], [description]) VALUES (4, N'4', N'Console Controller', NULL, N'Console Controller')
INSERT [dbo].[Category] ([id], [code], [name], [slug], [description]) VALUES (5, N'5', N'Speaker', NULL, N'Speaker')
INSERT [dbo].[Category] ([id], [code], [name], [slug], [description]) VALUES (6, N'6', N'Headphone', NULL, N'Headphone')
INSERT [dbo].[Category] ([id], [code], [name], [slug], [description]) VALUES (7, N'7', N'Watch', NULL, N'Watch')
INSERT [dbo].[Category] ([id], [code], [name], [slug], [description]) VALUES (8, N'8', N'Tablet', NULL, N'Tablet')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([id], [name], [phone], [address], [membership], [email], [created_at], [username], [password], [status]) VALUES (1, N'Quoc thang', N'12345789', N'ha noi', NULL, N'thangzjm99@gmail.com', CAST(N'2020-06-13T22:39:56.000' AS DateTime), N'thang9923', N'thang123', 1)
INSERT [dbo].[Customer] ([id], [name], [phone], [address], [membership], [email], [created_at], [username], [password], [status]) VALUES (2, N'Quoc thang', N'12345789', N'ha noi', NULL, N'thangzjm999@gmail.com', CAST(N'2020-06-13T22:40:23.000' AS DateTime), N'adminxxx', N'123123', 1)
INSERT [dbo].[Customer] ([id], [name], [phone], [address], [membership], [email], [created_at], [username], [password], [status]) VALUES (3, N'Test Image', N'12345789', N'asasd', NULL, N'nguyenhoanglinh2205@gmail.com', CAST(N'2020-06-13T22:42:32.597' AS DateTime), N'thang123', N'123123', 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([id], [code], [customer_id], [staff_id], [address], [phone], [email], [total_price], [note], [status], [created_at]) VALUES (1, N'thang dinh', NULL, NULL, N'asdasdasd', N'231321', N'nguyenhoanglinh2205@gmail.com', NULL, NULL, NULL, CAST(N'2020-06-06T22:10:08.163' AS DateTime))
INSERT [dbo].[Order] ([id], [code], [customer_id], [staff_id], [address], [phone], [email], [total_price], [note], [status], [created_at]) VALUES (2, N'thang dinh', NULL, NULL, N'asdasdasd', N'231321', N'nguyenhoanglinh2205@gmail.com', NULL, NULL, NULL, CAST(N'2020-06-06T22:13:59.127' AS DateTime))
INSERT [dbo].[Order] ([id], [code], [customer_id], [staff_id], [address], [phone], [email], [total_price], [note], [status], [created_at]) VALUES (3, N'thang dinh', NULL, NULL, N'asdasdasd', N'231321', N'nguyenhoanglinh2205@gmail.com', NULL, NULL, NULL, CAST(N'2020-06-07T10:09:26.537' AS DateTime))
INSERT [dbo].[Order] ([id], [code], [customer_id], [staff_id], [address], [phone], [email], [total_price], [note], [status], [created_at]) VALUES (4, N'Check lan 1', NULL, NULL, N'kham thien ha noi', N'12346789', N'thangzjm99@gmail.com', 0, NULL, NULL, CAST(N'2020-06-10T16:05:50.420' AS DateTime))
INSERT [dbo].[Order] ([id], [code], [customer_id], [staff_id], [address], [phone], [email], [total_price], [note], [status], [created_at]) VALUES (5, N'thang dinh', NULL, NULL, N'asdasdasd', N'231321', N'nguyenhoanglinh2205@gmail.com', 100, NULL, NULL, CAST(N'2020-06-10T16:27:06.623' AS DateTime))
INSERT [dbo].[Order] ([id], [code], [customer_id], [staff_id], [address], [phone], [email], [total_price], [note], [status], [created_at]) VALUES (6, N'Check lan 1', NULL, NULL, N'kham thien ha noi', N'231321', N'nguyenhoanglinh2205@gmail.com', 800, NULL, NULL, CAST(N'2020-06-10T16:27:44.333' AS DateTime))
INSERT [dbo].[Order] ([id], [code], [customer_id], [staff_id], [address], [phone], [email], [total_price], [note], [status], [created_at]) VALUES (7, N'Dinh Quoc Thang', NULL, NULL, N'47 Kham Thien', N'012345789', N'thangzjm99@gmail.com', 300, NULL, NULL, CAST(N'2020-06-13T10:04:18.433' AS DateTime))
INSERT [dbo].[Order] ([id], [code], [customer_id], [staff_id], [address], [phone], [email], [total_price], [note], [status], [created_at]) VALUES (8, N'Dinh Quoc Thang', NULL, NULL, N'kham thien ha noi', N'231321', N'thangzjm99@gmail.com', 300, NULL, NULL, CAST(N'2020-06-14T09:30:44.937' AS DateTime))
SET IDENTITY_INSERT [dbo].[Order] OFF
SET IDENTITY_INSERT [dbo].[Order_detail] ON 

INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (1, 1, 1, 2, 100, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (2, 1, 5, 2, 200, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (3, 2, 1, 1, 100, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (4, 3, 1, 1, 100, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (5, 3, 5, 1, 200, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (6, 4, 1, 2, 100, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (7, 4, 2, 2, 200, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (8, 5, 1, 1, 100, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (9, 6, 1, 4, 100, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (10, 6, 5, 2, 200, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (11, 7, 1, 1, 100, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (12, 7, 5, 1, 200, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (13, 8, 1, 1, 100, NULL)
INSERT [dbo].[Order_detail] ([id], [order_id], [product_id], [amount], [total_price], [created_at]) VALUES (14, 8, 2, 1, 200, NULL)
SET IDENTITY_INSERT [dbo].[Order_detail] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (1, N'1', 3, N'Desktop LG 24 inch', NULL, NULL, N'1.jpg', NULL, NULL, 100, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.000' AS DateTime))
INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (2, N'2', 3, N'Desktop DELL 24 inch', NULL, NULL, N'4.jpg', NULL, NULL, 200, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.757' AS DateTime))
INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (3, N'3', 2, N'Camera Samsung 360', NULL, NULL, N'2.jpg', NULL, NULL, 200, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.760' AS DateTime))
INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (4, N'4', 4, N'Console Xbox Controller', NULL, NULL, N'3.jpg', NULL, NULL, 100, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.763' AS DateTime))
INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (5, N'5', 5, N'Speaker Big Stand', NULL, NULL, N'5.jpg', NULL, NULL, 200, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.767' AS DateTime))
INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (6, N'6', 5, N'Speaker Small On Hand', NULL, NULL, N'7.jpg', NULL, NULL, 100, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.770' AS DateTime))
INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (7, N'7', 6, N'Headphone JBL ', NULL, NULL, N'6.jpg', NULL, NULL, 150, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.773' AS DateTime))
INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (8, N'8', 8, N'Tablet Ipad Pro 2020', NULL, NULL, N'8.jpg', NULL, NULL, 200, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.777' AS DateTime))
INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (10, N'9', 1, N'Iphone 7 Plus Red', NULL, NULL, N'9.jpg', NULL, NULL, 150, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.780' AS DateTime))
INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (11, N'10', 1, N'Xiaomi Zen 2 ', NULL, NULL, N'10.jpg', NULL, NULL, 150, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.783' AS DateTime))
INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (12, N'11', 1, N'Samsung Note 6 ', NULL, NULL, N'12.jpg', NULL, NULL, 150, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.787' AS DateTime))
INSERT [dbo].[Product] ([id], [code], [category_id], [name], [slug], [overview], [image], [description], [detail], [price], [unit], [sale], [star], [is_stock], [is_active], [created_at]) VALUES (13, N'12', 7, N'Apple Watch Series 5', NULL, NULL, N'11.jpg', NULL, NULL, 200, NULL, NULL, NULL, 1, 1, CAST(N'1900-01-01T00:00:26.790' AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Staff] FOREIGN KEY([staff_id])
REFERENCES [dbo].[Staff] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Staff]
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_detail_Order] FOREIGN KEY([order_id])
REFERENCES [dbo].[Order] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK_Order_detail_Order]
GO
ALTER TABLE [dbo].[Order_detail]  WITH CHECK ADD  CONSTRAINT [FK_Order_detail_Product] FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Order_detail] CHECK CONSTRAINT [FK_Order_detail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
USE [master]
GO
ALTER DATABASE [BanHangDienTu] SET  READ_WRITE 
GO
