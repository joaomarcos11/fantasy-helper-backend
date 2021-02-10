IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_EditarUser]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_EditarUser]
GO

CREATE PROCEDURE [dbo].[SP_EditarUser]
	@IdUser SMALLINT,
	@Username VARCHAR(40),
	@FirstName VARCHAR(20),
	@Avatar VARCHAR(255)
	
AS
	/* 
	Documenta��o
	M�dulo............: User
	Objetivo..........: Editar dados pessoais do usuário
	EX................: EXEC [dbo].[SP_EditarUser] 6, 'joaozim', 'JM', 'foto2.jpg'
	*/
	BEGIN
		UPDATE [dbo].[FantasyUser]
			SET Username = @Username,
				FirstName = @FirstName,
				Avatar = @Avatar
			WHERE IdUser = @IdUser

	END
