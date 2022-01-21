-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Projeto Integrador - GenTour
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Projeto Integrador - GenTour
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Projeto Integrador - GenTour` DEFAULT CHARACTER SET utf8 ;
USE `Projeto Integrador - GenTour` ;

-- -----------------------------------------------------
-- Table `Projeto Integrador - GenTour`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Projeto Integrador - GenTour`.`tb_usuario` (
  `id_usuario` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_usuario`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Projeto Integrador - GenTour`.`tb_tiposTurismo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Projeto Integrador - GenTour`.`tb_tiposTurismo` (
  `id_tiposTurismo` INT NOT NULL AUTO_INCREMENT,
  `tipo_Turismo` VARCHAR(255) NOT NULL,
  `local` VARCHAR(255) NOT NULL,
  `temporada` VARCHAR(255) NOT NULL,
  `fk_usuario` INT NOT NULL,
  PRIMARY KEY (`id_tiposTurismo`),
  INDEX `fk_tb_tiposTurismo_tb_usuario_idx` (`fk_usuario` ASC) VISIBLE,
  CONSTRAINT `fk_tb_tiposTurismo_tb_usuario`
    FOREIGN KEY (`fk_usuario`)
    REFERENCES `Projeto Integrador - GenTour`.`tb_usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Projeto Integrador - GenTour`.`tb_turismo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Projeto Integrador - GenTour`.`tb_turismo` (
  `id_turismo` INT NOT NULL AUTO_INCREMENT,
  `hospedagem` VARCHAR(255) NOT NULL,
  `atracoes` VARCHAR(255) NOT NULL,
  `preco` FLOAT NULL,
  `locomocao` VARCHAR(255) NOT NULL,
  `fk_tipoTurismo` INT NOT NULL,
  PRIMARY KEY (`id_turismo`),
  INDEX `fk_tb_turismo_tb_tiposTurismo1_idx` (`fk_tipoTurismo` ASC) VISIBLE,
  CONSTRAINT `fk_tb_turismo_tb_tiposTurismo1`
    FOREIGN KEY (`fk_tipoTurismo`)
    REFERENCES `Projeto Integrador - GenTour`.`tb_tiposTurismo` (`id_tiposTurismo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
