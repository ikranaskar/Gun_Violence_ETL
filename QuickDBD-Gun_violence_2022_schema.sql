-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/RQ1e3M
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


SET XACT_ABORT ON

BEGIN TRANSACTION QUICKDBD

CREATE TABLE [Mass_shooting] (
    [state] varchar(50)  NOT NULL ,
    [mass_shooting_killed] int  NOT NULL ,
    CONSTRAINT [PK_Mass_shooting] PRIMARY KEY CLUSTERED (
        [state] ASC
    )
)

CREATE TABLE [Accidental_deaths] (
    [state] varchar(50)  NOT NULL ,
    [accidental_gun_killed] int  NOT NULL 
)

CREATE TABLE [School_shootings] (
    [state] varchar(50)  NOT NULL ,
    [school_shooting_killed] int  NOT NULL 
)

ALTER TABLE [Accidental_deaths] WITH CHECK ADD CONSTRAINT [FK_Accidental_deaths_state] FOREIGN KEY([state])
REFERENCES [Mass_shooting] ([state])

ALTER TABLE [Accidental_deaths] CHECK CONSTRAINT [FK_Accidental_deaths_state]

ALTER TABLE [School_shootings] WITH CHECK ADD CONSTRAINT [FK_School_shootings_state] FOREIGN KEY([state])
REFERENCES [Mass_shooting] ([state])

ALTER TABLE [School_shootings] CHECK CONSTRAINT [FK_School_shootings_state]

COMMIT TRANSACTION QUICKDBD