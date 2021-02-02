/*
Created: 22/12/2020
Modified: 21/01/2021
Model: Banquinho
Database: MS SQL Server 2017
*/


-- Drop relationships section -------------------------------------------------

ALTER TABLE [alunos] DROP CONSTRAINT [fk_alunos_cursos]
go




-- Drop keys for tables section -------------------------------------------------

ALTER TABLE [cursos] DROP CONSTRAINT [PK_cursos]
go
ALTER TABLE [alunos] DROP CONSTRAINT [PK_alunos]
go


-- Drop indexes section -------------------------------------------------

DROP INDEX [IX_Relationship6] ON [alunos]
go


-- Drop tables section ---------------------------------------------------

DROP TABLE [cursos]
go
DROP TABLE [alunos]
go

-- Create tables section -------------------------------------------------

-- Table alunos

CREATE TABLE [alunos]
(
 [id] Int NOT NULL,
 [nome] Varchar(100) NOT NULL,
 [IdCurso] Int NULL,
 [turno] Varchar(20) NULL,
 [periodo] Int NULL,
 [data_nascimento] Date NOT NULL,
 [data_ingresso] Date NULL
)
go

-- Create indexes for table alunos

CREATE INDEX [IX_Relationship6] ON [alunos] ([IdCurso])
go

-- Add keys for table alunos

ALTER TABLE [alunos] ADD CONSTRAINT [PK_alunos] PRIMARY KEY ([id])
go

-- Table cursos

CREATE TABLE [cursos]
(
 [IdCurso] Int NOT NULL,
 [Curso] Varchar(20) NOT NULL
)
go

-- Add keys for table cursos

ALTER TABLE [cursos] ADD CONSTRAINT [PK_cursos] PRIMARY KEY ([IdCurso])
go

-- Create foreign keys (relationships) section ------------------------------------------------- 


ALTER TABLE [alunos] ADD CONSTRAINT [fk_alunos_cursos] FOREIGN KEY ([IdCurso]) REFERENCES [cursos] ([IdCurso]) ON UPDATE NO ACTION ON DELETE NO ACTION
go




