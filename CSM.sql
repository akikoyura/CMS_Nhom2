-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cms_srs
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cms_srs
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cms_srs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cms_srs` ;

-- -----------------------------------------------------
-- Table `cms_srs`.`content`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cms_srs`.`content` ;

CREATE TABLE IF NOT EXISTS `cms_srs`.`content` (
  `Id` INT(11) NOT NULL AUTO_INCREMENT,
  `Title` MEDIUMTEXT NOT NULL,
  `Brief` MEDIUMTEXT NOT NULL,
  `Content` LONGTEXT NOT NULL,
  `CreateDate` DATETIME NOT NULL,
  `UpdateTime` DATETIME NOT NULL,
  `AuthorId` INT(11) NULL DEFAULT NULL,
  `Sort` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Id_UNIQUE` (`Id` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cms_srs`.`member`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cms_srs`.`member` ;

CREATE TABLE IF NOT EXISTS `cms_srs`.`member` (
  `Id` INT(11) NOT NULL AUTO_INCREMENT,
  `Firstname` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `Lastname` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `Password` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `Username` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `Email` VARCHAR(50) NOT NULL,
  `Phone` INT(11) NULL DEFAULT NULL,
  `Description` MEDIUMTEXT NULL DEFAULT NULL,
  `CreateDate` DATETIME NULL DEFAULT NULL,
  `UpdateTime` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `Id_UNIQUE` (`Id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
