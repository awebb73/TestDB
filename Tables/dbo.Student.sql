SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Student] (
		[student_id]     [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[first_name]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[last_name]      [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[gender]         [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_Student]
		PRIMARY KEY
		CLUSTERED
		([student_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student] SET (LOCK_ESCALATION = TABLE)
GO
