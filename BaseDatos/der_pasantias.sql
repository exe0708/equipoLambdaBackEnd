-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema der_pasantias
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema der_pasantias
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `der_pasantias` DEFAULT CHARACTER SET utf8mb4 ;
USE `der_pasantias` ;

-- -----------------------------------------------------
-- Table `der_pasantias`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`pais` (
  `id_pais` INT(11) NOT NULL AUTO_INCREMENT,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB
AUTO_INCREMENT = 15
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`provincia` (
  `id_provincia` INT(11) NOT NULL AUTO_INCREMENT,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `id_pais` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_provincia`),
  INDEX `id_pais` (`id_pais` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`localidad` (
  `id_localidad` INT(11) NOT NULL AUTO_INCREMENT,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `id_provincia` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_localidad`),
  INDEX `id_provincia` (`id_provincia` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`barrio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`barrio` (
  `id_barrio` INT(11) NOT NULL AUTO_INCREMENT,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `id_localidad` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_barrio`),
  INDEX `id_localidad` (`id_localidad` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`cantidad_años_pasante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`cantidad_años_pasante` (
  `id_cantidad_añospasante` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(150) NULL DEFAULT NULL,
  `nombre` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`id_cantidad_añospasante`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`tipo_empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`tipo_empresa` (
  `id_tipoEmpresa` INT(11) NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(200) NULL DEFAULT NULL,
  `nombre` VARCHAR(90) NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipoEmpresa`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`empresa` (
  `id_empresa` INT(11) NOT NULL AUTO_INCREMENT,
  `cuit` VARCHAR(90) NULL DEFAULT NULL,
  `guid` VARCHAR(90) NULL DEFAULT NULL,
  `observaciones` VARCHAR(200) NULL DEFAULT NULL,
  `razon_social` VARCHAR(100) NULL DEFAULT NULL,
  `id_tipoEmpresa` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_empresa`),
  INDEX `id_tipoEmpresa` (`id_tipoEmpresa` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`especialidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`especialidad` (
  `id_especialidad` INT(11) NOT NULL AUTO_INCREMENT,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(90) NOT NULL,
  PRIMARY KEY (`id_especialidad`))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`estado_arm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`estado_arm` (
  `id_estado` INT(11) NOT NULL AUTO_INCREMENT,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`genero` (
  `id_genero` INT(11) NOT NULL AUTO_INCREMENT,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_genero`))
ENGINE = InnoDB
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`estado_sucursal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`estado_sucursal` (
  `id_estado` INT(11) NOT NULL AUTO_INCREMENT,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`sucursal_x_empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`sucursal_x_empresa` (
  `id_sucursal` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_sucursal` VARCHAR(80) NOT NULL,
  `cantidad_empleados` INT(11) NULL DEFAULT NULL,
  `email` VARCHAR(45) NOT NULL,
  `fecha_registro` DATETIME NOT NULL,
  `rubro` VARCHAR(45) NULL DEFAULT NULL,
  `sitio_web` VARCHAR(60) NULL DEFAULT NULL,
  `celular` INT(11) NULL DEFAULT NULL,
  `telefono_fijo` INT(11) NULL DEFAULT NULL,
  `calle` VARCHAR(45) NULL DEFAULT NULL,
  `numero_calle` INT(11) NULL DEFAULT NULL,
  `id_barrio` INT(11) NULL DEFAULT NULL,
  `id_empresa` INT(11) NOT NULL,
  `id_estado` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`),
  INDEX `id_barrio` (`id_barrio` ASC),
  INDEX `id_empresa` (`id_empresa` ASC),
  INDEX `id_estado` (`id_estado` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 13
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`formulario_arm_xempresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`formulario_arm_xempresa` (
  `id_arm` INT(11) NOT NULL AUTO_INCREMENT,
  `cantidadPasantes` INT(11) NULL DEFAULT NULL,
  `cargoACubrir` VARCHAR(90) NULL DEFAULT NULL,
  `codigoArm` VARCHAR(150) NULL DEFAULT NULL,
  `denegacionDebidoA` VARCHAR(200) NULL DEFAULT NULL,
  `duracionMeses` INT(11) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `estudiante_docente` TINYINT(4) NULL DEFAULT NULL,
  `experiencia` VARCHAR(800) NULL DEFAULT NULL,
  `fechaAlta` DATE NULL DEFAULT NULL,
  `fechaBaja` DATE NULL DEFAULT NULL,
  `horaInicio` TIME NULL DEFAULT NULL,
  `horaFin` TIME NULL DEFAULT NULL,
  `lugarTrabajo` VARCHAR(150) NULL DEFAULT NULL,
  `otrosConocimientos` VARCHAR(400) NULL DEFAULT NULL,
  `otrosRequisitos` VARCHAR(400) NULL DEFAULT NULL,
  `perfilSolicitado` VARCHAR(200) NULL DEFAULT NULL,
  `remuneracion` FLOAT NULL DEFAULT NULL,
  `seOfrece` VARCHAR(800) NULL DEFAULT NULL,
  `id_genero` INT(11) NULL DEFAULT NULL,
  `id_cantidadAños` INT(11) NULL DEFAULT NULL,
  `id_estado` INT(11) NULL DEFAULT NULL,
  `id_sucursal` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_arm`),
  INDEX `id_estado` (`id_estado` ASC),
  INDEX `id_genero` (`id_genero` ASC),
  INDEX `id_sucursal` (`id_sucursal` ASC),
  INDEX `id_cantidadAños` (`id_cantidadAños` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `der_pasantias`.`especialidad_x_arm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `der_pasantias`.`especialidad_x_arm` (
  `id_especialidadXArm` INT(11) NOT NULL,
  `estado` TINYINT(4) NULL DEFAULT NULL,
  `id_formularioArm` INT(11) NOT NULL,
  `id_especialidad` INT(11) NOT NULL,
  PRIMARY KEY (`id_especialidadXArm`),
  INDEX `id_especialidad` (`id_especialidad` ASC),
  INDEX `especialidad_x_arm_ibfk_1` (`id_formularioArm` ASC))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
