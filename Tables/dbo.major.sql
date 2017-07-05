SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[major] (
		[major_id]       [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[major_code]     [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
		[descripton]     [text] COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[major]
	WITH CHECK
	ADD CONSTRAINT [FK_major_student_major]
	FOREIGN KEY ([major_id]) REFERENCES [dbo].[student_major] ([major_id])
ALTER TABLE [dbo].[major]
	CHECK CONSTRAINT [FK_major_student_major]

GO
ALTER TABLE [dbo].[major] SET (LOCK_ESCALATION = TABLE)
GO
