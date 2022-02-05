-- Relaciones entre tablas
SELECT destNombre, destPrecio, regNombre
    FROM destinos, regiones
    WHERE destinos.idRegion = regiones.idRegion

-----

SELECT prdNombre, prdPrecio, mkNombre
    FROM productos, marcas
    WHERE productos.idMarca = marcas.idMarca

---

SELECT prdNombre, prdPrecio, mkNombre, catNombre
    FROM productos, marcas, categorias
    WHERE productos.idMarca = marcas.idMarca
      AND productos.idCategoria = categorias.idCategoria