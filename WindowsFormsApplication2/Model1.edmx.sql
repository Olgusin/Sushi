
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 05/14/2014 00:00:35
-- Generated from EDMX file: c:\users\olgusin\documents\visual studio 2012\Projects\WindowsFormsApplication2\WindowsFormsApplication2\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [SushiKrayushkina];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Unit_dimentionNumber'
CREATE TABLE [dbo].[Unit_dimentionNumber] (
    [name] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'CategoryNumber'
CREATE TABLE [dbo].[CategoryNumber] (
    [idCategory] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [menuPresence] nvarchar(max)  NOT NULL,
    [description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ProductComposeNumber'
CREATE TABLE [dbo].[ProductComposeNumber] (
    [quantity] nvarchar(max)  NOT NULL,
    [UnitDimentionName] int  NOT NULL,
    [Nomenclature_idNom] int  NOT NULL,
    [Nomenclature_idNom1] int  NOT NULL
);
GO

-- Creating table 'UserNumber'
CREATE TABLE [dbo].[UserNumber] (
    [login] int IDENTITY(1,1) NOT NULL,
    [password] nvarchar(max)  NOT NULL,
    [Person_idPerson] int  NOT NULL
);
GO

-- Creating table 'PersonNmber'
CREATE TABLE [dbo].[PersonNmber] (
    [idPerson] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [telNum] nvarchar(max)  NOT NULL,
    [birthDate] nvarchar(max)  NOT NULL,
    [snils] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PasportNumber'
CREATE TABLE [dbo].[PasportNumber] (
    [number] int IDENTITY(1,1) NOT NULL,
    [getDate] nvarchar(max)  NOT NULL,
    [giver] nvarchar(max)  NOT NULL,
    [PersonIdPerson] int  NOT NULL
);
GO

-- Creating table 'PostNumber'
CREATE TABLE [dbo].[PostNumber] (
    [idPost] int IDENTITY(1,1) NOT NULL,
    [description] nvarchar(max)  NOT NULL,
    [salary] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'EmployeeNumber'
CREATE TABLE [dbo].[EmployeeNumber] (
    [Post_idPost] int  NOT NULL,
    [firstDate] nvarchar(max)  NOT NULL,
    [lastDate] nvarchar(max)  NOT NULL,
    [workbookNum] nvarchar(max)  NOT NULL,
    [Person_idPerson] int  NOT NULL
);
GO

-- Creating table 'DutyNumber'
CREATE TABLE [dbo].[DutyNumber] (
    [EmployeePost_idPost] int  NOT NULL,
    [EmployeePerson_idPerson] int  NOT NULL,
    [idDuty] nvarchar(max)  NOT NULL,
    [hours] nvarchar(max)  NOT NULL,
    [deduction] nvarchar(max)  NOT NULL,
    [promotion] nvarchar(max)  NOT NULL,
    [note] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ChangeTypeНабор'
CREATE TABLE [dbo].[ChangeTypeНабор] (
    [id] int IDENTITY(1,1) NOT NULL,
    [type] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'OrderStatusNumber'
CREATE TABLE [dbo].[OrderStatusNumber] (
    [idState] int IDENTITY(1,1) NOT NULL,
    [description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DeliveryTypeNumber'
CREATE TABLE [dbo].[DeliveryTypeNumber] (
    [idType] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'StoreNumber'
CREATE TABLE [dbo].[StoreNumber] (
    [name] int IDENTITY(1,1) NOT NULL,
    [description] nvarchar(max)  NOT NULL,
    [Store_name] int  NOT NULL
);
GO

-- Creating table 'StoreGoodsNumber'
CREATE TABLE [dbo].[StoreGoodsNumber] (
    [dateTime] nvarchar(max)  NOT NULL,
    [quantity] nvarchar(max)  NOT NULL,
    [ChangeType_id] int  NOT NULL,
    [Document_id] int  NOT NULL,
    [Store_name] int  NOT NULL,
    [Nomenclature_idNom] int  NOT NULL
);
GO

-- Creating table 'DocumentNumber'
CREATE TABLE [dbo].[DocumentNumber] (
    [id] int IDENTITY(1,1) NOT NULL,
    [number] nvarchar(max)  NOT NULL,
    [date] nvarchar(max)  NOT NULL,
    [DocumentType_id] int  NOT NULL,
    [Store_name] int  NOT NULL
);
GO

-- Creating table 'DocumentTypeNumber'
CREATE TABLE [dbo].[DocumentTypeNumber] (
    [id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AdressNumber'
CREATE TABLE [dbo].[AdressNumber] (
    [id] int IDENTITY(1,1) NOT NULL,
    [region] nvarchar(max)  NOT NULL,
    [street] nvarchar(max)  NOT NULL,
    [house] nvarchar(max)  NOT NULL,
    [flat] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'PlaceNumber'
CREATE TABLE [dbo].[PlaceNumber] (
    [id] int IDENTITY(1,1) NOT NULL,
    [description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'OrderDeliveryNumber'
CREATE TABLE [dbo].[OrderDeliveryNumber] (
    [id] int IDENTITY(1,1) NOT NULL,
    [description] nvarchar(max)  NOT NULL,
    [DateTime] nvarchar(max)  NOT NULL,
    [Adress_id] int  NOT NULL
);
GO

-- Creating table 'OrderNumber'
CREATE TABLE [dbo].[OrderNumber] (
    [id] int IDENTITY(1,1) NOT NULL,
    [OrderStatus_idState] int  NOT NULL,
    [Person_idPerson] int  NOT NULL,
    [DateTime] nvarchar(max)  NOT NULL,
    [DeliveryType_idType] int  NOT NULL,
    [OrderDelivery_id] int  NOT NULL,
    [Place_id] int  NOT NULL,
    [sale] nvarchar(max)  NOT NULL,
    [Duty_idDuty] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'NomenclatureНабор'
CREATE TABLE [dbo].[NomenclatureНабор] (
    [idNom] int IDENTITY(1,1) NOT NULL,
    [priceIn] nvarchar(max)  NOT NULL,
    [priceOut] nvarchar(max)  NOT NULL,
    [menuPresence] nvarchar(max)  NOT NULL,
    [description] nvarchar(max)  NOT NULL,
    [UnitDimention_name] int  NOT NULL,
    [CategoryIdCategory] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [name] in table 'Unit_dimentionNumber'
ALTER TABLE [dbo].[Unit_dimentionNumber]
ADD CONSTRAINT [PK_Unit_dimentionNumber]
    PRIMARY KEY CLUSTERED ([name] ASC);
GO

-- Creating primary key on [idCategory] in table 'CategoryNumber'
ALTER TABLE [dbo].[CategoryNumber]
ADD CONSTRAINT [PK_CategoryNumber]
    PRIMARY KEY CLUSTERED ([idCategory] ASC);
GO

-- Creating primary key on [Nomenclature_idNom], [Nomenclature_idNom1] in table 'ProductComposeNumber'
ALTER TABLE [dbo].[ProductComposeNumber]
ADD CONSTRAINT [PK_ProductComposeNumber]
    PRIMARY KEY CLUSTERED ([Nomenclature_idNom], [Nomenclature_idNom1] ASC);
GO

-- Creating primary key on [login] in table 'UserNumber'
ALTER TABLE [dbo].[UserNumber]
ADD CONSTRAINT [PK_UserNumber]
    PRIMARY KEY CLUSTERED ([login] ASC);
GO

-- Creating primary key on [idPerson] in table 'PersonNmber'
ALTER TABLE [dbo].[PersonNmber]
ADD CONSTRAINT [PK_PersonNmber]
    PRIMARY KEY CLUSTERED ([idPerson] ASC);
GO

-- Creating primary key on [number] in table 'PasportNumber'
ALTER TABLE [dbo].[PasportNumber]
ADD CONSTRAINT [PK_PasportNumber]
    PRIMARY KEY CLUSTERED ([number] ASC);
GO

-- Creating primary key on [idPost] in table 'PostNumber'
ALTER TABLE [dbo].[PostNumber]
ADD CONSTRAINT [PK_PostNumber]
    PRIMARY KEY CLUSTERED ([idPost] ASC);
GO

-- Creating primary key on [Post_idPost], [Person_idPerson] in table 'EmployeeNumber'
ALTER TABLE [dbo].[EmployeeNumber]
ADD CONSTRAINT [PK_EmployeeNumber]
    PRIMARY KEY CLUSTERED ([Post_idPost], [Person_idPerson] ASC);
GO

-- Creating primary key on [idDuty] in table 'DutyNumber'
ALTER TABLE [dbo].[DutyNumber]
ADD CONSTRAINT [PK_DutyNumber]
    PRIMARY KEY CLUSTERED ([idDuty] ASC);
GO

-- Creating primary key on [id] in table 'ChangeTypeНабор'
ALTER TABLE [dbo].[ChangeTypeНабор]
ADD CONSTRAINT [PK_ChangeTypeНабор]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [idState] in table 'OrderStatusNumber'
ALTER TABLE [dbo].[OrderStatusNumber]
ADD CONSTRAINT [PK_OrderStatusNumber]
    PRIMARY KEY CLUSTERED ([idState] ASC);
GO

-- Creating primary key on [idType] in table 'DeliveryTypeNumber'
ALTER TABLE [dbo].[DeliveryTypeNumber]
ADD CONSTRAINT [PK_DeliveryTypeNumber]
    PRIMARY KEY CLUSTERED ([idType] ASC);
GO

-- Creating primary key on [name] in table 'StoreNumber'
ALTER TABLE [dbo].[StoreNumber]
ADD CONSTRAINT [PK_StoreNumber]
    PRIMARY KEY CLUSTERED ([name] ASC);
GO

-- Creating primary key on [dateTime], [Document_id], [Nomenclature_idNom] in table 'StoreGoodsNumber'
ALTER TABLE [dbo].[StoreGoodsNumber]
ADD CONSTRAINT [PK_StoreGoodsNumber]
    PRIMARY KEY CLUSTERED ([dateTime], [Document_id], [Nomenclature_idNom] ASC);
GO

-- Creating primary key on [id] in table 'DocumentNumber'
ALTER TABLE [dbo].[DocumentNumber]
ADD CONSTRAINT [PK_DocumentNumber]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'DocumentTypeNumber'
ALTER TABLE [dbo].[DocumentTypeNumber]
ADD CONSTRAINT [PK_DocumentTypeNumber]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'AdressNumber'
ALTER TABLE [dbo].[AdressNumber]
ADD CONSTRAINT [PK_AdressNumber]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'PlaceNumber'
ALTER TABLE [dbo].[PlaceNumber]
ADD CONSTRAINT [PK_PlaceNumber]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'OrderDeliveryNumber'
ALTER TABLE [dbo].[OrderDeliveryNumber]
ADD CONSTRAINT [PK_OrderDeliveryNumber]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'OrderNumber'
ALTER TABLE [dbo].[OrderNumber]
ADD CONSTRAINT [PK_OrderNumber]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [idNom] in table 'NomenclatureНабор'
ALTER TABLE [dbo].[NomenclatureНабор]
ADD CONSTRAINT [PK_NomenclatureНабор]
    PRIMARY KEY CLUSTERED ([idNom] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UnitDimention_name] in table 'NomenclatureНабор'
ALTER TABLE [dbo].[NomenclatureНабор]
ADD CONSTRAINT [FK_UnitDimentionNomenclature]
    FOREIGN KEY ([UnitDimention_name])
    REFERENCES [dbo].[Unit_dimentionNumber]
        ([name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UnitDimentionNomenclature'
CREATE INDEX [IX_FK_UnitDimentionNomenclature]
ON [dbo].[NomenclatureНабор]
    ([UnitDimention_name]);
GO

-- Creating foreign key on [CategoryIdCategory] in table 'NomenclatureНабор'
ALTER TABLE [dbo].[NomenclatureНабор]
ADD CONSTRAINT [FK_CategoryNomenclature]
    FOREIGN KEY ([CategoryIdCategory])
    REFERENCES [dbo].[CategoryNumber]
        ([idCategory])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryNomenclature'
CREATE INDEX [IX_FK_CategoryNomenclature]
ON [dbo].[NomenclatureНабор]
    ([CategoryIdCategory]);
GO

-- Creating foreign key on [UnitDimentionName] in table 'ProductComposeNumber'
ALTER TABLE [dbo].[ProductComposeNumber]
ADD CONSTRAINT [FK_UnitDimentionProductCompose]
    FOREIGN KEY ([UnitDimentionName])
    REFERENCES [dbo].[Unit_dimentionNumber]
        ([name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UnitDimentionProductCompose'
CREATE INDEX [IX_FK_UnitDimentionProductCompose]
ON [dbo].[ProductComposeNumber]
    ([UnitDimentionName]);
GO

-- Creating foreign key on [Person_idPerson] in table 'UserNumber'
ALTER TABLE [dbo].[UserNumber]
ADD CONSTRAINT [FK_PersonUser]
    FOREIGN KEY ([Person_idPerson])
    REFERENCES [dbo].[PersonNmber]
        ([idPerson])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonUser'
CREATE INDEX [IX_FK_PersonUser]
ON [dbo].[UserNumber]
    ([Person_idPerson]);
GO

-- Creating foreign key on [PersonIdPerson] in table 'PasportNumber'
ALTER TABLE [dbo].[PasportNumber]
ADD CONSTRAINT [FK_PersonPasport]
    FOREIGN KEY ([PersonIdPerson])
    REFERENCES [dbo].[PersonNmber]
        ([idPerson])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonPasport'
CREATE INDEX [IX_FK_PersonPasport]
ON [dbo].[PasportNumber]
    ([PersonIdPerson]);
GO

-- Creating foreign key on [Post_idPost] in table 'EmployeeNumber'
ALTER TABLE [dbo].[EmployeeNumber]
ADD CONSTRAINT [FK_PostEmployee]
    FOREIGN KEY ([Post_idPost])
    REFERENCES [dbo].[PostNumber]
        ([idPost])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Person_idPerson] in table 'EmployeeNumber'
ALTER TABLE [dbo].[EmployeeNumber]
ADD CONSTRAINT [FK_PersonEmployee]
    FOREIGN KEY ([Person_idPerson])
    REFERENCES [dbo].[PersonNmber]
        ([idPerson])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonEmployee'
CREATE INDEX [IX_FK_PersonEmployee]
ON [dbo].[EmployeeNumber]
    ([Person_idPerson]);
GO

-- Creating foreign key on [EmployeePost_idPost], [EmployeePerson_idPerson] in table 'DutyNumber'
ALTER TABLE [dbo].[DutyNumber]
ADD CONSTRAINT [FK_EmployeeDuty]
    FOREIGN KEY ([EmployeePost_idPost], [EmployeePerson_idPerson])
    REFERENCES [dbo].[EmployeeNumber]
        ([Post_idPost], [Person_idPerson])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeDuty'
CREATE INDEX [IX_FK_EmployeeDuty]
ON [dbo].[DutyNumber]
    ([EmployeePost_idPost], [EmployeePerson_idPerson]);
GO

-- Creating foreign key on [Store_name] in table 'StoreNumber'
ALTER TABLE [dbo].[StoreNumber]
ADD CONSTRAINT [FK_StoreStore]
    FOREIGN KEY ([Store_name])
    REFERENCES [dbo].[StoreNumber]
        ([name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StoreStore'
CREATE INDEX [IX_FK_StoreStore]
ON [dbo].[StoreNumber]
    ([Store_name]);
GO

-- Creating foreign key on [DocumentType_id] in table 'DocumentNumber'
ALTER TABLE [dbo].[DocumentNumber]
ADD CONSTRAINT [FK_DocumentTypeDocument]
    FOREIGN KEY ([DocumentType_id])
    REFERENCES [dbo].[DocumentTypeNumber]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentTypeDocument'
CREATE INDEX [IX_FK_DocumentTypeDocument]
ON [dbo].[DocumentNumber]
    ([DocumentType_id]);
GO

-- Creating foreign key on [Store_name] in table 'DocumentNumber'
ALTER TABLE [dbo].[DocumentNumber]
ADD CONSTRAINT [FK_StoreDocument]
    FOREIGN KEY ([Store_name])
    REFERENCES [dbo].[StoreNumber]
        ([name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StoreDocument'
CREATE INDEX [IX_FK_StoreDocument]
ON [dbo].[DocumentNumber]
    ([Store_name]);
GO

-- Creating foreign key on [ChangeType_id] in table 'StoreGoodsNumber'
ALTER TABLE [dbo].[StoreGoodsNumber]
ADD CONSTRAINT [FK_ChangeTypeStoreGoods]
    FOREIGN KEY ([ChangeType_id])
    REFERENCES [dbo].[ChangeTypeНабор]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ChangeTypeStoreGoods'
CREATE INDEX [IX_FK_ChangeTypeStoreGoods]
ON [dbo].[StoreGoodsNumber]
    ([ChangeType_id]);
GO

-- Creating foreign key on [Document_id] in table 'StoreGoodsNumber'
ALTER TABLE [dbo].[StoreGoodsNumber]
ADD CONSTRAINT [FK_DocumentStoreGoods]
    FOREIGN KEY ([Document_id])
    REFERENCES [dbo].[DocumentNumber]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DocumentStoreGoods'
CREATE INDEX [IX_FK_DocumentStoreGoods]
ON [dbo].[StoreGoodsNumber]
    ([Document_id]);
GO

-- Creating foreign key on [Store_name] in table 'StoreGoodsNumber'
ALTER TABLE [dbo].[StoreGoodsNumber]
ADD CONSTRAINT [FK_StoreStoreGoods]
    FOREIGN KEY ([Store_name])
    REFERENCES [dbo].[StoreNumber]
        ([name])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_StoreStoreGoods'
CREATE INDEX [IX_FK_StoreStoreGoods]
ON [dbo].[StoreGoodsNumber]
    ([Store_name]);
GO

-- Creating foreign key on [Adress_id] in table 'OrderDeliveryNumber'
ALTER TABLE [dbo].[OrderDeliveryNumber]
ADD CONSTRAINT [FK_AdressOrderDelivery]
    FOREIGN KEY ([Adress_id])
    REFERENCES [dbo].[AdressNumber]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdressOrderDelivery'
CREATE INDEX [IX_FK_AdressOrderDelivery]
ON [dbo].[OrderDeliveryNumber]
    ([Adress_id]);
GO

-- Creating foreign key on [OrderStatus_idState] in table 'OrderNumber'
ALTER TABLE [dbo].[OrderNumber]
ADD CONSTRAINT [FK_OrderStatusOrder]
    FOREIGN KEY ([OrderStatus_idState])
    REFERENCES [dbo].[OrderStatusNumber]
        ([idState])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderStatusOrder'
CREATE INDEX [IX_FK_OrderStatusOrder]
ON [dbo].[OrderNumber]
    ([OrderStatus_idState]);
GO

-- Creating foreign key on [Person_idPerson] in table 'OrderNumber'
ALTER TABLE [dbo].[OrderNumber]
ADD CONSTRAINT [FK_PersonOrder]
    FOREIGN KEY ([Person_idPerson])
    REFERENCES [dbo].[PersonNmber]
        ([idPerson])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PersonOrder'
CREATE INDEX [IX_FK_PersonOrder]
ON [dbo].[OrderNumber]
    ([Person_idPerson]);
GO

-- Creating foreign key on [DeliveryType_idType] in table 'OrderNumber'
ALTER TABLE [dbo].[OrderNumber]
ADD CONSTRAINT [FK_DeliveryTypeOrder]
    FOREIGN KEY ([DeliveryType_idType])
    REFERENCES [dbo].[DeliveryTypeNumber]
        ([idType])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DeliveryTypeOrder'
CREATE INDEX [IX_FK_DeliveryTypeOrder]
ON [dbo].[OrderNumber]
    ([DeliveryType_idType]);
GO

-- Creating foreign key on [OrderDelivery_id] in table 'OrderNumber'
ALTER TABLE [dbo].[OrderNumber]
ADD CONSTRAINT [FK_OrderDeliveryOrder]
    FOREIGN KEY ([OrderDelivery_id])
    REFERENCES [dbo].[OrderDeliveryNumber]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderDeliveryOrder'
CREATE INDEX [IX_FK_OrderDeliveryOrder]
ON [dbo].[OrderNumber]
    ([OrderDelivery_id]);
GO

-- Creating foreign key on [Place_id] in table 'OrderNumber'
ALTER TABLE [dbo].[OrderNumber]
ADD CONSTRAINT [FK_PlaceOrder]
    FOREIGN KEY ([Place_id])
    REFERENCES [dbo].[PlaceNumber]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlaceOrder'
CREATE INDEX [IX_FK_PlaceOrder]
ON [dbo].[OrderNumber]
    ([Place_id]);
GO

-- Creating foreign key on [Duty_idDuty] in table 'OrderNumber'
ALTER TABLE [dbo].[OrderNumber]
ADD CONSTRAINT [FK_DutyOrder]
    FOREIGN KEY ([Duty_idDuty])
    REFERENCES [dbo].[DutyNumber]
        ([idDuty])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_DutyOrder'
CREATE INDEX [IX_FK_DutyOrder]
ON [dbo].[OrderNumber]
    ([Duty_idDuty]);
GO

-- Creating foreign key on [Nomenclature_idNom] in table 'ProductComposeNumber'
ALTER TABLE [dbo].[ProductComposeNumber]
ADD CONSTRAINT [FK_NomenclatureProductCompose]
    FOREIGN KEY ([Nomenclature_idNom])
    REFERENCES [dbo].[NomenclatureНабор]
        ([idNom])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Nomenclature_idNom1] in table 'ProductComposeNumber'
ALTER TABLE [dbo].[ProductComposeNumber]
ADD CONSTRAINT [FK_NomenclatureProductCompose1]
    FOREIGN KEY ([Nomenclature_idNom1])
    REFERENCES [dbo].[NomenclatureНабор]
        ([idNom])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NomenclatureProductCompose1'
CREATE INDEX [IX_FK_NomenclatureProductCompose1]
ON [dbo].[ProductComposeNumber]
    ([Nomenclature_idNom1]);
GO

-- Creating foreign key on [Nomenclature_idNom] in table 'StoreGoodsNumber'
ALTER TABLE [dbo].[StoreGoodsNumber]
ADD CONSTRAINT [FK_NomenclatureStoreGoods]
    FOREIGN KEY ([Nomenclature_idNom])
    REFERENCES [dbo].[NomenclatureНабор]
        ([idNom])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_NomenclatureStoreGoods'
CREATE INDEX [IX_FK_NomenclatureStoreGoods]
ON [dbo].[StoreGoodsNumber]
    ([Nomenclature_idNom]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------