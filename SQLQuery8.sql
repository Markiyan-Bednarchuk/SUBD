SELECT ���_������, COUNT(���_������) as ���_��������
FROM ������� INNER JOIN �����
ON �������.���_�������� = �����.���_������
GROUP BY ���_������

SELECT YEAR(����_������������) as г�, COUNT(�������.���_��������) as ʳ������_������
FROM ����� INNER JOIN �������
ON �����.���_������ = �������.���_��������
GROUP BY YEAR(����_������������)

USE [Test]
SELECT AVG(DATEDIFF(YEAR, ³� , CURRENT_TIMESTAMP)) as [������� ��]
, ���_��������
FROM �������
GROUP BY ���_��������

SELECT TOP 1 DATEDIFF(YEAR, ³�, CURRENT_TIMESTAMP) as ³�,
���_��������,�������_��������
FROM ������� ORDER BY ³� DESC
