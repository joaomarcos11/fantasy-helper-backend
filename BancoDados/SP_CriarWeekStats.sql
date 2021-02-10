IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_CriarWeekStats]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_CriarWeekStats]
GO

CREATE PROCEDURE [dbo].[SP_CriarWeekStats]
	@Season VARCHAR(11),
	@WeekNumber TINYINT,
	@Games TINYINT,
	@Fgm SMALLINT,
	@Fga SMALLINT,
	@Ftm SMALLINT, 
	@Fta SMALLINT,
	@ThreePoints TINYINT,
	@Points SMALLINT,
	@Rebounds SMALLINT,
	@Assists SMALLINT,
	@Steals TINYINT,
	@Blocks TINYINT,
	@Turnovers TINYINT,
	@IdUser SMALLINT
	
AS
	/* 
	Documenta��o
	M�dulo............: WeekStats
	Objetivo..........: Criar um WeekStats
	EX................: EXEC [dbo].[SP_CriarWeekStats] '2021-2022', 4, 40, 236, 506, 84, 105, 52, 608, 198, 129, 32, 19, 53, 2
	*/
	BEGIN
		INSERT INTO [dbo].[WeekStats]
		 (	Season,
			WeekNumber,
			Games,
			Fgm,
			Fga,
			Ftm, 
			Fta,
			ThreePoints,
			Points,
			Rebounds,
			Assists,
			Steals,
			Blocks,
			Turnovers,
			IdUser)
		VALUES
		 (	@Season,
			@WeekNumber,
			@Games,
			@Fgm,
			@Fga,
			@Ftm, 
			@Fta,
			@ThreePoints,
			@Points,
			@Rebounds,
			@Assists,
			@Steals,
			@Blocks,
			@Turnovers,
			@IdUser)
	END
