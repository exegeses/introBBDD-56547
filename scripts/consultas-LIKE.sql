-- Consultas buscando que CONTENTA una cadena
-- palabra LIKE

SELECT prdNombre, prdPrecio, prdDescripcion
    FROM productos
    WHERE prdNombre LIKE '%Plus%';

------ ejemplo

-- nombre, precio, marca, descripcion
-- donde en la descripción contenga "altavoz"
-- versión usando join
SELECT prdNombre, prdPrecio, mkNombre, prdDescripcion
    FROM productos
    JOIN marcas
    ON productos.idMarca = marcas.idMarca
    WHERE prdDescripcion LIKE '%altavoz%';

-- versión usando relación de tablas
SELECT prdNombre, prdPrecio, mkNombre, prdDescripcion
    FROM productos, marcas
    WHERE productos.idMarca = marcas.idMarca
      AND prdDescripcion LIKE '%altavoz%';



-- ejemplo
-- nombre, precio, marca, categoria, descripcion
-- dónde en descripción contenga 'Smart'
SELECT prdNombre, prdPrecio, mkNombre, catNombre, prdDescripcion
    FROM productos, marcas, categorias
    WHERE productos.idMarca = marcas.idMarca
      AND productos.idCategoria = categorias.idCategoria
      AND  prdDescripcion LIKE '%Smart%';

