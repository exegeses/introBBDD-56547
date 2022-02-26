-- MySQL Script generated by MySQL Workbench
-- Sat Feb 26 16:14:47 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

USE introDB;
-- -----------------------------------------------------
-- Table `introDB`.`roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `introDB`.`roles` ;

CREATE TABLE IF NOT EXISTS `introDB`.`roles` (
  `idRol` TINYINT NOT NULL,
  `rol` VARCHAR(30) NULL,
  PRIMARY KEY (`idRol`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `introDB`.`usuarios`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `introDB`.`usuarios` ;

CREATE TABLE IF NOT EXISTS `introDB`.`usuarios` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `clave` VARCHAR(75) NOT NULL,
  `idRol` TINYINT NOT NULL,
  `fechaInicio` DATETIME NOT NULL,
  `fechaNacimiento` DATE NOT NULL,
  `fechaLogin` DATETIME NOT NULL,
  PRIMARY KEY (`idUsuario`),
  INDEX `fk_roles_idx` (`idRol` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
  CONSTRAINT `fk_roles`
    FOREIGN KEY (`idRol`)
    REFERENCES `introDB`.`roles` (`idRol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

