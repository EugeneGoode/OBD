SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Statt
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Statt` ;

-- -----------------------------------------------------
-- Schema Statt
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Statt` DEFAULT CHARACTER SET utf8 ;
USE `Statt` ;

-- -----------------------------------------------------
-- Table `Statt`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Statt`.`User` (
  `id` INT NOT NULL,
  `password` TEXT NULL,
  `email` TEXT NULL,
  `status` INT NULL,
  `username` VARCHAR(45) NULL,
  `beat_id GUID` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `status_UNIQUE` (`status` ASC) VISIBLE,
  INDEX `fk_User_beat1_idx` (`beat_id GUID` ASC) VISIBLE,
  CONSTRAINT `fk_User_beat1`
    FOREIGN KEY (`beat_id GUID`)
    REFERENCES `Statt`.`beat` (`id GUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Statt`.`ServiceNode`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Statt`.`ServiceNode` (
  `url` TEXT NOT NULL,
  `name` TEXT NULL,
  `description` TEXT NULL,
  `OpenApi` TEXT NULL,
  PRIMARY KEY (`url`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Statt`.`Source`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Statt`.`Source` (
  `url` TEXT NOT NULL,
  `password` TEXT NULL,
  `username` TEXT NULL,
  `apikey` TEXT NULL,
  `beat_id GUID` INT NOT NULL,
  PRIMARY KEY (`url`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  INDEX `fk_Source_beat_idx` (`beat_id GUID` ASC) VISIBLE,
  CONSTRAINT `fk_Source_beat`
    FOREIGN KEY (`beat_id GUID`)
    REFERENCES `Statt`.`beat` (`id GUID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Statt`.`ServiceChain`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Statt`.`ServiceChain` (
  `id` INT NOT NULL,
  `next` TEXT NULL,
  `ServiceNode_url` TEXT NOT NULL,
  `ServiceChain_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_ServiceChain_ServiceNode1_idx` (`ServiceNode_url` ASC) VISIBLE,
  INDEX `fk_ServiceChain_ServiceChain1_idx` (`ServiceChain_id` ASC) VISIBLE,
  CONSTRAINT `fk_ServiceChain_ServiceNode1`
    FOREIGN KEY (`ServiceNode_url`)
    REFERENCES `Statt`.`ServiceNode` (`url`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ServiceChain_ServiceChain1`
    FOREIGN KEY (`ServiceChain_id`)
    REFERENCES `Statt`.`ServiceChain` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Statt`.`Stream`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Statt`.`Stream` (
  `name` INT NOT NULL,
  `description` TEXT NULL,
  `etc` TEXT NULL,
  `ServiceChain_id` INT NOT NULL,
  PRIMARY KEY (`name`),
  INDEX `fk_Stream_ServiceChain1_idx` (`ServiceChain_id` ASC) VISIBLE,
  CONSTRAINT `fk_Stream_ServiceChain1`
    FOREIGN KEY (`ServiceChain_id`)
    REFERENCES `Statt`.`ServiceChain` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Statt`.`BeatType`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Statt`.`BeatType` (
  `name` TEXT NOT NULL,
  `installer` TEXT NULL,
  PRIMARY KEY (`name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Statt`.`beat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Statt`.`beat` (
  `id GUID` INT NOT NULL,
  `interval` INT NULL,
  `Stream_name` INT NOT NULL,
  `BeatType_name` TEXT NOT NULL,
  PRIMARY KEY (`id GUID`),
  INDEX `fk_beat_Stream1_idx` (`Stream_name` ASC) VISIBLE,
  INDEX `fk_beat_BeatType1_idx` (`BeatType_name` ASC) VISIBLE,
  CONSTRAINT `fk_beat_Stream1`
    FOREIGN KEY (`Stream_name`)
    REFERENCES `Statt`.`Stream` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_beat_BeatType1`
    FOREIGN KEY (`BeatType_name`)
    REFERENCES `Statt`.`BeatType` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

START TRANSACTION;
USE `Statt`;
INSERT INTO `Statt`.`Account` (`email`, `login`, `password`, `state`, `avatar`, `role`) VALUES ('zhenyahudenko@gmail.com', 'Zhenya', 'qwerty123', 'active', 'null', 'Admin');

-- -----------------------------------------------------
-- Data for table `mydb`.`access`
-- -----------------------------------------------------
START TRANSACTION;
USE `Statt`;
INSERT INTO `Statt`.`access` (`role`) VALUES ('Admin', 2, 1);
               
COMMIT;
