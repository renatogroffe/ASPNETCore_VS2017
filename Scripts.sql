USE [TestesASPNETCore]
GO

CREATE TABLE dbo.Cotacoes(
	Sigla char(3) NOT NULL,
	NomeMoeda varchar(30) NOT NULL,
	UltimaCotacao datetime NOT NULL,
	Valor numeric (18,4) NOT NULL,
	CONSTRAINT PK_Cotacoes PRIMARY KEY (Sigla)
)
GO


INSERT INTO dbo.Cotacoes
           (Sigla
           ,NomeMoeda
           ,UltimaCotacao
           ,Valor)
     VALUES
           ('USD'
           ,'Dólar norte-americano'
           ,'2017-03-10 16:59'
           ,3.1435)

INSERT INTO dbo.Cotacoes
           (Sigla
           ,NomeMoeda
           ,UltimaCotacao
           ,Valor)
     VALUES
           ('EUR'
           ,'Euro'
           ,'2017-03-10 16:59'
           ,3.3300)

INSERT INTO dbo.Cotacoes
           (Sigla
           ,NomeMoeda
           ,UltimaCotacao
           ,Valor)
     VALUES
           ('LIB'
           ,'Libra esterlina'
           ,'2017-03-10 16:59'
           ,3.5330)


CREATE TABLE [dbo].[Indisponibilidade](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [InicioIndisponibilidade] [datetime] NOT NULL,
    [TerminoIndisponibilidade] [datetime] NULL,
    [Mensagem] [varchar](MAX) NOT NULL,
 CONSTRAINT [PK_Indisponibilidade] PRIMARY KEY ([Id])
)
GO
