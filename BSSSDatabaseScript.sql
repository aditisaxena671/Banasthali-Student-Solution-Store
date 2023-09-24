SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Found_item](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_name] [varchar](50) NOT NULL,
	[Product_description] [varchar](max) NOT NULL,
	[Place] [varchar](100) NOT NULL,
	[Product_image] [varchar](100) NULL,
	[Date_time] [varchar](50) NOT NULL,
	[Student_id] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lost_item](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_name] [varchar](50) NOT NULL,
	[Product_description] [varchar](max) NOT NULL,
	[Place] [varchar](100) NOT NULL,
	[Product_image] [varchar](100) NULL,
	[Date_time] [varchar](50) NOT NULL,
	[Student_id] [int] NOT NULL,
 CONSTRAINT [PK_Lost_item] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notice](
	[Notice_id] [int] IDENTITY(1,1) NOT NULL,
	[Notice_title] [varchar](50) NOT NULL,
	[Notice_type] [int] NOT NULL,
	[Notice_details] [varchar](max) NOT NULL,
	[Notice_issue_date] [varchar](50) NOT NULL,
	[Event_venue] [varchar](50) NULL,
	[Event_date] [varchar](50) NULL,
 CONSTRAINT [PK_Notice] PRIMARY KEY CLUSTERED 
(
	[Notice_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_id] [int] IDENTITY(1,1) NOT NULL,
	[Product_name] [varchar](50) NOT NULL,
	[Product_description] [varchar](max) NOT NULL,
	[Product_price] [int] NOT NULL,
	[Product_image] [varchar](100) NULL,
	[Product_bill] [varchar](100) NULL,
	[Product_age] [int] NULL,
	[Product_Category] [varchar](50) NOT NULL,
	[Seller_Contact] [varchar](50) NOT NULL,
	[Seller_id] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[Service_id] [int] IDENTITY(1,1) NOT NULL,
	[Service_name] [varchar](50) NOT NULL,
	[Service_description] [varchar](max) NOT NULL,
	[Service_cost] [int] NOT NULL,
	[Service_status] [int] NOT NULL,
	[Past_work] [varchar](50) NULL,
	[Certificates] [varchar](50) NULL,
	[Provider_id] [int] NOT NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[Service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Student_id] [int] IDENTITY(1,1) NOT NULL,
	[Student_college_id] [varchar](15) NOT NULL,
	[Student_name] [varchar](50) NOT NULL,
	[Student_email] [varchar](50) NOT NULL,
	[Student_password] [varchar](50) NOT NULL,
	[Student_contact] [bigint] NOT NULL,
	[Student_image] [varchar](100) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Student_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
