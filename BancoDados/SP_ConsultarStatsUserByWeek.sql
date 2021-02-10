IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_ConsultarStatsUserByWeek]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_ConsultarStatsUserByWeek]
GO

CREATE PROCEDURE [dbo].[SP_ConsultarStatsUserByWeek]
	@IdUser SMALLINT,
	@WeekNumber TINYINT
	
AS
	/* 
	Documenta��o
	M�dulo............: User, WeekStats
	Objetivo..........: Consultar todos os stats de um usuário de acordo número da semana
	EX................: EXEC [dbo].[SP_ConsultarStatsUserByWeek] 2, 4
	*/
	BEGIN
		SELECT 
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
				AND WeekNumber = @WeekNumber

	END
