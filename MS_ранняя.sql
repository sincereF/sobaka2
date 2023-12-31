USE [master]
GO
/****** Object:  Database [RussianCosmetics]    Script Date: 16.06.2023 3:36:12 ******/
CREATE DATABASE [RussianCosmetics]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RussianCosmetics', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RussianCosmetics.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RussianCosmetics_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RussianCosmetics_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RussianCosmetics].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RussianCosmetics] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RussianCosmetics] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RussianCosmetics] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RussianCosmetics] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RussianCosmetics] SET ARITHABORT OFF 
GO
ALTER DATABASE [RussianCosmetics] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RussianCosmetics] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RussianCosmetics] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RussianCosmetics] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RussianCosmetics] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RussianCosmetics] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RussianCosmetics] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RussianCosmetics] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RussianCosmetics] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RussianCosmetics] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RussianCosmetics] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RussianCosmetics] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RussianCosmetics] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RussianCosmetics] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RussianCosmetics] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RussianCosmetics] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RussianCosmetics] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RussianCosmetics] SET RECOVERY FULL 
GO
ALTER DATABASE [RussianCosmetics] SET  MULTI_USER 
GO
ALTER DATABASE [RussianCosmetics] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RussianCosmetics] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RussianCosmetics] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RussianCosmetics] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RussianCosmetics] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'RussianCosmetics', N'ON'
GO
ALTER DATABASE [RussianCosmetics] SET QUERY_STORE = OFF
GO
USE [RussianCosmetics]
GO
/****** Object:  Table [dbo].[ClientDataFL]    Script Date: 16.06.2023 3:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDataFL](
	[codeClientFL] [nchar](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FIO] [varchar](50) NOT NULL,
	[BirthDay] [date] NOT NULL,
	[SerNumPass] [varchar](50) NOT NULL,
	[Telephone] [varchar](50) NULL,
	[Address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ClientDataFL] PRIMARY KEY CLUSTERED 
(
	[codeClientFL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientDataUL]    Script Date: 16.06.2023 3:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientDataUL](
	[codeClientUL] [nchar](10) NOT NULL,
	[CompanyName] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[INN] [varchar](50) NOT NULL,
	[CheckAcc] [varchar](50) NOT NULL,
	[BIK] [varchar](50) NOT NULL,
	[FIOSupervisor] [varchar](50) NOT NULL,
	[FIOContactPerson] [varchar](50) NOT NULL,
	[Telephone] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ClientDataUL] PRIMARY KEY CLUSTERED 
(
	[codeClientUL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 16.06.2023 3:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[id] [int] NOT NULL,
	[Position] [int] NOT NULL,
	[Login] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FIO] [varchar](50) NOT NULL,
	[LastEntry] [datetime] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesServicesOTK]    Script Date: 16.06.2023 3:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesServicesOTK](
	[EmployeesID] [int] NOT NULL,
	[ServiceOTKID] [int] NOT NULL,
 CONSTRAINT [PK_EmployeesServicesOTK] PRIMARY KEY CLUSTERED 
(
	[EmployeesID] ASC,
	[ServiceOTKID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 16.06.2023 3:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id] [int] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[LeadTimeHours] [int] NOT NULL,
	[OrderStatus] [int] NOT NULL,
	[Cost] [money] NOT NULL,
	[ClientFLID] [nchar](10) NULL,
	[ClientULID] [nchar](10) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 16.06.2023 3:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceOrder]    Script Date: 16.06.2023 3:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceOrder](
	[ServiceID] [int] NOT NULL,
	[OrderID] [int] NOT NULL,
	[StatusID] [int] NOT NULL,
 CONSTRAINT [PK_ServiceOrder] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC,
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicesOTK]    Script Date: 16.06.2023 3:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicesOTK](
	[id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Cost] [money] NOT NULL,
	[DeadLine] [int] NOT NULL,
	[Deviation] [varchar](50) NOT NULL,
	[CodeService] [varchar](50) NULL,
	[RuKoCost] [money] NULL,
 CONSTRAINT [PK_ServicesOTK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 16.06.2023 3:36:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462526  ', N'gohufreilagrau-3818@yopmail.com', N'cl12345', N'Фролов Андрей Иванович', CAST(N'2001-07-14' AS Date), N'Серия 1180 Номер 176596', N'89291234567', N'344288, г. Москва, ул. Чехова, 1, кв. 34')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462527  ', N'xawugosune-1385@yopmail.com', N'cl12346', N'Николаев Даниил Всеволодович', CAST(N'2001-02-10' AS Date), N'Серия 2280 Номер 223523', N'89291234568', N'614164, г. Москва, ул. Степная, 30, кв. 75')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462528  ', N'satrahuddusei-4458@yopmail.com', N'cl12347', N'Снегирев Макар Иванович', CAST(N'1998-05-21' AS Date), N'Серия 4560 Номер 354155', N'89291234569', N'394242, г. Москва, ул. Коммунистическая, 43, кв. 5')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462529  ', N'boippaxeufrepra-7093@yopmail.com', N'cl12348', N'Иванов Иван Ильич', CAST(N'1998-10-01' AS Date), N'Серия 9120 Номер 554296', N'89291234570', N'660540, г. Москва, ул. Солнечная, 25, кв. 78')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462530  ', N'zapramaxesu-7741@yopmail.com', N'cl12349', N'Филиппова Анна Глебовна', CAST(N'1976-05-31' AS Date), N'Серия 2367 Номер 558134', N'89291234571', N'125837, г. Москва, ул. Шоссейная, 40, кв. 92')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462531  ', N'rouzecroummegre-3899@yopmail.com', N'cl12350', N'Иванов Михаил Владимирович', CAST(N'1985-11-04' AS Date), N'Серия 7101 Номер 669343', N'89291234572', N'125703, г. Москва, ул. Партизанская, 49, кв. 84')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462532  ', N'ziyeuddocrabri-4748@yopmail.com', N'cl12351', N'Власов Дмитрий Александрович', CAST(N'1998-08-17' AS Date), N'Серия 3455 Номер 719630', N'89291234573', N'625283, г. Москва, ул. Победы, 46, кв. 7')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462533  ', N'ketameissoinnei-1951@yopmail.com', N'cl12352', N'Серова Екатерина Львовна', CAST(N'1984-10-24' AS Date), N'Серия 2377 Номер 871623', N'89291234574', N'614611, г. Москва, ул. Молодежная, 50, кв. 78')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462534  ', N'yipraubaponou-5849@yopmail.com', N'cl12353', N'Борисова Ирина Ивановна', CAST(N'1976-10-14' AS Date), N'Серия 8755 Номер 921148', N'89291234575', N'454311, г. Москва, ул. Новая, 19, кв. 78')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462535  ', N'crapedocouca-3572@yopmail.com', N'cl12354', N'Зайцев Никита Артёмович', CAST(N'1999-10-14' AS Date), N'Серия 4355 Номер 104594', N'89291234576', N'660007, г. Москва, ул. Октябрьская, 19, кв. 42')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462536  ', N'ceigoixakaunni-9227@yopmail.com', N'cl12355', N'Медведев Святослав Евгеньевич', CAST(N'1985-07-13' AS Date), N'Серия 2791 Номер 114390', N'89291234577', N'603036, г. Москва, ул. Садовая, 4, кв. 13')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462537  ', N'yeimmeiwauzomo-7054@yopmail.com', N'cl12356', N'Коротков Кирилл Алексеевич', CAST(N'1976-05-26' AS Date), N'Серия 5582 Номер 126286', N'89291234578', N'450983, г. Москва, ул. Комсомольская, 26, кв. 60')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462538  ', N'poleifenevi-1560@yopmail.com', N'cl12357', N'Калашникова Арина Максимовна', CAST(N'1999-08-13' AS Date), N'Серия 2978 Номер 133653', N'89291234579', N'394782, г. Москва, ул. Чехова, 3, кв. 14')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462539  ', N'kauprezofautei-6607@yopmail.com', N'cl12358', N'Минина Таисия Кирилловна', CAST(N'1985-10-13' AS Date), N'Серия 7512 Номер 141956', N'89291234580', N'603002, г. Москва, ул. Дзержинского, 28, кв. 56')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462540  ', N'quaffaullelourei-1667@yopmail.com', N'cl12359', N'Наумов Серафим Романович', CAST(N'1999-04-15' AS Date), N'Серия 5046 Номер 158433', N'89291234581', N'450558, г. Москва, ул. Набережная, 30, кв. 71')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462541  ', N'jsteele@rojas-robinson.net', N'cl12360', N'Воробьева Василиса Евгеньевна', CAST(N'1999-01-13' AS Date), N'Серия 2460 Номер 169505', N'89291234582', N'394060, г. Москва, ул. Фрунзе, 43, кв. 79')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462542  ', N'vhopkins@lewis-mullen.com', N'cl12361', N'Калинин Александр Андреевич', CAST(N'1999-01-07' AS Date), N'Серия 3412 Номер 174593', N'89291234583', N'410661, г. Москва, ул. Школьная, 50, кв. 53')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462543  ', N'nlewis@yahoo.com', N'cl12362', N'Кузнецова Милана Владиславовна', CAST(N'1999-01-24' AS Date), N'Серия 4950 Номер 183034', N'89291234584', N'625590, г. Москва, ул. Коммунистическая, 20, кв. 3')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462544  ', N'garciadavid@mckinney-mcbride.com', N'cl12363', N'Фирсов Егор Романович', CAST(N'1993-09-02' AS Date), N'Серия 5829 Номер 219464', N'89291234585', N'625683, г. Москва, ул. 8 Марта, 20, кв. 21')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462545  ', N'cbradley@castro.com', N'cl12364', N'Зимина Агния Александровна', CAST(N'1998-09-03' AS Date), N'Серия 6443 Номер 208059', N'89291234586', N'400562, г. Москва, ул. Зеленая, 32, кв. 67')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462546  ', N'cuevascatherine@carlson.biz', N'cl12365', N'Титов Андрей Глебович', CAST(N'1985-10-23' AS Date), N'Серия 7079 Номер 213265', N'89291234587', N'614510, г. Москва, ул. Маяковского, 47, кв. 72')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462547  ', N'thomasmoore@wilson-singh.net', N'cl12366', N'Орлов Николай Егорович', CAST(N'1985-07-27' AS Date), N'Серия 8207 Номер 522702', N'89291234588', N'410542, г. Москва, ул. Светлая, 46, кв. 82')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462548  ', N'jessica84@hotmail.com', N'cl12367', N'Кузнецова Аиша Михайловна', CAST(N'1998-10-04' AS Date), N'Серия 9307 Номер 232158', N'89291234589', N'620839, г. Москва, ул. Цветочная, 8, кв. 100')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462549  ', N'jessicapark@hotmail.com', N'cl12368', N'Куликов Никита Георгиевич', CAST(N'1999-04-23' AS Date), N'Серия 1357 Номер 242839', N'89291234590', N'443890, г. Москва, ул. Коммунистическая, 1, кв. 10')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462550  ', N'ginaritter@schneider-buchanan.com', N'cl12369', N'Карпова София Егоровна', CAST(N'1993-10-01' AS Date), N'Серия 1167 Номер 256636', N'89291234591', N'603379, г. Москва, ул. Спортивная, 46, кв. 95')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462551  ', N'stephen99@yahoo.com', N'cl12370', N'Смирнова Дарья Макаровна', CAST(N'1976-03-22' AS Date), N'Серия 1768 Номер 266986', N'89291234592', N'603721, г. Москва, ул. Гоголя, 41, кв. 57')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462552  ', N'lopezlisa@hotmail.com', N'cl12371', N'Абрамова Александра Мироновна', CAST(N'1999-03-26' AS Date), N'Серия 1710 Номер 427875', N'89291234593', N'410172, г. Москва, ул. Северная, 13, кв. 86')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462553  ', N'lori17@hotmail.com', N'cl12372', N'Наумов Руслан Михайлович', CAST(N'1999-10-11' AS Date), N'Серия 1806 Номер 289145', N'89291234594', N'420151, г. Москва, ул. Вишневая, 32, кв. 81')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462554  ', N'campbellkevin@gardner.com', N'cl12373', N'Бочаров Никита Матвеевич', CAST(N'1997-06-29' AS Date), N'Серия 1587 Номер 291249', N'89291234595', N'125061, г. Москва, ул. Подгорная, 8, кв. 74')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462555  ', N'morganhoward@clark.com', N'cl12374', N'Соловьев Давид Ильич', CAST(N'1984-03-06' AS Date), N'Серия 1647 Номер 306372', N'89291234596', N'630370, г. Москва, ул. Шоссейная, 24, кв. 81')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462556  ', N'carsontamara@gmail.com', N'cl12375', N'Васильева Валерия Дмитриевна', CAST(N'1999-09-30' AS Date), N'Серия 1742 Номер 316556', N'89291234597', N'614753, г. Москва, ул. Полевая, 35, кв. 39')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462557  ', N'kevinpatel@gmail.com', N'cl12376', N'Макарова Василиса Андреевна', CAST(N'1999-04-08' AS Date), N'Серия 1474 Номер 326347', N'89291234598', N'426030, г. Москва, ул. Маяковского, 44, кв. 93')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462558  ', N'sethbishop@yahoo.com', N'cl12377', N'Алексеев Матвей Викторович', CAST(N'1998-08-02' AS Date), N'Серия 1452 Номер 339539', N'89291234599', N'450375, г. Москва, ул. Клубная, 44, кв. 80')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462559  ', N'drollins@schultz-soto.net', N'cl12378', N'Никитина Полина Александровна', CAST(N'1976-09-19' AS Date), N'Серия 2077 Номер 443480', N'89291234600', N'625560, г. Москва, ул. Некрасова, 12, кв. 66')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462560  ', N'pblack@copeland-winters.org', N'cl12379', N'Окулова Олеся Алексеевна', CAST(N'1999-04-03' AS Date), N'Серия 2147 Номер 357518', N'89291234601', N'630201, г. Москва, ул. Комсомольская, 17, кв. 25')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462561  ', N'johnathon.oberbrunner@yahoo.com', N'cl12380', N'Захарова Полина Яновна', CAST(N'1976-04-21' AS Date), N'Серия 2687 Номер 363884', N'89291234602', N'190949, г. Москва, ул. Мичурина, 26, кв. 93')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462562  ', N'bradly29@gmail.com', N'cl12381', N'Зайцев Владимир Давидович', CAST(N'1998-01-26' AS Date), N'Серия 2376 Номер 443711', N'89291234603', N'350501, г. Москва, ул. Парковая, 2, кв. 7')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462563  ', N'stark.cristina@hilpert.biz', N'cl12382', N'Иванов Виталий Даниилович', CAST(N'1976-08-11' AS Date), N'Серия 2568 Номер 386237', N'89291234604', N'450048, г. Москва, ул. Коммунистическая, 21, кв. 3')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462564  ', N'bruen.eleanore@yahoo.com', N'cl12383', N'Захаров Матвей Романович', CAST(N'1993-07-12' AS Date), N'Серия 2556 Номер 439376', N'89291234605', N'644921, г. Москва, ул. Школьная, 46, кв. 37')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462565  ', N'percival.halvorson@yahoo.com', N'cl12384', N'Иванов Степан Степанович', CAST(N'1998-09-19' AS Date), N'Серия 2737 Номер 407501', N'89291234606', N'614228, г. Москва, ул. Дорожная, 36, кв. 54')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462566  ', N'javonte71@kuhlman.biz', N'cl12385', N'Ткачева Милана Тимуровна', CAST(N'1998-05-24' AS Date), N'Серия 2581 Номер 441645', N'89291234607', N'350940, г. Москва, ул. Первомайская, 23, кв. 2')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462567  ', N'vconnelly@kautzer.com', N'cl12386', N'Семенов Даниил Иванович', CAST(N'1976-01-04' AS Date), N'Серия 2675 Номер 427933', N'89291234608', N'344990, г. Москва, ул. Красноармейская, 19, кв. 92')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462568  ', N'anabelle07@schultz.info', N'cl12387', N'Виноградов Вячеслав Дмитриевич', CAST(N'1976-07-12' AS Date), N'Серия 2967 Номер 434531', N'89291234609', N'410248, г. Москва, ул. Чкалова, 11, кв. 75')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462569  ', N'nitzsche.katlynn@yahoo.com', N'cl12388', N'Соболева Николь Фёдоровна', CAST(N'1976-05-02' AS Date), N'Серия 3070 Номер 449655', N'89291234610', N'400839, г. Москва, ул. 8 Марта, 46, кв. 44')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462570  ', N'corine16@von.com', N'cl12389', N'Тихонова Анна Львовна', CAST(N'1985-03-23' AS Date), N'Серия 3108 Номер 451174', N'89291234611', N'450539, г. Москва, ул. Заводская, 3, кв. 81')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462571  ', N'otha.wisozk@lubowitz.org', N'cl12390', N'Кузнецова Ульяна Савельевна', CAST(N'1999-06-03' AS Date), N'Серия 3250 Номер 464705', N'89291234612', N'614591, г. Москва, ул. Цветочная, 20, кв. 40')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462572  ', N'may.kirlin@hotmail.com', N'cl12391', N'Смирнова Анна Германовна', CAST(N'1997-07-18' AS Date), N'Серия 3392 Номер 471644', N'89291234613', N'400260, г. Москва, ул. Больничная, 30, кв. 53')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462573  ', N'bryana.kautzer@yahoo.com', N'cl12392', N'Черепанова Анна Давидовна', CAST(N'1985-11-06' AS Date), N'Серия 3497 Номер 487819', N'89291234614', N'660924, г. Москва, ул. Молодежная, 32, кв. 59')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462574  ', N'deborah.christiansen@quigley.biz', N'cl12393', N'Григорьев Максим Кириллович', CAST(N'1999-05-26' AS Date), N'Серия 3560 Номер 491260', N'89291234615', N'644133, г. Москва, ул. Гагарина, 28, кв. 69')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462575  ', N'connelly.makayla@yahoo.com', N'cl12394', N'Голубев Даниэль Александрович', CAST(N'1999-06-14' AS Date), N'Серия 3620 Номер 506034', N'89291234616', N'450698, г. Москва, ул. Вокзальная, 14, кв. 37')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462576  ', N'tatum.collins@fay.org', N'cl12395', N'Миронов Юрий Денисович', CAST(N'1985-01-26' AS Date), N'Серия 3774 Номер 511438', N'89291234617', N'620653, г. Москва, ул. Западная, 15, кв. 25')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462577  ', N'itzel73@anderson.com', N'cl12396', N'Терехов Михаил Андреевич', CAST(N'1976-07-06' AS Date), N'Серия 3862 Номер 521377', N'89291234618', N'644321, г. Москва, ул. Клубная, 32, кв. 10')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462578  ', N'arjun39@hotmail.com', N'cl12397', N'Орлова Алиса Михайловна', CAST(N'1997-02-24' AS Date), N'Серия 3084 Номер 535966', N'89291234619', N'603653, г. Москва, ул. Молодежная, 2, кв. 45')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462579  ', N'ohara.rebeka@yahoo.com', N'cl12398', N'Кулаков Константин Даниилович', CAST(N'1993-06-20' AS Date), N'Серия 4021 Номер 541528', N'89291234620', N'410181, г. Москва, ул. Механизаторов, 16, кв. 74')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462580  ', N'danika58@rath.com', N'cl12399', N'Кудрявцев Максим Романович', CAST(N'1998-05-10' AS Date), N'Серия 4109 Номер 554053', N'89291234621', N'394207, г. Москва, ул. Свердлова, 31, кв. 28')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462581  ', N'janae.bogan@gmail.com', N'cl12400', N'Соболева Кира Фёдоровна', CAST(N'1998-03-14' AS Date), N'Серия 4537 Номер 564868', N'89291234622', N'420633, г. Москва, ул. Матросова, 18, кв. 41')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462582  ', N'vern91@yahoo.com', N'cl12401', N'Коновалов Арсений Максимович', CAST(N'1985-02-18' AS Date), N'Серия 4914 Номер 572471', N'89291234623', N'445720, г. Москва, ул. Матросова, 50, кв. 67')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462583  ', N'mariana.leannon@larkin.net', N'cl12402', N'Гусев Михаил Дмитриевич', CAST(N'1999-11-23' AS Date), N'Серия 4445 Номер 581302', N'89291234624', N'400646, г. Москва, ул. Октябрьская, 47, кв. 65')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462584  ', N'vmoore@gmail.com', N'cl12403', N'Суханова Варвара Матвеевна', CAST(N'1993-09-13' AS Date), N'Серия 4743 Номер 598180', N'89291234625', N'644410, г. Москва, ул. Красная, 17, кв. 69')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462585  ', N'damon.mcclure@mills.com', N'cl12404', N'Орлова Ясмина Васильевна', CAST(N'1984-06-24' AS Date), N'Серия 4741 Номер 601821', N'89291234626', N'400750, г. Москва, ул. Школьная, 36, кв. 71')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462586  ', N'grady.reilly@block.com', N'cl12405', N'Васильева Ксения Константиновна', CAST(N'1999-08-01' AS Date), N'Серия 4783 Номер 612567', N'89291234627', N'660590, г. Москва, ул. Дачная, 37, кв. 70')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462587  ', N'boyd.koss@yahoo.com', N'cl12406', N'Борисова Тамара Данииловна', CAST(N'1993-05-29' AS Date), N'Серия 4658 Номер 621200', N'89291234628', N'426083, г. Москва, ул. Механизаторов, 41, кв. 26')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462588  ', N'obartell@franecki.info', N'cl12407', N'Дмитриев Мирон Ильич', CAST(N'1985-04-13' AS Date), N'Серия 4908 Номер 634613', N'89291234629', N'410569, г. Москва, ул. Парковая, 36, кв. 17')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462589  ', N'reina75@ferry.net', N'cl12408', N'Лебедева Анна Александровна', CAST(N'1985-03-30' AS Date), N'Серия 5092 Номер 642468', N'89291234630', N'443375, г. Москва, ул. Дзержинского, 50, кв. 95')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462590  ', N'karson28@hotmail.com', N'cl12409', N'Пономарев Артём Маркович', CAST(N'1984-06-02' AS Date), N'Серия 5155 Номер 465274', N'89291234631', N'614316, г. Москва, ул. Первомайская, 48, кв. 31')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462591  ', N'damaris61@okon.com', N'cl12410', N'Борисова Елена Михайловна', CAST(N'1976-05-23' AS Date), N'Серия 5086 Номер 666893', N'89291234632', N'445685, г. Москва, ул. Зеленая, 7, кв. 47')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462592  ', N'carroll.jerod@hotmail.com', N'cl12411', N'Моисеев Камиль Максимович', CAST(N'1999-06-17' AS Date), N'Серия 5333 Номер 675375', N'89291234633', N'614505, г. Москва, ул. Нагорная, 37, кв. 31')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462593  ', N'ron.treutel@quitzon.com', N'cl12412', N'Герасимова Дарья Константиновна', CAST(N'1984-10-13' AS Date), N'Серия 5493 Номер 684572', N'89291234634', N'426629, г. Москва, ул. Весенняя, 32, кв. 46')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462594  ', N'olen79@yahoo.com', N'cl12413', N'Михайлова Мария Марковна', CAST(N'1976-12-02' AS Date), N'Серия 5150 Номер 696226', N'89291234635', N'603743, г. Москва, ул. Матросова, 19, кв. 20')
INSERT [dbo].[ClientDataFL] ([codeClientFL], [Email], [Password], [FIO], [BirthDay], [SerNumPass], [Telephone], [Address]) VALUES (N'45462595  ', N'pacocha.robbie@yahoo.com', N'cl12414', N'Коршунов Кирилл Максимович', CAST(N'1985-05-22' AS Date), N'Серия 1308 Номер 703305', N'89291234636', N'450750, г. Москва, ул. Клубная, 23, кв. 90')
GO
INSERT [dbo].[ClientDataUL] ([codeClientUL], [CompanyName], [Address], [INN], [CheckAcc], [BIK], [FIOSupervisor], [FIOContactPerson], [Telephone], [Email], [Password]) VALUES (N'34yy32    ', N'ПК «Парфюм Стиль»', N'МО, Королев, Партизана Германа ул, 67', N'7955555572', N'78123723992', N'402000227', N'Иванова Анна Александровна', N'Пономарева Валерия Ивановна', N'31(57)181-23-30334', N'bartlett@att.net', N'UL1238')
INSERT [dbo].[ClientDataUL] ([codeClientUL], [CompanyName], [Address], [INN], [CheckAcc], [BIK], [FIOSupervisor], [FIOContactPerson], [Telephone], [Email], [Password]) VALUES (N'37728     ', N'ООО «ВДС-Ступино»', N'МО, Ступино, Космонавтов ул, 54', N'7922424472', N'78899678892', N'445982837', N'Седов Тимур Матвеевич', N'Сычева Надежда Артёмовна', N'0(601)740-14-66478', N'kassiesa@aol.com', N'UL1237')
INSERT [dbo].[ClientDataUL] ([codeClientUL], [CompanyName], [Address], [INN], [CheckAcc], [BIK], [FIOSupervisor], [FIOContactPerson], [Telephone], [Email], [Password]) VALUES (N'873       ', N'ООО «КоролевФарм»', N'МО, Королев, ДК Кирова, 28', N'7922985472', N'70989678892', N'408288227', N'Молчанова Елизавета Руслановна', N'Козловская София Данииловна', N'3(2113)599-96-85099', N'alias@sbcglobal.net', N'UL1239')
INSERT [dbo].[ClientDataUL] ([codeClientUL], [CompanyName], [Address], [INN], [CheckAcc], [BIK], [FIOSupervisor], [FIOContactPerson], [Telephone], [Email], [Password]) VALUES (N'8739      ', N'Nicole laboratory', N'МО, Ногинск, Заводская ул, 34', N'7927425472', N'78122378892', N'493993327', N'Дементьев Ярослав Георгиевич', N'Розанова Камила Максимовна', N'2(63)151-61-70518', N'stecoop@yahoo.com', N'UL1236')
INSERT [dbo].[ClientDataUL] ([codeClientUL], [CompanyName], [Address], [INN], [CheckAcc], [BIK], [FIOSupervisor], [FIOContactPerson], [Telephone], [Email], [Password]) VALUES (N'fj23      ', N'ООО «Коконат»', N'МО, Чехов, Минская ул, 128', N'7934728472', N'78123678842', N'445622227', N'Орлова Татьяна Мироновна', N'Демидов Дмитрий Глебович', N'33(5855)767-28-30549', N'tezbo@mac.com', N'UL1235')
INSERT [dbo].[ClientDataUL] ([codeClientUL], [CompanyName], [Address], [INN], [CheckAcc], [BIK], [FIOSupervisor], [FIOContactPerson], [Telephone], [Email], [Password]) VALUES (N'hh123     ', N'ЗАО"Русская косметика"', N'МО, Одинцово, Ворошилова ул, 153', N'7927728472', N'78123678892', N'445334327', N'Харитонова Ева Адамовна', N'Кузнецов Александр Сергеевич', N'16(7185)250-54-23556', N'dcoppit@mac.com', N'UL1234')
INSERT [dbo].[ClientDataUL] ([codeClientUL], [CompanyName], [Address], [INN], [CheckAcc], [BIK], [FIOSupervisor], [FIOContactPerson], [Telephone], [Email], [Password]) VALUES (N'ue378     ', N'ГК Коттон Клаб', N'МО, Одинцово, 9 Января, 298', N'7929388332', N'73626626892', N'445639927', N'Софронов Фёдор Иванович', N'Зубкова Василиса Петровна', N'73(5598)021-52-52563', N'research@sbcglobal.net', N'UL1240')
GO
INSERT [dbo].[Employees] ([id], [Position], [Login], [Password], [FIO], [LastEntry]) VALUES (101, 3, N'ivanov@namecomp.ru', N'2L6KZG', N'Иванов Иван Иванович', CAST(N'2022-05-15T13:13:00.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [Position], [Login], [Password], [FIO], [LastEntry]) VALUES (102, 3, N'petrov@namecomp.ru', N'uzWC67', N'Петров Петр Петрович', CAST(N'2022-05-15T13:13:01.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [Position], [Login], [Password], [FIO], [LastEntry]) VALUES (103, 4, N'fedorov@namecomp.ru', N'8ntwUp', N'Федоров Федор Федорович', CAST(N'2022-05-15T13:13:02.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [Position], [Login], [Password], [FIO], [LastEntry]) VALUES (104, 1, N'mironov@namecomp.ru', N'YOyhfR', N'Миронов Вениамин Куприянович', CAST(N'2022-05-15T13:13:03.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [Position], [Login], [Password], [FIO], [LastEntry]) VALUES (105, 1, N'shiryev@namecomp.ru', N'RSbvHv', N'Ширяев Ермолай Вениаминович', CAST(N'2022-05-15T13:13:04.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [Position], [Login], [Password], [FIO], [LastEntry]) VALUES (106, 1, N'ignatov@namecomp.ru', N'rwVDh9', N'Игнатов Кассиан Васильевич', CAST(N'2022-05-15T13:13:05.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [Position], [Login], [Password], [FIO], [LastEntry]) VALUES (107, 5, N'hohlov@namecomp.ru', N'LdNyos', N'Хохлов Владимир Мэлсович', CAST(N'2022-05-15T13:13:06.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [Position], [Login], [Password], [FIO], [LastEntry]) VALUES (108, 4, N'strelkov@namecomp.ru', N'gynQMT', N'Стрелков Мстислав Георгьевич', CAST(N'2022-05-15T13:13:07.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [Position], [Login], [Password], [FIO], [LastEntry]) VALUES (109, 2, N'belyeva@@namecomp.ru', N'AtnDjr', N'Беляева Лилия Наумовна', CAST(N'2022-05-15T13:13:08.000' AS DateTime))
INSERT [dbo].[Employees] ([id], [Position], [Login], [Password], [FIO], [LastEntry]) VALUES (110, 2, N'smirnova@@namecomp.ru', N'JlFRCZ', N'Смирнова Ульяна Гордеевна', CAST(N'2022-05-15T13:13:09.000' AS DateTime))
GO
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (104, 31)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (104, 34)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (104, 336)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (104, 353)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (105, 45)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (105, 89)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (105, 98)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (105, 99)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (105, 123)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (106, 45)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (106, 57)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (106, 88)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (106, 92)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (109, 44)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (109, 45)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (109, 57)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (109, 88)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (109, 92)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (110, 34)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (110, 45)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (110, 89)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (110, 98)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (110, 336)
INSERT [dbo].[EmployeesServicesOTK] ([EmployeesID], [ServiceOTKID]) VALUES (110, 353)
GO
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (1, CAST(N'2022-03-12' AS Date), 78, 1, 12000.0000, N'45462527  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (2, CAST(N'2022-03-13' AS Date), 16, 2, 12100.0000, N'45462528  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (3, CAST(N'2022-03-14' AS Date), 28, 2, 12200.0000, N'45462529  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (4, CAST(N'2022-03-15' AS Date), 20, 1, 12300.0000, N'45462530  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (5, CAST(N'2022-03-16' AS Date), 72, 3, 12400.0000, N'45462531  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (6, CAST(N'2022-03-17' AS Date), 8, 1, 12500.0000, N'45462532  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (7, CAST(N'2022-03-18' AS Date), 48, 1, 12600.0000, N'45462533  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (8, CAST(N'2022-03-19' AS Date), 48, 2, 12700.0000, N'45462534  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (9, CAST(N'2022-03-20' AS Date), 78, 2, 12800.0000, NULL, N'hh123     ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (10, CAST(N'2022-03-21' AS Date), 16, 1, 12900.0000, NULL, N'fj23      ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (11, CAST(N'2022-03-22' AS Date), 78, 3, 13000.0000, NULL, N'8739      ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (12, CAST(N'2022-03-23' AS Date), 160, 2, 13100.0000, NULL, N'37728     ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (13, CAST(N'2022-03-24' AS Date), 28, 2, 13200.0000, NULL, N'34yy32    ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (14, CAST(N'2022-03-25' AS Date), 20, 2, 13300.0000, NULL, N'873       ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (15, CAST(N'2022-03-26' AS Date), 72, 3, 13400.0000, NULL, N'ue378     ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (16, CAST(N'2022-03-27' AS Date), 8, 1, 13500.0000, N'45462542  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (17, CAST(N'2022-03-28' AS Date), 48, 2, 13600.0000, N'45462543  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (18, CAST(N'2022-03-29' AS Date), 48, 2, 13700.0000, N'45462531  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (19, CAST(N'2022-03-30' AS Date), 78, 1, 13800.0000, N'45462532  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (20, CAST(N'2022-03-31' AS Date), 16, 1, 13900.0000, N'45462533  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (21, CAST(N'2022-04-01' AS Date), 78, 3, 14000.0000, N'45462534  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (22, CAST(N'2022-04-02' AS Date), 16, 1, 14100.0000, N'45462535  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (23, CAST(N'2022-04-03' AS Date), 28, 1, 14200.0000, NULL, N'hh123     ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (24, CAST(N'2022-04-04' AS Date), 20, 2, 14300.0000, NULL, N'fj23      ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (25, CAST(N'2022-04-05' AS Date), 72, 2, 14400.0000, NULL, N'8739      ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (26, CAST(N'2022-04-06' AS Date), 8, 2, 14500.0000, NULL, N'37728     ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (27, CAST(N'2022-04-07' AS Date), 48, 2, 14600.0000, NULL, N'34yy32    ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (28, CAST(N'2022-04-08' AS Date), 48, 3, 14700.0000, NULL, N'873       ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (29, CAST(N'2022-04-09' AS Date), 78, 1, 14800.0000, NULL, N'ue378     ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (30, CAST(N'2022-04-10' AS Date), 16, 2, 14900.0000, N'45462556  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (31, CAST(N'2022-04-11' AS Date), 78, 2, 15000.0000, N'45462557  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (32, CAST(N'2022-04-12' AS Date), 16, 1, 15100.0000, N'45462558  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (33, CAST(N'2022-04-13' AS Date), 28, 1, 15200.0000, N'45462559  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (34, CAST(N'2022-04-14' AS Date), 20, 1, 15300.0000, N'45462579  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (35, CAST(N'2022-04-15' AS Date), 72, 2, 15400.0000, N'45462580  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (36, CAST(N'2022-04-16' AS Date), 8, 2, 15500.0000, N'45462581  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (37, CAST(N'2022-04-17' AS Date), 48, 2, 15600.0000, N'45462582  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (38, CAST(N'2022-04-18' AS Date), 48, 3, 15700.0000, NULL, N'hh123     ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (39, CAST(N'2022-04-19' AS Date), 78, 2, 15800.0000, NULL, N'fj23      ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (40, CAST(N'2022-04-20' AS Date), 16, 1, 15900.0000, NULL, N'8739      ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (41, CAST(N'2022-04-21' AS Date), 78, 3, 16000.0000, NULL, N'37728     ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (42, CAST(N'2022-04-22' AS Date), 16, 2, 16100.0000, NULL, N'34yy32    ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (43, CAST(N'2022-04-23' AS Date), 28, 2, 16200.0000, NULL, N'873       ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (44, CAST(N'2022-04-24' AS Date), 20, 2, 16300.0000, NULL, N'ue378     ')
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (45, CAST(N'2022-04-25' AS Date), 72, 2, 16400.0000, N'45462534  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (46, CAST(N'2022-04-26' AS Date), 8, 2, 16500.0000, N'45462535  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (47, CAST(N'2022-04-27' AS Date), 48, 3, 16600.0000, N'45462536  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (48, CAST(N'2022-04-28' AS Date), 48, 1, 16700.0000, N'45462537  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (49, CAST(N'2022-04-29' AS Date), 78, 1, 16800.0000, N'45462575  ', NULL)
INSERT [dbo].[Order] ([id], [CreateDate], [LeadTimeHours], [OrderStatus], [Cost], [ClientFLID], [ClientULID]) VALUES (50, CAST(N'2022-04-30' AS Date), 16, 1, 16900.0000, N'45462576  ', NULL)
GO
INSERT [dbo].[Position] ([id], [Name]) VALUES (1, N'Лаборант')
INSERT [dbo].[Position] ([id], [Name]) VALUES (2, N'Контролер ОТК')
INSERT [dbo].[Position] ([id], [Name]) VALUES (3, N'Менеджер по работе с клиентами')
INSERT [dbo].[Position] ([id], [Name]) VALUES (4, N'Администратор')
INSERT [dbo].[Position] ([id], [Name]) VALUES (5, N'Начальник ОТК')
GO
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (31, 1, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (31, 6, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (31, 11, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (31, 16, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (31, 21, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (31, 26, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (31, 31, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (31, 36, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (31, 41, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (31, 46, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (34, 1, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (34, 5, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (34, 6, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (34, 11, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (34, 16, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (34, 21, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (34, 26, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (34, 31, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (34, 36, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (34, 41, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (34, 46, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (44, 4, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 2, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 3, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 4, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 5, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 7, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 8, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 9, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 10, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 12, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 13, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 14, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 15, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 17, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 18, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 19, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 20, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 22, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 23, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 24, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 25, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 27, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 28, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 29, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 30, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 32, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 33, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 34, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 35, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 37, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 38, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 39, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 40, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 42, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 43, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 44, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 45, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 47, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 48, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 49, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (45, 50, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 3, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 4, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 8, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 9, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 13, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 14, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 18, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 19, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 23, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 24, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 28, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 29, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 33, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 34, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 38, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 39, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 43, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 44, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 48, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (57, 49, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (88, 3, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (88, 4, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (88, 9, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (88, 14, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (88, 19, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (88, 24, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (88, 29, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (88, 34, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (88, 39, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (88, 44, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (88, 49, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 2, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 5, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 7, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 8, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 10, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 12, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 15, 3)
GO
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 17, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 20, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 22, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 25, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 27, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 30, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 32, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 35, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 37, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 40, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 42, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 45, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 47, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (89, 50, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 3, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 4, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 8, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 9, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 13, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 14, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 18, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 19, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 23, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 24, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 28, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 29, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 33, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 34, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 38, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 39, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 43, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 44, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 48, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (92, 49, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 2, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 5, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 7, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 10, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 12, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 15, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 17, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 20, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 22, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 25, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 27, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 30, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 32, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 35, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 37, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 40, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 42, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 45, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 47, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (98, 50, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (99, 2, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (99, 7, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (99, 12, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (99, 17, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (99, 22, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (99, 27, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (99, 32, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (99, 37, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (99, 42, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (99, 47, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (123, 2, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (336, 1, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (336, 5, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (336, 10, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (336, 15, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (336, 20, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (336, 25, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (336, 30, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (336, 35, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (336, 40, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (336, 45, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (336, 50, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 1, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 5, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 6, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 10, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 11, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 15, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 16, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 20, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 21, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 25, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 26, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 30, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 31, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 35, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 36, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 40, 1)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 41, 3)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 45, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 46, 2)
INSERT [dbo].[ServiceOrder] ([ServiceID], [OrderID], [StatusID]) VALUES (353, 50, 1)
GO
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (31, N'Содержание ртути', 24000.0000, 10, N'0.06', N'JUR8R', 930.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (34, N'Содержание хлора', 32000.0000, 2, N'0.011', N'JKFBJ09', 450.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (44, N'Проверка на высоких температурах', 100000.0000, 5, N'1 градус', N'DHBGFY563', 12000.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (45, N'Содержание аллергенов', 30000.0000, 13, N'0.01', N'JFH7382', 3000.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (57, N'Проверка на высоких температурах', 100000.0000, 48, N'1 градус', N'JHVSJF6', 12000.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (88, N'Герметичность упаковки', 6000.0000, 4, N'0.03', N'DJHGBS982', 300.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (89, N'Однородность состава', 23000.0000, 24, N'0.01', N'OIJNB12', 450.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (92, N'Соответствие состава ТУ', 15000.0000, 12, N'0.05', N'HJBUJE21J', 1000.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (98, N'Проверка концентрации основного компонента', 23000.0000, 23, N'0.012', N'63748HF', 1200.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (99, N'Соответствие состава ГОСТ', 12000.0000, 36, N'0.05', N'BSFBHV63', 1000.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (123, N'Соответствие срокам годности', 10000.0000, 6, N'1 мес', N'638VVNQ3', 600.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (336, N'Содержание хрома', 12000.0000, 12, N'0.04', N'8HFJHG443', 1100.0000)
INSERT [dbo].[ServicesOTK] ([id], [Name], [Cost], [DeadLine], [Deviation], [CodeService], [RuKoCost]) VALUES (353, N'Содержание никеля', 24000.0000, 72, N'0.012', N'87FDJKHJ', 800.0000)
GO
INSERT [dbo].[Status] ([id], [Name]) VALUES (1, N'Новый')
INSERT [dbo].[Status] ([id], [Name]) VALUES (2, N'На исследовании')
INSERT [dbo].[Status] ([id], [Name]) VALUES (3, N'Закрыта')
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Position] FOREIGN KEY([Position])
REFERENCES [dbo].[Position] ([id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Position]
GO
ALTER TABLE [dbo].[EmployeesServicesOTK]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesServicesOTK_Employees] FOREIGN KEY([EmployeesID])
REFERENCES [dbo].[Employees] ([id])
GO
ALTER TABLE [dbo].[EmployeesServicesOTK] CHECK CONSTRAINT [FK_EmployeesServicesOTK_Employees]
GO
ALTER TABLE [dbo].[EmployeesServicesOTK]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesServicesOTK_ServicesOTK] FOREIGN KEY([ServiceOTKID])
REFERENCES [dbo].[ServicesOTK] ([id])
GO
ALTER TABLE [dbo].[EmployeesServicesOTK] CHECK CONSTRAINT [FK_EmployeesServicesOTK_ServicesOTK]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_ClientDataFL] FOREIGN KEY([ClientFLID])
REFERENCES [dbo].[ClientDataFL] ([codeClientFL])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_ClientDataFL]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_ClientDataUL] FOREIGN KEY([ClientULID])
REFERENCES [dbo].[ClientDataUL] ([codeClientUL])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_ClientDataUL]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([OrderStatus])
REFERENCES [dbo].[Status] ([id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[ServiceOrder]  WITH CHECK ADD  CONSTRAINT [FK_ServiceOrder_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([id])
GO
ALTER TABLE [dbo].[ServiceOrder] CHECK CONSTRAINT [FK_ServiceOrder_Order]
GO
ALTER TABLE [dbo].[ServiceOrder]  WITH CHECK ADD  CONSTRAINT [FK_ServiceOrder_ServicesOTK] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[ServicesOTK] ([id])
GO
ALTER TABLE [dbo].[ServiceOrder] CHECK CONSTRAINT [FK_ServiceOrder_ServicesOTK]
GO
ALTER TABLE [dbo].[ServiceOrder]  WITH CHECK ADD  CONSTRAINT [FK_ServiceOrder_Status] FOREIGN KEY([StatusID])
REFERENCES [dbo].[Status] ([id])
GO
ALTER TABLE [dbo].[ServiceOrder] CHECK CONSTRAINT [FK_ServiceOrder_Status]
GO
USE [master]
GO
ALTER DATABASE [RussianCosmetics] SET  READ_WRITE 
GO
