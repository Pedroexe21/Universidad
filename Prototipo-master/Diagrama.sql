/*
   miércoles, 10 de marzo de 20219:41:13
   User: 
   Server: TECNO-PRACTI
   Database: Prototipo
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Personas SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Personas', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Personas', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Personas', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Documento SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Documento', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Documento', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Documento', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Registro ADD CONSTRAINT
	FK_Registro_Personas FOREIGN KEY
	(
	Fk_RUT
	) REFERENCES dbo.Personas
	(
	Rut
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Registro ADD CONSTRAINT
	FK_Registro_Documento FOREIGN KEY
	(
	Fk_Id_Documento
	) REFERENCES dbo.Documento
	(
	Id_Documento
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Registro SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Registro', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Registro', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Registro', 'Object', 'CONTROL') as Contr_Per 