SELECT Тип_вагона, COUNT(Код_вагона) as Імя_пасажира
FROM Пасажир INNER JOIN Вагон
ON Пасажир.Код_пасажира = Вагон.Код_вагона
GROUP BY Тип_вагона

SELECT YEAR(Дата_виготовлення) as Рік, COUNT(Пасажир.Код_пасажира) as Кількість_вагонів
FROM Вагон INNER JOIN Пасажир
ON Вагон.Код_вагона = Пасажир.Код_пасажира
GROUP BY YEAR(Дата_виготовлення)

USE [Test]
SELECT AVG(DATEDIFF(YEAR, Вік , CURRENT_TIMESTAMP)) as [Середній вік]
, Імя_пасажира
FROM Пасажир
GROUP BY Імя_пасажира

SELECT TOP 1 DATEDIFF(YEAR, Вік, CURRENT_TIMESTAMP) as Вік,
Імя_пасажира,Прізвище_пасажира
FROM Пасажир ORDER BY Вік DESC
