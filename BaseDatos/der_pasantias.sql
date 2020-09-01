-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema pasantias
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema pasantias
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pasantias` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `pasantias` ;

-- -----------------------------------------------------
-- Table `pasantias`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`pais` (
  `id_pais` INT NOT NULL,
  `estado` TINYINT(1) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pais`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`provincia` (
  `id_provincia` INT NOT NULL,
  `estado` TINYINT NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `id_pais` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_provincia`),
  INDEX `id_pais_idx` (`id_pais` ASC) VISIBLE,
  CONSTRAINT `id_pais`
    FOREIGN KEY (`id_pais`)
    REFERENCES `pasantias`.`pais` (`id_pais`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`localidad` (
  `id_localidad` INT NOT NULL,
  `estado` VARCHAR(45) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `id_provincia` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_localidad`),
  INDEX `id_provincia_idx` (`id_provincia` ASC) VISIBLE,
  CONSTRAINT `id_provincia`
    FOREIGN KEY (`id_provincia`)
    REFERENCES `pasantias`.`provincia` (`id_provincia`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`barrio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`barrio` (
  `id_barrio` INT NOT NULL,
  `estado` TINYINT NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `id_localidad` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_barrio`),
  INDEX `id_localidad_idx` (`id_localidad` ASC) VISIBLE,
  CONSTRAINT `id_localidad`
    FOREIGN KEY (`id_localidad`)
    REFERENCES `pasantias`.`localidad` (`id_localidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`cantidadañospasante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`cantidadañospasante` (
  `id_cantidad_añospasante` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_cantidad_añospasante`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`tipoempresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`tipoempresa` (
  `id_tipoEmpresa` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_tipoEmpresa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`empresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`empresa` (
  `id_empresa` INT NOT NULL,
  `cuit` VARCHAR(45) NULL DEFAULT NULL,
  `guid` VARCHAR(45) NULL DEFAULT NULL,
  `observaciones` VARCHAR(45) NULL DEFAULT NULL,
  `razon_social` VARCHAR(45) NULL DEFAULT NULL,
  `id_tipoEmpresa` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_empresa`),
  INDEX `id_tipoEmpresa_idx` (`id_tipoEmpresa` ASC) VISIBLE,
  CONSTRAINT `id_tipoEmpresa`
    FOREIGN KEY (`id_tipoEmpresa`)
    REFERENCES `pasantias`.`tipoempresa` (`id_tipoEmpresa`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`especialidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`especialidad` (
  `id_especialidad` INT NOT NULL,
  `estado` TINYINT NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_especialidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`estadoarm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`estadoarm` (
  `id_estado` INT NOT NULL,
  `estado` TINYINT NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`genero`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`genero` (
  `id_genero` INT NOT NULL,
  `estado` TINYINT NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_genero`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci
COMMENT = '		';


-- -----------------------------------------------------
-- Table `pasantias`.`estadosucursal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`estadosucursal` (
  `id_estado_sucursal` INT NOT NULL,
  `estado` TINYINT NULL DEFAULT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_estado_sucursal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`sucursalesxempresa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`sucursalesxempresa` (
  `id_sucursal` INT NOT NULL,
  `nombre_sucursal` VARCHAR(45) NULL DEFAULT NULL,
  `cantidad_empleados` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `fecha_registro` DATETIME NULL DEFAULT NULL,
  `rubro` VARCHAR(45) NULL DEFAULT NULL,
  `sitio_web` VARCHAR(45) NULL DEFAULT NULL,
  `celular` INT NULL DEFAULT NULL,
  `telefono_fijo` INT NULL DEFAULT NULL,
  `calle` VARCHAR(45) NULL DEFAULT NULL,
  `numero_calle` INT NULL DEFAULT NULL,
  `id_barrio` INT NULL DEFAULT NULL,
  `id_empresa` INT NULL DEFAULT NULL,
  `id_estado_sucursal` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_sucursal`),
  INDEX `id_empresa_idx` (`id_empresa` ASC) VISIBLE,
  INDEX `id_barrio_idx` (`id_barrio` ASC) VISIBLE,
  INDEX `id_estado_sucursal_idx` (`id_estado_sucursal` ASC) VISIBLE,
  CONSTRAINT `id_barrio`
    FOREIGN KEY (`id_barrio`)
    REFERENCES `pasantias`.`barrio` (`id_barrio`),
  CONSTRAINT `id_empresa`
    FOREIGN KEY (`id_empresa`)
    REFERENCES `pasantias`.`empresa` (`id_empresa`),
  CONSTRAINT `id_estado_sucursal`
    FOREIGN KEY (`id_estado_sucursal`)
    REFERENCES `pasantias`.`estadosucursal` (`id_estado_sucursal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`formularioarm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`formularioarm` (
  `id_arm` INT NOT NULL,
  `cantidadPasantes` INT NULL DEFAULT NULL,
  `cargoACubrir` VARCHAR(300) NULL DEFAULT NULL,
  `codigoArm` VARCHAR(45) NULL DEFAULT NULL,
  `denegacionDebidoA` VARCHAR(300) NULL DEFAULT NULL,
  `duracionMeses` INT NULL DEFAULT NULL,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `estudiante_docente` TINYINT NULL DEFAULT NULL,
  `experencia` VARCHAR(300) NULL DEFAULT NULL,
  `fehcaAlta` DATETIME NULL DEFAULT NULL,
  `fechaBaja` DATETIME NULL DEFAULT NULL,
  `horaInicio` DATETIME NULL DEFAULT NULL,
  `horaFin` DATETIME NULL DEFAULT NULL,
  `lugarTrabajo` VARCHAR(300) NULL DEFAULT NULL,
  `otrosConocimientos` VARCHAR(300) NULL DEFAULT NULL,
  `otrosRequisitos` VARCHAR(300) NULL DEFAULT NULL,
  `perfilSolicitado` VARCHAR(300) NULL DEFAULT NULL,
  `remuneracion` FLOAT NULL DEFAULT NULL,
  `seOfrece` VARCHAR(300) NULL DEFAULT NULL,
  `id_genero` INT NULL DEFAULT NULL,
  `id_cantidadAños` INT NULL DEFAULT NULL,
  `id_estado` INT NULL DEFAULT NULL,
  `id_sucursal` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_arm`),
  INDEX `id_genero_idx` (`id_genero` ASC) VISIBLE,
  INDEX `id_cantidadAños_idx` (`id_cantidadAños` ASC) VISIBLE,
  INDEX `id_estado_idx` (`id_estado` ASC) VISIBLE,
  INDEX `id_sucursal_idx` (`id_sucursal` ASC) VISIBLE,
  CONSTRAINT `id_cantidadAños`
    FOREIGN KEY (`id_cantidadAños`)
    REFERENCES `pasantias`.`cantidadañospasante` (`id_cantidad_añospasante`),
  CONSTRAINT `id_estado`
    FOREIGN KEY (`id_estado`)
    REFERENCES `pasantias`.`estadoarm` (`id_estado`),
  CONSTRAINT `id_genero`
    FOREIGN KEY (`id_genero`)
    REFERENCES `pasantias`.`genero` (`id_genero`),
  CONSTRAINT `id_sucursal`
    FOREIGN KEY (`id_sucursal`)
    REFERENCES `pasantias`.`sucursalesxempresa` (`id_sucursal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pasantias`.`especialidadxarm`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pasantias`.`especialidadxarm` (
  `id_especialidadXArm` INT NOT NULL,
  `estado` TINYINT NULL DEFAULT NULL,
  `id_arm` INT NULL DEFAULT NULL,
  `id_especialidad` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_especialidadXArm`),
  INDEX `id_formularioArm_idx` (`id_arm` ASC) VISIBLE,
  INDEX `id_especialidad_idx` (`id_especialidad` ASC) VISIBLE,
  CONSTRAINT `id_arm`
    FOREIGN KEY (`id_arm`)
    REFERENCES `pasantias`.`formularioarm` (`id_arm`),
  CONSTRAINT `id_especialidad`
    FOREIGN KEY (`id_especialidad`)
    REFERENCES `pasantias`.`especialidad` (`id_especialidad`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

