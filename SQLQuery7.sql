SELECT * FROM ������� ORDER BY ���_�������� ASC

SELECT ���_������, COUNT(�������.���_��������)as ���_������
FROM �������,�����
WHERE 
�������.���_�������� = �����.���_������
GROUP BY ���_������
