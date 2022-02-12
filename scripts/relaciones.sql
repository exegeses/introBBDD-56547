-- Relaciones entre tablas
------------------------------

-- tabla relation
-- se iguala el campo (columna) en com´´un

SELECT destNombre, destPrecio, regNombre
    FROM destinos, regiones
    WHERE destinos.idRegion = regiones.idRegion;

-----

SELECT prdNombre, prdPrecio, mkNombre
    FROM productos, marcas
    WHERE productos.idMarca = marcas.idMarca;

---

SELECT prdNombre, prdPrecio, mkNombre, catNombre
    FROM productos, marcas, categorias
    WHERE productos.idMarca = marcas.idMarca
      AND productos.idCategoria = categorias.idCategoria;

----------------------------------------
-- JOIN (explicit)

SELECT prdNombre, prdPrecio, prdDescripcion, mkNombre
    FROM productos
    JOIN marcas
      ON marcas.idMarca = productos.idMarca;

SELECT prdNombre, prdPrecio, prdDescripcion, mkNombre, catNombre
    FROM productos
    JOIN marcas
      ON marcas.idMarca = productos.idMarca
    JOIN categorias
      ON categorias.idCategoria = productos.idCategoria;

