USE [OgreciTakip]
GO

drop table Student

CREATE TABLE [dbo].[Student](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[Age] [int] NULL,
	[ClassRoom] [varchar](50) NULL,	
	[ClassFloor] int NULL,	
	[ClassCapacity] int NULL,

 CONSTRAINT [PK_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO




create table DenemeTablo(
	Id int,
	Name varchar(50),
	Surame varchar(50)
);


drop table DenemeTablo




--delete from Student where Id = 5

--delete from Student

--insert into Student values('serkan','kumru',22,'202')

--truncate table student
