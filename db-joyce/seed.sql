BEGIN;

--INSERTS DE GASTO_OPERATIVO

INSERT INTO gasto_operativo (tipo_gasto) VALUES ('Servicio de Agua');

INSERT INTO gasto_operativo (tipo_gasto) VALUES ('Servicio de Electricidad');

INSERT INTO gasto_operativo (tipo_gasto) VALUES ('Servicio de Gas');

INSERT INTO gasto_operativo (tipo_gasto) VALUES ('Servicio de Aseo');

INSERT INTO gasto_operativo (tipo_gasto) VALUES ('Servicio de Mantenimiento de Equipos');

INSERT INTO gasto_operativo (tipo_gasto) VALUES ('Nómina Empleados');

INSERT INTO gasto_operativo (tipo_gasto) VALUES ('Gasto de Alquiler Mensual');

--INSERTS DE CLIENTE

INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'Juan', 'Perez', '1990-05-15', '0412-1234567', 'Av. Libertador, Caracas'); 

INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'Maria', 'Gomez', '1985-12-10', '0426-9876543', 'Calle Altamira, Caracas');

 INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'Carlos', 'Lopez', '2000-03-25', '0414-5558899', 'Av. Urdaneta, Caracas');

INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'Luisa', 'Rodríguez', '1982-09-18', '0412-7894561', 'Av. Sucre, Caracas');

INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'Pedro', 'Sánchez', '1995-07-30', '0426-4567890', 'Calle Candelaria, Caracas');

INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'Ana', 'González', '1988-12-05', '0414-6541238', 'Av. Boyacá, Caracas');

INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'María', 'Fernández', '1987-04-21', '0412-6547891', 'Av. Casanova, Caracas');

INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'Javier', 'Martínez', '1992-02-14', '0426-7894560', 'Calle Altamira Sur, Caracas');

INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'Isabel', 'López', '1984-11-29', '0414-7891239', 'Av. Andrés Bello, Caracas');

INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'Ricardo', 'Hernández', '1993-08-12', '0412-7894562', 'Calle Los Palos Grandes, Caracas');

INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'Laura', 'Díaz', '1989-06-03', '0426-6547892', 'Av. Francisco de Miranda, Caracas');

INSERT INTO cliente (cedula, primer_nombre, primer_apellido, fecha_nac, num_telefono, direccion) VALUES (nextval('cedulac'), 'Jorge', 'Santana', '1991-03-18', '0414-7891240', 'Calle La Candelaria, Caracas');




--INSERTS DE HORARIO_LABORAL

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('lunes','mañana');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('lunes','tarde');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('lunes','completo');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('martes','mañana');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('martes','tarde');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('martes','completo');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('miércoles','mañana');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('miércoles','tarde');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('miércoles','completo');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('jueves','mañana');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('jueves','tarde');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('jueves','completo');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('viernes','mañana');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('viernes','tarde');

INSERT INTO horario_laboral (dia_laboral, turno) VALUES ('viernes','completo');


--INSERTS DE PROVEEDOR

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Distribuidora ABC', (nextval('rif')), '0412-5551234');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Comercial XYZ', (nextval('rif')), '0426-6669876');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Suministros Rápidos', (nextval('rif')), '0414-7775555');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Logística Integral', (nextval('rif')), '0412-8886666');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Proveedores Unidos', (nextval('rif')), '0426-9997777');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Soluciones Empresariales', (nextval('rif')), '0414-5559999');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Suministros y Más', (nextval('rif')), '0426-8885555');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Productos Estrella', (nextval('rif')), '0412-7773333');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Distribuidora Alfa', (nextval('rif')), '0412-7771111');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Comercial Beta', (nextval('rif')), '0426-4449999');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Suministros Rápidos', (nextval('rif')), '0414-3337777');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Logística Zeta', (nextval('rif')), '0412-9991111');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Proveedores Omega', (nextval('rif')), '0426-7773333');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Soluciones Sigma', (nextval('rif')), '0414-1115555');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Suministros Rápidos', (nextval('rif')), '0426-3339999');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Productos Gama', (nextval('rif')), '0412-1117777');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Distribuidora Epsilon', (nextval('rif')), '0426-7771111');

INSERT INTO proveedor (nombre, rif, num_telefono)
VALUES ('Comercial Delta', (nextval('rif')), '0414-9993333');



--INSERTS DE SUCURSAL

INSERT INTO sucursal (nombre, num_telefono, direccion) VALUES ('Forum SuperMayorista Los Próceres','0212-4615251','Av. Los Ilustres, Centro Comercial Los Próceres, Caracas');

INSERT INTO sucursal (nombre, num_telefono, direccion) VALUES ('Forum SuperMayorista San Bernardino','0212-6879943','Av. La Estrella Con Av. Caracas, C.C San Bernardino, Caracas');

INSERT INTO sucursal (nombre, num_telefono, direccion) VALUES ('Forum SuperMayorista Cagua','0212-5122478','Av. Principal, Cagua, Edo. Aragua');

INSERT INTO sucursal (nombre, num_telefono, direccion) VALUES ('Forum SuperMayorista C.C. Bábilon','0212-9638788','Av. Libertador, Esquina Calle 51, C.C Bábilon Barquisimeto – Edo Lara');

INSERT INTO sucursal (nombre, num_telefono, direccion) VALUES ('Forum SuperMayorista Guarenas','0212-6213355','Av. Intercomunal Guarenas – Guatire Con Calle Vargas Centro Comercial Guarenas Plaza');

--INSERTS DE EMPLEADO

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Laura', 'Fernández', 'Martínez', '0412-7654321', 'Recursos Humanos', 'Av. Bolívar, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Carlos', 'Sánchez', 'Pérez', '0426-9871234', 'Ventas', 'Calle 4, Maracaibo');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'María', 'Gómez', 'González', '0414-5556666', 'Tecnología', 'Av. Urdaneta, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Pedro', 'López', 'Martínez', '0412-8889999', 'Recursos Humanos', 'Av. Libertador, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Ana', 'Hernández', 'Gómez', '0426-7771111', 'Ventas', 'Calle Altamira, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Jorge', 'Santana', 'Pérez', '0414-9997777', 'Tecnología', 'Av. Urdaneta, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Marta', 'Torres', 'González', '0412-1239876', 'Recursos Humanos', 'Av. Bolívar, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Luis', 'García', 'Martínez', '0426-7659876', 'Ventas', 'Calle 4, Maracaibo');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Elena', 'Pérez', 'López', '0412-1234567', 'Recursos Humanos', 'Av. Libertador, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Luis', 'Martínez', 'Gómez', '0426-9876543', 'Ventas', 'Calle Altamira, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Valentina', 'Santos', 'Pérez', '0414-5558899', 'Tecnología', 'Av. Urdaneta, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Ricardo', 'Gómez', 'González', '0412-7891234', 'Recursos Humanos', 'Av. Bolívar, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Luisa', 'Torres', 'Martínez', '0426-6549876', 'Ventas', 'Calle Bolívar, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Javier', 'García', 'Pérez', '0414-5551111', 'Tecnología', 'Av. Andrés Bello, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Mariana', 'Hernández', 'López', '0412-1239876', 'Recursos Humanos', 'Av. Sucre, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Andrés', 'Sánchez', 'Martínez', '0426-7659876', 'Ventas', 'Calle 4, Maracaibo');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'José', 'Martínez', 'Gómez', '0412-7896543', 'Ventas', 'Calle Altamira, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'María', 'Fernández', 'López', '0426-9871234', 'Tecnología', 'Av. Urdaneta, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Carlos', 'Gómez', 'Martínez', '0414-5558899', 'Recursos Humanos', 'Av. Libertador, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Luis', 'Torres', 'González', '0412-7891234', 'Ventas', 'Calle Bolívar, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Valeria', 'Hernández', 'Pérez', '0426-6549876', 'Tecnología', 'Av. Urdaneta, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Jorge', 'Santana', 'Martínez', '0414-5551111', 'Recursos Humanos', 'Av. Sucre, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Marta', 'Gómez', 'González', '0412-1239876', 'Ventas', 'Av. Bolívar, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Andrea', 'Sánchez', 'Pérez', '0426-7659876', 'Tecnología', 'Calle 4, Maracaibo');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Ana', 'García', 'López', '0412-1234567', 'Ventas', 'Av. Fuerzas Armadas, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Carlos', 'Martínez', 'Gómez', '0426-9876543', 'Recursos Humanos', 'Calle San Jacinto, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Isabella', 'Torres', 'Pérez', '0414-5558899', 'Farmacia', 'Av. Principal de Chacao, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Luis', 'Fernández', 'Martínez', '0412-7891234', 'Tecnología', 'Calle Bolívar, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Mariana', 'Gómez', 'González', '0426-6549876', 'Almacén', 'Av. Universidad, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'José', 'Hernández', 'Pérez', '0414-5551111', 'Ventas', 'Calle Sabana Grande, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Andrés', 'Sánchez', 'Gómez', '0412-1239876', 'Recursos Humanos', 'Av. Andrés Bello, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Laura', 'García', 'Pérez', '0426-7659876', 'Farmacia', 'Calle Guaicaipuro, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'María', 'López', 'Martínez', '0412-1237890', 'Ventas', 'Av. Libertador, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Pedro', 'Santos', 'Gómez', '0426-6543210', 'Recursos Humanos', 'Calle Carabobo, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Luisa', 'Hernández', 'Pérez', '0414-5551010', 'Farmacia', 'Av. Bolívar, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Javier', 'Gómez', 'González', '0412-7895678', 'Tecnología', 'Calle San Jacinto, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Andrea', 'Sánchez', 'Martínez', '0426-6548765', 'Almacén', 'Av. Urdaneta, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Roberto', 'Torres', 'Pérez', '0414-5550011', 'Ventas', 'Calle Sabana Grande, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Marta', 'Fernández', 'Gómez', '0412-1234560', 'Recursos Humanos', 'Av. Andrés Bello, Caracas');

INSERT INTO empleado (cedula, primer_nombre, primer_apellido, segundo_apellido, num_telefono, departamento, direccion)
VALUES (nextval('cedulae'), 'Carlos', 'García', 'Martínez', '0426-7650987', 'Almacén', 'Calle Bolívar, Caracas');

--INSERT DE FACTURA CON TDA

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,1,('2023-01-05', validar_gasto(123)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,2,('2023-07-16', validar_gasto(775)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,3,('2023-02-11', validar_gasto(85)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,4,('2023-03-14', validar_gasto(532)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (3,5,('2023-05-03', validar_gasto(56)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (3,6,('2023-11-28', validar_gasto(111)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,7,('2023-09-20', validar_gasto(663)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,8,('2023-08-09', validar_gasto(73)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,9,('2023-01-15', validar_gasto(400)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,10,('2023-09-04', validar_gasto(361)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,11,('2023-07-30', validar_gasto(1423)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,12,('2023-10-30', validar_gasto(1500)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,1,('2023-01-06', validar_gasto(125)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,1,('2023-01-07', validar_gasto(126)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,1,('2023-01-08', validar_gasto(127)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,1,('2023-01-09', validar_gasto(128)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,1,('2023-01-10', validar_gasto(129)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,1,('2023-01-11', validar_gasto(130)));


INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,2,('2023-07-17', validar_gasto(776)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,2,('2023-07-18', validar_gasto(777)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,2,('2023-07-19', validar_gasto(778)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,2,('2023-07-20', validar_gasto(779)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,2,('2023-07-21', validar_gasto(775)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,2,('2023-07-22', validar_gasto(775)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,2,('2023-07-23', validar_gasto(775)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,2,('2023-07-24', validar_gasto(775)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,2,('2023-07-25', validar_gasto(775)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,11,('2023-08-01', validar_gasto(1423)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,11,('2023-08-02', validar_gasto(1423)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,11,('2023-08-03', validar_gasto(1423)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (1,11,('2023-08-04', validar_gasto(1423)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,3,('2023-02-12', validar_gasto(85)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,3,('2023-02-13', validar_gasto(85)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,3,('2023-02-14', validar_gasto(85)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,3,('2023-02-15', validar_gasto(85)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,3,('2023-02-16', validar_gasto(85)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,4,('2023-03-15', validar_gasto(532)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,4,('2023-03-16', validar_gasto(532)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,4,('2023-03-17', validar_gasto(532)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,4,('2023-03-18', validar_gasto(532)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (2,5,('2023-03-18', validar_gasto(532)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (3,5,('2023-05-04', validar_gasto(56)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (3,5,('2023-05-05', validar_gasto(56)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (3,5,('2023-05-06', validar_gasto(56)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (3,5,('2023-05-07', validar_gasto(56)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (3,5,('2023-05-08', validar_gasto(56)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (3,6,('2023-11-29', validar_gasto(111)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (3,6,('2023-11-30', validar_gasto(111)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (3,6,('2023-12-01', validar_gasto(111)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (3,6,('2023-12-02', validar_gasto(111)));


INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,7,('2023-09-21', validar_gasto(663)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,7,('2023-09-22', validar_gasto(663)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,6,('2023-09-23', validar_gasto(663)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,6,('2023-09-21', validar_gasto(663)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,6,('2023-09-22', validar_gasto(663)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,6,('2023-09-23', validar_gasto(663)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,8,('2023-08-10', validar_gasto(73)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,8,('2023-08-11', validar_gasto(73)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,8,('2023-08-12', validar_gasto(73)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,8,('2023-08-13', validar_gasto(73)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (4,8,('2023-08-14', validar_gasto(73)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,9,('2023-01-16', validar_gasto(400)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,9,('2023-01-17', validar_gasto(400)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,9,('2023-01-18', validar_gasto(400)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,9,('2023-01-19', validar_gasto(400)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,9,('2023-01-20', validar_gasto(400)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,9,('2023-01-21', validar_gasto(400)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,10,('2023-09-05', validar_gasto(361)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,10,('2023-09-06', validar_gasto(361)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,10,('2023-09-07', validar_gasto(361)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,10,('2023-09-08', validar_gasto(361)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,10,('2023-09-09', validar_gasto(361)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,10,('2023-09-10', validar_gasto(361)));

INSERT INTO factura (id_sucursal, id_cliente, gasto_factura) VALUES (5,10,('2023-09-11', validar_gasto(361)));


--INSERTS DE PRODUCTO


INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Galleta de Soda','2023-06-20','2024-01-20',null);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Pan Cuadrado Bimbo','2023-01-01','2023-01-30',null);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Manzana Roja','2023-05-17','2023-05-25',0.15);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Lechuga Romana','2023-05-20','2023-05-31',null);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Plátano','2023-07-01','2023-07-15',null);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Yogurt Yolo Vainilla','2023-02-23','2023-03-20',0.20);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Café San Antonio','2023-02-16','2024-02-01',0.10);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Caraota Negra','2023-01-01','2024-01-01',null);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Arroz Mary','2023-10-16','2024-10-20',0.10);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Salsa de Tomate','2023-06-01','2024-06-01',0.25);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Pasta','2023-04-19','2023-08-19',null);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Harina P.A.N.','2023-03-05','2024-03-05',0.30);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Carne','2023-08-01','2023-08-20',null);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Pollo','2023-06-20','2023-06-30',null);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Huevos','2023-07-16','2023-07-31',0.10);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Queso Blanco','2023-11-29','2023-12-10',null);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Sal Marina','2023-01-06','2025-01-06',null);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Cambur','2023-05-05','2023-05-10',null);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Leche Completa','2023-09-01','2023-09-30',0.15);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Atún en Lata','2023-04-14','2025-04-14',0.10);

INSERT INTO producto (nombre, fecha_elab, fecha_venc, descuento) VALUES ('Papel Toilet','2023-10-18','2030-10-18',null);

--INSERTS DE PROMOCION

INSERT INTO promocion (nombre) VALUES ('Promoción bomba');

INSERT INTO promocion (nombre) VALUES ('Oferta de locura');

INSERT INTO promocion (nombre) VALUES ('Promoción por volumen');

INSERT INTO promocion (nombre) VALUES ('Ahorro del 20%');

INSERT INTO promocion (nombre) VALUES ('Oferta relámpago');



--INSERTS DE HIST_TRABAJO

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (1,1);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (2,1);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (3,1);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (4,1);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (5,1);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (6,1);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (7,1);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (8,1);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (9,2);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (10,2);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (11,2);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (12,2);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (13,2);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (14,2);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (15,2);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (16,2);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (17,3);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (18,3);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (19,3);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (20,3);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (21,3);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (22,3);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (23,3);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (24,3);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (25,4);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (26,4);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (27,4);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (28,4);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (29,4);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (30,4);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (31,4);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (32,4);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (33,5);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (34,5);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (35,5);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (36,5);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (37,5);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (38,5);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (39,5);

INSERT INTO hist_trabajo (id_empleado, id_sucursal) VALUES (40,5);


--INSERTS DE HIST_HORARIO

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (1,1);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (1,4);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (2,5);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (2,9);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (3,7);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (3,10);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (4,12);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (4,8);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (5,13);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (5,2);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (6,5);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (6,3);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (7,11);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (7,14);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (8,5);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (8,9);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (9,3);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (10,12);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (10,15);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (11,4);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (12,3);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (13,7);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (13,1);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (14,14);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (14,11);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (15,6);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (15,10);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (16,9);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (17,3);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (17,7);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (18,5);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (19,15);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (20,12);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (21,7);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (21,10);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (22,6);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (23,8);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (23,11);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (24,13);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (24,2);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (25,6);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (25,12);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (26,10);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (26,13);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (27,4);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (28,7);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (29,6);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (29,10);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (30,8);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (30,14);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (31,3);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (31,5);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (32,9);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (33,3);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (34,5);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (34,10);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (35,14);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (36,6);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (37,9);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (37,13);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (38,12);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (39,5);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (39,2);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (40,7);

INSERT INTO hist_horario (id_empleado, id_horario) VALUES (40,8);

--INSERTS DE GASTO_SUCURSAL TDA

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (1,1,('2023-01-05',validar_gasto(700)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (2,1,('2023-07-14',validar_gasto(562)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (3, 1,('2023-06-11', validar_gasto(963)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (4, 1,('2023-10-22', validar_gasto(124)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (5, 1,('2023-07-03', validar_gasto(300)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (6, 1,('2023-04-28', validar_gasto(661)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (7, 1,('2023-02-13', validar_gasto(357)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (7, 2,('2023-03-14', validar_gasto(84)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (6,2 ,('2023-06-14', validar_gasto(411)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (5, 2,('2023-02-11', validar_gasto(333)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (4,2,('2023-01-15', validar_gasto(1075)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (3,2 ,('2023-09-18', validar_gasto(912)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (2, 2,('2023-04-08', validar_gasto(258)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (1, 2,('2023-07-03', validar_gasto(300)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (1,3,('2023-01-05', validar_gasto(700)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (2,3,('2023-07-14', validar_gasto(562)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (3, 3,('2023-06-11', validar_gasto(963)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (4, 3,('2023-10-22', validar_gasto(124)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (5, 3,('2023-07-03', validar_gasto(300)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (6, 3,('2023-04-28', validar_gasto(661)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (7, 3,('2023-02-13', validar_gasto(357)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (1, 4,('2023-03-14',validar_gasto( 84)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (2,4 ,('2023-06-14', validar_gasto(411)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (3, 4,('2023-02-11', validar_gasto(333)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (4,4,('2023-01-15', validar_gasto(1075)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (6,4 ,('2023-09-18',validar_gasto(912)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (5, 4,('2023-04-08',validar_gasto(258)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (7, 4,('2023-07-03',validar_gasto(300)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (7,5,('2023-01-05',validar_gasto(700)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (6,5,('2023-07-14',validar_gasto(562)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (5, 5,('2023-06-11',validar_gasto(963)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (4, 5,('2023-10-22',validar_gasto(124)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (3, 5,('2023-07-03',validar_gasto(300)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (2, 5,('2023-04-28',validar_gasto(661)));

INSERT INTO gasto_sucursal (id_gasto, id_sucursal, gasto_asociado) VALUES (1, 5,('2023-02-13',validar_gasto(357)));





--INSERTS DE PROM_SUCU

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (1,1);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (2,1);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (3,1);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (4,1);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (5,1);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (1,2);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (2,2);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (3,2);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (4,2);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (5,2);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (1,3);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (2,3);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (3,3);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (4,3);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (5,3);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (1,4);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (2,4);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (3,4);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (4,4);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (5,4);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (1,5);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (2,5);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (3,5);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (4,5);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (5,5);

--INSERTS DE PROM_PRODUCTO

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (1,1);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (2,1);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (3,1);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (4,1);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (5,1);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (1,2);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (2,2);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (3,2);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (4,2);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (5,2);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (1,3);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (2,3);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (3,3);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (4,3);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (5,3);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (1,4);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (2,4);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (3,4);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (4,4);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (5,4);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (1,5);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (2,5);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (3,5);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (4,5);

INSERT INTO prom_sucu (id_promocion, id_sucursal) VALUES (5,5);



--INSERTS DE ORDEN_SUMINISTRO

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (1,('2023-03-20',validar_gasto(2530)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (1,('2023-04-12',validar_gasto(874)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (1,('2023-05-24',validar_gasto(6500)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (1,('2023-06-16',validar_gasto(463)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (2,('2023-07-08',validar_gasto(9600)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (2,('2023-08-20',validar_gasto(750)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (2,('2023-01-02',validar_gasto(660)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (2,('2023-04-18',validar_gasto(345)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (3,('2023-02-28',validar_gasto(785)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (3,('2023-03-21',validar_gasto(4450)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (3,('2023-04-13',validar_gasto(1200)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (3,('2023-06-17',validar_gasto(890)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (4,('2023-08-21',validar_gasto(1840)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (4,('2023-09-03',validar_gasto(9800)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (4,('2023-10-15',validar_gasto(7412)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (4,('2023-10-27',validar_gasto(8523)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (4,('2023-04-14',validar_gasto(4236)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (5,('2023-05-26',validar_gasto(753)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (5,('2023-06-18',validar_gasto(950)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (5,('2023-07-10',validar_gasto(6320))); 

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (5,('2023-08-22',validar_gasto(7410))); 

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (1,('2023-06-21',validar_gasto(1548)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (1,('2023-10-15',validar_gasto(8744)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (1,('2023-01-31',validar_gasto(1478)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (1,('2023-06-19',validar_gasto(460)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (2,('2023-06-22',validar_gasto(1548)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (2,('2023-01-30',validar_gasto(1478)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (2,('2023-06-29',validar_gasto(460)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (3,('2023-06-23',validar_gasto(1548)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (3,('2023-10-17',validar_gasto(8744)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (3,('2023-01-16',validar_gasto(1478)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (3,('2023-02-11',validar_gasto(460)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (4,('2023-03-14',validar_gasto(1548)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (4,('2023-11-17',validar_gasto(8744)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (4,('2023-09-16',validar_gasto(1478)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (4,('2023-04-01',validar_gasto(460)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (5,('2023-03-14',validar_gasto(1548)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (5,('2023-11-17',validar_gasto(8744)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (5,('2023-09-16',validar_gasto(1478)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (5,('2023-04-01',validar_gasto(460)));

INSERT INTO orden_suministro (id_sucursal, gasto_orden) VALUES (1,('2023-04-12',validar_gasto(210))); 


--INSERTS DE DETALLE_ORDEN

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (1,1,1,18,80);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (2,2,2,27,120);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (3,3,3,34,234);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (4,4,4,24,149);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (5,5,5,23,234);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (6,6,6,18,256);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (7,7,7,45,653);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (8,8,8,14,148);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (9,9,1,12,389);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (10,10,10,16,140);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (11,11,12,50,583);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (12,12,13,14,75);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (13,13,16,18,567);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (14,14,18,23,219);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (15,15,2,34,296);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (16,16,6,23,341);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (17,17,5,45,398);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (18,18,3,37,300);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (19,19,1,40,400);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (20,20,7,15,600);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (21,21,14,10,95);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (22,5,18,40,94);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (23,6,17,60,75);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (24,7,16,10,35);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (25,8,15,13,80);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (26,9,14,17,65);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (27,14,2,26,90);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (28,11,3,11,45);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (29,2,4,23,60);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (30,3,5,9,85);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (31,7,6,14,65);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (32,18,7,17,150);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (33,6,8,15,97);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (34,8,9,32,75);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (35,9,10,12,65);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (36,10,11,17,96);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (37,11,12,20,160);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (38,12,13,17,100);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (39,13,14,17,69);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (40,14,15,45,87);

INSERT INTO detalle_orden (id_orden_sum,id_producto, id_proveedor, cantidad, precio_uni) VALUES (41,21,2,27,50);


--INSERTS DE HIST_PRECIO_VENTA

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (1,null,'2023-01-01',null,100);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (2,null,'2023-01-02',null,150);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (3,null,'2023-01-03',null,350);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (4,null,'2023-01-04',null,200);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (5,null,'2023-01-05',null,105);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,1,'2023-01-11',null,70);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,2,'2023-01-12',null,150);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,3,'2023-01-13',null,60);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,4,'2023-01-14',null,50);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,5,'2023-01-15',null,45);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,6,'2023-01-16',null,105);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,7,'2023-01-17',null,85);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,8,'2023-01-18',null,40);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,9,'2023-01-19',null,86);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,10,'2023-01-20',null,120);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,11,'2023-01-21',null,100);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,12,'2023-01-22',null,90);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,13,'2023-01-23',null,150);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,14,'2023-01-24',null,200);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,15,'2023-01-25',null,100);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,16,'2023-01-26',null,80);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,17,'2023-01-27',null,66);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,18,'2023-01-28',null,55);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,19,'2023-01-29',null,130);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,20,'2023-01-30',null,100);

INSERT INTO hist_precio_venta (id_promocion, id_producto, fecha_inicio, fecha_final, monto) VALUES (null,21,'2023-01-31',null,180);


--INSERTS DE DETALLE_FACTURA

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (1,1,'2023-01-11',2);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto)  VALUES (1,2,'2023-01-12',4);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (2,3,'2023-01-01', null);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (2,4,'2023-01-02', null);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (3,5,'2023-01-13',2);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (3,5,'2023-01-14',1);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (3,6,'2023-01-15',10);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (4,7,'2023-01-16',3);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (4,8,'2023-01-17',4);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (5,9,'2023-01-04',null);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (5,10, '2023-01-18',2);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (5,10,'2023-01-19',1);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (1,11,'2023-01-20',3);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (2,12,'2023-01-21',10);



INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (1, 13, '2023-01-01', 2);
  
INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (1, 14, '2023-01-02', 3);
  
INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (1, 15, '2023-01-04', 1);
  
INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (1, 16, '2023-01-04', 5);
  
INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (1, 17, '2023-01-05', 10);
 
INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES  (1, 18, '2023-01-04', 9);
 
INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (1, 19, '2023-01-05', 4);

INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES  (1, 20, '2023-01-01', 12);
  
INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(1, 21, '2023-01-17', 15);
  



 INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(1, 22, '2023-01-18', 16);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(1, 23, '2023-01-19', 14);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(1, 24, '2023-01-20', 15);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(1, 25, '2023-01-21', 13);
 INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES (1, 26, '2023-01-22', 12);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(1, 27, '2023-01-23', 15);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(1, 28, '2023-01-24', 13);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(1, 29, '2023-01-24', 12);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(1, 30, '2023-01-18', 2);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(1, 31, '2023-01-11', 3);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(2, 32, '2023-01-12', 5);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(2, 33, '2023-01-13', 7);
 INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(2, 34, '2023-01-14', 9);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(2, 35, '2023-01-15', 10);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(2, 36, '2023-01-16', 11);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(2, 37, '2023-01-25', 14);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(2, 38, '2023-01-26', 15);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(2, 39, '2023-01-27', 13);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(2, 40, '2023-01-28', 2);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(2, 41, '2023-01-29', 1);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(3, 42, '2023-01-30', 2);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(3, 43, '2023-01-31', 4);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(3, 44, '2023-01-31', 9);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(3, 45, '2023-01-31', 14);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(3, 46, '2023-01-31', 12);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(3, 47, '2023-01-31', 14);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(3, 48, '2023-01-31', 12);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(3, 49, '2023-01-31', 11);
 INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(3, 50, '2023-01-31', 16);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(4, 51, '2023-01-11', 11);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(4, 52, '2023-01-14', 16);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(4, 53, '2023-01-23', 2);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(4, 54, '2023-01-12', 1);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(4, 55, '2023-01-31', 4);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(4, 56, '2023-01-23', 6);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(4, 57, '2023-01-15', 3);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(4, 58, '2023-01-17', 2);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(4, 59, '2023-01-11', 1);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(4, 60, '2023-01-19', 9);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(4, 61, '2023-01-21', 2);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 62, '2023-01-25', 2);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 63, '2023-01-27', 5);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 64, '2023-01-28', 5);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 65, '2023-01-25', 5);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 66, '2023-01-16', 6);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 67, '2023-01-23', 7);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 68, '2023-01-12', 5);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 69, '2023-01-25', 4);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 70, '2023-01-16', 3);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 71, '2023-01-23', 2);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 72, '2023-01-16', 1);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 73, '2023-01-17', 8);
  INSERT INTO detalle_factura (id_sucursal, id_factura, fecha_inicio, cantidad_producto) VALUES(5, 74, '2023-01-15', 4);


COMMIT;

