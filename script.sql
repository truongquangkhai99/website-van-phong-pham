USE [master]
GO
/****** Object:  Database [WEBSITE_VANPHONGPHAM]    Script Date: 12/11/2021 7:10:36 PM ******/
CREATE DATABASE [WEBSITE_VANPHONGPHAM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WEBSITE_VANPHONGPHAM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WEBSITE_VANPHONGPHAM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WEBSITE_VANPHONGPHAM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\WEBSITE_VANPHONGPHAM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WEBSITE_VANPHONGPHAM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET ARITHABORT OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET RECOVERY FULL 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET  MULTI_USER 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'WEBSITE_VANPHONGPHAM', N'ON'
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET QUERY_STORE = OFF
GO
USE [WEBSITE_VANPHONGPHAM]
GO
/****** Object:  Table [dbo].[address]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address](
	[address_id] [int] IDENTITY(1,1) NOT NULL,
	[ward_id] [int] NOT NULL,
	[specific_address] [nvarchar](100) NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[brand]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[brand_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](200) NULL,
 CONSTRAINT [PK_brand] PRIMARY KEY CLUSTERED 
(
	[brand_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart](
	[product_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_cart] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[image] [nvarchar](300) NULL,
	[note] [nvarchar](300) NULL,
 CONSTRAINT [PK_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[district]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[district](
	[district_id] [int] NOT NULL,
	[district_name] [nvarchar](100) NULL,
	[district_prefix] [nvarchar](100) NULL,
	[province_id] [int] NULL,
 CONSTRAINT [PK_district] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[user_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[date] [date] NOT NULL,
	[comment] [nvarchar](2000) NULL,
	[vote] [int] NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[total_price] [numeric](18, 2) NOT NULL,
	[status_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
	[order_id] [int] NOT NULL,
	[product_id] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[item_price] [numeric](18, 2) NOT NULL,
 CONSTRAINT [PK_order_detail] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_status]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_status](
	[status_id] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) NULL,
 CONSTRAINT [PK_status] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permission]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permission](
	[permission_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_permission] PRIMARY KEY CLUSTERED 
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[poster]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](300) NULL,
	[type] [int] NULL,
	[isActive] [bit] NULL,
 CONSTRAINT [PK_poster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](200) NOT NULL,
	[description] [nvarchar](1000) NULL,
	[image] [nvarchar](300) NULL,
	[price] [numeric](18, 2) NOT NULL,
	[specification] [nvarchar](50) NULL,
	[calculation_unit] [nvarchar](15) NOT NULL,
	[discount] [int] NULL,
	[sold_quantity] [int] NULL,
	[quantity] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[brand_id] [int] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[province]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[province](
	[province_id] [int] NOT NULL,
	[province_name] [nvarchar](100) NULL,
	[province_code] [nvarchar](20) NULL,
 CONSTRAINT [PK_province] PRIMARY KEY CLUSTERED 
(
	[province_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](100) NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](100) NULL,
	[image] [nvarchar](300) NULL,
	[address_id] [int] NULL,
	[email] [nvarchar](100) NOT NULL,
	[phone] [nvarchar](20) NULL,
	[created_at] [date] NOT NULL,
	[permission_id] [int] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ward]    Script Date: 12/11/2021 7:10:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ward](
	[ward_id] [int] NOT NULL,
	[ward_name] [nvarchar](50) NOT NULL,
	[ward_prefix] [nvarchar](20) NULL,
	[district_id] [int] NULL,
 CONSTRAINT [PK_ward] PRIMARY KEY CLUSTERED 
(
	[ward_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[address] ON 
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (1, 173, N'1/15C kp3 tổ 38')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (2, 173, N'1/10D')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (3, 191, N'1/15CF')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (4, 94, N'123')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (5, 1, N'123')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (6, 1, NULL)
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (7, 1, NULL)
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (8, 94, N'1/1D')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (9, 143, N'2/3C')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (10, 1, N'')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (11, 1, N'')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (12, 1, N'')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (13, 66, N'')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (14, 84, N'12')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (15, 98, N'')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (16, 1, N'7/6H')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (17, 1, N'2/3C')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (18, 1, N'')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (19, 1, N'')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (20, 1, NULL)
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (21, 191, N'1/1YH')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (22, 195, N'45F')
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (23, 173, NULL)
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (24, 173, NULL)
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (25, 173, NULL)
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (26, 173, NULL)
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (27, 173, NULL)
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (28, 173, NULL)
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (29, 173, NULL)
GO
INSERT [dbo].[address] ([address_id], [ward_id], [specific_address]) VALUES (30, 173, NULL)
GO
SET IDENTITY_INSERT [dbo].[address] OFF
GO
SET IDENTITY_INSERT [dbo].[brand] ON 
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (1, N'Thiên Long', N'Thiên Long là công ty chuyên về văn phòng phẩm, dụng cụ mỹ thuật của Việt Nam. Công ty được thành lập vào năm 1981 tại thành phố Hồ Chí Minh, tiền thân là Cơ sở bút bi Thiên Long.')
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (2, N'Bizner', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (3, N'Double A', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (4, N'IK Plus', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (5, N'G-Star', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (6, N'Pronoti', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (7, N'Xukiva', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (8, N'Paper Mate', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (9, N'SAHAKA', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (10, N'Supreme', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (11, N'Ford', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (12, N'SUBARU', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (13, N'Sharpie', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (14, N'Colokit', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (15, N'Crayola', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (16, N'Flexoffice', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (17, N'Điểm 10', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (18, N'Tomy', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (19, N'CASIO', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (20, N'Vinacal', NULL)
GO
INSERT [dbo].[brand] ([brand_id], [name], [description]) VALUES (21, N'Logitech', NULL)
GO
SET IDENTITY_INSERT [dbo].[brand] OFF
GO
INSERT [dbo].[cart] ([product_id], [user_id], [quantity]) VALUES (3, 26, 5)
GO
INSERT [dbo].[cart] ([product_id], [user_id], [quantity]) VALUES (3, 37, 1)
GO
INSERT [dbo].[cart] ([product_id], [user_id], [quantity]) VALUES (4, 37, 1)
GO
INSERT [dbo].[cart] ([product_id], [user_id], [quantity]) VALUES (9, 26, 1)
GO
INSERT [dbo].[cart] ([product_id], [user_id], [quantity]) VALUES (30, 30, 1)
GO
INSERT [dbo].[cart] ([product_id], [user_id], [quantity]) VALUES (37, 22, 3)
GO
SET IDENTITY_INSERT [dbo].[category] ON 
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (1, N'Bút viết', N'butViet.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (2, N'Giấy văn phòng', N'giayVP.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (3, N'Dụng cụ văn phòng', N'dungCuVP.jpg', N'')
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (4, N'File bìa hồ sơ', N'fileBiaHoSo.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (5, N'Dụng cụ học tập', N'dungCuHocTap.png', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (6, N'Băng keo - Dao kéo - Hồ dán', N'bangKeoHoDan.png', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (7, N'Sổ - Bì thư', N'soBiathu.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (8, N'Máy tính', N'mayTinh.png', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (9, N'Bảng văn phòng', N'bangVP.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (10, N'Bảo hộ lao động', N'baoHoLD.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (11, N'Pin các loại', N'pin.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (12, N'Giấy in ảnh - in màu chất lượng cao', N'giayInAnh.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (13, N'Phụ kiện điện thoại', N'PKdienThoai.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (14, N'Thiết bị văn phòng', N'thietBiVP.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (15, N'Thiết bị điện tử', N'thietBiDienTu.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (16, N'Mỹ thuật', N'myThuat.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (17, N'Mực in - Bơm mực', N'mucIn.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (18, N'Kệ - Rổ', N'keRo.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (19, N'Dụng cụ vệ sinh văn phòng', N'DungCuVSVP.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (20, N'Dụng cụ đóng dấu', N'dungCuDongDau.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (21, N'Ăn vặt văn phòng', N'anVat.jpg', NULL)
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (22, N'Bút cao cấp', N'211118231826tải xuống.jpg', N'Bút viết chất lượng cao, giá cả mắc')
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (23, N'Máy tính cao cấp', N'defaul.png', N'Máy tính nước ngoài chất lượng bền bỉ, nhiều tính năng')
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (24, N'Gôm tẩy chất lượng tốt', N'defaul.png', N'Gôm tẩy chất lượng tốt, giá cả vừa phải')
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (33, N'Dụng cụ văn phòng phong cách cổ trang', N'agenda.png', N'Các sản phẩm mô phỏng theo phong cách cổ xưa')
GO
INSERT [dbo].[category] ([category_id], [name], [image], [note]) VALUES (44, N'Bút viết loại 3', N'defaul.png', N'')
GO
SET IDENTITY_INSERT [dbo].[category] OFF
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (1, N'Bình Chánh', N'Huyện', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (2, N'Bình Tân', N'Quận', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (3, N'Bình Thạnh', N'Quận', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (4, N'Cần Giờ', N'Huyện', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (5, N'Củ Chi', N'Huyện', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (6, N'Gò Vấp', N'Quận', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (7, N'Hóc Môn', N'Huyện', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (8, N'Nhà Bè', N'Huyện', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (9, N'Phú Nhuận', N'Quận', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (10, N'Quận 1', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (11, N'Quận 10', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (12, N'Quận 11', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (13, N'Quận 12', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (14, N'Quận 2', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (15, N'Quận 3', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (16, N'Quận 4', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (17, N'Quận 5', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (18, N'Quận 6', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (19, N'Quận 7', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (20, N'Quận 8', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (21, N'Quận 9', N'', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (22, N'Tân Bình', N'Quận', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (23, N'Tân Phú', N'Quận', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (24, N'Thủ Đức', N'Quận', 1)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (25, N'Ba Đình', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (26, N'Ba Vì', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (27, N'Bắc Từ Liêm', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (28, N'Cầu Giấy', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (29, N'Chương Mỹ', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (30, N'Đan Phượng', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (31, N'Đông Anh', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (32, N'Đống Đa', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (33, N'Gia Lâm', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (34, N'Hà Đông', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (35, N'Hai Bà Trưng', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (36, N'Hoài Đức', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (37, N'Hoàn Kiếm', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (38, N'Hoàng Mai', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (39, N'Long Biên', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (40, N'Mê Linh', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (41, N'Mỹ Đức', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (42, N'Nam Từ Liêm', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (43, N'Phú Xuyên', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (44, N'Phúc Thọ', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (45, N'Quốc Oai', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (46, N'Sóc Sơn', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (47, N'Sơn Tây', N'Thị xã', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (48, N'Tây Hồ', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (49, N'Thạch Thất', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (50, N'Thanh Oai', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (51, N'Thanh Trì', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (52, N'Thanh Xuân', N'Quận', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (53, N'Thường Tín', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (54, N'Ứng Hòa', N'Huyện', 2)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (55, N'Cẩm Lệ', N'Quận', 3)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (56, N'Hải Châu', N'Quận', 3)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (57, N'Hòa Vang', N'Huyện', 3)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (58, N'Hoàng Sa', N'Huyện', 3)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (59, N'Liên Chiểu', N'Quận', 3)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (60, N'Ngũ Hành Sơn', N'Quận', 3)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (61, N'Sơn Trà', N'Quận', 3)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (62, N'Thanh Khê', N'Quận', 3)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (63, N'Bàu Bàng', N'Huyện', 4)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (64, N'Bến Cát', N'Thị xã', 4)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (65, N'Dầu Tiếng', N'Huyện', 4)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (66, N'Dĩ An', N'Thị xã', 4)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (67, N'Phú Giáo', N'Huyện', 4)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (68, N'Tân Uyên', N'Huyện', 4)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (69, N'Thủ Dầu Một', N'Thị xã', 4)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (70, N'Thuận An', N'Huyện', 4)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (71, N'Biên Hòa', N'Thành phố', 5)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (72, N'Cẩm Mỹ', N'Huyện', 5)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (73, N'Định Quán', N'Huyện', 5)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (74, N'Long Khánh', N'Thị xã', 5)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (75, N'Long Thành', N'Huyện', 5)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (76, N'Nhơn Trạch', N'Huyện', 5)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (77, N'Tân Phú', N'Quận', 5)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (78, N'Thống Nhất', N'Huyện', 5)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (79, N'Trảng Bom', N'Huyện', 5)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (80, N'Vĩnh Cửu', N'Huyện', 5)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (81, N'Xuân Lộc', N'Huyện', 5)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (82, N'Cam Lâm', N'Huyện', 6)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (83, N'Cam Ranh', N'Thành phố', 6)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (84, N'Diên Khánh', N'Huyện', 6)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (85, N'Khánh Sơn', N'Huyện', 6)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (86, N'Khánh Vĩnh', N'Huyện', 6)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (87, N'Nha Trang', N'Thành phố', 6)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (88, N'Ninh Hòa', N'Thị xã', 6)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (89, N'Trường Sa', N'Huyện', 6)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (90, N'Vạn Ninh', N'Huyện', 6)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (91, N'An Dương', N'Huyện', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (92, N'An Lão', N'Huyện', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (93, N'Bạch Long Vĩ', N'Huyện', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (94, N'Cát Hải', N'Huyện', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (95, N'Đồ Sơn', N'Quận', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (96, N'Dương Kinh', N'Quận', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (97, N'Hải An', N'Quận', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (98, N'Hồng Bàng', N'Quận', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (99, N'Kiến An', N'Quận', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (100, N'Kiến Thụy', N'Huyện', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (101, N'Lê Chân', N'Quận', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (102, N'Ngô Quyền', N'Quận', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (103, N'Thủy Nguyên', N'Huyện', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (104, N'Tiên Lãng', N'Huyện', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (105, N'Vĩnh Bảo', N'Huyện', 7)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (106, N'Bến Lức', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (107, N'Cần Đước', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (108, N'Cần Giuộc', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (109, N'Châu Thành', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (110, N'Đức Hòa', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (111, N'Đức Huệ', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (112, N'Kiến Tường', N'Thị xã', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (113, N'Mộc Hóa', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (114, N'Tân An', N'Thành phố', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (115, N'Tân Hưng', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (116, N'Tân Thạnh', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (117, N'Tân Trụ', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (118, N'Thạnh Hóa', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (119, N'Thủ Thừa', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (120, N'Vĩnh Hưng', N'Huyện', 8)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (121, N'Bắc Trà My', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (122, N'Đại Lộc', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (123, N'Điện Bàn', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (124, N'Đông Giang', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (125, N'Duy Xuyên', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (126, N'Hiệp Đức', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (127, N'Hội An', N'Thành phố', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (128, N'Nam Giang', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (129, N'Nam Trà My', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (130, N'Nông Sơn', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (131, N'Núi Thành', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (132, N'Phú Ninh', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (133, N'Phước Sơn', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (134, N'Quế Sơn', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (135, N'Tam Kỳ', N'Thành phố', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (136, N'Tây Giang', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (137, N'Thăng Bình', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (138, N'Tiên Phước', N'Huyện', 9)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (139, N'Bà Rịa', N'Thị xã', 10)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (140, N'Châu Đức', N'Huyện', 10)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (141, N'Côn Đảo', N'Huyện', 10)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (142, N'Đất Đỏ', N'Huyện', 10)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (143, N'Long Điền', N'Huyện', 10)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (144, N'Tân Thành', N'Huyện', 10)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (145, N'Vũng Tàu', N'Thành phố', 10)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (146, N'Xuyên Mộc', N'Huyện', 10)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (147, N'Buôn Đôn', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (148, N'Buôn Hồ', N'Thị xã', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (149, N'Buôn Ma Thuột', N'Thành phố', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (150, N'Cư Kuin', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (151, N'Cư M''gar', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (152, N'Ea H''Leo', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (153, N'Ea Kar', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (154, N'Ea Súp', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (155, N'Krông Ana', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (156, N'Krông Bông', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (157, N'Krông Buk', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (158, N'Krông Năng', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (159, N'Krông Pắc', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (160, N'Lăk', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (161, N'M''Đrăk', N'Huyện', 11)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (162, N' Thới Lai', N'Huyện', 12)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (163, N'Bình Thủy', N'Quận', 12)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (164, N'Cái Răng', N'Quận', 12)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (165, N'Cờ Đỏ', N'Huyện', 12)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (166, N'Ninh Kiều', N'Quận', 12)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (167, N'Ô Môn', N'Quận', 12)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (168, N'Phong Điền', N'Huyện', 12)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (169, N'Thốt Nốt', N'Quận', 12)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (170, N'Vĩnh Thạnh', N'Huyện', 12)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (171, N'Bắc Bình', N'Huyện', 13)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (172, N'Đảo Phú Quý', N'Huyện', 13)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (173, N'Đức Linh', N'Huyện', 13)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (174, N'Hàm Tân', N'Huyện', 13)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (175, N'Hàm Thuận Bắc', N'Huyện', 13)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (176, N'Hàm Thuận Nam', N'Huyện', 13)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (177, N'La Gi', N'Thị xã', 13)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (178, N'Phan Thiết', N'Thành phố', 13)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (179, N'Tánh Linh', N'Huyện', 13)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (180, N'Tuy Phong', N'Huyện', 13)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (181, N'Bảo Lâm', N'Huyện', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (182, N'Bảo Lộc', N'Thành phố', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (183, N'Cát Tiên', N'Huyện', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (184, N'Đạ Huoai', N'Huyện', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (185, N'Đà Lạt', N'Thành phố', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (186, N'Đạ Tẻh', N'Huyện', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (187, N'Đam Rông', N'Huyện', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (188, N'Di Linh', N'Huyện', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (189, N'Đơn Dương', N'Huyện', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (190, N'Đức Trọng', N'Huyện', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (191, N'Lạc Dương', N'Huyện', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (192, N'Lâm Hà', N'Huyện', 14)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (193, N'A Lưới', N'Huyện', 15)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (194, N'Huế', N'Thành phố', 15)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (195, N'Hương Thủy', N'Thị xã', 15)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (196, N'Hương Trà', N'Huyện', 15)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (197, N'Nam Đông', N'Huyện', 15)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (198, N'Phong Điền', N'Huyện', 15)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (199, N'Phú Lộc', N'Huyện', 15)
GO
INSERT [dbo].[district] ([district_id], [district_name], [district_prefix], [province_id]) VALUES (200, N'Phú Vang', N'Huyện', 15)
GO
INSERT [dbo].[feedback] ([user_id], [product_id], [date], [comment], [vote]) VALUES (12, 2, CAST(N'2021-10-03' AS Date), N'Bút khá cute *tym*', 5)
GO
INSERT [dbo].[feedback] ([user_id], [product_id], [date], [comment], [vote]) VALUES (12, 3, CAST(N'2021-10-20' AS Date), N'Bút tạm được', 3)
GO
INSERT [dbo].[feedback] ([user_id], [product_id], [date], [comment], [vote]) VALUES (13, 5, CAST(N'2021-11-20' AS Date), N'Bút gì mà dỏm quá :<', NULL)
GO
INSERT [dbo].[feedback] ([user_id], [product_id], [date], [comment], [vote]) VALUES (13, 7, CAST(N'2021-11-18' AS Date), N'Giấy tốt', NULL)
GO
INSERT [dbo].[feedback] ([user_id], [product_id], [date], [comment], [vote]) VALUES (13, 8, CAST(N'2021-11-24' AS Date), N'Giấy tốt, rẻ', NULL)
GO
INSERT [dbo].[feedback] ([user_id], [product_id], [date], [comment], [vote]) VALUES (30, 5, CAST(N'2021-11-24' AS Date), N'Bút rất tốt, rẻ', NULL)
GO
SET IDENTITY_INSERT [dbo].[order] ON 
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (2, CAST(N'2021-10-02' AS Date), CAST(6400.00 AS Numeric(18, 2)), 4, 14)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (3, CAST(N'2021-10-02' AS Date), CAST(9000.00 AS Numeric(18, 2)), 4, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (4, CAST(N'2021-11-18' AS Date), CAST(727431.00 AS Numeric(18, 2)), 5, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (5, CAST(N'2021-11-18' AS Date), CAST(32920.00 AS Numeric(18, 2)), 3, 14)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (6, CAST(N'2021-11-18' AS Date), CAST(160920.00 AS Numeric(18, 2)), 3, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (11, CAST(N'2021-11-18' AS Date), CAST(228991.00 AS Numeric(18, 2)), 5, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (12, CAST(N'2021-11-20' AS Date), CAST(115421.00 AS Numeric(18, 2)), 5, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (13, CAST(N'2021-11-20' AS Date), CAST(126580.80 AS Numeric(18, 2)), 3, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (14, CAST(N'2021-11-20' AS Date), CAST(7092941.00 AS Numeric(18, 2)), 4, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (15, CAST(N'2021-11-21' AS Date), CAST(83391.00 AS Numeric(18, 2)), 3, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (16, CAST(N'2021-11-21' AS Date), CAST(138600.00 AS Numeric(18, 2)), 3, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (17, CAST(N'2021-11-21' AS Date), CAST(45000.00 AS Numeric(18, 2)), 3, 14)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (18, CAST(N'2021-11-21' AS Date), CAST(742500.00 AS Numeric(18, 2)), 5, 14)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (19, CAST(N'2021-11-21' AS Date), CAST(75500.00 AS Numeric(18, 2)), 5, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (20, CAST(N'2021-11-22' AS Date), CAST(392763.40 AS Numeric(18, 2)), 3, 14)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (21, CAST(N'2021-11-22' AS Date), CAST(4750.00 AS Numeric(18, 2)), 3, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (22, CAST(N'2021-11-23' AS Date), CAST(221991.00 AS Numeric(18, 2)), 3, 27)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (23, CAST(N'2021-11-23' AS Date), CAST(81000.00 AS Numeric(18, 2)), 3, 27)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (24, CAST(N'2021-11-23' AS Date), CAST(7000.00 AS Numeric(18, 2)), 4, 30)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (25, CAST(N'2021-11-23' AS Date), CAST(1251000.00 AS Numeric(18, 2)), 1, 34)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (26, CAST(N'2021-11-24' AS Date), CAST(24900.00 AS Numeric(18, 2)), 2, 13)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (27, CAST(N'2021-12-08' AS Date), CAST(286200.00 AS Numeric(18, 2)), 1, 34)
GO
INSERT [dbo].[order] ([order_id], [date], [total_price], [status_id], [user_id]) VALUES (28, CAST(N'2021-12-11' AS Date), CAST(284482.00 AS Numeric(18, 2)), 1, 37)
GO
SET IDENTITY_INSERT [dbo].[order] OFF
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (2, 28, 1, CAST(6400.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (3, 17, 2, CAST(9000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (4, 7, 1, CAST(83391.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (4, 19, 2, CAST(4500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (4, 30, 2, CAST(317520.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (5, 2, 1, CAST(8300.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (5, 4, 1, CAST(10620.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (5, 5, 2, CAST(7000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (6, 12, 2, CAST(78210.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (6, 19, 1, CAST(4500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (11, 5, 1, CAST(7000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (11, 7, 1, CAST(83391.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (11, 9, 1, CAST(138600.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (12, 4, 4, CAST(10620.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (12, 8, 1, CAST(72941.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (13, 6, 1, CAST(40500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (13, 34, 1, CAST(86080.80 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (14, 8, 1, CAST(72941.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (14, 23, 10, CAST(702000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (15, 7, 2, CAST(83391.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (16, 9, 1, CAST(138600.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (17, 14, 1, CAST(45000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (18, 6, 1, CAST(40500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (18, 23, 1, CAST(702000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (19, 5, 5, CAST(7000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (19, 6, 1, CAST(40500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (20, 35, 1, CAST(220763.40 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (20, 36, 2, CAST(86000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (21, 37, 5, CAST(950.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (22, 7, 1, CAST(83391.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (22, 9, 1, CAST(138600.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (23, 6, 2, CAST(40500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (24, 5, 1, CAST(7000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (25, 26, 1, CAST(863000.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (25, 28, 1, CAST(6400.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (25, 32, 1, CAST(381600.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (26, 2, 3, CAST(8300.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (27, 9, 2, CAST(138600.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (27, 17, 1, CAST(4500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (27, 19, 1, CAST(4500.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (28, 8, 2, CAST(72941.00 AS Numeric(18, 2)))
GO
INSERT [dbo].[order_detail] ([order_id], [product_id], [quantity], [item_price]) VALUES (28, 9, 1, CAST(138600.00 AS Numeric(18, 2)))
GO
SET IDENTITY_INSERT [dbo].[order_status] ON 
GO
INSERT [dbo].[order_status] ([status_id], [description]) VALUES (1, N'Chờ xử lý')
GO
INSERT [dbo].[order_status] ([status_id], [description]) VALUES (2, N'Yêu cầu hủy')
GO
INSERT [dbo].[order_status] ([status_id], [description]) VALUES (3, N'Đang giao')
GO
INSERT [dbo].[order_status] ([status_id], [description]) VALUES (4, N'Đã giao')
GO
INSERT [dbo].[order_status] ([status_id], [description]) VALUES (5, N'Đã hủy')
GO
SET IDENTITY_INSERT [dbo].[order_status] OFF
GO
SET IDENTITY_INSERT [dbo].[permission] ON 
GO
INSERT [dbo].[permission] ([permission_id], [name]) VALUES (1, N'Khách hàng')
GO
INSERT [dbo].[permission] ([permission_id], [name]) VALUES (2, N'Admin')
GO
SET IDENTITY_INSERT [dbo].[permission] OFF
GO
SET IDENTITY_INSERT [dbo].[poster] ON 
GO
INSERT [dbo].[poster] ([id], [name], [type], [isActive]) VALUES (1, N'poster10.jpg', 1, 1)
GO
INSERT [dbo].[poster] ([id], [name], [type], [isActive]) VALUES (2, N'poster11.jpg', 1, 1)
GO
INSERT [dbo].[poster] ([id], [name], [type], [isActive]) VALUES (3, N'poster15.jpg', 1, 1)
GO
INSERT [dbo].[poster] ([id], [name], [type], [isActive]) VALUES (4, N'poster14.jpg', 2, 1)
GO
SET IDENTITY_INSERT [dbo].[poster] OFF
GO
SET IDENTITY_INSERT [dbo].[product] ON 
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (2, N'Bút gel 2 viên bi Thiên Long Flexoffice FO-GEL18/VN - Mực nước, đậm, tươi', N'Nét viết trơn, êm, mực ra đều và liên tục.

Không độc hại, tiện dụng khi sử dụng.
 Mực hệ nước, hệ màu dye.', N'fo-gel18_vn_tim_71669d93f8d04bf498bbf73b7ab162e5_1024x1024.jpg                                                                                                                                                                                                                                              ', CAST(8300.00 AS Numeric(18, 2)), N'1 bút/ kiện.', N'cây', 0, 1, 30, 1, 16, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (3, N'Bút bi Thiên Long Flexoffice FO-039 PLUS/VN 4MC - Mực đạt tiêu chuẩn châu Âu', N'Để nơi thoáng mát, tránh nguồn nhiệt. Không thích hợp cho trẻ dưới 3 tuổi.', N'fo-039_plus_vn_4mc_4_ae40e120115b48d4ae2a85e09a47d53a_1024x1024.jpg                                                                                                                                                                                                                                         ', CAST(4600.00 AS Numeric(18, 2)), N'1 bút/ kiện.', N'cây', 0, 0, 30, 1, 16, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (4, N'Bút gel xóa được Thiên Long Điểm 10 TP-GELE002', N'Dạng bút có nắp đậy. Bút dạng mực nước, viết trơn êm, mực ra đều, liên tục. Mực chất lượng cao không độc hại với người sử dụng. Bút có 2 gôm/tẩy trên cán và nắp bút thuận tiện sử dụng khi xóa mực.', N'220536693_2758032537653829_5778804089958025826_n_1__ac9f66a0e2ec4ff0a57d832ca9e12ff5_1024x1024.jpg                                                                                                                                                                                                          ', CAST(11800.00 AS Numeric(18, 2)), N'5 cây / 1 kiện', N'cây', 10, 1, 40, 1, 17, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (5, N'Bút Gel Thiên Long GEL-012 Đỏ (FS)', N'Bút có thiết kế đơn giản nhưng khoa học, thân tròn, nhỏ rất phù hợp với tay cầm của học sinh tiểu học. Thân và nắp bút bằng nhựa trắng đục, in nhũ kim loại. Mực màu đậm và tươi sáng, viết êm trơn, ra đều và liên tục.', N'but_gel_thien_long_gel-012__14__grande.jpg                                                                                                                                                                                                                                                                  ', CAST(7000.00 AS Numeric(18, 2)), N'1 bút/ kiện.', N'cây', 0, 3, 35, 1, 1, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (6, N'Bút Gel Papermate OS UPC Ink Joy 0.5 mm', NULL, N'ppmate_os_upc_0.5_2_5b8dbcaf15eb47dba2b5b6596fc146cd_1024x1024.jpg                                                                                                                                                                                                                                          ', CAST(45000.00 AS Numeric(18, 2)), N'5 cây / hộp', N'hộp', 10, 3, 40, 1, 8, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (7, N'Ream giấy A4 80 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', N'Giấy đều màu. Không gợn sóng, không xơ xước và không tách lớp. Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng. Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.', N'ik_copy_a480_ton_kho2_dac0ed5096a9416fa0b5fb1cfb6b00ad_1024x1024.jpg                                                                                                                                                                                                                                        ', CAST(87780.00 AS Numeric(18, 2)), N'	500 tờ / ream', N'ream', 5, 3, 50, 2, 4, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (8, N'Ream giấy A4 70 gsm IK Copy (500 tờ) - Hàng nhập khẩu Indonesia', N'Giấy đều màu. Không gợn sóng, không xơ xước và không tách lớp. Giấy láng, không bị đốm khác màu hay tạp chất xơ cứng. Chữ in không bị nhòe, không lem kể cả in 2 mặt giấy.', N'ik_copy_a470_ton_kho2_5772a8166e324ee8b8eb76723a68e169_1024x1024.jpg                                                                                                                                                                                                                                        ', CAST(76780.00 AS Numeric(18, 2)), N'	500 tờ / ream', N'ream', 5, 1, 50, 2, 4, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (9, N'Giấy dán nhãn Tomy A4 đủ số', N'Dùng in tem, nhãn sản phẩm bằng máy laser thông thường. Có nhiều kích cỡ khác nhau, phù hợp mọi nhu cầu sử dụng. Chất giấy đẹp, mịn, láng.', N'giay_dan_nhan_tomy_a4_du_so_9635a65db4fd4e8e99b0b2ce25838e1d_1024x1024.jpg                                                                                                                                                                                                                                  ', CAST(154000.00 AS Numeric(18, 2)), N'	100 tờ/ hộp/ kiện', N'kiện', 10, 2, 40, 2, 18, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (11, N'Giấy dán nhãn Tomy A5 đủ số', N'Dùng in tem, nhãn sản phẩm bằng máy laser thông thường. Có nhiều kích cỡ khác nhau, phù hợp mọi nhu cầu sử dụng. Chất giấy đẹp, mịn, láng.', N'giay_dan_nhan_tomy_a5_du_so_2_eee2b9a4d2024fa0970cf14b5177e781_1024x1024.jpg                                                                                                                                                                                                                                ', CAST(10000.00 AS Numeric(18, 2)), N'10 tờ/ xấp/ kiện', N'kiện', 10, 0, 60, 2, 18, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (12, N'Giấy photo A4 70 Thiên Long PP-001', N'Giấy in văn phòng chất lượng cao , bề mặt nhẵn tuyệt vời , mau khô mực , thích hợp cho các loại máy in phun , máy in laser , máy fax laser , máy photocopy… Giấy không bị bụi giúp kéo dài tuổi thọ các thiết bị in , photocopy . Giấy in Thiên Long được sản xuất và đóng gói theo tiêu chuẩn, dây chuyền thiết bị hiện đại, chuyên dung trong các văn phòng, công ty , trường học. Với khả năng đáp ứng in ấn , photocopy tốt. Thùng giấy được làm từ chất liệu tốt , tiện lợi cho việc vận chuyển và tái sử dụng vào việc lưu trữ tài liệu văn phòng.', N'mo_ta_giay_fa-13_675bf3a33cfd486099a82e383d103d67_grande.jpg                                                                                                                                                                                                                                                ', CAST(86900.00 AS Numeric(18, 2)), N'500 tờ / ream', N'ream', 10, 2, 30, 2, 1, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (13, N'Giấy bìa màu A4/180 BC-C01', N'Bìa giấy màu trơn, không hoa văn, không mùi, dùng đóng bìa hồ sơ, tài liệu theo khổ A4 với nhiều màu lựa chọn. Màu sắc trung thực và sống động. Công nghệ mới làm giấy trông mỏng nhưng thực tế giấy đã được nén chặt hơn, làm bề mặt của giấy nhẵn, đều hơn. Chất lượng: Đẹp, trắng, mịn, láng.', N'giay_bia_mau_a4-180_bc-c01__4__grande.jpg                                                                                                                                                                                                                                                                   ', CAST(43000.00 AS Numeric(18, 2)), N'100 tờ/xấp', N'xấp', 0, 0, 50, 2, 10, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (14, N'Giấy note Xukiva177 N-X02', N'Giúp các bạn quản lý tổ chức kế hoạch trong thời gian dài hạn. Tiện lợi cho việc mang theo mọi lúc mọi nơi. Ngay cả trong những lúc bận rộn nhất bạn cũng có thể ghi chú 1 cách dễ dàng. Gồm nhiều tờ trong 1 xấp. Chất lượng : Đẹp, mịn, láng. ', N'abl_4183_grande.jpg                                                                                                                                                                                                                                                                                         ', CAST(45000.00 AS Numeric(18, 2)), N'12 xấp/lốc', N'lốc', 0, 1, 40, 2, 7, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (16, N'Giấy than G-Star 21x33 CP-G01 XANH', N'Giấy cảm nhiệt, mặt không nhiệt được quấn bên trong, mặt nhiệt được quấn ra ngoài. Đường kính trong lõi 27 mm, gói giấy bạc cách nhiệt, dán tem hai đầu, có màng co.', N'abl_5400_grande.jpg                                                                                                                                                                                                                                                                                         ', CAST(73000.00 AS Numeric(18, 2)), N'100 tờ/hộp', N'hộp', 0, 0, 40, 2, 5, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (17, N'Kẹp giấy Flexoffice FO-PAC01', N'Kẹp giấy Thiên Long FO-PAC01 (25mm) có đầu tam giác, đầu tròn. Sản xuất từ kim loại có chất lượng cao, được phủ lớp niken chống gỉ. Có thể giữ được 10 tờ giấy A4', N'617__1__grande.jpg                                                                                                                                                                                                                                                                                          ', CAST(5000.00 AS Numeric(18, 2)), N'	10 hộp/hộp lớn', N'chiếc', 10, 2, 40, 3, 16, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (18, N'Kim bấm số 3 Flexoffice FO-STS01', N'Kim bấm giấy là sản phẩm được làm từ thép cao cấp, giúp liên kết các tài liệu văn bản lại với nhau. Kim bấm có độ cứng cao, sáng bóng và không bị gỉ sét theo thời gian. Dễ dàng sử dụng và thân thiên với người dùng', N'651__5__grande.jpg                                                                                                                                                                                                                                                                                          ', CAST(5000.00 AS Numeric(18, 2)), N'20 hộp/hộp lớn', N'hộp', 0, 0, 30, 3, 16, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (19, N'Bìa nút trong suốt nhiều màu F4 Thiên Long Flexoffice FO-CBF08', N'Bìa bằng nhựa PP chịu lực cao. Đường hàn chắc chắn, nút bền hơn.', N'fo-cbf08_xk3_97ef69dd7dc84a91be7151a4a3991f5e_1024x1024.jpg                                                                                                                                                                                                                                                 ', CAST(5000.00 AS Numeric(18, 2)), N'1 bìa / kiện', N'cái', 10, 1, 30, 4, 16, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (21, N'Bìa đựng hồ sơ 60 lá sức chứa 300 tờ A4 80 gsm Thiên Long Flexoffice FO-DB009', N'Để lưu trữ và bảo quản các loại hồ sơ, tài liệu, tranh ảnh... Bìa 60 lá thích hợp cho gia đình, văn phòng: lưu trữ các loại giấy tờ nhà đất, giấy bảo hiểm, hóa đơn, giấy bảo hành… Sản phẩm được sản xuất từ nhựa PP chất lượng cao, an toàn với người sử dụng, sản phẩm có thể được tái chế hoàn toàn. Bề mặt trơn láng, hạn chế trầy xước và bám bẩn. Các lá được hàn trên công nghệ hàn siêu âm, có khả năng chịu ứng suất kéo cao.', N'fo-db009_2_af0b93f66f03446f98c05ef449beb913_1024x1024.jpg                                                                                                                                                                                                                                                   ', CAST(7000.00 AS Numeric(18, 2)), N'bút/kiện', N'cái', 10, 0, 30, 4, 16, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (23, N'Máy tính Casio FX-570ES Plus', N'Không phải ngẫu nhiên mà máy tính CASIO FX 570ES PLUS được rất nhiều học sinh, sinh viên ưa thích đến vậy. Máy sở hữu kiểu dáng hiện đại, màu sắc trang nhã tinh tế cùng với danh sách các tính năng hữu ích, hỗ trợ tối đa trong quá trình học tập cũng như làm việc. Chiếc máy CASIO FX 570 ES PLUS là sản phẩm phù hợp với các bạn học sinh trung học.', N'casio.png                                                                                                                                                                                                                                                                                                   ', CAST(702000.00 AS Numeric(18, 2)), NULL, N'chiếc', 0, 10, 30, 8, 19, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (25, N'MÁY TÍNH VINACAL 570ES PLUS - HỒNG', NULL, N'vinacal-570ex-plus-hong.jpg                                                                                                                                                                                                                                                                                 ', CAST(1008000.00 AS Numeric(18, 2)), NULL, N'chiếc', 3, 0, 30, 8, 20, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (26, N'Máy tính VINACAL 570 ES PLUS II - Xanh', N' Phím bấm của máy tính khoa học Vinacal 570ES Plus II rất nhạy. Tính năng vượt trội hơn, tiện lợi hơn, màu sắc thời trang. Kiểu dáng hoàn toàn mới, góc cạnh, hiện đại.', N'63_60029_vinacal-570es-plus-ii-xanh-duo.jpg                                                                                                                                                                                                                                                                 ', CAST(863000.00 AS Numeric(18, 2)), NULL, N'chiếc', 0, 0, 30, 8, 20, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (27, N'Kéo lớn 25cm - K20', N' Lưỡi kéo được làm bằng kim loại cao cấp, sắc bén, cho đường cắt dứt khoát và đẹp mắt. Tay cầm kéo được bọc nhựa êm ái, tránh làm đau tay khi thao tác nhiều.', N'20210220153305-4.jpg                                                                                                                                                                                                                                                                                        ', CAST(34200.00 AS Numeric(18, 2)), NULL, N'cây', 0, 0, 30, 6, 17, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (28, N'Gôm Pentel Nhỏ 03 - Loại 1', N'Gôm Pentel H.03. Đặc điểm: Gôm/tẩy sử dụng cho việc bôi xóa trên giấy và màng film. Gôm/tẩy được bọc giấy bảo vệ bên ngoài nên hạn chế dơ khi sử dụng chưa hết.
', N'unnamed.jpg                                                                                                                                                                                                                                                                                                 ', CAST(6400.00 AS Numeric(18, 2)), NULL, N'cục', 0, 1, 30, 3, 1, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (30, N'Chuột máy tính không dây Logitech B175', N'Mang phong cách năng động, thể thao với những đường bo tròn mềm mại. Bề mặt độ cong vừa phải ôm sát lòng bàn tay để người dùng có thể thao tác thoải mái trong thời gian dài.
Giúp bạn lướt chuột nhanh và nhẹ nhàng hơn. Đồng thời, bi lăn và nút bấm nhạy cho các thao tác như rê, kéo có được độ chính xác cao.', N'unnamed (1).jpg                                                                                                                                                                                                                                                                                             ', CAST(352800.00 AS Numeric(18, 2)), NULL, N'cái', 10, 0, 50, 14, 21, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (32, N'Đế Tản Nhiệt 4 Quạt', N'Đế Tản Nhiệt 4 Quạt', N'32036chuột-Đế Tản Nhiệt 4 Quạt 265000.jpg                                                                                                                                                                                                                                                                   ', CAST(381600.00 AS Numeric(18, 2)), NULL, N'miếng', 0, 0, 20, 14, 21, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (34, N'Chổi vệ sinh bàn phím', N'Chổi quét máy tính', N'choi-quet-may-tinh.jpg                                                                                                                                                                                                                                                                                      ', CAST(96720.00 AS Numeric(18, 2)), NULL, N'cây', 11, 1, 40, 3, 9, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (35, N'Hộp bút vải có khóa mật mã 20x6x8cm', N'Hộp bút vải có khóa mật mã 20x6x8cm', N'hopbuttim.png', CAST(265980.00 AS Numeric(18, 2)), NULL, N'hộp', 17, 1, 30, 5, 17, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (36, N'Túi đựng bút vải đính huy hiệu Maimaibaby', N'Dừng ở đây một chút rùi mình ngắm TÚI BÚT!!! Ui chùi túi bút xinh nung ninh như này hông chỉ là ngắm thui đâu mà còn phải hốt lẹ lun nhé! Đi học hay đi làm đem túi bút là tiện nhất rùi. Đựng đồ dùng học tập hay đồ mỹ phẩm be bé xinh xinh vừa như in lun ạ!', N'5_800x800.jpg                                                                                                                                                                                                                                                                                               ', CAST(86000.00 AS Numeric(18, 2)), NULL, N'túi', 0, 12, 50, 5, 17, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (37, N'test 1', N'Bút test', N'default.png', CAST(1000.00 AS Numeric(18, 2)), N'bút/kiện', N'cái', 5, 5, 15, 1, 1, 1)
GO
INSERT [dbo].[product] ([product_id], [name], [description], [image], [price], [specification], [calculation_unit], [discount], [sold_quantity], [quantity], [category_id], [brand_id], [status]) VALUES (38, N'Bút màu', N'Bút màu chất lượng cao', N'2111241445200000282-hop-but-mau.jpg', CAST(7000.00 AS Numeric(18, 2)), N'bút/kiện', N'hộp', 0, 0, 30, 3, 5, 0)
GO
SET IDENTITY_INSERT [dbo].[product] OFF
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (1, N'Hồ Chí Minh', N'SG')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (2, N'Hà Nội', N'HN')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (3, N'Đà Nẵng', N'DDN')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (4, N'Bình Dương', N'BD')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (5, N'Đồng Nai', N'DNA')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (6, N'Khánh Hòa', N'KH')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (7, N'Hải Phòng', N'HP')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (8, N'Long An', N'LA')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (9, N'Quảng Nam', N'QNA')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (10, N'Bà Rịa Vũng Tàu', N'VT')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (11, N'Đắk Lắk', N'DDL')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (12, N'Cần Thơ', N'CT')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (13, N'Bình Thuận  ', N'BTH')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (14, N'Lâm Đồng', N'LDD')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (15, N'Thừa Thiên Huế', N'TTH')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (16, N'Kiên Giang', N'KG')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (17, N'Bắc Ninh', N'BN')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (18, N'Quảng Ninh', N'QNI')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (19, N'Thanh Hóa', N'TH')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (20, N'Nghệ An', N'NA')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (21, N'Hải Dương', N'HD')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (22, N'Gia Lai', N'GL')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (23, N'Bình Phước', N'BP')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (24, N'Hưng Yên', N'HY')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (25, N'Bình Định', N'BDD')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (26, N'Tiền Giang', N'TG')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (27, N'Thái Bình', N'TB')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (28, N'Bắc Giang', N'BG')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (29, N'Hòa Bình', N'HB')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (30, N'An Giang', N'AG')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (31, N'Vĩnh Phúc', N'VP')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (32, N'Tây Ninh', N'TNI')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (33, N'Thái Nguyên', N'TN')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (34, N'Lào Cai', N'LCA')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (35, N'Nam Định', N'NDD')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (36, N'Quảng Ngãi', N'QNG')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (37, N'Bến Tre', N'BTR')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (38, N'Đắk Nông', N'DNO')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (39, N'Cà Mau', N'CM')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (40, N'Vĩnh Long', N'VL')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (41, N'Ninh Bình', N'NB')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (42, N'Phú Thọ', N'PT')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (43, N'Ninh Thuận', N'NT')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (44, N'Phú Yên', N'PY')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (45, N'Hà Nam', N'HNA')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (46, N'Hà Tĩnh', N'HT')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (47, N'Đồng Tháp', N'DDT')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (48, N'Sóc Trăng', N'ST')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (49, N'Kon Tum', N'KT')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (50, N'Quảng Bình', N'QB')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (51, N'Quảng Trị', N'QT')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (52, N'Trà Vinh', N'TV')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (53, N'Hậu Giang', N'HGI')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (54, N'Sơn La', N'SL')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (55, N'Bạc Liêu', N'BL')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (56, N'Yên Bái', N'YB')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (57, N'Tuyên Quang', N'TQ')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (58, N'Điện Biên', N'DDB')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (59, N'Lai Châu', N'LCH')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (60, N'Lạng Sơn', N'LS')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (61, N'Hà Giang', N'HG')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (62, N'Bắc Kạn', N'BK')
GO
INSERT [dbo].[province] ([province_id], [province_name], [province_code]) VALUES (63, N'Cao Bằng', N'CB')
GO
SET IDENTITY_INSERT [dbo].[users] ON 
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (11, N'reintrinh1306', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Trinh', N'Nguyễn Ngọc Phương', N'resources/images/users/211211185414avatar.jpg', 1, N'reintrinh1306@gmail.com', N'0396311734', CAST(N'2021-10-02' AS Date), 2, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (12, N'hathimo', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Mơ', N'Hà', N'resources/images/users/userDefaul.png', 2, N'hathimo@gmail.com', N'0123456789', CAST(N'2021-10-02' AS Date), 2, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (13, N'nhunguyen', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Như', N'Nguyễn Ngọc Lâm', N'resources/images/users/211211190051avatar.jpg', 3, N'nhunguyen123@gmail.com', N'1234567890', CAST(N'2021-11-16' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (14, N'trinhnguyen1306', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Trinh', N'Nguyễn', N'resources/images/users/star.png', 4, N'otakuvocaloid70@gmail.com', N'0123456789', CAST(N'2021-11-20' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (19, N'admin', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Admin', N'Nguyễn', N'resources/images/users/userDefaul.png', 9, N'otakuvocaloid79@gmail.com', N'0000000000', CAST(N'2021-10-28' AS Date), 2, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (20, N'abc', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Harry', N'Potter', N'resources/images/users/userDefaul.png', 10, N'abc@gmail.com', N'1234567890', CAST(N'2021-11-16' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (21, N'test', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'test', N'test', N'resources/images/users/userDefaul.png', 5, N'test@gmail.com', N'0', CAST(N'2021-11-16' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (22, N'phuongtrinh', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Naruto', N'Uzumaki', N'resources/images/users/userDefaul.png', 13, N'naruto@gmail.com', N'0000000001', CAST(N'2021-11-22' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (24, N'rein', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Sasuke', N'Uchiha', N'resources/images/users/userDefaul.png', 11, N'sasuke@gmail.com', N'1234567890', CAST(N'2021-11-22' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (25, N'rein1306', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Rein', N'Nguyễn', N'resources/images/users/userDefaul.png', 12, N'otakuvocaloid@gmail.com', N'0123456700', CAST(N'2021-11-22' AS Date), 1, 0)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (26, N'boruto', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Boruto', N'Uzumaki', N'resources/images/users/userDefaul.png', 14, N'boruto@gmail.com', N'0000000005', CAST(N'2021-11-22' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (27, N'hinata', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Hinata', N'Hyuga', N'resources/images/users/userDefaul.png', 15, N'hinata@gmail.com', N'0000000008', CAST(N'2021-11-23' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (28, N'sophiduong', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Dương', N'Sở Phi', N'resources/images/users/userDefaul.png', 16, N'sophiduong@gmail.com', N'0000000009', CAST(N'2021-11-23' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (29, N'thuanh', N'$2a$12$7nYAZyfQBi1UuFGHKnS0I.ddu4QBVhtgXWt4iLaPFs1xUPq92eddS', N'Ảnh', N'Quân Thư', N'resources/images/users/userDefaul.png', 17, N'reintrinh1306@gmail.com', N'0000000007', CAST(N'2021-11-23' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (30, N'quanngao', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Ngạo', N'Triển Quần', N'resources/images/users/userDefaul.png', 20, N'trienquanngao@gmail.com', N'0001230000', CAST(N'2021-11-23' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (31, N'thachdau', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Đầu', N'Thạch', N'resources/images/users/userDefaul.png', 18, N'thachdau@gmail.com', N'0034000000', CAST(N'2021-11-23' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (32, N'solan', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Lân', N'Sở', N'resources/images/users/userDefaul.png', 19, N'solan@gmail.com', N'0000000023', CAST(N'2021-11-23' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (33, N'lamthucnhan', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Nhân', N'Lâm Thục', N'resources/images/users/userDefaul.png', 21, N'lamthucnhan@gmail.com', N'0000000057', CAST(N'2021-11-23' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (34, N'namcungkiet', N'$2a$12$JX9hZOnV22MD3uZywWRE/.DP.zonmOVqTmLmrN9b0YQBwumGKziwK', N'Kiệt', N'Nam Cung', N'resources/images/users/userDefaul.png', 22, N'akiet@gmail.com', N'0123456722', CAST(N'2021-11-23' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (35, N'abc1', N'$2a$12$TyE8thl0q70c9RmyGizPR.tgvmbcPWRLmPWuitOX88s3aLLHn3PPW', N'Abc', N'Nguyễn', N'resources/images/users/userDefaul.png', 23, N'reintrinh2408@gmail.com', N'0123456000', CAST(N'2021-12-11' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (37, N'yayoi1306', NULL, NULL, NULL, N'https://lh3.googleusercontent.com/a-/AOh14Gi0lzlzcMvDnGT0Xmt6PHSEHJqeLs4fWcLVp8dm=s96-c', 25, N'yayoi1306@gmail.com', NULL, CAST(N'2021-12-11' AS Date), 1, 1)
GO
INSERT [dbo].[users] ([user_id], [username], [password], [first_name], [last_name], [image], [address_id], [email], [phone], [created_at], [permission_id], [status]) VALUES (38, N'yayoi', N'$2a$12$TyE8thl0q70c9RmyGizPR.tgvmbcPWRLmPWuitOX88s3aLLHn3PPW', N'Yayoi', N'Nguyễn', N'resources/images/users/userDefaul.png', 26, N'yayoi@gmail.com', N'0123456000', CAST(N'2021-12-11' AS Date), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[users] OFF
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (1, N'An Phú Tây', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (2, N'Bình Chánh', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (3, N'Bình Hưng', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (4, N'Bình Lợi', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (5, N'Đa Phước', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (6, N'Hưng Long', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (7, N'Lê Minh Xuân', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (8, N'Phạm Văn Hai', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (9, N'Phong Phú', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (10, N'Quy Đức', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (11, N'Tân Kiên', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (12, N'Tân Nhựt', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (13, N'Tân Quý Tây', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (14, N'Tân Túc', N'Thị trấn', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (15, N'Vĩnh Lộc A', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (16, N'Vĩnh Lộc B', N'Xã', 1)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (17, N'An Lạc', N'Phường', 2)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (18, N'An Lạc A', N'Phường', 2)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (19, N'Bình Hưng Hòa', N'Phường', 2)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (20, N'Bình Hưng Hòa A', N'Phường', 2)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (21, N'Bình Hưng Hòa B', N'Phường', 2)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (22, N'Bình Trị Đông', N'Phường', 2)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (23, N'Bình Trị Đông A', N'Phường', 2)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (24, N'Bình Trị Đông B', N'Phường', 2)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (25, N'Tân Tạo', N'Phường', 2)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (26, N'Tân Tạo A', N'Phường', 2)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (27, N'1', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (28, N'11', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (29, N'12', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (30, N'13', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (31, N'14', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (32, N'15', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (33, N'17', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (34, N'19', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (35, N'2', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (36, N'21', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (37, N'22', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (38, N'24', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (39, N'25', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (40, N'26', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (41, N'27', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (42, N'28', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (43, N'3', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (44, N'5', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (45, N'6', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (46, N'7', N'Phường', 3)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (47, N'An Thới Đông', N'Xã', 4)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (48, N'Bình Khánh', N'Xã', 4)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (49, N'Cần Thạnh ', N'Phường', 4)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (50, N'Long Hòa', N'Xã', 4)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (51, N'Lý Nhơn', N'Xã', 4)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (52, N'Tam Thôn Hiệp', N'Xã', 4)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (53, N'Thạnh An', N'Xã', 4)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (54, N'An Nhơn Tây', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (55, N'An Phú', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (56, N'An Phú Trung', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (57, N'Bình Mỹ', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (58, N'Củ Chi', N'Thị trấn', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (59, N'Hòa Phú', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (60, N'Nhuận Đức', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (61, N'Phạm Văn Cội', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (62, N'Phú Hòa Đông', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (63, N'Phú Mỹ Hưng', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (64, N'Phước Hiệp', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (65, N'Phước Thạnh', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (66, N'Phước Vĩnh An', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (67, N'Tân An Hội', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (68, N'Tân Phú Trung', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (69, N'Tân Thạnh Đông', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (70, N'Tân Thạnh Tây', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (71, N'Tân Thông Hội', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (72, N'Thái Mỹ', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (73, N'Trung An', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (74, N'Trung Lập Hạ', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (75, N'Trung Lập Hạ', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (76, N'Trung Lập Thượng', N'Xã', 5)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (77, N'1', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (78, N'10', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (79, N'11', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (80, N'12', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (81, N'13', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (82, N'14', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (83, N'15', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (84, N'16', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (85, N'17', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (86, N'3', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (87, N'4', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (88, N'5', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (89, N'6', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (90, N'7', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (91, N'8', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (92, N'9', N'Phường', 6)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (93, N' Đông Thạnh', N'Xã', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (94, N' Hóc Môn', N'Phường', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (95, N'Bà Điểm', N'Phường', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (96, N'Nhị Bình', N'Xã', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (97, N'Tân Hiệp', N'Xã', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (98, N'Tân Thới Nhì', N'Xã', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (99, N'Tân Xuân', N'Xã', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (100, N'Thới Tam Thôn', N'Xã', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (101, N'Trung Chánh', N'Xã', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (102, N'Xuân Thới Đông', N'Xã', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (103, N'Xuân Thới Sơn', N'Xã', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (104, N'Xuân Thới Thượng', N'Xã', 7)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (105, N'Hiệp Phước', N'Phường', 8)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (106, N'Long Thới', N'Xã', 8)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (107, N'Nhà Bè', N'Thị trấn', 8)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (108, N'Nhơn Đức', N'Xã', 8)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (109, N'Phú Xuân', N'Xã', 8)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (110, N'Phước Kiển', N'Xã', 8)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (111, N'Phước Lộc', N'Xã', 8)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (112, N'1', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (113, N'10', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (114, N'11', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (115, N'12', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (116, N'13', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (117, N'14', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (118, N'15', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (119, N'17', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (120, N'2', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (121, N'25', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (122, N'3', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (123, N'4', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (124, N'5', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (125, N'6', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (126, N'7', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (127, N'8', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (128, N'9', N'Phường', 9)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (129, N'Bến Nghé', N'Phường', 10)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (130, N'Bến Thành', N'Phường', 10)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (131, N'Cầu Kho', N'Phường', 10)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (132, N'Cầu Ông Lãnh', N'Phường', 10)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (133, N'Cô Giang', N'Phường', 10)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (134, N'Đa Kao', N'Phường', 10)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (135, N'Nguyễn Cư Trinh', N'Phường', 10)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (136, N'Nguyễn Thái Bình', N'Phường', 10)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (137, N'Phạm Ngũ Lão', N'Phường', 10)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (138, N'Tân Định', N'Phường', 10)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (139, N'1', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (140, N'10', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (141, N'11', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (142, N'12', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (143, N'13', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (144, N'14', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (145, N'15', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (146, N'2', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (147, N'3', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (148, N'4', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (149, N'5', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (150, N'6', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (151, N'7', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (152, N'8', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (153, N'9', N'Phường', 11)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (154, N'1', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (155, N'10', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (156, N'11', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (157, N'12', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (158, N'13', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (159, N'14', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (160, N'15', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (161, N'16', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (162, N'2', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (163, N'3', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (164, N'4', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (165, N'5', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (166, N'6', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (167, N'7', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (168, N'8', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (169, N'9', N'Phường', 12)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (170, N'An Phú Đông', N'Phường', 13)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (171, N'Đông Hưng Thuận', N'Phường', 13)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (172, N'Hiệp Thành', N'Phường', 13)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (173, N'Tân Chánh Hiệp', N'Phường', 13)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (174, N'Tân Hưng Thuận', N'Phường', 13)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (175, N'Tân Thới Hiệp', N'Phường', 13)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (176, N'Tân Thới Nhất', N'Phường', 13)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (177, N'Thạnh Lộc', N'Phường', 13)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (178, N'Thạnh Xuân', N'Phường', 13)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (179, N'Thới An', N'Phường', 13)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (180, N'Trung Mỹ Tây', N'Phường', 13)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (181, N' Thạnh Mỹ Lợi', N'Phường', 14)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (182, N'An Khánh', N'Phường', 14)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (183, N'An Lợi Đông', N'Phường', 14)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (184, N'An Phú', N'Phường', 14)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (185, N'Bình An', N'Phường', 14)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (186, N'Bình Khánh', N'Phường', 14)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (187, N'Bình Trưng Đông', N'Phường', 14)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (188, N'Bình Trưng Tây', N'Phường', 14)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (189, N'Cát Lái', N'Phường', 14)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (190, N'Thảo Điền', N'Phường', 14)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (191, N'Thủ Thiêm', N'Phường', 14)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (192, N'1', N'Phường', 15)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (193, N'10', N'Phường', 15)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (194, N'11', N'Phường', 15)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (195, N'12', N'Phường', 15)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (196, N'13', N'Phường', 15)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (197, N'14', N'Phường', 15)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (198, N'2', N'Phường', 15)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (199, N'3', N'Phường', 15)
GO
INSERT [dbo].[ward] ([ward_id], [ward_name], [ward_prefix], [district_id]) VALUES (200, N'4', N'Phường', 15)
GO
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF_order_status_id]  DEFAULT ((0)) FOR [status_id]
GO
ALTER TABLE [dbo].[poster] ADD  CONSTRAINT [DF_poster_isActive]  DEFAULT ((1)) FOR [isActive]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product_sold_quantity]  DEFAULT ((0)) FOR [sold_quantity]
GO
ALTER TABLE [dbo].[product] ADD  CONSTRAINT [DF_product_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[users] ADD  CONSTRAINT [DF_user_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[address]  WITH CHECK ADD  CONSTRAINT [FK_address_ward] FOREIGN KEY([ward_id])
REFERENCES [dbo].[ward] ([ward_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[address] CHECK CONSTRAINT [FK_address_ward]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_product]
GO
ALTER TABLE [dbo].[cart]  WITH CHECK ADD  CONSTRAINT [FK_cart_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[cart] CHECK CONSTRAINT [FK_cart_user]
GO
ALTER TABLE [dbo].[district]  WITH CHECK ADD  CONSTRAINT [FK_district_province] FOREIGN KEY([province_id])
REFERENCES [dbo].[province] ([province_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[district] CHECK CONSTRAINT [FK_district_province]
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD  CONSTRAINT [FK_feedback_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[feedback] CHECK CONSTRAINT [FK_feedback_product]
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD  CONSTRAINT [FK_feedback_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[feedback] CHECK CONSTRAINT [FK_feedback_users]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[order_status] ([status_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_status]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_user] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_user]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_order] FOREIGN KEY([order_id])
REFERENCES [dbo].[order] ([order_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_order]
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_product] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([product_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_product]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_brand] FOREIGN KEY([brand_id])
REFERENCES [dbo].[brand] ([brand_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_brand]
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD  CONSTRAINT [FK_product_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FK_product_category]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_user_permission] FOREIGN KEY([permission_id])
REFERENCES [dbo].[permission] ([permission_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_user_permission]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [FK_users_address] FOREIGN KEY([address_id])
REFERENCES [dbo].[address] ([address_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [FK_users_address]
GO
ALTER TABLE [dbo].[ward]  WITH CHECK ADD  CONSTRAINT [FK_ward_district] FOREIGN KEY([district_id])
REFERENCES [dbo].[district] ([district_id])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ward] CHECK CONSTRAINT [FK_ward_district]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Quy cách' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'product', @level2type=N'COLUMN',@level2name=N'specification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Phường' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ward', @level2type=N'COLUMN',@level2name=N'ward_id'
GO
USE [master]
GO
ALTER DATABASE [WEBSITE_VANPHONGPHAM] SET  READ_WRITE 
GO
