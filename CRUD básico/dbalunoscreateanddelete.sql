USE [DbKairos_Aprovi]
GO

ALTER TABLE [dbo].[AlunosCadastro] DROP CONSTRAINT [Relationship6]
GO

/****** Object:  Table [dbo].[AlunosCadastro]    Script Date: 26/01/2021 11:13:27 ******/
DROP TABLE [dbo].[AlunosCadastro]
GO

/****** Object:  Table [dbo].[AlunosCadastro]    Script Date: 26/01/2021 11:13:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AlunosCadastro](
	[id] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[IdCurso] [int] NULL,
	[Turno] [varchar](20) NULL,
	[Periodo] [int] NULL,
	[DataNascimento] [date] NOT NULL,
	[DataIngressoFaculdade] [date] NULL,
 CONSTRAINT [PK_AlunosCadastro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[AlunosCadastro]  WITH CHECK ADD  CONSTRAINT [Relationship6] FOREIGN KEY([IdCurso])
REFERENCES [dbo].[CursosCadastro] ([IdCurso])
GO

ALTER TABLE [dbo].[AlunosCadastro] CHECK CONSTRAINT [Relationship6]
GO

