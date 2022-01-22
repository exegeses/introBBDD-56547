-- creamos tabla
CREATE TABLE regiones
(
    idRegion tinyint primary key auto_increment not null,
    regNombre varchar(100) not null
);

-- fórmula para insertar datos en una tabla
-- variante A

--  INSERT INTO nTabla
--            (  nCampo1 , nCampo2, nCampoX  )
--       VALUE
--            (  vCampo1, vCampo2, vCampoX )

INSERT INTO regiones
        ( regNombre )
    VALUE
        ( 'América del Sur' );
INSERT INTO regiones
        ( regNombre )
    VALUE
        ( 'América Central' );

-- variante B
-- INSERT INTO regiones
--     VALUE
--        ( vCampo1, vCampo2, vCampox )

INSERT INTO regiones
    VALUE
    ( DEFAULT, 'Caribe y México' );
INSERT INTO regiones
    VALUE
    ( DEFAULT, 'América del Norte' );


-- insertamos el resto de los datos
-- en inserción múltiple
INSERT INTO regiones
    ( idRegion, regNombre )
VALUES
    ( DEFAULT, 'Europa Occidental'),
    ( DEFAULT, 'Europa del Este'),
    ( DEFAULT, 'Asia'),
    ( DEFAULT, 'Oceanía');