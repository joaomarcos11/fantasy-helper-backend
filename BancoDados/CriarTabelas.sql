--CREATE DATABASE FantasyHelper
--GO

--USE FantasyHelper
--GO

CREATE TABLE FantasyUser(
	IdUser SMALLINT PRIMARY KEY IDENTITY,
	Username VARCHAR(40) NOT NULL,
	FirstName VARCHAR(20),
	Email VARCHAR(254) NOT NULL,
	UserPassword VARCHAR(50) NOT NULL,
	Avatar VARCHAR(255),
	IsActive BIT NOT NULL DEFAULT 1,
	IsVerified BIT NOT NULL DEFAULT 0,
	IsAdmin BIT NOT NULL DEFAULT 0
)

CREATE TABLE WeekStats(
	IdWeekStats SMALLINT PRIMARY KEY IDENTITY,
	Season VARCHAR(11) NOT NULL,
	WeekNumber TINYINT NOT NULL,
	Games TINYINT NOT NULL,
	Fga SMALLINT NOT NULL,
	Fgm SMALLINT NOT NULL,
	Fta SMALLINT NOT NULL,
	Ftm SMALLINT NOT NULL,
	ThreePoints TINYINT NOT NULL,
	Points SMALLINT NOT NULL,
	Rebounds SMALLINT NOT NULL,
	Assists SMALLINT NOT NULL,
	Steals TINYINT NOT NULL,
	Blocks TINYINT NOT NULL,
	Turnovers TINYINT NOT NULL,
	DateCreated DATETIME DEFAULT GETDATE(),
	IsActive BIT NOT NULL DEFAULT 1,
	IdUser SMALLINT NOT NULL FOREIGN KEY (IdUser) REFERENCES FantasyUser
)

--ALTER TABLE WeekStats
--ADD Season VARCHAR(11) NOT NULL DEFAULT '2020-2021'