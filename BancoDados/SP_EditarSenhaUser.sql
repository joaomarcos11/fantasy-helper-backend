IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_EditarSenhaUser]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_EditarSenhaUser]
GO

CREATE PROCEDURE [dbo].[SP_EditarSenhaUser]
	@IdUser SMALLINT,
	@UserPassword VARCHAR(50)
	
AS
	/* 
	Documenta��o
	M�dulo............: User
	Objetivo..........: Editar a senha de um usuário
	EX................: EXEC [dbo].[SP_EditarSenhaUser] 5, 'novasenha'
	*/
	BEGIN
		UPDATE [dbo].[FantasyUser]
			SET UserPassword = @UserPassword

			WHERE IdUser = @IdUser

	END
