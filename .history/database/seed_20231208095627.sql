TRUNCATE asistencia, cargos, clientes, compras_inventario, dias, dias_turnos, empleados, factura,
historico_alquiler, historico_cargo, historico_gastos_particulares, historico_precios, historico_promociones,
historico_salario, historico_turno, lugares_geo, productos, proveedores, sucursales, turnos  RESTART IDENTITY CASCADE;

INSERT INTO productos (nombre, descripcion)
VALUES
  ('Pan', 'Pan cuadrado para hacer sanduches'),
  ('Carton de huevos', 'Carton de 12 huevos de gallina'),
  ('Leche', 'Carton de leche de larga duracion'),
  ('Pasta', 'Medio kilo de pasta estilo spaghetti'),
  ('Harina PAN', 'Harina de maiz para hacer arepas y empanadas'),
  ('Tosticos', 'Hojuelas de maiz fritas'),
  ('Natuchips', 'Hojuelas de plátano fritas'),
  ('Doritos', 'Tostadas de maiz con polvo de sabor a queso'),
  ('Oreo', 'Galletas de chocolate y crema de vainilla'),
  ('Manzana', 'Fruta roja'),
  ('Patilla', 'Fruta gigante verde'),
  ('Tomate', 'Fruta roja'),
  ('Escoba', 'Herramienta de limpieza'),
  ('Barra de jabon', 'Producto de limpieza personal'),
  ('Cloro', 'Producto de limpieza del hogar'),
  ('Pera', 'Fruta verde'),
  ('Pepsi', 'Bebida gaseosa azucarada'),
  ('Coca-Cola', 'Bebida gaseosa azucarada'),
  ('Marilu', 'Galleta con crema relleno'),
  ('Vino Gato Negro', 'Vino tinto'),
  ('Cerveza Polar Lata', 'Polarcita en lata'),
  ('Cerveza Zulia', 'Cerveza hecha en zulia de lata'),
  ('Santa Teresa Gran Reserva', 'Ron añejo 5 años'),
  ('Santa Teresa Linaje', 'Ron añejo 14 años'),
  ('Santa Teresa 1796', 'Ron añejo 35 años'),
  ('Cacique', 'Ron añejo 15 años');

INSERT INTO historico_precios (id_producto, fecha_inicio, precio)
VALUES
  ((SELECT id FROM productos WHERE nombre = 'Pan'), '01-21-2023', 4),
  ((SELECT id FROM productos WHERE nombre = 'Carton de huevos'), '01-21-2023', 3.5),
  ((SELECT id FROM productos WHERE nombre = 'Leche'), '01-21-2023', 2.8),
  ((SELECT id FROM productos WHERE nombre = 'Pasta'), '01-21-2023', 2.5),
  ((SELECT id FROM productos WHERE nombre = 'Harina PAN'), '01-21-2023', 1.5),
  ((SELECT id FROM productos WHERE nombre = 'Tosticos'), '01-21-2023', 3.7),
  ((SELECT id FROM productos WHERE nombre = 'Natuchips'), '01-21-2023', 4),
  ((SELECT id FROM productos WHERE nombre = 'Oreo'), '01-21-2023', 2),
  ((SELECT id FROM productos WHERE nombre = 'Coca-Cola'), '01-21-2023', 3),
  ((SELECT id FROM productos WHERE nombre = 'Pepsi'), '01-21-2023', 3),
  ((SELECT id FROM productos WHERE nombre = 'Manzana'), '01-21-2023', 1.5),
  ((SELECT id FROM productos WHERE nombre = 'Tomate'), '01-21-2023', 1),
  ((SELECT id FROM productos WHERE nombre = 'Patilla'), '01-21-2023', 3),
  ((SELECT id FROM productos WHERE nombre = 'Escoba'), '01-21-2023', 8),
  ((SELECT id FROM productos WHERE nombre = 'Barra de jabon'), '01-21-2023', 1.5),
  ((SELECT id FROM productos WHERE nombre = 'Cloro'), '01-21-2023', 5),
  ((SELECT id FROM productos WHERE nombre = 'Pera'), '01-21-2023', 1.5),
  ((SELECT id FROM productos WHERE nombre = 'Doritos'), '01-21-2023', 2.7),
  ((SELECT id FROM productos WHERE nombre = 'Marilu'), '01-21-2023', 2),
  ((SELECT id FROM productos WHERE nombre = 'Vino Gato Negro'), '01-21-2023', 5),
  ((SELECT id FROM productos WHERE nombre = 'Cerveza Polar Lata'), '01-21-2023', 0.9),
  ((SELECT id FROM productos WHERE nombre = 'Cerveza Zulia'), '01-21-2023', 0.9),
  ((SELECT id FROM productos WHERE nombre = 'Santa Teresa Gran Reserva'), '01-21-2023', 8),
  ((SELECT id FROM productos WHERE nombre = 'Santa Teresa Linaje'), '01-21-2023', 15),
  ((SELECT id FROM productos WHERE nombre = 'Santa Teresa 1796'), '01-21-2023', 26.5),
  ((SELECT id FROM productos WHERE nombre = 'Cacique'), '01-21-2023', 15);

INSERT INTO historico_promociones (id_producto, fecha_inicio_precio, fecha_inicio, fecha_fin,descuento)
VALUES
  ((SELECT id FROM productos WHERE nombre = 'Pan'), '01-21-2023', '02-21-2023','01-28-2023', 10),
  ((SELECT id FROM productos WHERE nombre = 'Carton de huevos'), '01-21-2023', '02-28-2023','03-28-2023', 5),
  ((SELECT id FROM productos WHERE nombre = 'Leche'), '01-21-2023', '03-10-2023','03-18-2023', 5),
  ((SELECT id FROM productos WHERE nombre = 'Pasta'), '01-21-2023', '04-24-2023','04-28-2023', 10),
  ((SELECT id FROM productos WHERE nombre = 'Harina PAN'), '01-21-2023', '05-27-2023','06-10-2023', 20),
  ((SELECT id FROM productos WHERE nombre = 'Tosticos'), '01-21-2023', '06-16-2023','06-26-2023', 5),
  ((SELECT id FROM productos WHERE nombre = 'Oreo'), '01-21-2023', '07-20-2023','07-28-2023', 15),
  ((SELECT id FROM productos WHERE nombre = 'Santa Teresa Gran Reserva'), '01-21-2023', '07-20-2023','07-28-2023', 20),
  ((SELECT id FROM productos WHERE nombre = 'Coca-Cola'), '01-21-2023', '10-21-2023','10-28-2023', 10);

INSERT INTO sucursales (direccion, id_lugar)
VALUES
  ('Calle Urdaneta', (SELECT id from lugares_geo WHERE nombre = 'Chacao')),
  ('Calle Sucre', (SELECT id from lugares_geo WHERE nombre = 'Baruta')),
  ('Veracruz', (SELECT id from lugares_geo WHERE nombre = 'Libertador'));

INSERT INTO empleados (datos, genero, fecha_nacimiento, activo, id_sucursal) VALUES  (check_null_datos('John', 'Doe', 'Smith', 'Johnson', 'Calle Principal 123', unique_cedula(format_cedula('V-1234567'),'empleados'), '555-1234'), 'M', '1990-01-01', true,1);
INSERT INTO empleados (datos, genero, fecha_nacimiento, activo, id_sucursal) VALUES  (check_null_datos('Robert', 'Lee', 'Williams', 'Brown', 'Carrera 789', unique_cedula(format_cedula('V-2468135'),'empleados'), '555-9012'), 'M', '1993-11-15', true,1);
INSERT INTO empleados (datos, genero, fecha_nacimiento, activo, id_sucursal) VALUES  (check_null_datos('Emily', 'Rose', 'Taylor', 'Clark', 'Avenida 987', unique_cedula(format_cedula('V-5432167'),'empleados'), '555-3456'), 'F', '1992-09-20', true,1);
INSERT INTO empleados (datos, genero, fecha_nacimiento, activo, id_sucursal) VALUES  (check_null_datos('Jane', 'Mary', 'Johnson', 'Doe', 'Avenida Central 456', unique_cedula(format_cedula('V-9876543'),'empleados'), '555-5678'), 'F', '1985-05-10', true,2);
INSERT INTO empleados (datos, genero, fecha_nacimiento, activo, id_sucursal) VALUES  (check_null_datos('Michael', 'James', 'Anderson', 'Wilson', 'Boulevard 654', unique_cedula(format_cedula('V-7896543'),'empleados'), '555-7890'), 'M', '1988-07-05', true,2);
INSERT INTO empleados (datos, genero, fecha_nacimiento, activo, id_sucursal) VALUES  (check_null_datos('Sophia', 'Grace', 'Parker', 'Cooper', 'Avenida 321', unique_cedula(format_cedula('V-3214567'),'empleados'), '555-2345'), 'F', '1991-03-08', true,2);
INSERT INTO empleados (datos, genero, fecha_nacimiento, activo, id_sucursal) VALUES  (check_null_datos('David', 'Thomas', 'Green', 'White', 'Calle 654', unique_cedula(format_cedula('V-1357924'),'empleados'), '555-6789'), 'M', '1987-12-25', true,3);
INSERT INTO empleados (datos, genero, fecha_nacimiento, activo, id_sucursal) VALUES  (check_null_datos('Olivia', 'Isabella', 'Harris', 'Martin', 'Carrera 987', unique_cedula(format_cedula('V-9872134'),'empleados'), '555-9012'), 'F', '1994-06-30', true,3);

INSERT INTO historico_salario (id_empleado, fecha_inicio, salario)
VALUES
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'John'), '01-01-2022', 600),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Jane'), '01-01-2022', 500),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Robert'), '01-01-2022', 400),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Emily'), '01-01-2022', 600),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Michael'), '01-01-2022', 350),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Sophia'), '01-01-2022', 300),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'David'), '01-01-2022', 200),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Olivia'), '01-01-2022', 250);

INSERT INTO cargos (nombre)
VALUES
  ('Gerente'), ('Supervisor'), ('Cajero'),
  ('Conserje'), ('Empaquetador'), ('Carnicero');

INSERT INTO historico_cargo (id_empleado, id_cargo, fecha_inicio)
VALUES
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'John'), (SELECT id FROM cargos WHERE nombre = 'Cajero'), '08-12-2012'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Jane'), (SELECT id FROM cargos WHERE nombre = 'Supervisor'), '08-25-2020'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Robert'), (SELECT id FROM cargos WHERE nombre = 'Carnicero'), '08-12-2012'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Emily'), (SELECT id FROM cargos WHERE nombre = 'Gerente'), '08-12-2012'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Michael'), (SELECT id FROM cargos WHERE nombre = 'Gerente'), '08-12-2019'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Sophia'), (SELECT id FROM cargos WHERE nombre = 'Cajero'), '08-12-2017'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'David'), (SELECT id FROM cargos WHERE nombre = 'Cajero'), '08-12-2018'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Olivia'), (SELECT id FROM cargos WHERE nombre = 'Gerente'), '08-25-2018');

INSERT INTO turnos (nombre)
VALUES
  ('Diurno entre semana'), ('Diurno fines de semana'), ('Nocturno entre semana'), ('Nocturno fines de semana');

INSERT INTO dias (nombre)
VALUES
  ('Lunes'), ('Martes'), ('Miércoles'),
  ('Jueves'), ('Viernes'), ('Sábado'), ('Domingo');

INSERT INTO dias_turnos (id_dia, id_turno, hora_entrada, hora_salida)
VALUES
  ((SELECT id FROM dias WHERE nombre = 'Lunes'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08:00:00', '17:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Martes'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08:00:00', '17:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Miércoles'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08:00:00', '17:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Jueves'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08:00:00', '17:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Viernes'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08:00:00', '17:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Lunes'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '16:00:00', '22:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Martes'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '16:00:00', '22:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Miércoles'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '16:00:00', '22:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Jueves'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '16:00:00', '22:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Viernes'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '16:00:00', '22:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Viernes'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08:00:00', '17:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Sábado'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08:00:00', '17:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Domingo'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '09:00:00', '17:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Lunes'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08:00:00', '17:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Martes'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08:00:00', '17:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Viernes'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '16:00:00', '22:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Sábado'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '16:00:00', '22:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Domingo'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '16:00:00', '21:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Lunes'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '16:00:00', '22:00:00'),
  ((SELECT id FROM dias WHERE nombre = 'Martes'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '16:00:00', '22:00:00');

INSERT INTO historico_turno (id_empleado, id_turno, fecha_inicio)
VALUES
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'John'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08-12-2012'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Jane'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08-25-2020'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Robert'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '08-12-2012'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Emily'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '08-12-2012'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Michael'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08-12-2019'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Sophia'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08-12-2017'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'David'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '08-12-2018'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Olivia'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '08-25-2018');

INSERT INTO asistencia (id_empleado,id_turno,fecha_turno,fecha,hora_entrada,hora_salida,motivo_ausencia)
VALUES
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'John'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08-12-2012','03-15-2022','07:58:00','17:05:00',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'John'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08-12-2012','03-16-2022','08:02:00','17:06:22',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'John'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08-12-2012','03-17-2022','08:30:13','17:45:21',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Jane'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08-25-2020','03-15-2022',NULL,NULL,'Cita médica'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Jane'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08-25-2020','03-16-2022','07:55:51','16:58:10',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Jane'), (SELECT id FROM turnos WHERE nombre = 'Diurno entre semana'), '08-25-2020','03-17-2022','07:59:30','17:01:12',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Robert'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '08-12-2012','03-15-2022','16:15:01','22:10:03',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Robert'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '08-12-2012','03-16-2022','16:02:29','22:10:03',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Robert'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '08-12-2012','03-17-2022','15:59:59','22:01:01',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Emily'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '08-12-2012','03-15-2022','16:05:15','21:45:10',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Emily'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '08-12-2012','03-16-2022','16:04:10','21:40:15',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Emily'), (SELECT id FROM turnos WHERE nombre = 'Nocturno entre semana'), '08-12-2012','03-17-2022',NULL,NULL,'Infección viral'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Michael'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08-12-2019','03-15-2022','08:09:11','16:59:41',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Michael'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08-12-2019','03-16-2022','08:03:23','16:58:22',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Michael'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08-12-2019','03-17-2022','08:02:58','17:10:45',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Sophia'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08-12-2017','03-15-2022','08:02:09','17:10:45',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Sophia'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08-12-2017','03-16-2022',NULL,NULL,'Lele panza'),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Sophia'), (SELECT id FROM turnos WHERE nombre = 'Diurno fines de semana'), '08-12-2017','03-17-2022','07:52:12','17:01:12',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'David'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '08-12-2018','03-15-2022','16:30:34','22:01:11',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'David'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '08-12-2018','03-16-2022','16:12:02','21:56:12',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'David'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '08-12-2018','03-17-2022','15:56:12','22:09:22',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Olivia'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '08-25-2018','03-15-2022','16:01:15','22:02:42',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Olivia'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '08-25-2018','03-16-2022','15:56:55','22:01:29',NULL),
  ((SELECT id FROM empleados WHERE (datos).nombre1 = 'Olivia'), (SELECT id FROM turnos WHERE nombre = 'Nocturno fines de semana'), '08-25-2018','03-17-2022','16:57:12','22:06:10',NULL);

INSERT INTO clientes (datos) VALUES (check_null_datos('Luis', 'Miguel', 'Sánchez', 'Gómez', 'Calle Principal 123', unique_cedula(format_cedula('V-25469789'),'clientes'), '555-1234'));
INSERT INTO clientes (datos) VALUES (check_null_datos('María', 'Fernanda', 'Rodríguez', 'López', 'Avenida Central 456',  unique_cedula(format_cedula('V-15478963'),'clientes'), '555-5678'));
INSERT INTO clientes (datos) VALUES (check_null_datos('Carlos', 'Andrés', 'González', 'Rivas', 'Carrera 789',  unique_cedula(format_cedula('V-21647896'),'clientes'), '555-9012'));
INSERT INTO clientes (datos) VALUES (check_null_datos('Ana', 'Isabel', 'Torres', 'Martínez', 'Avenida 987',  unique_cedula(format_cedula('V-6978456'),'clientes'), '555-3456'));
INSERT INTO clientes (datos) VALUES (check_null_datos('Javier', 'Alejandro', 'Hernández', 'Castro', 'Boulevard 654',  unique_cedula(format_cedula('V-15698746'),'clientes'), '555-7890'));
INSERT INTO clientes (datos) VALUES (check_null_datos('Laura', 'Carolina', 'Pérez', 'Vargas', 'Avenida 321',  unique_cedula(format_cedula('V-9645721'),'clientes'), '555-2345'));
INSERT INTO clientes (datos) VALUES (check_null_datos('Diego', 'Sebastián', 'Ramírez', 'Rojas', 'Calle 654',  unique_cedula(format_cedula('V-14451214'),'clientes'), '555-6789'));
INSERT INTO clientes (datos) VALUES (check_null_datos('Valeria', 'Florencia', 'Silva', 'Luna', 'Carrera 987',  unique_cedula(format_cedula('V-13564897'),'clientes'), '555-9012'));
INSERT INTO clientes (datos) VALUES (check_null_datos('Andrea', 'Andres', 'Pirlo', 'Rivas', 'Tartago 10',  unique_cedula(format_cedula('V-21007896'),'clientes'), '555-9002'));
INSERT INTO clientes (datos) VALUES (check_null_datos('Juan','Guillermo', 'Hedderich', 'Palacios', 'La Castellana',  unique_cedula(format_cedula('V-29625836'),'clientes'), '412-3349273'));
INSERT INTO clientes (datos) VALUES (check_null_datos('Ana','Maria', 'Palacios', 'Urbaneja', 'La Castellana',  unique_cedula(format_cedula('V-6911402'),'clientes'), '412-2291851'));
INSERT INTO clientes (datos) VALUES (check_null_datos('Guillermo','de', 'Hedderich', 'Turco', 'La Castellana',  unique_cedula(format_cedula('V-10331069'),'clientes'), '412-3274866'));
INSERT INTO clientes (datos) VALUES (check_null_datos('El', 'Robert', 'Galarga', 'de Verdad', 'El Paraiso',  unique_cedula(format_cedula('V-6942069'),'clientes'), '412-6665965'));
INSERT INTO clientes (datos) VALUES (check_null_datos('Elsa', 'Pato', 'Blanco', 'de Rallas', 'La Lagunita',  unique_cedula(format_cedula('V-879655'),'clientes'), '413-569874'));

INSERT INTO proveedores (nombre, direccion, numero_telefonico)
VALUES
  ('Polar', 'Los Palos Grandes, calle la Goleada', '04123698745'),
  ('Pepsico', 'La Castellana, calle el Tartago', '04123697435'),
  ('Nabisco', 'El Rosal, calle el Perro', '04165698740'),
  ('Bimbo', 'Altamira, calle la Tucupita', '04127921682'),
  ('Capri', 'La Candelaria, calle la Rosita', '04166987742'),
  ('Santa Teresa', 'Maracay, hacienda Santa Teresa', '04149623301'),
  ('Dove', 'La Trinidad, Piedra Azul', '0414825309'),
  ('Las Llaves', 'Santa Mónica', '04242549901'),
  ('Licores Mundiales', 'Prados del Este, Av. Principal', '04167453326');

INSERT INTO lugares_geo (nombre, tipo)
VALUES
  ('Miranda', 'estado'), ('Zulia', 'estado'), ('Sucre', 'estado'),
  ('Bolivar', 'estado'), ('Aragua', 'estado'), ('Falcon', 'estado');

INSERT INTO lugares_geo (nombre, tipo, id_padre_lugar)
VALUES
  ('Caracas', 'ciudad', (SELECT id FROM lugares_geo WHERE nombre = 'Miranda')),
  ('Maracaibo', 'ciudad', (SELECT id FROM lugares_geo WHERE nombre = 'Zulia')),
  ('Maracay', 'ciudad', (SELECT id FROM lugares_geo WHERE nombre = 'Aragua')),
  ('Coro', 'ciudad', (SELECT id FROM lugares_geo WHERE nombre = 'Falcon')),
  ('Cumana', 'ciudad', (SELECT id FROM lugares_geo WHERE nombre = 'Sucre'));

INSERT INTO lugares_geo (nombre, tipo, id_padre_lugar)
VALUES
  ('Chacao', 'municipio', (SELECT id FROM lugares_geo WHERE nombre = 'Miranda')),
  ('Baruta', 'municipio', (SELECT id FROM lugares_geo WHERE nombre = 'Miranda')),
  ('Libertador', 'municipio', (SELECT id FROM lugares_geo WHERE nombre = 'Miranda')),
  ('Sucre', 'municipio', (SELECT id FROM lugares_geo WHERE nombre = 'Miranda'));


INSERT INTO historico_gastos_particulares (id_sucursal, fecha, monto, descripcion)
VALUES
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'), '01-08-2023', 80, 'Mantenimiento de cajeros'),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'), '01-12-2023', 30, 'Mantenimiento de neveras'),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'), '03-08-2023', 150, 'Compra de equipo computacional'),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'), '04-11-2023', 30, 'Reparacion filtracion de agua'),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'), '04-18-2023', 50, 'Gastos legales'),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'), '06-29-2023', 60, 'Pago a abogados'),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'), '07-01-2023', 80, 'Mantenimiento de anaqueles'),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'), '08-15-2023', 80, 'Mantenimiento de neveras'),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'), '01-20-2023', 80, 'Compra de equipos de refrigeracion'),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'), '03-21-2023', 40, 'Productos de limpieza'),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'), '03-26-2023', 30, 'Mantenimiento de neveras'),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'), '04-21-2023', 40, 'Productos de limpieza'),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'), '01-11-2023', 100, 'Gastos legales'),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'), '01-17-2023', 70, 'Mantenimiento de luces'),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'), '03-17-2023', 50, 'Mantenimiento de cajeros');

INSERT INTO historico_alquiler (id_sucursal, fecha, monto)
VALUES
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'), '01-01-2023', 500),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'), '01-01-2023', 500),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'), '01-01-2023', 500),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'), '01-02-2023', 600),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'), '01-02-2023', 500),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'), '01-02-2023', 500),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'), '01-03-2023',600),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'), '01-03-2023', 500),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'), '01-03-2023', 500);

INSERT INTO factura (id_cliente, id_empleado, fecha, monto)
VALUES
  (1, 1, '01-11-2023', 17),
  (3, 1, '02-15-2023', 10.5),
  (5, 1, '03-05-2023', 80),
  (1, 1, '04-08-2023', 43),
  (3, 1, '05-21-2023', 115),
  (3, 11, '06-17-2023', 167.5),
  (11, 13, '07-10-2023', 180.9),
  (7, 13, '08-02-2023', 20.2),
  (1, 13, '09-06-2023', 34.1),
  (17, 7, '10-08-2023', 25),
  (27, 7, '11-20-2023', 86),
  (21, 1, '12-27-2023', 26),
  (23, 3, '01-25-2023',39),
  (25, 15, '05-22-2023', 77);


INSERT INTO detalle_factura (id_factura, id_producto, fecha_inicio_precio, cantidad)
VALUES
  (1, 1, '01-21-2023', 3),
  (1, 4, '01-21-2023', 2),

  (2, 8, '01-21-2023', 3),
  (2, 14, '01-21-2023', 1),

  (3, 20, '01-21-2023', 8),

  (4, 12, '01-21-2023', 2),
  (4, 13, '01-21-2023', 4),
  (4, 17, '01-21-2023', 10),

  (5, 18, '01-21-2023', 17),
  (5, 10, '01-21-2023', 10),

  (6, 16, '01-21-2023', 7),
  (6, 3, '01-21-2023', 10),
  (6, 11, '01-21-2023', 15),
  (6, 7, '01-21-2023', 1),

  (7, 2, '01-21-2023', 3),
  (7, 1, '01-21-2023', 7),
  (7, 8, '01-21-2023', 2),
  (7, 16, '01-21-2023', 1),
  (7, 7, '01-21-2023', 2),
  (7, 20, '01-21-2023', 10),
  (7, 5, '01-21-2023', 8),
  (7, 3, '01-21-2023', 8),
  (7, 15, '01-21-2023', 5),

  (8, 16, '01-21-2023', 3),
  (8, 18, '01-21-2023', 3),
  (8, 13, '01-21-2023', 2),

  (9, 4, '01-21-2023', 3),
  (9, 6, '01-21-2023', 5),
  (9, 14, '01-21-2023', 3),
  (9, 19, '01-21-2023', 4),

  (10, 2, '01-21-2023', 3),
  (10, 14, '01-21-2023', 3),

  (12, 13, '01-21-2023', 1),
  (12, 1, '01-21-2023', 1),
  (12, 2, '01-21-2023', 1),
  (12, 14, '01-21-2023', 3),

  (13, 15, '01-21-2023', 1),
  (13, 16, '01-21-2023', 2),

  (14, 2, '01-21-2023', 1),
  (14, 14, '01-21-2023', 1),
  (14, 5, '01-21-2023', 2),
  (14, 6, '01-21-2023', 2),
  (14, 7, '01-21-2023', 1),
  (14, 13, '01-21-2023', 6);


INSERT INTO compras_inventario (id_sucursal, id_producto)
VALUES
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),1),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),2),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),3),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),4),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),5),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),6),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),7),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),8),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),9),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),10),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),11),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),12),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),13),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),14),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),15),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),16),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),17),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),18),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),19),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),20),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),21),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),22),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Sucre'),23),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),1),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),2),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),3),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),4),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),5),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),6),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),7),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),8),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),9),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),10),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),11),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),12),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),13),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),14),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),15),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),16),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),17),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),18),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),19),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),20),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),21),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),22),
  ((SELECT id FROM sucursales WHERE direccion = 'Calle Urdaneta'),23),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),1),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),2),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),3),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),4),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),5),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),6),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),7),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),8),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),9),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),10),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),11),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),12),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),13),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),14),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),15),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),16),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),17),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),18),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),19),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),20),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),21),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),22),
  ((SELECT id FROM sucursales WHERE direccion = 'Veracruz'),23);

INSERT INTO proveedores_compras_inventario (id_compra_inventario, id_proveedor, fecha, cantidad, precio_unidad, gasto_transporte)
VALUES
  (1, (SELECT id FROM proveedores WHERE nombre = 'Bimbo'), '01-21-2023', 18, 2, 8),
  (2, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-22-2023', 10, 2.5, 9),
  (3, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 10, 1, 5),
  (4, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 20, 0.7, 6),
  (5, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 8, 0.8, 4),
  (6, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 5, 0.9, 3),
  (7, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 10, 0.5, 3),
  (8, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 7, 1.3, 5),
  (9, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 12, 0.5, 2),
  (10, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 15, 1, 4),
  (11, (SELECT id FROM proveedores WHERE nombre = 'Las Llaves'), '01-21-2023', 5, 4, 8),
  (12, (SELECT id FROM proveedores WHERE nombre = 'Dove'), '01-22-2023', 10, 1, 9),
  (13, (SELECT id FROM proveedores WHERE nombre = 'Las Llaves'), '01-21-2023', 5, 2, 5),
  (14, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 7, 0.5, 6),
  (15, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 9, 1.8, 4),
  (16, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 8, 1, 3),
  (17, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 19, 1, 3),
  (18, (SELECT id FROM proveedores WHERE nombre = 'Licores Mundiales'), '01-21-2023', 20, 2, 5),
  (19, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 5, 0.3, 2),
  (20, (SELECT id FROM proveedores WHERE nombre = 'Santa Teresa'), '01-21-2023', 9, 5, 4),
  (21, (SELECT id FROM proveedores WHERE nombre = 'Bimbo'), '01-21-2023', 18, 2, 8),
  (22, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-22-2023', 10, 2.5, 9),
  (23, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 10, 1, 5),
  (24, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 20, 0.7, 6),
  (25, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 8, 0.8, 4),
  (26, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 5, 0.9, 3),
  (27, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 10, 0.5, 3),
  (28, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 7, 1.3, 5),
  (29, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 12, 0.5, 2),
  (30, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 15, 1, 4),
  (31, (SELECT id FROM proveedores WHERE nombre = 'Las Llaves'), '01-21-2023', 5, 4, 8),
  (32, (SELECT id FROM proveedores WHERE nombre = 'Dove'), '01-22-2023', 10, 1, 9),
  (33, (SELECT id FROM proveedores WHERE nombre = 'Las Llaves'), '01-21-2023', 5, 2, 5),
  (34, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 7, 0.5, 6),
  (35, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 9, 1.8, 4),
  (36, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 8, 1, 3),
  (37, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 19, 1, 3),
  (38, (SELECT id FROM proveedores WHERE nombre = 'Licores Mundiales'), '01-21-2023', 20, 2, 5),
  (39, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 5, 0.3, 2),
  (40, (SELECT id FROM proveedores WHERE nombre = 'Santa Teresa'), '01-21-2023', 9, 5, 4),
  (41, (SELECT id FROM proveedores WHERE nombre = 'Bimbo'), '01-21-2023', 18, 2, 8),
  (42, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-22-2023', 10, 2.5, 9),
  (43, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 10, 1, 5),
  (44, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 20, 0.7, 6),
  (45, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 8, 0.8, 4),
  (46, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 5, 0.9, 3),
  (47, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 10, 0.5, 3),
  (48, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 7, 1.3, 5),
  (49, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 12, 0.5, 2),
  (50, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 15, 1, 4),
  (51, (SELECT id FROM proveedores WHERE nombre = 'Las Llaves'), '01-21-2023', 5, 4, 8),
  (52, (SELECT id FROM proveedores WHERE nombre = 'Dove'), '01-22-2023', 10, 1, 9),
  (53, (SELECT id FROM proveedores WHERE nombre = 'Las Llaves'), '01-21-2023', 5, 2, 5),
  (54, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 7, 0.5, 6),
  (55, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 9, 1.8, 4),
  (56, (SELECT id FROM proveedores WHERE nombre = 'Pepsico'), '01-21-2023', 8, 1, 3),
  (57, (SELECT id FROM proveedores WHERE nombre = 'Nabisco'), '01-21-2023', 19, 1, 3),
  (58, (SELECT id FROM proveedores WHERE nombre = 'Licores Mundiales'), '01-21-2023', 20, 2, 5),
  (59, (SELECT id FROM proveedores WHERE nombre = 'Polar'), '01-21-2023', 5, 0.3, 2),
  (60, (SELECT id FROM proveedores WHERE nombre = 'Santa Teresa'), '01-21-2023', 9, 5, 4);


