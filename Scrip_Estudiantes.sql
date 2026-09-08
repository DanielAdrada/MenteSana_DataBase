-- DLL Estudiantes
-- CREATE – Registrar estudiante
DELIMITER //
CREATE PROCEDURE proInsertEstudiante(IN v_id VARCHAR(20), IN v_nombre VARCHAR(50), IN v_apellido VARCHAR(50))
BEGIN
    INSERT INTO tbl_estudiantes (est_id,est_nombre,est_apellido)
    VALUES (v_id, v_nombre, v_apellido);
END//
DELIMITER ;

-- READ – Obtener estudiante por ID
DELIMITER //
CREATE PROCEDURE proGetEstudianteById(IN v_id VARCHAR(20))
BEGIN
    SELECT est_id, est_nombre, est_apellido
    FROM tbl_estudiantes
    WHERE est_id = v_id;
END//
DELIMITER ;

-- READ – Listar estudiantes
DELIMITER //
CREATE PROCEDURE proListEstudiantes()
BEGIN
    SELECT est_id, est_nombre, est_apellido
    FROM tbl_estudiantes;
END//
DELIMITER ;

-- UPDATE – Actualizar estudiante
DELIMITER //
CREATE PROCEDURE proUpdateEstudiante(IN v_id VARCHAR(20), IN v_nombre VARCHAR(50), IN v_apellido VARCHAR(50))
BEGIN
    UPDATE tbl_estudiantes
    SET est_nombre = v_nombre,
        est_apellido = v_apellido
    WHERE est_id = v_id;
END//
DELIMITER ;

-- DELETE – Eliminar estudiante
DELIMITER //
CREATE PROCEDURE proDeleteEstudiante(IN v_id VARCHAR(20))
BEGIN
    DELETE FROM tbl_estudiantes
    WHERE est_id = v_id;
END//
DELIMITER ;

