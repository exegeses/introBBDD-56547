-- Crear una base de datos
CREATE DATABASE introDB;

-- activar base de datos
USE introDB;

-- crear una tabla
CREATE TABLE billeteras
    (
        id int primary key auto_increment not null,
        nombre varchar(40) not null,
        precio float(9,2) not null,
        stock int not null,
    );

-- insertar datos en la tabla
INSERT into billeteras
    ( id, nombre, precio, stock )
    VALUES
        ( DEFAULT, 'Ledger Nano S', 16000, 30 ),
        ( DEFAULT, 'Trezor One', 19500, 30 ),
        ( DEFAULT, 'Trezor T', 78000, 20 ),
        ( DEFAULT, 'Ledger Nano X', 56000, 20 );

