USE [master]
GO
/****** Object:  Database [Repo_Pattern_MVC]    Script Date: 09/06/2018 5:52:54 PM ******/
CREATE DATABASE [Repo_Pattern_MVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Repo_Pattern_MVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Repo_Pattern_MVC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Repo_Pattern_MVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Repo_Pattern_MVC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Repo_Pattern_MVC] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Repo_Pattern_MVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Repo_Pattern_MVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET RECOVERY FULL 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET  MULTI_USER 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Repo_Pattern_MVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Repo_Pattern_MVC] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Repo_Pattern_MVC', N'ON'
GO
ALTER DATABASE [Repo_Pattern_MVC] SET QUERY_STORE = OFF
GO
USE [Repo_Pattern_MVC]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Repo_Pattern_MVC]
GO
/****** Object:  User [sql]    Script Date: 09/06/2018 5:52:54 PM ******/
CREATE USER [sql] FOR LOGIN [sql] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Form_Master]    Script Date: 09/06/2018 5:52:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Form_Master](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Form_Name] [nvarchar](max) NOT NULL,
	[Form_Body_Json] [nvarchar](max) NOT NULL,
	[Form_Body_Html] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Form_Master] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Form_Master] ON 

INSERT [dbo].[Form_Master] ([id], [Form_Name], [Form_Body_Json], [Form_Body_Html]) VALUES (2, N'firstform', N'"\"[\\n\\t{\\n\\t\\t\\\"type\\\": \\\"header\\\",\\n\\t\\t\\\"subtype\\\": \\\"h2\\\",\\n\\t\\t\\\"label\\\": \\\"the first servay form\\\"\\n\\t},\\n\\t{\\n\\t\\t\\\"type\\\": \\\"text\\\",\\n\\t\\t\\\"label\\\": \\\"Text Field\\\",\\n\\t\\t\\\"name\\\": \\\"text-1536230775213\\\",\\n\\t\\t\\\"subtype\\\": \\\"text\\\",\\n\\t\\t\\\"className\\\": \\\"red form-control\\\"\\n\\t},\\n\\t{\\n\\t\\t\\\"type\\\": \\\"file\\\",\\n\\t\\t\\\"label\\\": \\\"File Upload\\\",\\n\\t\\t\\\"className\\\": \\\"form-control\\\",\\n\\t\\t\\\"name\\\": \\\"file-1536230776381\\\",\\n\\t\\t\\\"subtype\\\": \\\"file\\\"\\n\\t},\\n\\t{\\n\\t\\t\\\"type\\\": \\\"select\\\",\\n\\t\\t\\\"label\\\": \\\"Select\\\",\\n\\t\\t\\\"className\\\": \\\"form-control\\\",\\n\\t\\t\\\"name\\\": \\\"select-1536230781465\\\",\\n\\t\\t\\\"values\\\": [\\n\\t\\t\\t{\\n\\t\\t\\t\\t\\\"label\\\": \\\"Option 1\\\",\\n\\t\\t\\t\\t\\\"value\\\": \\\"option-1\\\",\\n\\t\\t\\t\\t\\\"selected\\\": true\\n\\t\\t\\t},\\n\\t\\t\\t{\\n\\t\\t\\t\\t\\\"label\\\": \\\"Option 2\\\",\\n\\t\\t\\t\\t\\\"value\\\": \\\"option-2\\\"\\n\\t\\t\\t},\\n\\t\\t\\t{\\n\\t\\t\\t\\t\\\"label\\\": \\\"Option 3\\\",\\n\\t\\t\\t\\t\\\"value\\\": \\\"option-3\\\"\\n\\t\\t\\t}\\n\\t\\t]\\n\\t},\\n\\t{\\n\\t\\t\\\"type\\\": \\\"button\\\",\\n\\t\\t\\\"label\\\": \\\"Button\\\",\\n\\t\\t\\\"subtype\\\": \\\"button\\\",\\n\\t\\t\\\"className\\\": \\\"btn btn-default\\\",\\n\\t\\t\\\"name\\\": \\\"button-1536230778120\\\",\\n\\t\\t\\\"style\\\": \\\"default\\\"\\n\\t}\\n]\""', N'<div class=""><h2 id="control-4622102">the first servay form</h2></div><div class="fb-text form-group field-text-1536230775213"><label for="text-1536230775213" class="fb-text-label">Text Field</label><input type="text" name="text-1536230775213" class="red form-control" id="text-1536230775213"></div><div class="fb-file form-group field-file-1536230776381"><label for="file-1536230776381" class="fb-file-label">File Upload</label><input type="file" class="form-control" name="file-1536230776381" id="file-1536230776381"></div><div class="fb-select form-group field-select-1536230781465"><label for="select-1536230781465" class="fb-select-label">Select</label><select class="form-control" name="select-1536230781465" id="select-1536230781465"><option value="option-1" selected="true" id="select-1536230781465-0">Option 1</option><option value="option-2" id="select-1536230781465-1">Option 2</option><option value="option-3" id="select-1536230781465-2">Option 3</option></select></div><div class="fb-button form-group field-button-1536230778120"><button type="button" class="btn btn-default" name="button-1536230778120" style="default" id="button-1536230778120">Button</button></div>')
SET IDENTITY_INSERT [dbo].[Form_Master] OFF
USE [master]
GO
ALTER DATABASE [Repo_Pattern_MVC] SET  READ_WRITE 
GO
