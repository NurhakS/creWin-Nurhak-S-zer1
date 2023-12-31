USE [master]
GO
/****** Object:  Database [Crewin_Intern]    Script Date: 03/08/2023 01:07:28 ******/
CREATE DATABASE [Crewin_Intern]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Crewin-Intern', FILENAME = N'D:\SQL Server Management\MSSQL15.MSSQLSERVER\MSSQL\DATA\Crewin-Intern.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Crewin-Intern_log', FILENAME = N'D:\SQL Server Management\MSSQL15.MSSQLSERVER\MSSQL\DATA\Crewin-Intern_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Crewin_Intern] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Crewin_Intern].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Crewin_Intern] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Crewin_Intern] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Crewin_Intern] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Crewin_Intern] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Crewin_Intern] SET ARITHABORT OFF 
GO
ALTER DATABASE [Crewin_Intern] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Crewin_Intern] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Crewin_Intern] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Crewin_Intern] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Crewin_Intern] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Crewin_Intern] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Crewin_Intern] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Crewin_Intern] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Crewin_Intern] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Crewin_Intern] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Crewin_Intern] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Crewin_Intern] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Crewin_Intern] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Crewin_Intern] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Crewin_Intern] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Crewin_Intern] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Crewin_Intern] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Crewin_Intern] SET RECOVERY FULL 
GO
ALTER DATABASE [Crewin_Intern] SET  MULTI_USER 
GO
ALTER DATABASE [Crewin_Intern] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Crewin_Intern] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Crewin_Intern] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Crewin_Intern] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Crewin_Intern] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Crewin_Intern] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Crewin_Intern', N'ON'
GO
ALTER DATABASE [Crewin_Intern] SET QUERY_STORE = OFF
GO
USE [Crewin_Intern]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 03/08/2023 01:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Categories_id] [int] IDENTITY(1,1) NOT NULL,
	[Category_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Categories_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 03/08/2023 01:07:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [nvarchar](max) NULL,
	[price] [float] NOT NULL,
	[discountPercentage] [float] NULL,
	[rating] [int] NULL,
	[stock] [int] NOT NULL,
	[brand] [nvarchar](50) NOT NULL,
	[category_id] [int] NOT NULL,
	[thumbnail] [nvarchar](max) NULL,
	[images] [nvarchar](max) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Categories_id], [Category_name]) VALUES (1, N'smartphones')
INSERT [dbo].[Categories] ([Categories_id], [Category_name]) VALUES (2, N'laptops')
INSERT [dbo].[Categories] ([Categories_id], [Category_name]) VALUES (3, N'skincare')
INSERT [dbo].[Categories] ([Categories_id], [Category_name]) VALUES (4, N'groceries')
INSERT [dbo].[Categories] ([Categories_id], [Category_name]) VALUES (5, N'furniture')
INSERT [dbo].[Categories] ([Categories_id], [Category_name]) VALUES (6, N'automotive')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Product_id], [title], [description], [price], [discountPercentage], [rating], [stock], [brand], [category_id], [thumbnail], [images]) VALUES (1, N'iPhone X', N'SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ', 899, 17.94, 4, 34, N'Apple', 1, N'https://i.dummyjson.com/data/products/2/thumbnail.jpg', N'https://i.dummyjson.com/data/products/2/1.jpg')
INSERT [dbo].[Products] ([Product_id], [title], [description], [price], [discountPercentage], [rating], [stock], [brand], [category_id], [thumbnail], [images]) VALUES (2, N'Msı Gamıng', N'Msı gaming fast powerful laptop', 1000, 12, 4, 10, N'MSI', 2, N'https://www.gaming.gen.tr/wp-content/uploads/2023/03/msi-pulse-15-b13vfk-498tr-intel-core-i7-13700h-32gb-1tb-ssd-rtx4060-15-6-inc-144hz-full-hd-w11-gaming-notebook-600x600.jpg', N'https://www.gaming.gen.tr/wp-content/uploads/2023/03/msi-pulse-15-b13vfk-498tr-intel-core-i7-13700h-32gb-1tb-ssd-rtx4060-15-6-inc-144hz-full-hd-w11-gaming-notebook-2-600x600.jpg')
INSERT [dbo].[Products] ([Product_id], [title], [description], [price], [discountPercentage], [rating], [stock], [brand], [category_id], [thumbnail], [images]) VALUES (3, N'Garnier Wash Face', N'Become beatiful with this product', 10, 5, 2, 500, N'Garnier', 3, N'https://cdn.kozmela.com/UserFiles/Product/big/3600540685100_1.jpg', N'https://cdn.kozmela.com/UserFiles/Product/big/3600540685100_1.jpg')
INSERT [dbo].[Products] ([Product_id], [title], [description], [price], [discountPercentage], [rating], [stock], [brand], [category_id], [thumbnail], [images]) VALUES (4, N'Tomato', N'Fresh red tomato', 5, 10, 4, 500, N'Cargill', 4, N'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Tomato_je.jpg/220px-Tomato_je.jpg', N'https://upload.wikimedia.org/wikipedia/commons/thumb/8/89/Tomato_je.jpg/220px-Tomato_je.jpg')
INSERT [dbo].[Products] ([Product_id], [title], [description], [price], [discountPercentage], [rating], [stock], [brand], [category_id], [thumbnail], [images]) VALUES (5, N'Best Chair In the world', N'Best chair you can buy in the world', 561, 23, 5, 60, N'MadenWood', 5, N'https://www.ikea.com/us/en/images/products/stefan-chair-brown-black__0727320_pe735593_s5.jpg?f=xxxs', N'https://www.ikea.com/us/en/images/products/stefan-chair-brown-black__0727320_pe735593_s5.jpg?f=xxxs')
INSERT [dbo].[Products] ([Product_id], [title], [description], [price], [discountPercentage], [rating], [stock], [brand], [category_id], [thumbnail], [images]) VALUES (6, N'Jeeep 4x4 Tire', N'Most powerful tire in the world', 800, 20, 5, 40, N'Michelin', 6, N'https://aecbmesvcm.cloudimg.io/v7/https://dcadprod.azureedge.net/b2c-experience-production/attachments/ckkmtvfzp05qg01lmvu34lj89-4w-181-3528706008092-tire-michelin-defender-ltx-m-slash-s-275-slash-55-r20-113t-nl-a-main-1-30.png?w=95&org_if_sml=1&func=boundmin&ci_info=', N'https://aecbmesvcm.cloudimg.io/v7/https://dcadprod.azureedge.net/b2c-experience-production/attachments/ckkmtvfzp05qg01lmvu34lj89-4w-181-3528706008092-tire-michelin-defender-ltx-m-slash-s-275-slash-55-r20-113t-nl-a-main-1-30.png?w=95&org_if_sml=1&func=boundmin&ci_info=')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([Categories_id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
USE [master]
GO
ALTER DATABASE [Crewin_Intern] SET  READ_WRITE 
GO
