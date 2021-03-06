USE [USCountyBusinessPatternsStaging]
GO
/****** Object:  Table [dbo].[CountyBusinessPattern]    Script Date: 10/31/2013 1:57:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CountyBusinessPattern](
	[CountyBusinessPatternId] [int] IDENTITY(1,1) NOT NULL,
	[fipstate] [varchar](50) NULL,
	[fipscty] [varchar](50) NULL,
	[naics] [varchar](50) NULL,
	[empflag] [varchar](50) NULL,
	[emp_nf] [varchar](50) NULL,
	[emp] [varchar](50) NULL,
	[qp1_nf] [varchar](50) NULL,
	[qp1] [varchar](50) NULL,
	[ap_nf] [varchar](50) NULL,
	[ap] [varchar](50) NULL,
	[est] [varchar](50) NULL,
	[n1_4] [varchar](50) NULL,
	[n5_9] [varchar](50) NULL,
	[n10_19] [varchar](50) NULL,
	[n20_49] [varchar](50) NULL,
	[n50_99] [varchar](50) NULL,
	[n100_249] [varchar](50) NULL,
	[n250_499] [varchar](50) NULL,
	[n500_999] [varchar](50) NULL,
	[n1000] [varchar](50) NULL,
	[n1000_1] [varchar](50) NULL,
	[n1000_2] [varchar](50) NULL,
	[n1000_3] [varchar](50) NULL,
	[n1000_4] [varchar](50) NULL,
	[censtate] [varchar](50) NULL,
	[cencty] [varchar](50) NULL,
	[year] [varchar](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountyBusinessPatternId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[Naics]    Script Date: 10/31/2013 1:57:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Naics](
	[NaicsId] [int] IDENTITY(1,1) NOT NULL,
	[Naics] [varchar](50) NULL,
	[Description] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[NaicsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[NaicsTemp]    Script Date: 10/31/2013 1:57:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NaicsTemp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Naics] [varchar](50) NULL,
	[Description] [varchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
/****** Object:  Table [dbo].[StateCounty]    Script Date: 10/31/2013 1:57:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StateCounty](
	[StateCountyId] [int] IDENTITY(1,1) NOT NULL,
	[FipState] [char](2) NULL,
	[FipsCty] [char](3) NULL,
	[CtyName] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[StateCountyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING ON
GO
