USE [master]
GO
/****** Object:  Database [Repo_Pattern_MVC]    Script Date: 03-10-2018 11.29.41 PM ******/
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
/****** Object:  User [sql]    Script Date: 03-10-2018 11.29.42 PM ******/
CREATE USER [sql] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Form_Data_Master]    Script Date: 03-10-2018 11.29.43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Form_Data_Master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Form_Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Form_Data_Master] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Form_Master]    Script Date: 03-10-2018 11.29.45 PM ******/
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
SET IDENTITY_INSERT [dbo].[Form_Data_Master] ON 

INSERT [dbo].[Form_Data_Master] ([Id], [UserId], [UserName], [Form_Data]) VALUES (1002, 1, N'DemoUser', N'<div class=""><h3 id="control-7029256">Form testing</h3></div><div class="fb-text form-group field-text-1538584129698"><label for="text-1538584129698" class="fb-text-label">Text Field</label><input type="text" name="text-1538584129698" value="bhavdip" class="red form-control" id="text-1538584129698"></div><div class="fb-button form-group"><button type="button" class="btn btn-primary" name="btnSubmit" onclick="SubmitForm();" style="default" id="btnSubmit">Submit</button></div>')
INSERT [dbo].[Form_Data_Master] ([Id], [UserId], [UserName], [Form_Data]) VALUES (1003, 1, N'DemoUser', N'<div class=""><h2 id="control-4271649">Servay Form 1</h2></div><div class="fb-text form-group field-txtfname"><label for="txtfname" class="fb-text-label">FirstName</label><input type="text" name="txtfname" class="red form-control" id="txtfname"></div><div class="fb-text form-group field-txtlastname"><label for="txtlastname" class="fb-text-label">LastName</label><input type="text" name="txtlastname" class="red form-control" id="txtlastname"></div><div class="fb-select form-group field-select-1538588356848"><label for="select-1538588356848" class="fb-select-label">Gender</label><select class="form-control" name="select-1538588356848" id="select-1538588356848"><option value="Male" selected="true" id="select-1538588356848-0">Male</option><option value="Female" id="select-1538588356848-1">Female</option></select></div><div class="fb-date form-group field-date-1538588411835"><label for="date-1538588411835" class="fb-date-label">Date Of Birth</label><input type="date" class="form-control" name="date-1538588411835" id="date-1538588411835"></div><div class="fb-button form-group"></div>')
INSERT [dbo].[Form_Data_Master] ([Id], [UserId], [UserName], [Form_Data]) VALUES (1004, 1, N'DemoUser', N'<div class=""><h2 id="control-4271649">Servay Form 1</h2></div><div class="fb-text form-group field-txtfname"><label for="txtfname" class="fb-text-label">FirstName</label><input type="text" name="txtfname" class="red form-control" id="txtfname"></div><div class="fb-text form-group field-txtlastname"><label for="txtlastname" class="fb-text-label">LastName</label><input type="text" name="txtlastname" class="red form-control" id="txtlastname"></div><div class="fb-select form-group field-select-1538588356848"><label for="select-1538588356848" class="fb-select-label">Gender</label><select class="form-control" name="select-1538588356848" id="select-1538588356848"><option value="Male" selected="true" id="select-1538588356848-0">Male</option><option value="Female" id="select-1538588356848-1">Female</option></select></div><div class="fb-date form-group field-date-1538588411835"><label for="date-1538588411835" class="fb-date-label">Date Of Birth</label><input type="date" class="form-control" name="date-1538588411835" id="date-1538588411835"></div><div class="fb-button form-group"></div>')
INSERT [dbo].[Form_Data_Master] ([Id], [UserId], [UserName], [Form_Data]) VALUES (1005, 1, N'DemoUser', N'<div class=""><h1 id="control-5925451">form1</h1></div><div class="fb-text form-group field-text-1538589029748"><label for="text-1538589029748" class="fb-text-label">Text Field</label><input type="text" name="text-1538589029748" value="test1" class="red form-control" id="text-1538589029748"></div><div class="fb-text form-group field-text-1538589031892"><label for="text-1538589031892" class="fb-text-label">Text Field</label><input type="text" name="text-1538589031892" value="test2" class="red form-control" id="text-1538589031892"></div><div class="fb-button form-group"></div>')
SET IDENTITY_INSERT [dbo].[Form_Data_Master] OFF
SET IDENTITY_INSERT [dbo].[Form_Master] ON 

INSERT [dbo].[Form_Master] ([id], [Form_Name], [Form_Body_Json], [Form_Body_Html]) VALUES (1031, N'formtesting3102018', N'"\"[\\n\\t{\\n\\t\\t\\\"type\\\": \\\"header\\\",\\n\\t\\t\\\"subtype\\\": \\\"h3\\\",\\n\\t\\t\\\"label\\\": \\\"Form testing\\\"\\n\\t},\\n\\t{\\n\\t\\t\\\"type\\\": \\\"text\\\",\\n\\t\\t\\\"label\\\": \\\"Text Field\\\",\\n\\t\\t\\\"name\\\": \\\"text-1538584129698\\\",\\n\\t\\t\\\"value\\\": \\\"bhavdip\\\",\\n\\t\\t\\\"subtype\\\": \\\"text\\\",\\n\\t\\t\\\"className\\\": \\\"red form-control\\\"\\n\\t}\\n]\""', N'<div class=""><h3 id="control-7029256">Form testing</h3></div><div class="fb-text form-group field-text-1538584129698"><label for="text-1538584129698" class="fb-text-label">Text Field</label><input type="text" name="text-1538584129698" value="bhavdip" class="red form-control" id="text-1538584129698"></div>')
INSERT [dbo].[Form_Master] ([id], [Form_Name], [Form_Body_Json], [Form_Body_Html]) VALUES (1032, N'Servay Form 1', N'"\"[\\n\\t{\\n\\t\\t\\\"type\\\": \\\"header\\\",\\n\\t\\t\\\"subtype\\\": \\\"h2\\\",\\n\\t\\t\\\"label\\\": \\\"Servay Form 1\\\"\\n\\t},\\n\\t{\\n\\t\\t\\\"type\\\": \\\"text\\\",\\n\\t\\t\\\"label\\\": \\\"FirstName\\\",\\n\\t\\t\\\"name\\\": \\\"txtfname\\\",\\n\\t\\t\\\"subtype\\\": \\\"text\\\",\\n\\t\\t\\\"className\\\": \\\"red form-control\\\"\\n\\t},\\n\\t{\\n\\t\\t\\\"type\\\": \\\"text\\\",\\n\\t\\t\\\"label\\\": \\\"LastName\\\",\\n\\t\\t\\\"name\\\": \\\"txtlastname\\\",\\n\\t\\t\\\"subtype\\\": \\\"text\\\",\\n\\t\\t\\\"className\\\": \\\"red form-control\\\"\\n\\t},\\n\\t{\\n\\t\\t\\\"type\\\": \\\"select\\\",\\n\\t\\t\\\"label\\\": \\\"Gender\\\",\\n\\t\\t\\\"className\\\": \\\"form-control\\\",\\n\\t\\t\\\"name\\\": \\\"select-1538588356848\\\",\\n\\t\\t\\\"values\\\": [\\n\\t\\t\\t{\\n\\t\\t\\t\\t\\\"label\\\": \\\"Male\\\",\\n\\t\\t\\t\\t\\\"value\\\": \\\"Male\\\",\\n\\t\\t\\t\\t\\\"selected\\\": true\\n\\t\\t\\t},\\n\\t\\t\\t{\\n\\t\\t\\t\\t\\\"label\\\": \\\"Female\\\",\\n\\t\\t\\t\\t\\\"value\\\": \\\"Female\\\"\\n\\t\\t\\t}\\n\\t\\t]\\n\\t},\\n\\t{\\n\\t\\t\\\"type\\\": \\\"date\\\",\\n\\t\\t\\\"label\\\": \\\"Date Of Birth\\\",\\n\\t\\t\\\"className\\\": \\\"form-control\\\",\\n\\t\\t\\\"name\\\": \\\"date-1538588411835\\\"\\n\\t}\\n]\""', N'<div class=""><h2 id="control-4271649">Servay Form 1</h2></div><div class="fb-text form-group field-txtfname"><label for="txtfname" class="fb-text-label">FirstName</label><input type="text" name="txtfname" class="red form-control" id="txtfname"></div><div class="fb-text form-group field-txtlastname"><label for="txtlastname" class="fb-text-label">LastName</label><input type="text" name="txtlastname" class="red form-control" id="txtlastname"></div><div class="fb-select form-group field-select-1538588356848"><label for="select-1538588356848" class="fb-select-label">Gender</label><select class="form-control" name="select-1538588356848" id="select-1538588356848"><option value="Male" selected="true" id="select-1538588356848-0">Male</option><option value="Female" id="select-1538588356848-1">Female</option></select></div><div class="fb-date form-group field-date-1538588411835"><label for="date-1538588411835" class="fb-date-label">Date Of Birth</label><input type="date" class="form-control" name="date-1538588411835" id="date-1538588411835"></div>')
INSERT [dbo].[Form_Master] ([id], [Form_Name], [Form_Body_Json], [Form_Body_Html]) VALUES (1033, N'form13102018_new', N'"\"[\\n\\t{\\n\\t\\t\\\"type\\\": \\\"header\\\",\\n\\t\\t\\\"subtype\\\": \\\"h1\\\",\\n\\t\\t\\\"label\\\": \\\"form1\\\"\\n\\t},\\n\\t{\\n\\t\\t\\\"type\\\": \\\"text\\\",\\n\\t\\t\\\"label\\\": \\\"Text Field\\\",\\n\\t\\t\\\"name\\\": \\\"text-1538589029748\\\",\\n\\t\\t\\\"value\\\": \\\"test1\\\",\\n\\t\\t\\\"subtype\\\": \\\"text\\\",\\n\\t\\t\\\"className\\\": \\\"red form-control\\\"\\n\\t},\\n\\t{\\n\\t\\t\\\"type\\\": \\\"text\\\",\\n\\t\\t\\\"label\\\": \\\"Text Field\\\",\\n\\t\\t\\\"name\\\": \\\"text-1538589031892\\\",\\n\\t\\t\\\"value\\\": \\\"test2\\\",\\n\\t\\t\\\"subtype\\\": \\\"text\\\",\\n\\t\\t\\\"className\\\": \\\"red form-control\\\"\\n\\t}\\n]\""', N'<div class=""><h1 id="control-5925451">form1</h1></div><div class="fb-text form-group field-text-1538589029748"><label for="text-1538589029748" class="fb-text-label">Text Field</label><input type="text" name="text-1538589029748" value="test1" class="red form-control" id="text-1538589029748"></div><div class="fb-text form-group field-text-1538589031892"><label for="text-1538589031892" class="fb-text-label">Text Field</label><input type="text" name="text-1538589031892" value="test2" class="red form-control" id="text-1538589031892"></div>')
SET IDENTITY_INSERT [dbo].[Form_Master] OFF
USE [master]
GO
ALTER DATABASE [Repo_Pattern_MVC] SET  READ_WRITE 
GO
