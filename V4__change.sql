-- -----------------------------------------------------
-- Table `Region`
-- -----------------------------------------------------
CREATE TABLE `Region` (
  `RegionId` INT NOT NULL AUTO_INCREMENT,
  `RegionName` VARCHAR(200) NOT NULL,
  `CloudId` INT NOT NULL,
  PRIMARY KEY (`RegionId`),
  UNIQUE INDEX `RegionId_UNIQUE` (`RegionId` ASC),
  INDEX `TargetId_idx` (`CloudId` ASC),
  CONSTRAINT `TargetId`
    FOREIGN KEY (`CloudId`)
    REFERENCES `MigrationTarget` (`TargetId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);