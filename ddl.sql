--Bases de datos con tablas y relaciones

DROP DATABASE IF EXISTS sakilacampus;

CREATE DATABASE sakilacampus;

USE sakilacampus;

CREATE TABLE IF NOT EXISTS categoria (
    id_categoria TINYINT UNSIGNED PRIMARY KEY,
    nombre VARCHAR(255),
    ultima_actualizacion TIMESTAMP
);

CREATE TABLE IF NOT EXISTS film_text (
    film_id SMALLINT,
    title VARCHAR(255),
    description TEXT
);

CREATE TABLE IF NOT EXISTS actor (
    id_actor SMALLINT UNSIGNED PRIMARY KEY,
    nombre VARCHAR(45),
    apellidos VARCHAR (45),
    ultima_actualizacion TIMESTAMP
);

CREATE TABLE IF NOT EXISTS pais (
    id_pais SMALLINT UNSIGNED PRIMARY KEY,
    nombre VARCHAR(50),
    ultima_actualizacion TIMESTAMP
);

CREATE TABLE IF NOT EXISTS ciudad (
    id_ciudad SMALLINT UNSIGNED PRIMARY KEY,
    nombre VARCHAR(50),
    ultima_actualizacion TIMESTAMP,
    id_pais SMALLINT UNSIGNED,
    CONSTRAINT pais_id_FK FOREIGN KEY (id_pais) REFERENCES pais(id_pais) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS direccion (
    id_direccion SMALLINT UNSIGNED PRIMARY KEY,
    direccion VARCHAR(50),
    direccion2 VARCHAR(50),
    distrito VARCHAR(20),
    id_ciudad SMALLINT UNSIGNED,
    codigo_postal VARCHAR(10),
    telefono VARCHAR(20),
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT ciudad_id_FK FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS idioma (
    id_idioma TINYINT UNSIGNED PRIMARY KEY,
    nombre CHAR(20),
    ultima_actualizacion TIMESTAMP
);

CREATE TABLE IF NOT EXISTS pelicula (
    id_pelicula SMALLINT UNSIGNED PRIMARY KEY,
    titulo VARCHAR(255),
    descripcion TEXT,
    anyo_lanzamiento YEAR,
    id_idioma TINYINT UNSIGNED,
    id_idioma_original TINYINT UNSIGNED,
    duracion_alquiler TINYINT UNSIGNED,
    rental_rate DECIMAL(4,2),
    duracion SMALLINT UNSIGNED,
    replacement_cost DECIMAL(5,2),
    clasificacion ENUM('G','PG-13', 'R', 'NC-17'),
    caracteristicas_especiales SET('Trailers', 'Commentaries', 'Deleted Scenes', 'Behind the Scenes'),
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT idioma_id_FK FOREIGN KEY (id_idioma) REFERENCES idioma(id_idioma) ON DELETE CASCADE,
    CONSTRAINT idioma_original_id_FK FOREIGN KEY (id_idioma_original) REFERENCES idioma(id_idioma) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS empleado (
    id_empleado TINYINT UNSIGNED PRIMARY KEY,
    nombre VARCHAR(45),
    apellidos VARCHAR(45),
    id_direccion SMALLINT UNSIGNED,
    imagen BLOB,
    email VARCHAR(50),
    id_almacen TINYINT UNSIGNED,
    activo TINYINT(1),
    username VARCHAR(16),
    password VARCHAR(40),
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT direccion_id_FK FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS almacen(
    id_almacen TINYINT UNSIGNED PRIMARY KEY,
    id_empleado_jefe TINYINT UNSIGNED,
    id_direccion SMALLINT UNSIGNED,
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT direccion_almacen_id_FK FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion) ON DELETE CASCADE,
    CONSTRAINT empleado_jefe_id_FK FOREIGN KEY (id_empleado_jefe) REFERENCES empleado(id_empleado) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS pelicula_categoria (
    id_inventario MEDIUMINT UNSIGNED PRIMARY KEY,
    id_pelicula SMALLINT UNSIGNED,
    id_almacen TINYINT UNSIGNED,
    ultima_actualiazacion TIMESTAMP,
    CONSTRAINT pelicula_categoria_if_FK FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
    CONSTRAINT almacen_categoria_pelicula_id_FK FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen)
);

CREATE TABLE IF NOT EXISTS cliente (
    id_cliente SMALLINT UNSIGNED PRIMARY KEY,
    id_almacen TINYINT UNSIGNED,
    nombre VARCHAR(45), 
    apellidos VARCHAR(45),
    email VARCHAR(50),
    id_direccion SMALLINT UNSIGNED,
    activo TINYINT(1),
    fecha_creacion DATETIME,
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT almacen_id_FK FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen) ON DELETE CASCADE,
    CONSTRAINT direccion_cliente_id_FK FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS pelicula_actor (
    id_pelicula SMALLINT UNSIGNED,
    id_categoria TINYINT UNSIGNED,
    ultima_actualizacion TIMESTAMP,
    PRIMARY KEY (id_pelicula, id_categoria),
    CONSTRAINT pelicula_actor_id_FK FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula),
    CONSTRAINT categoria_actor_id_FK FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

CREATE TABLE IF NOT EXISTS inventario (
    id_inventario MEDIUMINT UNSIGNED PRIMARY KEY,
    id_pelicula SMALLINT UNSIGNED,
    id_almacen TINYINT UNSIGNED,
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT pelicula_id_FK FOREIGN KEY (id_pelicula) REFERENCES pelicula(id_pelicula) ON DELETE CASCADE,
    CONSTRAINT almacen_inventario_id_FK FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS alquiler (
    id_alquiler INT PRIMARY KEY,
    fecha_alquiler DATETIME,
    id_inventario MEDIUMINT UNSIGNED,
    id_cliente SMALLINT UNSIGNED,
    fecha_devolucion DATETIME,
    id_empleado TINYINT UNSIGNED,
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT alquiler_inventario_id_FK FOREIGN KEY (id_inventario) REFERENCES inventario(id_inventario) ON DELETE CASCADE,
    CONSTRAINT alquiler_cliente_id_FK FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON DELETE CASCADE,
    CONSTRAINT alquiler_empleado_id_FK FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS pago (
    id_pago SMALLINT UNSIGNED PRIMARY KEY,
    id_cliente SMALLINT UNSIGNED,
    id_empleado TINYINT UNSIGNED,
    id_alquiler INT,
    total DECIMAL(5,2),
    fecha_pago DATETIME,
    ultima_actualizacion TIMESTAMP,
    CONSTRAINT cliente_pago_id_FK FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente) ON DELETE CASCADE,
    CONSTRAINT empleado_pago_id_FK FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado) ON DELETE CASCADE,
    CONSTRAINT alquiler_pago_id_FK FOREIGN KEY (id_alquiler) REFERENCES alquiler(id_alquiler) ON DELETE CASCADE
);

ALTER TABLE empleado ADD CONSTRAINT almacen_empleador_id_FK FOREIGN KEY (id_almacen) REFERENCES almacen(id_almacen);