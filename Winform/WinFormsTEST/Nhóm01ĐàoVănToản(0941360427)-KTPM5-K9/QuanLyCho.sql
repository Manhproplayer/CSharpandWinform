USE [master]
GO
/****** Object:  Database [QuanLyCho]    Script Date: 12/19/2016 12:02:48 PM ******/
CREATE DATABASE [QuanLyCho]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QuanLyCho', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyCho.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyCho_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\QuanLyCho_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyCho] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyCho].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyCho] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QuanLyCho] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QuanLyCho] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QuanLyCho] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QuanLyCho] SET ARITHABORT OFF 
GO
ALTER DATABASE [QuanLyCho] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QuanLyCho] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyCho] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QuanLyCho] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QuanLyCho] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QuanLyCho] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QuanLyCho] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QuanLyCho] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QuanLyCho] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QuanLyCho] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QuanLyCho] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QuanLyCho] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QuanLyCho] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QuanLyCho] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QuanLyCho] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QuanLyCho] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QuanLyCho] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QuanLyCho] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QuanLyCho] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QuanLyCho] SET  MULTI_USER 
GO
ALTER DATABASE [QuanLyCho] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QuanLyCho] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QuanLyCho] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QuanLyCho] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [QuanLyCho]
GO
/****** Object:  Table [dbo].[chu_ki_ot]    Script Date: 12/19/2016 12:02:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chu_ki_ot](
	[id_khach] [int] NOT NULL,
	[id_ki_ot] [int] NOT NULL,
	[mat_hang] [nchar](50) NULL,
	[ngay_thue] [datetime] NOT NULL,
	[thoi_han] [int] NOT NULL,
	[tien_thue] [int] NOT NULL,
	[trang_thai] [bit] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chu_xe]    Script Date: 12/19/2016 12:02:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chu_xe](
	[id_khach] [int] NOT NULL,
	[id_xe] [int] NOT NULL,
	[bien_so] [nchar](20) NOT NULL,
	[ngay_thang] [datetime] NULL,
	[mat_hang] [nchar](50) NULL,
	[trang_thai] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dang_Nhap]    Script Date: 12/19/2016 12:02:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dang_Nhap](
	[ten_dang_nhap] [nchar](20) NOT NULL,
	[mat_khau] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Dang_Nhap] PRIMARY KEY CLUSTERED 
(
	[ten_dang_nhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[khach]    Script Date: 12/19/2016 12:02:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khach](
	[id_khach] [int] IDENTITY(1,1) NOT NULL,
	[ho_ten] [nchar](50) NOT NULL,
	[gioi_tinh] [bit] NULL,
	[so_dien_thoai] [nchar](11) NULL,
 CONSTRAINT [PK_khach] PRIMARY KEY CLUSTERED 
(
	[id_khach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ki_ot]    Script Date: 12/19/2016 12:02:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ki_ot](
	[id_ki_ot] [int] IDENTITY(1,1) NOT NULL,
	[so_ki_ot] [int] NOT NULL,
	[trang_thai] [bit] NOT NULL,
	[dien_tich] [float] NULL,
 CONSTRAINT [PK_ki_ot] PRIMARY KEY CLUSTERED 
(
	[id_ki_ot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[xe]    Script Date: 12/19/2016 12:02:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[xe](
	[id_xe] [int] IDENTITY(1,1) NOT NULL,
	[loai_xe] [nchar](20) NOT NULL,
	[tien_thue] [int] NOT NULL,
 CONSTRAINT [PK_xe] PRIMARY KEY CLUSTERED 
(
	[id_xe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[chu_ki_ot]  WITH CHECK ADD  CONSTRAINT [FK_chu_ki_ot_khach] FOREIGN KEY([id_khach])
REFERENCES [dbo].[khach] ([id_khach])
GO
ALTER TABLE [dbo].[chu_ki_ot] CHECK CONSTRAINT [FK_chu_ki_ot_khach]
GO
ALTER TABLE [dbo].[chu_ki_ot]  WITH CHECK ADD  CONSTRAINT [FK_chu_ki_ot_ki_ot] FOREIGN KEY([id_ki_ot])
REFERENCES [dbo].[ki_ot] ([id_ki_ot])
GO
ALTER TABLE [dbo].[chu_ki_ot] CHECK CONSTRAINT [FK_chu_ki_ot_ki_ot]
GO
ALTER TABLE [dbo].[chu_xe]  WITH CHECK ADD  CONSTRAINT [FK_chu_xe_khach] FOREIGN KEY([id_khach])
REFERENCES [dbo].[khach] ([id_khach])
GO
ALTER TABLE [dbo].[chu_xe] CHECK CONSTRAINT [FK_chu_xe_khach]
GO
ALTER TABLE [dbo].[chu_xe]  WITH CHECK ADD  CONSTRAINT [FK_chu_xe_xe] FOREIGN KEY([id_xe])
REFERENCES [dbo].[xe] ([id_xe])
GO
ALTER TABLE [dbo].[chu_xe] CHECK CONSTRAINT [FK_chu_xe_xe]
GO
USE [master]
GO
ALTER DATABASE [QuanLyCho] SET  READ_WRITE 
GO
