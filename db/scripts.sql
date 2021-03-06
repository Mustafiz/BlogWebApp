USE [blog_db]
GO
/****** Object:  Table [dbo].[t_article]    Script Date: 3/17/2015 11:26:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_article](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [varchar](200) NOT NULL,
	[body] [text] NOT NULL,
	[author] [varchar](100) NOT NULL,
	[created_date]  AS (getdate()),
 CONSTRAINT [PK_t_table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
