-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`BeatType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`BeatType` ;

CREATE TABLE IF NOT EXISTS `mydb`.`BeatType` (
  `Id` INT NOT NULL,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Beat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Beat` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Beat` (
  `Id` INT NOT NULL,
  `interval` INT NULL,
  `source` VARCHAR(300) NULL,
  `type` INT NULL,
  `BeatType_Id` INT NOT NULL,
  `Entry_role` VARCHAR(100) NOT NULL,
  `RawData_name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Beat_BeatType1_idx` (`BeatType_Id` ASC) VISIBLE,
  INDEX `fk_Beat_Entry1_idx` (`Entry_role` ASC) VISIBLE,
  INDEX `fk_Beat_RawData1_idx` (`RawData_name` ASC) VISIBLE,
  CONSTRAINT `fk_Beat_BeatType1`
    FOREIGN KEY (`BeatType_Id`)
    REFERENCES `mydb`.`BeatType` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Beat_Entry1`
    FOREIGN KEY (`Entry_role`)
    REFERENCES `mydb`.`Entry` (`role`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Beat_RawData1`
    FOREIGN KEY (`RawData_name`)
    REFERENCES `mydb`.`RawData` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Entry`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Entry` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Entry` (
  `role` VARCHAR(100) NOT NULL,
  `Profile_role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`role`),
  INDEX `fk_Entry_Profile1_idx` (`Profile_role` ASC) VISIBLE,
  CONSTRAINT `fk_Entry_Profile1`
    FOREIGN KEY (`Profile_role`)
    REFERENCES `mydb`.`Profile` (`role`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Profile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Profile` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Profile` (
  `email` VARCHAR(45) NULL,
  `login` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `role` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`role`))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `mydb`.`Tools`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Tools` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Tools` (
  `Id` INT NOT NULL,
  `servicenode` INT NULL,
  `next` INT NULL,
  `Tools_Id` INT NOT NULL,
  `Tools_Id` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_Tools_Tools1_idx` (`Tools_Id` ASC) VISIBLE,
  INDEX `fk_Tools_Tool1_idx` (`Tool_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Tools_Tools1`
    FOREIGN KEY (`Tools_Id`)
    REFERENCES `mydb`.`Tools` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Tools_Tool1`
    FOREIGN KEY (`Tool_Id`)
    REFERENCES `mydb`.`Tool` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tool`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Tool` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Tool` (
  `Id` INT NOT NULL,
  `url` VARCHAR(300) NULL,
  `name` VARCHAR(45) NULL,
  `description` VARCHAR(200) NULL,
  `openapi` VARCHAR(200) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `mydb`.`ProcessedData`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`ProcessedData` ;

CREATE TABLE IF NOT EXISTS `mydb`.`ProcessedData` (
  `name` VARCHAR(200) NOT NULL,
  `description` VARCHAR(500) NULL,
  `Entry_role` VARCHAR(100) NOT NULL,
  `RawData_name` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`name`),
  INDEX `fk_ProcessedData_Entry1_idx` (`Entry_role` ASC) VISIBLE,
  INDEX `fk_ProcessedData_RawData1_idx` (`RawData_name` ASC) VISIBLE,
  CONSTRAINT `fk_ProcessedData_Entry1`
    FOREIGN KEY (`Entry_role`)
    REFERENCES `mydb`.`Entry` (`role`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProcessedData_RawData1`
    FOREIGN KEY (`RawData_name`)
    REFERENCES `mydb`.`RawData` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`RawData`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`RawData` ;

CREATE TABLE IF NOT EXISTS `mydb`.`RawData` (
  `name` VARCHAR(200) NOT NULL,
  `description` VARCHAR(500) NULL,
  `entrypoint` INT NULL,
  `beats` VARCHAR(200) NULL,
  `Tools_Id` INT NOT NULL,
  `ProcessedData_name` VARCHAR(200) NOT NULL,
  `Entry_role` VARCHAR(100) NOT NULL,
  INDEX `fk_RawData_Tools1_idx` (`Tools_Id` ASC) VISIBLE,
  PRIMARY KEY (`name`),
  INDEX `fk_RawData_ProcessedData1_idx` (`ProcessedData_name` ASC) VISIBLE,
  INDEX `fk_RawData_Entry1_idx` (`Entry_role` ASC) VISIBLE,
  CONSTRAINT `fk_RawData_Tools1`
    FOREIGN KEY (`Tools_Id`)
    REFERENCES `mydb`.`Tools` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RawData_ProcessedData1`
    FOREIGN KEY (`ProcessedData_name`)
    REFERENCES `mydb`.`ProcessedData` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_RawData_Entry1`
    FOREIGN KEY (`Entry_role`)
    REFERENCES `mydb`.`Entry` (`role`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`SourceData`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`SourceData` ;

CREATE TABLE IF NOT EXISTS `mydb`.`SourceData` (
  `Id` INT NOT NULL,
  `url` VARCHAR(300) NULL,
  `apikey` VARCHAR(300) NULL,
  `Beat_Id` INT NOT NULL,
  PRIMARY KEY (`Id`),
  INDEX `fk_SourceData_Beat_idx` (`Beat_Id` ASC) VISIBLE,
  CONSTRAINT `fk_SourceData_Beat`
    FOREIGN KEY (`Beat_Id`)
    REFERENCES `mydb`.`Beat` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Profile` (`email`, `login`, `password`, `state`, `avatar`, `role`) VALUES ('zhenyahudenko@gmail.com', 'Zhenya', 'qwerty123', 'active', 'null', 'Admin');
INSERT INTO `mydb`.`Profile` (`email`, `login`, `password`, `state`, `avatar`, `role`) VALUES ('vladutkin02@gmail.com', 'Vlad', 'ducksarecool', 'active', 'null', 'Moderator');
INSERT INTO `mydb`.`Profile` (`email`, `login`, `password`, `state`, `avatar`, `role`) VALUES ('beanomen4@gmail.com', 'Dima', 'residentsleeper', 'active', 'null', 'User');
INSERT INTO `mydb`.`Profile` (`email`, `login`, `password`, `state`, `avatar`, `role`) VALUES ('ivanovrodion.io92@gmail.com', 'Rodion', 'qwertion', 'active', 'null', 'Moderator');
INSERT INTO `mydb`.`Profile` (`email`, `login`, `password`, `state`, `avatar`, `role`) VALUES ('sfrankov2@gmail.com', 'Sasha', 'sanyok', 'active', 'null', 'Moderator');
INSERT INTO `mydb`.`Profile` (`email`, `login`, `password`, `state`, `avatar`, `role`) VALUES ('antkost64@gmail.com', 'Anton', 'qwerty321', 'active', 'null', 'Moderator');
INSERT INTO `mydb`.`Profile` (`email`, `login`, `password`, `state`, `avatar`, `role`) VALUES ('badperson@gmail.com', 'Ihnat', 'qwertyuio', 'active', 'null', 'Banned_User');


-- -----------------------------------------------------
-- Data for table `mydb`.`Entry`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Entry` (`role`) VALUES ('Admin', 1, 1);
INSERT INTO `mydb`.`Entry` (`role`) VALUES ('Moderator', 1, 2);
INSERT INTO `mydb`.`Entry` (`role`) VALUES ('User', 2, 1);
INSERT INTO `mydb`.`Entry` (`role`) VALUES ('Banned_User', 2, 2);

COMMIT;
