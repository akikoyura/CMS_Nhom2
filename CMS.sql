-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema new_schema1
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
-- Table `cms_srs`.`role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cms_srs`.`role` ;

CREATE TABLE IF NOT EXISTS `cms_srs`.`role` (
  `RoleId` INT(11) UNSIGNED NOT NULL,
  `RoleName` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`RoleId`),
  UNIQUE INDEX `RoleId_UNIQUE` (`RoleId` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cms_srs`.`member`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cms_srs`.`member` ;

CREATE TABLE IF NOT EXISTS `cms_srs`.`member` (
  `MemberId` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Firstname` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `Lastname` VARCHAR(50) NOT NULL,
  `Passwords` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `Username` VARCHAR(50) CHARACTER SET 'utf8' NOT NULL,
  `Email` VARCHAR(50) NOT NULL,
  `Phone` INT(11) NULL DEFAULT NULL,
  `Description` MEDIUMTEXT NULL DEFAULT NULL,
  `CreateDate` DATETIME NOT NULL,
  `UpdateTime` DATETIME NULL DEFAULT NULL,
  `RoleId` INT(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`MemberId`),
  UNIQUE INDEX `Id_UNIQUE` (`MemberId` ASC) VISIBLE,
  INDEX `RoleId_idx` (`RoleId` ASC) VISIBLE,
  CONSTRAINT `RoleID`
    FOREIGN KEY (`RoleId`)
    REFERENCES `cms_srs`.`role` (`RoleId`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cms_srs`.`content`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cms_srs`.`content` ;

CREATE TABLE IF NOT EXISTS `cms_srs`.`content` (
  `ContentId` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Title` MEDIUMTEXT NOT NULL,
  `Brief` MEDIUMTEXT NOT NULL,
  `Content` LONGTEXT NOT NULL,
  `CreateDate` DATETIME NOT NULL,
  `UpdateTime` DATETIME NOT NULL,
  `AuthorId` INT(11) UNSIGNED NULL DEFAULT NULL,
  `Sort` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`ContentId`),
  UNIQUE INDEX `Id_UNIQUE` (`ContentId` ASC) VISIBLE,
  INDEX `MemberID_idx` (`AuthorId` ASC) VISIBLE,
  CONSTRAINT `MemberID`
    FOREIGN KEY (`AuthorId`)
    REFERENCES `cms_srs`.`member` (`MemberId`))
ENGINE = InnoDB
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
