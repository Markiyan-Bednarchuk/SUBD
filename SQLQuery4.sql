use [Test]
BULK INSERT [�����]
	FROM '?C:\Users\Mark\Desktop\add.txt'
	WITH (
	FIELDTERMINATOR = '\t',
	ROWTERMINATOR = '\n')
 GO

use [Test]
SELECT * INTO �����1 FROM �����
WHERE [���_������] <= 3
GO

use [Test]
SELECT * INTO �����2 FROM �����
WHERE [���_������] >= 3
GO

use [TEST]
SELECT * FROM dbo.�����1
UNION
SELECT * FROM dbo.�����2
GO

use[Test]
SELECT * FROM [�����1] WHERE
[���_������] IN (SELECT [���_������] FROM [�����2])
GO

use[Test]
SELECT * FROM [�����1], [�����2]
GO

