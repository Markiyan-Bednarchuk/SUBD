CREATE TABLE Касир(
	Код_касира INTEGER NOT NULL,
	Імя CHAR(15) NOT NULL,
	Прізвище CHAR(20) NOT NULL,
	Телефон INTEGER,
	Електронна_адреса VARCHAR(30) NOT NULL,
	Дата_народження DATE NOT NULL,
	Місто CHAR(20) NOT NULL,
	Вулиця CHAR(20) NOT NULL,
	Будинок CHAR(6) NOT NULL,
	Помешкання CHAR(4) NOT NULL,
	PRIMARY KEY (Код_касира )
);


CREATE TABLE Каса(
	Код_каси INTEGER NOT NULL,
	Тип_каси CHAR(10) NOT NULL,
	Телефон INTEGER,
	Місто CHAR(20) NOT NULL,
	Вулиця CHAR(20) NOT NULL,
	Будинок CHAR(6) NOT NULL,
	Робочі_години TIME NOT NULL,
	PRIMARY KEY (Код_каси),	
);


CREATE TABLE Пасажир(
	Код_пасажира INTEGER NOT NULL,
	Паспортні_дані INTEGER NOT NULL,
	Імя_пасажира CHAR(15) NOT NULL,
	Прізвище_пасажира CHAR(20) NOT NULL,
	Електронна_адреса VARCHAR(30) NOT NULL,
	Місто CHAR(20) NOT NULL, 
	Вулиця CHAR(20) NOT NULL,
	Будинок CHAR(6) NOT NULL,
	Помешкання CHAR(4) NOT NULL,
	Телефон INTEGER,
	PRIMARY KEY (Код_пасажира)
);


CREATE TABLE Поїзд(
	Код_поїзда INTEGER NOT NULL,
	Тип_поїзда CHAR(20) NOT NULL,
	Тип_приводу CHAR(20) NOT NULL,
	Максимальне_прискорення INTEGER NOT NULL,
	Марка_поїзда CHAR(20) NOT NULL, 
	Максимальна_швидкість INTEGER NOT NULL,
	PRIMARY KEY (Код_поїзда),
);


CREATE TABLE Вагон(
	Код_вагона INTEGER NOT NULL,
	Тип_вагона CHAR(20) NOT NULL,
	Ширина_вагона INTEGER NOT NULL,
	Максимальна_вантажопідйомність INTEGER NOT NULL,
	Дата_виготовлення DATE NOT NULL,
	Місто_виготовлення CHAR(20) NOT NULL,
	Вулиця_виготовлення CHAR(20) NOT NULL,
	Кількість_місць INTEGER NOT NULL,
	PRIMARY KEY (Код_вагона),
	
);

CREATE TABLE Рейс(
	Код_рейсу INTEGER NOT NULL,
	Тип_рейсу CHAR(20) NOT NULL,
	Номер_кейсу INTEGER NOT NULL,
	Кількість_зупинок INTEGER NOT NULL,
	Тривалість_рейсу TIME NOT NULL,
	Пункт_відправлення CHAR(20) NOT NULL,
	Пункт_призначення CHAR(20) NOT NULL,
	PRIMARY KEY (Код_рейсу),
	
);


CREATE TABLE Вокзал(
	Код_вокзалу INTEGER NOT NULL,
	Місто CHAR(20) NOT NULL,
	Вулиця CHAR(20) NOT NULL,
	Будинок CHAR(6) NOT NULL,
	Рік_заснування DATE NOT NULL,
	Тип_вокзалу CHAR NOT NULL,
	Кількість_платформ INTEGER NOT NULL,
	Кількість_колій INTEGER NOT NULL,
	PRIMARY KEY (Код_вокзалу),
);


CREATE TABLE Квиток(
	Код_квитка INTEGER NOT NULL,
	Код_поїзда INTEGER,
	Код_пасажира INTEGER,
	Код_касира INTEGER,
	Код_рейсу INTEGER,
	Код_вагона INTEGER,
	Код_вокзалу INTEGER,
	Номер_поїзда INTEGER NOT NULL,
	Номер_місця INTEGER NOT NULL,
	Дата_видачі DATE NOT NULL,
	PRIMARY KEY (Код_квитка),
	CONSTRAINT Фк_поїзд
	FOREIGN KEY(Код_поїзда)
	REFERENCES Поїзд 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фк_пасажир
	FOREIGN KEY(Код_пасажира)
	REFERENCES Пасажир
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фк_касир
	FOREIGN KEY(Код_касира)
	REFERENCES Касир 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фк_рейс
	FOREIGN KEY(Код_рейсу)
	REFERENCES Рейс
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фк_вагон
	FOREIGN KEY(Код_вагона)
	REFERENCES Вагон 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фк_вокзал
	FOREIGN KEY(Код_вокзалу)
	REFERENCES Вокзал 
	ON DELETE CASCADE
	ON UPDATE CASCADE,

);


CREATE TABLE Контракт(
	Код_контракту INTEGER NOT NULL, 	
	Код_каси INTEGER NOT NULL,
	Код_касира INTEGER NOT NULL,
	Дата_заключення DATE NOT NULL,
	Дата_закінчення DATE NOT NULL,
	PRIMARY KEY(Код_контракту),
	CONSTRAINT Фккаса
	FOREIGN KEY(Код_каси)
	REFERENCES Каса 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT Фккасира
	FOREIGN KEY(Код_касира)
	REFERENCES Касир 
	ON DELETE CASCADE
	ON UPDATE CASCADE
);
