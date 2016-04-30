-- MySQL Script generated by MySQL Workbench
-- 02/26/16 21:43:39
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`palavraChave`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`palavraChave` (
  `codigo` INT NOT NULL COMMENT '',
  `descricao` VARCHAR(45) NOT NULL COMMENT '',
  PRIMARY KEY (`codigo`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`endereco` (
  `idendereco` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `logradouro` VARCHAR(45) NULL COMMENT '',
  `descricao` VARCHAR(45) NULL COMMENT '',
  `complemento` VARCHAR(45) NULL COMMENT '',
  `numero` VARCHAR(45) NULL COMMENT '',
  `CEP` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`idendereco`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`usuario` (
  `codigo` INT NOT NULL COMMENT '',
  `nome` VARCHAR(45) NOT NULL COMMENT '',
  `telefone` VARCHAR(11) NULL COMMENT '',
  `endereco_idendereco` INT NOT NULL COMMENT '',
  PRIMARY KEY (`codigo`)  COMMENT '',
  INDEX `fk_usuario_endereco_idx` (`endereco_idendereco` ASC)  COMMENT '',
  CONSTRAINT `fk_usuario_endereco`
    FOREIGN KEY (`endereco_idendereco`)
    REFERENCES `mydb`.`endereco` (`idendereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`areaConhecimento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`areaConhecimento` (
  `codigo` INT NOT NULL COMMENT '',
  `descricao` VARCHAR(100) NOT NULL COMMENT '',
  PRIMARY KEY (`codigo`)  COMMENT '')
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`titulo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`titulo` (
  `codigo` INT NOT NULL COMMENT '',
  `nome` VARCHAR(45) NULL COMMENT '',
  `areaConhecimento_codigo` INT NOT NULL COMMENT '',
  PRIMARY KEY (`codigo`)  COMMENT '',
  INDEX `fk_titulos_areaConhecimento1_idx` (`areaConhecimento_codigo` ASC)  COMMENT '',
  CONSTRAINT `fk_titulos_areaConhecimento1`
    FOREIGN KEY (`areaConhecimento_codigo`)
    REFERENCES `mydb`.`areaConhecimento` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`exemplar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`exemplar` (
  `codigo` INT NOT NULL COMMENT '',
  `titulos_codigo` INT NOT NULL COMMENT '',
  PRIMARY KEY (`codigo`)  COMMENT '',
  INDEX `fk_exemplar_titulos1_idx` (`titulos_codigo` ASC)  COMMENT '',
  CONSTRAINT `fk_exemplar_titulos1`
    FOREIGN KEY (`titulos_codigo`)
    REFERENCES `mydb`.`titulo` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`autore`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`autore` (
  `codigo` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `nome` VARCHAR(45) NOT NULL COMMENT '',
  `telefone` VARCHAR(11) NULL COMMENT '',
  `endereco_idendereco` INT NOT NULL COMMENT '',
  PRIMARY KEY (`codigo`)  COMMENT '',
  INDEX `fk_autores_endereco1_idx` (`endereco_idendereco` ASC)  COMMENT '',
  CONSTRAINT `fk_autores_endereco1`
    FOREIGN KEY (`endereco_idendereco`)
    REFERENCES `mydb`.`endereco` (`idendereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`editora`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`editora` (
  `codigo` INT NOT NULL COMMENT '',
  `nome` VARCHAR(45) NULL COMMENT '',
  `telefone` VARCHAR(11) NULL COMMENT '',
  `endereco_idendereco` INT NOT NULL COMMENT '',
  PRIMARY KEY (`codigo`)  COMMENT '',
  INDEX `fk_editora_endereco1_idx` (`endereco_idendereco` ASC)  COMMENT '',
  CONSTRAINT `fk_editora_endereco1`
    FOREIGN KEY (`endereco_idendereco`)
    REFERENCES `mydb`.`endereco` (`idendereco`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`autor_titulo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`autor_titulo` (
  `idautor_titulo` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `autore_codigo` INT NOT NULL COMMENT '',
  `titulo_codigo` INT NOT NULL COMMENT '',
  PRIMARY KEY (`idautor_titulo`)  COMMENT '',
  INDEX `fk_autor_titulo_autore1_idx` (`autore_codigo` ASC)  COMMENT '',
  INDEX `fk_autor_titulo_titulo1_idx` (`titulo_codigo` ASC)  COMMENT '',
  CONSTRAINT `fk_autor_titulo_autore1`
    FOREIGN KEY (`autore_codigo`)
    REFERENCES `mydb`.`autore` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_autor_titulo_titulo1`
    FOREIGN KEY (`titulo_codigo`)
    REFERENCES `mydb`.`titulo` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`alunos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`alunos` (
  `idalunos` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `usuario_codigo` INT NOT NULL COMMENT '',
  PRIMARY KEY (`idalunos`)  COMMENT '',
  INDEX `fk_alunos_usuario1_idx` (`usuario_codigo` ASC)  COMMENT '',
  CONSTRAINT `fk_alunos_usuario1`
    FOREIGN KEY (`usuario_codigo`)
    REFERENCES `mydb`.`usuario` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`fucionarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fucionarios` (
  `idfucionarios` INT NOT NULL COMMENT '',
  `usuario_codigo` INT NOT NULL COMMENT '',
  PRIMARY KEY (`idfucionarios`)  COMMENT '',
  INDEX `fk_fucionarios_usuario1_idx` (`usuario_codigo` ASC)  COMMENT '',
  CONSTRAINT `fk_fucionarios_usuario1`
    FOREIGN KEY (`usuario_codigo`)
    REFERENCES `mydb`.`usuario` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`professores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`professores` (
  `idprofessores` INT NOT NULL COMMENT '',
  `usuario_codigo` INT NOT NULL COMMENT '',
  `autore_codigo` INT NULL COMMENT '',
  PRIMARY KEY (`idprofessores`)  COMMENT '',
  INDEX `fk_professores_usuario1_idx` (`usuario_codigo` ASC)  COMMENT '',
  INDEX `fk_professores_autore1_idx` (`autore_codigo` ASC)  COMMENT '',
  CONSTRAINT `fk_professores_usuario1`
    FOREIGN KEY (`usuario_codigo`)
    REFERENCES `mydb`.`usuario` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_professores_autore1`
    FOREIGN KEY (`autore_codigo`)
    REFERENCES `mydb`.`autore` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`editora_titulo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`editora_titulo` (
  `ideditora_titulo` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `editora_codigo` INT NOT NULL COMMENT '',
  `titulo_codigo` INT NOT NULL COMMENT '',
  `edicao` VARCHAR(45) NULL COMMENT '',
  PRIMARY KEY (`ideditora_titulo`)  COMMENT '',
  INDEX `fk_editora_titulo_editora1_idx` (`editora_codigo` ASC)  COMMENT '',
  INDEX `fk_editora_titulo_titulo1_idx` (`titulo_codigo` ASC)  COMMENT '',
  CONSTRAINT `fk_editora_titulo_editora1`
    FOREIGN KEY (`editora_codigo`)
    REFERENCES `mydb`.`editora` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_editora_titulo_titulo1`
    FOREIGN KEY (`titulo_codigo`)
    REFERENCES `mydb`.`titulo` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`palavra_titulo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`palavra_titulo` (
  `idpalavra_licro` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `palavraChave_codigo` INT NOT NULL COMMENT '',
  `titulo_codigo` INT NOT NULL COMMENT '',
  PRIMARY KEY (`idpalavra_licro`)  COMMENT '',
  INDEX `fk_palavra_licro_palavraChave1_idx` (`palavraChave_codigo` ASC)  COMMENT '',
  INDEX `fk_palavra_licro_titulo1_idx` (`titulo_codigo` ASC)  COMMENT '',
  CONSTRAINT `fk_palavra_licro_palavraChave1`
    FOREIGN KEY (`palavraChave_codigo`)
    REFERENCES `mydb`.`palavraChave` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_palavra_licro_titulo1`
    FOREIGN KEY (`titulo_codigo`)
    REFERENCES `mydb`.`titulo` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`emprestado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`emprestado` (
  `idemprestado` INT NOT NULL AUTO_INCREMENT COMMENT '',
  `dataInicio` DATE NOT NULL COMMENT '',
  `dataFinal` DATE NOT NULL COMMENT '',
  `exemplar_codigo` INT NOT NULL COMMENT '',
  `usuario_codigo` INT NOT NULL COMMENT '',
  PRIMARY KEY (`idemprestado`)  COMMENT '',
  INDEX `fk_emprestado_exemplar1_idx` (`exemplar_codigo` ASC)  COMMENT '',
  INDEX `fk_emprestado_usuario1_idx` (`usuario_codigo` ASC)  COMMENT '',
  CONSTRAINT `fk_emprestado_exemplar1`
    FOREIGN KEY (`exemplar_codigo`)
    REFERENCES `mydb`.`exemplar` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_emprestado_usuario1`
    FOREIGN KEY (`usuario_codigo`)
    REFERENCES `mydb`.`usuario` (`codigo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
