
-- -----------------------------------------------------
-- Table `Organization`
-- -----------------------------------------------------
CREATE TABLE `Organization` (
  `OrgId` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(200) NOT NULL,
  `Address` VARCHAR(500) NULL,
  `Country` VARCHAR(200) NULL,
  `IsCustomer` TINYINT ZEROFILL NULL,
  `CreatedOn` DATE NULL,
  `CustomerCode` VARCHAR(100) NULL,
  PRIMARY KEY (`OrgId`),
  UNIQUE INDEX `OrgId_UNIQUE` (`OrgId` ASC));



-- -----------------------------------------------------
-- Table `User`
-- -----------------------------------------------------
CREATE TABLE `User` (
  `UserId` INT NOT NULL AUTO_INCREMENT,
  `OrgId` INT NOT NULL,
  `Name` VARCHAR(200) NULL,
  `EMail` VARCHAR(200) NULL,
  `Password` VARCHAR(200) NULL,
  `ContactNo` VARCHAR(12) NULL,
  `Role` VARCHAR(500) NULL,
  `CreatedOn` DATETIME NULL,
  PRIMARY KEY (`UserId`),
  UNIQUE INDEX `UserId_UNIQUE` (`UserId` ASC),
  INDEX `OrgId_idx` (`OrgId` ASC),
  CONSTRAINT `OrgId`
    FOREIGN KEY (`OrgId`)
    REFERENCES `Organization` (`OrgId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);



-- -----------------------------------------------------
-- Table `MigrationTarget`
-- -----------------------------------------------------
CREATE TABLE `MigrationTarget` (
  `TargetId` INT NOT NULL AUTO_INCREMENT,
  `TargetCloudName` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`TargetId`),
  UNIQUE INDEX `TargetId_UNIQUE` (`TargetId` ASC));



-- -----------------------------------------------------
-- Table `MigrationSource`
-- -----------------------------------------------------
CREATE TABLE `MigrationSource` (
  `MigrationSourceId` INT NOT NULL AUTO_INCREMENT,
  `SourceName` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`MigrationSourceId`),
  UNIQUE INDEX `MigrationSourceId_UNIQUE` (`MigrationSourceId` ASC));