IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_AlterarStatusWeekStats]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_AlterarStatusWeekStats]
GO

CREATE PROCEDURE [dbo].[SP_AlterarStatusWeekStats]
	@IdWeekStats SMALLINT
	
AS
	/* 
	Documenta��o
	M�dulo............: WeekStats
	Objetivo..........: Ativar / Desativar status do WeekStats
	EX................: EXEC [dbo].[SP_AlterarStatusWeekStats] 2
	*/
	BEGIN
		DECLARE @Status BIT

		SELECT @Status = IsActive
		FROM [dbo].[WeekStats]
			WHERE IdWeekStats = @IdWeekStats

		IF @Status = 1
			BEGIN
				UPDATE [dbo].[WeekStats]
					SET IsActive = 0
					WHERE IdWeekStats = @IdWeekStats
			END
		ELSE
			BEGIN
				UPDATE [dbo].[WeekStats]
					SET IsActive = 1
					WHERE IdWeekStats = @IdWeekStats
			END

	END
