IF EXISTS (SELECT * FROM dbo.sysobjects WHERE id = object_id(N'[dbo].[SP_ConsultarTodosUsernames]') AND objectproperty(id, N'IsPROCEDURE')=1)
	DROP PROCEDURE [dbo].[SP_ConsultarTodosUsernames]
GO

CREATE PROCEDURE [dbo].[SP_ConsultarTodosUsernames]
	
AS
	/* 
	Documenta��o
	M�dulo............: User
	Objetivo..........: Editar a senha de um usuário
	EX................: EXEC [dbo].[SP_ConsultarTodosUsernames]
	*/
	BEGIN
		SELECT IdUser, Username, Email 
		FROM [dbo].[FantasyUser]
			WHERE IsActive = 1

	END
