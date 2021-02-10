IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_ConsultarStatsUserBySeason]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_ConsultarStatsUserBySeason]
GO

CREATE PROCEDURE [dbo].[SP_ConsultarStatsUserBySeason]
	@IdUser SMALLINT,
	@Season VARCHAR(11)
	
AS
	/* 
	Documenta��o
	M�dulo............: User, WeekStats
	Objetivo..........: Consultar todos os stats de um usuário de acordo a season
	EX................: EXEC [dbo].[SP_ConsultarStatsUserBySeason] 2, '2020-2021'
	*/
	BEGIN
		SELECT 
			w.Season,
			w.WeekNumber,
			w.Games,
			w.Fgm,
			w.Fga,
			w.Ftm, 
			w.Fta,
			w.ThreePoints,
			w.Points,
			w.Rebounds,
			w.Assists,
			w.Steals,
			w.Blocks,
			w.Turnovers,
			u.IdUser,
			u.Username
		FROM [dbo].[WeekStats] AS w
			INNER JOIN [dbo].[FantasyUser] AS u
				ON u.IdUser = w.IdUser
			WHERE u.IdUser = @IdUser 
				AND Season = @Season

	END
