use [Test]
BULK INSERT [Вагон]
	FROM '?C:\Users\Mark\Desktop\add.txt'
	WITH (
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n')
 GO

use [Test]
SELECT * INTO Вагон1 FROM Вагон
WHERE [Код_вагона] <= 3
GO

use [Test]
SELECT * INTO Вагон2 FROM Вагон
WHERE [Код_вагона] >= 3
GO

use [TEST]
SELECT * FROM dbo.Вагон1
UNION
SELECT * FROM dbo.Вагон2
GO

use[Test]
SELECT * FROM [Вагон1] WHERE
[Код_вагона] IN (SELECT [Код_вагона] FROM [Вагон2])
GO

use[Test]
SELECT * FROM [Вагон1], [Вагон2]
GO

