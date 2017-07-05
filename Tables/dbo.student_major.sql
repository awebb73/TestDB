SET ANSI_NULLS ON
SET QUOTED_IDENTIFIER ON
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[student_major] (
		[student_id]     [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		[major_id]       [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
		CONSTRAINT [PK_student_major]
		PRIMARY KEY
		CLUSTERED
		([major_id])
	ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[student_major]
	WITH CHECK
	ADD CONSTRAINT [FK_student_major_Student]
	FOREIGN KEY ([student_id]) REFERENCES [dbo].[Student] ([student_id])
ALTER TABLE [dbo].[student_major]
	CHECK CONSTRAINT [FK_student_major_Student]

GO
CREATE NONCLUSTERED INDEX [IX_student_major]
	ON [dbo].[student_major] ([student_id])
	ON [PRIMARY]
GO
ALTER TABLE [dbo].[student_major] SET (LOCK_ESCALATION = TABLE)
GO
