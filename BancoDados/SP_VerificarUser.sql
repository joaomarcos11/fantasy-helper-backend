IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_VerificarUser]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_VerificarUser]
GO

CREATE PROCEDURE [dbo].[SP_VerificarUser]
	@IdUser SMALLINT
	
AS
	/* 
	Documenta��o
	M�dulo............: User
	Objetivo..........: Verificar o usuário
	EX................: EXEC [dbo].[SP_VerificarUser] 5
	*/
	BEGIN
		UPDATE [dbo].[FantasyUser]
			SET IsVerified = 1

			WHERE IdUser = @IdUser

	END
