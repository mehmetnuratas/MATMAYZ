USE [master]
GO
/****** Object:  Database [matMays]    Script Date: 9.01.2025 12:38:40 ******/
CREATE DATABASE [matMays]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'matMays', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\matMays.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'matMays_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\matMays_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [matMays] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [matMays].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [matMays] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [matMays] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [matMays] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [matMays] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [matMays] SET ARITHABORT OFF 
GO
ALTER DATABASE [matMays] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [matMays] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [matMays] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [matMays] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [matMays] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [matMays] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [matMays] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [matMays] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [matMays] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [matMays] SET  ENABLE_BROKER 
GO
ALTER DATABASE [matMays] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [matMays] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [matMays] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [matMays] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [matMays] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [matMays] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [matMays] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [matMays] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [matMays] SET  MULTI_USER 
GO
ALTER DATABASE [matMays] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [matMays] SET DB_CHAINING OFF 
GO
ALTER DATABASE [matMays] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [matMays] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [matMays] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [matMays] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [matMays] SET QUERY_STORE = ON
GO
ALTER DATABASE [matMays] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [matMays]
GO
/****** Object:  Table [dbo].[SkorTablosu]    Script Date: 9.01.2025 12:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkorTablosu](
	[SkorID] [int] IDENTITY(1,1) NOT NULL,
	[SkorPuanı] [int] NOT NULL,
	[Tarih] [date] NOT NULL,
	[KazandıKaybetti] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SkorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [matMays] SET  READ_WRITE 
GO
