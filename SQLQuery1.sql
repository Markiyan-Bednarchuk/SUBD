CREATE TABLE �����(
	���_������ INTEGER NOT NULL,
	��� CHAR(15) NOT NULL,
	������� CHAR(20) NOT NULL,
	������� INTEGER,
	����������_������ VARCHAR(30) NOT NULL,
	����_���������� DATE NOT NULL,
	̳��� CHAR(20) NOT NULL,
	������ CHAR(20) NOT NULL,
	������� CHAR(6) NOT NULL,
	���������� CHAR(4) NOT NULL,
	PRIMARY KEY (���_������ )
);


CREATE TABLE ����(
	���_���� INTEGER NOT NULL,
	���_���� CHAR(10) NOT NULL,
	������� INTEGER,
	̳��� CHAR(20) NOT NULL,
	������ CHAR(20) NOT NULL,
	������� CHAR(6) NOT NULL,
	������_������ TIME NOT NULL,
	PRIMARY KEY (���_����),	
);


CREATE TABLE �������(
	���_�������� INTEGER NOT NULL,
	��������_��� INTEGER NOT NULL,
	���_�������� CHAR(15) NOT NULL,
	�������_�������� CHAR(20) NOT NULL,
	����������_������ VARCHAR(30) NOT NULL,
	̳��� CHAR(20) NOT NULL, 
	������ CHAR(20) NOT NULL,
	������� CHAR(6) NOT NULL,
	���������� CHAR(4) NOT NULL,
	������� INTEGER,
	PRIMARY KEY (���_��������)
);


CREATE TABLE ����(
	���_����� INTEGER NOT NULL,
	���_����� CHAR(20) NOT NULL,
	���_������� CHAR(20) NOT NULL,
	�����������_����������� INTEGER NOT NULL,
	�����_����� CHAR(20) NOT NULL, 
	�����������_�������� INTEGER NOT NULL,
	PRIMARY KEY (���_�����),
);


CREATE TABLE �����(
	���_������ INTEGER NOT NULL,
	���_������ CHAR(20) NOT NULL,
	������_������ INTEGER NOT NULL,
	�����������_���������������� INTEGER NOT NULL,
	����_������������ DATE NOT NULL,
	̳���_������������ CHAR(20) NOT NULL,
	������_������������ CHAR(20) NOT NULL,
	ʳ������_���� INTEGER NOT NULL,
	PRIMARY KEY (���_������),
	
);

CREATE TABLE ����(
	���_����� INTEGER NOT NULL,
	���_����� CHAR(20) NOT NULL,
	�����_����� INTEGER NOT NULL,
	ʳ������_������� INTEGER NOT NULL,
	���������_����� TIME NOT NULL,
	�����_����������� CHAR(20) NOT NULL,
	�����_����������� CHAR(20) NOT NULL,
	PRIMARY KEY (���_�����),
	
);


CREATE TABLE ������(
	���_������� INTEGER NOT NULL,
	̳��� CHAR(20) NOT NULL,
	������ CHAR(20) NOT NULL,
	������� CHAR(6) NOT NULL,
	г�_���������� DATE NOT NULL,
	���_������� CHAR NOT NULL,
	ʳ������_�������� INTEGER NOT NULL,
	ʳ������_���� INTEGER NOT NULL,
	PRIMARY KEY (���_�������),
);


CREATE TABLE ������(
	���_������ INTEGER NOT NULL,
	���_����� INTEGER,
	���_�������� INTEGER,
	���_������ INTEGER,
	���_����� INTEGER,
	���_������ INTEGER,
	���_������� INTEGER,
	�����_����� INTEGER NOT NULL,
	�����_���� INTEGER NOT NULL,
	����_������ DATE NOT NULL,
	PRIMARY KEY (���_������),
	CONSTRAINT ��_����
	FOREIGN KEY(���_�����)
	REFERENCES ���� 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��_�������
	FOREIGN KEY(���_��������)
	REFERENCES �������
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��_�����
	FOREIGN KEY(���_������)
	REFERENCES ����� 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��_����
	FOREIGN KEY(���_�����)
	REFERENCES ����
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��_�����
	FOREIGN KEY(���_������)
	REFERENCES ����� 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��_������
	FOREIGN KEY(���_�������)
	REFERENCES ������ 
	ON DELETE CASCADE
	ON UPDATE CASCADE,

);


CREATE TABLE ��������(
	���_��������� INTEGER NOT NULL, 	
	���_���� INTEGER NOT NULL,
	���_������ INTEGER NOT NULL,
	����_���������� DATE NOT NULL,
	����_��������� DATE NOT NULL,
	PRIMARY KEY(���_���������),
	CONSTRAINT ������
	FOREIGN KEY(���_����)
	REFERENCES ���� 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ��������
	FOREIGN KEY(���_������)
	REFERENCES ����� 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
