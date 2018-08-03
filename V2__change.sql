-- -----------------------------------------------------
-- Table `MigrationType`
-- -----------------------------------------------------
CREATE TABLE `MigrationType` (
  `MigrationTypeId` INT NOT NULL AUTO_INCREMENT,
  `TypeName` VARCHAR(100) NULL,
  PRIMARY KEY (`MigrationTypeId`),
  UNIQUE INDEX `MigrationTypeId_UNIQUE` (`MigrationTypeId` ASC));
  