USE [TEST]
GO
alter table dbo.Пасажир
add Вік INT 
GO

USE [TEST]
GO
alter table dbo.Пасажир
alter column "Прізвище_пасажира " CHAR(25) NULL
GO

USE [Test]
GO
alter table dbo.Пасажир
drop column Вік
GO
