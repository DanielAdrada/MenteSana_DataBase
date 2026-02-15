CREATE TABLE `mente_sana`.`tbl_recursos` (
  `rec_id` INT NOT NULL AUTO_INCREMENT,
  `rec_titulo` VARCHAR(100) NOT NULL,
  `rec_descripcion` TEXT NOT NULL,
  `rec_tipo` VARCHAR(30) NOT NULL,
  `rec_archivo` VARCHAR(500) NULL,
  `rec_url` VARCHAR(255) NULL,
  `rec_fecha` DATETIME NOT NULL,
  PRIMARY KEY (`rec_id`));


-- Gestion de recursos educativos CRUD
-- INSERTAR 
DELIMITER //
CREATE PROCEDURE proInsertResource(IN p_titulo VARCHAR(100), IN p_descripcion TEXT, IN p_tipo VARCHAR(30), 
IN p_archivo VARCHAR(500), IN p_url VARCHAR(255))
BEGIN
    insert into tbl_recursos(rec_titulo, rec_descripcion, rec_tipo, rec_archivo, rec_url, rec_fecha) 
    values(p_titulo, p_descripcion, p_tipo, p_archivo, p_url, NOW());
END//
DELIMITER ;

-- SELECCIONAR 
DELIMITER //
CREATE PROCEDURE proSelectResource()
BEGIN
	select rec_id, rec_titulo, rec_descripcion, rec_tipo, rec_archivo, rec_url, rec_fecha
    from tbl_recursos;
END//
DELIMITER ;

-- ACTUALIZAR
DELIMITER //
CREATE PROCEDURE proUpdateResource(IN p_id INT, IN p_titulo VARCHAR(100), IN p_descripcion TEXT, IN p_tipo VARCHAR(30),
IN p_archivo VARCHAR(500), IN p_url VARCHAR(255))
BEGIN
	update tbl_recursos
    set rec_titulo=p_titulo, rec_descripcion=p_descripcion, rec_tipo=p_tipo, rec_archivo=p_archivo, rec_url=p_url, 
    rec_fecha=NOW()   
    where rec_id = p_id;
END//
DELIMITER ;

-- ELIMINAR
DELIMITER //
CREATE PROCEDURE proDeleteResource(IN p_id INT)
begin
	delete from tbl_recursos where rec_id = p_id;
END//
DELIMITER ;
