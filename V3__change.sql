-- -----------------------------------------------------
-- Table `Migration`
-- -----------------------------------------------------
CREATE TABLE `Migration` (
  `MigrationId` INT NOT NULL AUTO_INCREMENT ,
  `CustomerId` INT NOT NULL
  `MigrationTypeId` INT NULL,
  `SourceId` INT NULL,
  `CreatedOn` DATETIME NULL,
  PRIMARY KEY (`MigrationId`),
  INDEX `CustomerId_idx` (`CustomerId` ASC),
  INDEX `SourceId_idx` (`MigrationTypeId` ASC),
  CONSTRAINT `CustomerId0`
    FOREIGN KEY (`CustomerId`)
    REFERENCES `Organization` (`OrgId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `SourceId0`
    FOREIGN KEY (`MigrationTypeId`)
    REFERENCES `MigrationSource` (`MigrationSourceId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `MigrationTypeId`
    FOREIGN KEY (`MigrationTypeId`)
    REFERENCES `MigrationType` (`MigrationTypeId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
