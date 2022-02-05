-- fórmula para modificaciones
-- UPDATE nombre_de_tabla
--	SET nombre_campo = valor

UPDATE destinos
    SET destPrecio = 6495
    WHERE idDestino = 8;

UPDATE destinos
    SET destPrecio = 6520,
        destAsientos = 10,
        destDisponibles = 10
    WHERE idDestino = 3