IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_AlterarStatusUser]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_AlterarStatusUser]
GO

CREATE PROCEDURE [dbo].[SP_AlterarStatusUser]
	@IdUser SMALLINT
	
AS
	/* 
	Documenta��o
	M�dulo............: User
	Objetivo..........: Ativar / Desativar status do usuário
	EX................: EXEC [dbo].[SP_AlterarStatusUser] 6
	*/
	BEGIN
		DECLARE @Status BIT

		SELECT @Status = IsActive
		FROM [dbo].[FantasyUser]
			WHERE IdUser = @IdUser

		IF @Status = 1
			BEGIN
				UPDATE [dbo].[FantasyUser]
					SET IsActive = 0
					WHERE IdUser = @IdUser
			END
		ELSE
			BEGIN
				UPDATE [dbo].[FantasyUser]
					SET IsActive = 1
					WHERE IdUser = @IdUser
			END

	END
