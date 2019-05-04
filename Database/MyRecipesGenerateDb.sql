USE [MyRecipes]
GO
ALTER TABLE [dbo].[User] DROP CONSTRAINT [FK_User_Customer]
GO
ALTER TABLE [dbo].[ShoppingList] DROP CONSTRAINT [FK_ShoppingList_Customer]
GO
ALTER TABLE [dbo].[ShoppingIngredient] DROP CONSTRAINT [FK_Shopping_Ingredient]
GO
ALTER TABLE [dbo].[RecipeIngredient] DROP CONSTRAINT [FK_RecipeIngredient_Recipe_RecipeId]
GO
ALTER TABLE [dbo].[RecipeIngredient] DROP CONSTRAINT [FK_RecipeIngredient_Ingredient_IngredientId]
GO
ALTER TABLE [dbo].[Recipe] DROP CONSTRAINT [FK_Recipe_Customer]
GO
ALTER TABLE [dbo].[Recipe] DROP CONSTRAINT [FK_Recipe_Category]
GO
ALTER TABLE [dbo].[ShoppingList] DROP CONSTRAINT [DF__ShoppingL__CartD__5535A963]
GO
/****** Object:  Index [IX_User_UserId]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP INDEX [IX_User_UserId] ON [dbo].[User]
GO
/****** Object:  Index [IX_User_CustomerId]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP INDEX [IX_User_CustomerId] ON [dbo].[User]
GO
/****** Object:  Index [IX_ShoppingList_CustomerId]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP INDEX [IX_ShoppingList_CustomerId] ON [dbo].[ShoppingList]
GO
/****** Object:  Index [IX_ShoppingIngredient_ShoppingListId]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP INDEX [IX_ShoppingIngredient_ShoppingListId] ON [dbo].[ShoppingIngredient]
GO
/****** Object:  Index [IX_RecipeIngredient_RecipeId]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP INDEX [IX_RecipeIngredient_RecipeId] ON [dbo].[RecipeIngredient]
GO
/****** Object:  Index [IX_RecipeIngredient_IngredientId]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP INDEX [IX_RecipeIngredient_IngredientId] ON [dbo].[RecipeIngredient]
GO
/****** Object:  Index [IX_Recipe_CustomerId]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP INDEX [IX_Recipe_CustomerId] ON [dbo].[Recipe]
GO
/****** Object:  Index [IX_Recipe_CategoryId]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP INDEX [IX_Recipe_CategoryId] ON [dbo].[Recipe]
GO
/****** Object:  Index [IX_Customer_CustomerId]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP INDEX [IX_Customer_CustomerId] ON [dbo].[Customer]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP TABLE [dbo].[User]
GO
/****** Object:  Table [dbo].[ShoppingList]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP TABLE [dbo].[ShoppingList]
GO
/****** Object:  Table [dbo].[ShoppingIngredient]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP TABLE [dbo].[ShoppingIngredient]
GO
/****** Object:  Table [dbo].[RecipeIngredient]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP TABLE [dbo].[RecipeIngredient]
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP TABLE [dbo].[Recipe]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP TABLE [dbo].[Ingredient]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP TABLE [dbo].[__EFMigrationsHistory]
GO
USE [master]
GO
/****** Object:  Database [MyRecipes]    Script Date: 5/3/2019 10:05:23 PM ******/
DROP DATABASE [MyRecipes]
GO
/****** Object:  Database [MyRecipes]    Script Date: 5/3/2019 10:05:23 PM ******/
CREATE DATABASE [MyRecipes]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MyRecipes', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MyRecipes.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MyRecipes_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\MyRecipes_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [MyRecipes] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MyRecipes].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MyRecipes] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MyRecipes] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MyRecipes] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MyRecipes] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MyRecipes] SET ARITHABORT OFF 
GO
ALTER DATABASE [MyRecipes] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MyRecipes] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MyRecipes] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MyRecipes] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MyRecipes] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MyRecipes] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MyRecipes] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MyRecipes] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MyRecipes] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MyRecipes] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MyRecipes] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MyRecipes] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MyRecipes] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MyRecipes] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MyRecipes] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MyRecipes] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MyRecipes] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MyRecipes] SET RECOVERY FULL 
GO
ALTER DATABASE [MyRecipes] SET  MULTI_USER 
GO
ALTER DATABASE [MyRecipes] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MyRecipes] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MyRecipes] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MyRecipes] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MyRecipes] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'MyRecipes', N'ON'
GO
ALTER DATABASE [MyRecipes] SET QUERY_STORE = OFF
GO
USE [MyRecipes]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/3/2019 10:05:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/3/2019 10:05:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/3/2019 10:05:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingredient]    Script Date: 5/3/2019 10:05:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingredient](
	[IngredientId] [int] IDENTITY(1,1) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[Name] [varchar](200) NULL,
 CONSTRAINT [PK_Ingredient] PRIMARY KEY CLUSTERED 
(
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recipe]    Script Date: 5/3/2019 10:05:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recipe](
	[RecipeId] [int] IDENTITY(1,1) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](100) NULL,
	[Instruction] [varchar](max) NULL,
	[CustomerId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[IsPrivate] [bit] NOT NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[RecipeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipeIngredient]    Script Date: 5/3/2019 10:05:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecipeIngredient](
	[RecipeIngredientId] [int] IDENTITY(1,1) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[RecipeId] [int] NOT NULL,
	[IngredientId] [int] NOT NULL,
	[Unit] [varchar](100) NULL,
	[Quantity] [float] NULL,
	[Preparation] [varchar](500) NULL,
 CONSTRAINT [PK_RecipeIngredient] PRIMARY KEY CLUSTERED 
(
	[RecipeIngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingIngredient]    Script Date: 5/3/2019 10:05:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingIngredient](
	[ShoppingIngredientId] [int] IDENTITY(1,1) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[ShoppingListId] [int] NOT NULL,
	[IngredientId] [int] NOT NULL,
	[Quantity] [float] NOT NULL,
 CONSTRAINT [PK_ShoppingIngredient] PRIMARY KEY CLUSTERED 
(
	[ShoppingIngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShoppingList]    Script Date: 5/3/2019 10:05:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShoppingList](
	[ShoppingListId] [int] IDENTITY(1,1) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[CartDate] [datetime] NOT NULL,
	[Name] [varchar](50) NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_ShoppingList] PRIMARY KEY CLUSTERED 
(
	[ShoppingListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/3/2019 10:05:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Deleted] [bit] NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[PasswordHash] [varchar](50) NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190504015233_Initial Create', N'2.2.4-servicing-10062')
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryId], [Deleted], [Name], [Description]) VALUES (1, 0, N'Chicken', N'Chicken Recipes')
INSERT [dbo].[Category] ([CategoryId], [Deleted], [Name], [Description]) VALUES (2, 0, N'Beef', N'Beef Recipes')
INSERT [dbo].[Category] ([CategoryId], [Deleted], [Name], [Description]) VALUES (3, 0, N'Dinner', N'Dinner Recipes')
INSERT [dbo].[Category] ([CategoryId], [Deleted], [Name], [Description]) VALUES (4, 0, N'Slow Cooker', N'Slow Cooker Recipes')
INSERT [dbo].[Category] ([CategoryId], [Deleted], [Name], [Description]) VALUES (5, 0, N'Easy', N'Easy Cooking Recipes')
INSERT [dbo].[Category] ([CategoryId], [Deleted], [Name], [Description]) VALUES (6, 0, N'Kid Friendly', N'Kid Friendly Recipes')
INSERT [dbo].[Category] ([CategoryId], [Deleted], [Name], [Description]) VALUES (7, 0, N'Healthy', N'Healthy Recipes')
INSERT [dbo].[Category] ([CategoryId], [Deleted], [Name], [Description]) VALUES (8, 0, N'Pork', N'Pork Recipes')
INSERT [dbo].[Category] ([CategoryId], [Deleted], [Name], [Description]) VALUES (9, 0, N'Budget', N'Budget Recipes')
INSERT [dbo].[Category] ([CategoryId], [Deleted], [Name], [Description]) VALUES (10, 0, N'Quick', N'Quick Recipes')
INSERT [dbo].[Category] ([CategoryId], [Deleted], [Name], [Description]) VALUES (11, 0, N'Vegetable', N'Vegetable Recipes')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Ingredient] ON 

INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (1, 0, N'allspice')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (2, 0, N'almond')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (3, 0, N'all-purpose flour')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (4, 0, N'amaretti')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (5, 0, N'anchovy')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (6, 0, N'anise')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (7, 0, N'apple juice')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (8, 0, N'artichoke')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (9, 0, N'artichoke heart')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (10, 0, N'artichoke')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (11, 0, N'asparagus')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (12, 0, N'asparagus spear')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (13, 0, N'aubergine')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (14, 0, N'avocado')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (15, 0, N'bacon')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (16, 0, N'baguette')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (17, 0, N'baked beans')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (18, 0, N'balsamic vinegar')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (19, 0, N'bamboo')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (20, 0, N'banana')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (21, 0, N'bap')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (22, 0, N'basil')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (23, 0, N'bay leaf')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (24, 0, N'bay leaves')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (25, 0, N'bean')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (26, 0, N'beef')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (27, 0, N'beef mince')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (28, 0, N'beef brisket')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (29, 0, N'beef stock')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (30, 0, N'bell pepper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (31, 0, N'berry')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (32, 0, N'berries')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (33, 0, N'bicarbonate of soda')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (34, 0, N'biscuit')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (35, 0, N'biscuit')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (36, 0, N'black olive')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (37, 0, N'black pepper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (38, 0, N'black-eyed peas')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (39, 0, N'blueberries')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (40, 0, N'blueberry')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (41, 0, N'bonnet chilli')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (42, 0, N'bouillon')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (43, 0, N'bourbon')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (44, 0, N'braising steak')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (45, 0, N'bran')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (46, 0, N'brandy')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (47, 0, N'bread')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (48, 0, N'breadcrumbs')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (49, 0, N'bbq sauce')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (50, 0, N'habanero sauce')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (51, 0, N'brie')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (52, 0, N'brine')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (53, 0, N'broccoli')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (54, 0, N'brown rice')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (55, 0, N'brown sauce')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (56, 0, N'brown sugar')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (57, 0, N'buckwheat')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (58, 0, N'buffalo')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (59, 0, N'bun')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (60, 0, N'butter')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (61, 0, N'buttermilk')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (62, 0, N'butternut')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (63, 0, N'butternut squash')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (64, 0, N'butterscotch')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (65, 0, N'cabbage')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (66, 0, N'cake')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (67, 0, N'candy')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (68, 0, N'candies')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (69, 0, N'cannellini')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (70, 0, N'canola oil')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (71, 0, N'caper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (72, 0, N'caramel')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (73, 0, N'caraway seed')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (74, 0, N'cardamom')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (75, 0, N'carrot')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (76, 0, N'carrot')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (77, 0, N'cashew')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (78, 0, N'caster sugar')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (79, 0, N'cayenne pepper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (80, 0, N'celeriac')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (81, 0, N'celery')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (82, 0, N'cereal')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (83, 0, N'champagne')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (84, 0, N'chard')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (85, 0, N'cheddar cheese')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (86, 0, N'cheese')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (87, 0, N'cherries')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (88, 0, N'cherry')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (89, 0, N'cherry tomatoe')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (90, 0, N'chestnut')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (91, 0, N'chicken')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (92, 0, N'chicken breast')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (93, 0, N'chicken drumstick')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (94, 0, N'chicken stock')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (95, 0, N'chicken thigh')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (96, 0, N'chicken leg')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (97, 0, N'chicken')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (98, 0, N'chickpea')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (99, 0, N'chicory')
GO
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (100, 0, N'chile')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (101, 0, N'chilli')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (102, 0, N'chillies')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (103, 0, N'chipotle')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (104, 0, N'chip')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (105, 0, N'chive')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (106, 0, N'chive')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (107, 0, N'chocolate')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (108, 0, N'chop')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (109, 0, N'choy')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (110, 0, N'chutney')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (111, 0, N'ciabatta')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (112, 0, N'cider')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (113, 0, N'cinnamon')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (114, 0, N'clam')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (115, 0, N'clarified butter')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (116, 0, N'clove')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (117, 0, N'cocoa')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (118, 0, N'coconut')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (119, 0, N'orange essence')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (120, 0, N'almond essence')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (121, 0, N'coconut milk')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (122, 0, N'cod')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (123, 0, N'coffee')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (124, 0, N'coleslaw')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (125, 0, N'condensed milk')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (126, 0, N'coriander')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (127, 0, N'coriander leaves')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (128, 0, N'corn')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (129, 0, N'cornflour')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (130, 0, N'cornmeal')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (131, 0, N'courgette')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (132, 0, N'couscous')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (133, 0, N'cranberries')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (134, 0, N'cranberry')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (135, 0, N'cranberry juice')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (136, 0, N'cream')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (137, 0, N'single cream')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (138, 0, N'double cream')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (139, 0, N'sour cream')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (140, 0, N'cr?me fraiche')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (141, 0, N'crisp')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (142, 0, N'crust')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (143, 0, N'creme de cassis')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (144, 0, N'cucumber')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (145, 0, N'cumin')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (146, 0, N'custard')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (147, 0, N'dijon mustard')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (148, 0, N'dill')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (149, 0, N'duck')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (150, 0, N'edamame bean')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (151, 0, N'egg')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (152, 0, N'espresso')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (153, 0, N'fennel')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (154, 0, N'feta')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (155, 0, N'fig')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (156, 0, N'fillet steak')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (157, 0, N'filo pastry')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (158, 0, N'fish')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (159, 0, N'flank')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (160, 0, N'flour')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (161, 0, N'focaccia')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (162, 0, N'foie gras')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (163, 0, N'fruit')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (164, 0, N'fudge')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (165, 0, N'garam masala')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (166, 0, N'garlic')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (167, 0, N'gelatine')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (168, 0, N'gin')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (169, 0, N'ginger')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (170, 0, N'glucose')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (171, 0, N'goat')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (172, 0, N'goat''s cheese')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (173, 0, N'golden syrup')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (174, 0, N'gorgonzola')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (175, 0, N'gouda')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (176, 0, N'grape')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (177, 0, N'grapefruit')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (178, 0, N'grape')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (179, 0, N'grapeseed')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (180, 0, N'green olive')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (181, 0, N'green pepper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (182, 0, N'green')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (183, 0, N'gruyere')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (184, 0, N'gruyere cheese')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (185, 0, N'haddock')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (186, 0, N'ham')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (187, 0, N'harissa')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (188, 0, N'herbs')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (189, 0, N'hoisin')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (190, 0, N'hoisin sauce')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (191, 0, N'honey')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (192, 0, N'honeydew melon')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (193, 0, N'horseradish')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (194, 0, N'iceberg lettuce')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (195, 0, N'icing sugar')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (196, 0, N'jalapeno pepper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (197, 0, N'juice')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (198, 0, N'julienne')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (199, 0, N'kalamata olives')
GO
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (200, 0, N'ketchup')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (201, 0, N'kidney bean')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (202, 0, N'lager')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (203, 0, N'lamb')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (204, 0, N'lard')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (205, 0, N'lardons')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (206, 0, N'lasagne')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (207, 0, N'lavender')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (208, 0, N'leek')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (209, 0, N'lemon')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (210, 0, N'lemongrass')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (211, 0, N'lentil')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (212, 0, N'lettuce')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (213, 0, N'lime')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (214, 0, N'limoncello')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (215, 0, N'lobster')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (216, 0, N'loin')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (217, 0, N'lychee')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (218, 0, N'macadamia nut')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (219, 0, N'malt')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (220, 0, N'mangetout')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (221, 0, N'mango')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (222, 0, N'mangoes')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (223, 0, N'maple syrup')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (224, 0, N'marinara')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (225, 0, N'marshmallow')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (226, 0, N'marzano')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (227, 0, N'mascarpone')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (228, 0, N'mayonnaise')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (229, 0, N'meat')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (230, 0, N'melon')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (231, 0, N'milk')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (232, 0, N'mince')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (233, 0, N'mint')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (234, 0, N'miso soup')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (235, 0, N'molasses')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (236, 0, N'monterey jack')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (237, 0, N'mozzarella')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (238, 0, N'mushroom')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (239, 0, N'mustard')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (240, 0, N'new potato')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (241, 0, N'noodle')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (242, 0, N'nutella')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (243, 0, N'nutmeg')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (244, 0, N'nut')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (245, 0, N'oat')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (246, 0, N'oil')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (247, 0, N'okra')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (248, 0, N'olive oil')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (249, 0, N'olive')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (250, 0, N'onion')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (251, 0, N'onion ring')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (252, 0, N'orange')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (253, 0, N'orange juice')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (254, 0, N'oregano')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (255, 0, N'oyster')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (256, 0, N'pak choi')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (257, 0, N'pancetta')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (258, 0, N'panko')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (259, 0, N'papaya')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (260, 0, N'paprika')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (261, 0, N'parma ham')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (262, 0, N'parmesan')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (263, 0, N'parmigiano')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (264, 0, N'parmigiano-reggiano')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (265, 0, N'parsley')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (266, 0, N'parsnip')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (267, 0, N'passion fruit')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (268, 0, N'pasta')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (269, 0, N'Pasta shell')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (270, 0, N'pastry')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (271, 0, N'pea')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (272, 0, N'peach')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (273, 0, N'peaches')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (274, 0, N'peanut')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (275, 0, N'peanut')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (276, 0, N'pear')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (277, 0, N'pea')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (278, 0, N'pecan')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (279, 0, N'pecorino')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (280, 0, N'penne')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (281, 0, N'penne pasta')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (282, 0, N'pepper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (283, 0, N'peppercorn')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (284, 0, N'peppers')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (285, 0, N'pesto')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (286, 0, N'pickle')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (287, 0, N'pickled gherkin')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (288, 0, N'pickled onion')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (289, 0, N'pickled red onion')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (290, 0, N'pie')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (291, 0, N'pimento pepper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (292, 0, N'pine nut')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (293, 0, N'pineapple')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (294, 0, N'pistachio')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (295, 0, N'pita')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (296, 0, N'pitta')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (297, 0, N'pitted olive')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (298, 0, N'pizza')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (299, 0, N'plantain')
GO
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (300, 0, N'plum')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (301, 0, N'plum tomato')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (302, 0, N'plum tomatoes')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (303, 0, N'sun dried tomato')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (304, 0, N'poblano')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (305, 0, N'pod')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (306, 0, N'polenta')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (307, 0, N'pomegranate')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (308, 0, N'popcorn')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (309, 0, N'pork')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (310, 0, N'Pork chop')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (311, 0, N'porridge')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (312, 0, N'potato')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (313, 0, N'potatoes')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (314, 0, N'prawn')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (315, 0, N'prosciutto')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (316, 0, N'prosciutto ham')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (317, 0, N'provolone')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (318, 0, N'pumpkin')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (319, 0, N'quail')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (320, 0, N'radicchio')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (321, 0, N'radish')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (322, 0, N'radishes')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (323, 0, N'rapeseed oil')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (324, 0, N'raspberries')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (325, 0, N'raspberry')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (326, 0, N'red pepper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (327, 0, N'red onion')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (328, 0, N'relish')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (329, 0, N'rhubarb')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (330, 0, N'rib')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (331, 0, N'rice')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (332, 0, N'ricotta')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (333, 0, N'rocket')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (334, 0, N'roll')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (335, 0, N'rose')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (336, 0, N'rosemary')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (337, 0, N'russet')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (338, 0, N'saffron')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (339, 0, N'sage')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (340, 0, N'sake')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (341, 0, N'salad')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (342, 0, N'salami')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (343, 0, N'salmon')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (344, 0, N'salmon flake')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (345, 0, N'salsa')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (346, 0, N'salt')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (347, 0, N'sauce')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (348, 0, N'sausage')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (349, 0, N'savoy cabbage')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (350, 0, N'scallop')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (351, 0, N'schnapps')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (352, 0, N'self raising flour')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (353, 0, N'semolina')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (354, 0, N'serrano ham')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (355, 0, N'shallot')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (356, 0, N'shaohsing')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (357, 0, N'sherry')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (358, 0, N'shiitake')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (359, 0, N'shiitake mushroom')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (360, 0, N'shortcrust pastry')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (361, 0, N'sirloin')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (362, 0, N'sirloin steak')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (363, 0, N'slaw')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (364, 0, N'smoky bacon')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (365, 0, N'snapper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (366, 0, N'sourdough')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (367, 0, N'soy sauce')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (368, 0, N'spaghetti')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (369, 0, N'spice')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (370, 0, N'spinach')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (371, 0, N'sponge')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (372, 0, N'spring onion')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (373, 0, N'sprout')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (374, 0, N'squash')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (375, 0, N'squid')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (376, 0, N'sriracha')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (377, 0, N'steak')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (378, 0, N'stock')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (379, 0, N'stout')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (380, 0, N'strawberries')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (381, 0, N'strawberry')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (382, 0, N'stuffing')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (383, 0, N'sugar')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (384, 0, N'sultana')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (385, 0, N'sunflower oil')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (386, 0, N'sweet pepper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (387, 0, N'sweetcorn')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (388, 0, N'sweets')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (389, 0, N'swordfish')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (390, 0, N'tangerine')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (391, 0, N'tapioca')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (392, 0, N'tarragon')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (393, 0, N'tartar')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (394, 0, N'tea')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (395, 0, N'tequila')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (396, 0, N'thyme')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (397, 0, N'toast')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (398, 0, N'toffee')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (399, 0, N'tofu')
GO
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (400, 0, N'tomatillos')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (401, 0, N'tomato')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (402, 0, N'tomato puree')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (403, 0, N'tomatoes')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (404, 0, N'tortilla')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (405, 0, N'treacle')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (406, 0, N'tuna steak')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (407, 0, N'tuna')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (408, 0, N'turkey')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (409, 0, N'turkey breast')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (410, 0, N'turkey thigh')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (411, 0, N'turmeric')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (412, 0, N'turnip')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (413, 0, N'vanilla')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (414, 0, N'vanilla essence')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (415, 0, N'vanilla pod')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (416, 0, N'veal')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (417, 0, N'vegetable oil')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (418, 0, N'vermouth')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (419, 0, N'vinaigrette')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (420, 0, N'vinegar')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (421, 0, N'white wine vinegar')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (422, 0, N'red wine vinegar')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (423, 0, N'vodka')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (424, 0, N'waffle')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (425, 0, N'walnut')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (426, 0, N'watercress')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (427, 0, N'watermelon')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (428, 0, N'white rice')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (429, 0, N'wholegrain pasta')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (430, 0, N'wine')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (431, 0, N'worcestershire sauce')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (432, 0, N'yeast')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (433, 0, N'yellow pepper')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (434, 0, N'greek yoghurt')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (435, 0, N'natural yoghurt')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (436, 0, N'yoghurt')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (437, 0, N'yogurt')
INSERT [dbo].[Ingredient] ([IngredientId], [Deleted], [Name]) VALUES (438, 0, N'red onion')
SET IDENTITY_INSERT [dbo].[Ingredient] OFF
/****** Object:  Index [IX_Customer_CustomerId]    Script Date: 5/3/2019 10:05:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_Customer_CustomerId] ON [dbo].[Customer]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Recipe_CategoryId]    Script Date: 5/3/2019 10:05:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_Recipe_CategoryId] ON [dbo].[Recipe]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Recipe_CustomerId]    Script Date: 5/3/2019 10:05:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_Recipe_CustomerId] ON [dbo].[Recipe]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecipeIngredient_IngredientId]    Script Date: 5/3/2019 10:05:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_RecipeIngredient_IngredientId] ON [dbo].[RecipeIngredient]
(
	[IngredientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RecipeIngredient_RecipeId]    Script Date: 5/3/2019 10:05:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_RecipeIngredient_RecipeId] ON [dbo].[RecipeIngredient]
(
	[RecipeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingIngredient_ShoppingListId]    Script Date: 5/3/2019 10:05:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingIngredient_ShoppingListId] ON [dbo].[ShoppingIngredient]
(
	[ShoppingListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ShoppingList_CustomerId]    Script Date: 5/3/2019 10:05:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_ShoppingList_CustomerId] ON [dbo].[ShoppingList]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_CustomerId]    Script Date: 5/3/2019 10:05:24 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_User_CustomerId] ON [dbo].[User]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_UserId]    Script Date: 5/3/2019 10:05:24 PM ******/
CREATE NONCLUSTERED INDEX [IX_User_UserId] ON [dbo].[User]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ShoppingList] ADD  DEFAULT (getdate()) FOR [CartDate]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Category]
GO
ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Customer]
GO
ALTER TABLE [dbo].[RecipeIngredient]  WITH CHECK ADD  CONSTRAINT [FK_RecipeIngredient_Ingredient_IngredientId] FOREIGN KEY([IngredientId])
REFERENCES [dbo].[Ingredient] ([IngredientId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RecipeIngredient] CHECK CONSTRAINT [FK_RecipeIngredient_Ingredient_IngredientId]
GO
ALTER TABLE [dbo].[RecipeIngredient]  WITH CHECK ADD  CONSTRAINT [FK_RecipeIngredient_Recipe_RecipeId] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[Recipe] ([RecipeId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RecipeIngredient] CHECK CONSTRAINT [FK_RecipeIngredient_Recipe_RecipeId]
GO
ALTER TABLE [dbo].[ShoppingIngredient]  WITH CHECK ADD  CONSTRAINT [FK_Shopping_Ingredient] FOREIGN KEY([ShoppingListId])
REFERENCES [dbo].[ShoppingList] ([ShoppingListId])
GO
ALTER TABLE [dbo].[ShoppingIngredient] CHECK CONSTRAINT [FK_Shopping_Ingredient]
GO
ALTER TABLE [dbo].[ShoppingList]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingList_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[ShoppingList] CHECK CONSTRAINT [FK_ShoppingList_Customer]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Customer]
GO
USE [master]
GO
ALTER DATABASE [MyRecipes] SET  READ_WRITE 
GO
