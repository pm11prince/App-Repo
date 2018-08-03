-- -----------------------------------------------------
-- Table `Template`
-- -----------------------------------------------------
CREATE TABLE `Template` (
  `TemplateId` INT NOT NULL AUTO_INCREMENT,
  `WorkloadId` INT NOT NULL,
  `Name` VARCHAR(100) NULL,
  `Description` VARCHAR(500) NULL,
  `NetworkId` VARCHAR(100) NULL,
  `SubnetId` VARCHAR(100) NULL,
  `SecurityGroupId` VARCHAR(100) NULL,
  `PrivateIp` VARCHAR(18) NULL,
  `PrivateIpAction` VARCHAR(45) NULL,
  `RegionId` INT NOT NULL,
  `CreatedOn` DATETIME NULL,
  PRIMARY KEY (`TemplateId`),
  UNIQUE INDEX `TemplateId_UNIQUE` (`TemplateId` ASC),
  INDEX `WorkloadId_idx` (`WorkloadId` ASC),
  INDEX `RegionId_idx` (`RegionId` ASC),
  CONSTRAINT `WorkloadId`
    FOREIGN KEY (`WorkloadId`)
    REFERENCES `MigrationWorkload` (`WorkloadId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `RegionId`
    FOREIGN KEY (`RegionId`)
    REFERENCES `Region` (`RegionId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);