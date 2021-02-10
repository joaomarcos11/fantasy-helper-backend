IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_CriarUser]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_CriarUser]
GO

CREATE PROCEDURE [dbo].[SP_CriarUser]
	@Username VARCHAR(40),
	@FirstName VARCHAR(20),
	@Email VARCHAR(254),
	@UserPassword VARCHAR(50),
	@IsAdmin BIT = 0,
	@Avatar VARCHAR(255) = NULL
	
AS
	/* 
	Documentação
	Módulo............: FantasyUser
	Objetivo..........: Criar um usuário
	EX................: EXEC [dbo].[SP_CriarUser] 'jm_belomaioral', 'João Marcos', 'jotaeme@yahoo.com', 'senha1012'
	*/
	BEGIN
		INSERT INTO [dbo].[FantasyUser]
		(Username, 
		 FirstName, 
		 Email, 
		 UserPassword,
		 IsAdmin,
		 Avatar)
		VALUES
		(@Username, 
		 @FirstName, 
		 @Email, 
		 @UserPassword,
		 @IsAdmin,
		 @Avatar)
	END
