CREATE OR REPLACE function get_costo (productId int, sucursalId int) returns numeric
as $$ 
declare costo numeric;
begin
	
	SELECT d.precio_uni INTO costo
	FROM orden_suministro os 
		JOIN detalle_orden d ON os.id_orden_sum = d.id_orden_sum
	WHERE d.id_producto = productId AND os.id_sucursal = sucursalId;

	if costo isnull then 
		costo = 5;
	end if;

	return costo;
end; 
$$ language plpgsql;

CREATE TYPE gasto AS (
fecha DATE,
monto NUMERIC(8,2)
);

CREATE OR REPLACE FUNCTION validar_gasto(monto NUMERIC(8,2)) RETURNS NUMERIC(8,2) AS
$$
BEGIN
  IF monto > 0 THEN RETURN monto;
      ELSE RAISE EXCEPTION 'Monto no válido';
  END IF;
END;
$$ LANGUAGE plpgsql;


CREATE TABLE gasto_operativo (
id_gasto serial PRIMARY KEY,
tipo_gasto varchar(50) NOT NULL
);

CREATE TABLE cliente (
id_cliente serial PRIMARY KEY,
cedula int NOT NULL UNIQUE,
primer_nombre varchar(20) NOT NULL,
primer_apellido varchar(20) NOT NULL,
fecha_nac date NOT NULL,
num_telefono varchar(12) NOT NULL,
direccion varchar(100) NOT NULL
);


CREATE TABLE horario_laboral(
id_horario serial PRIMARY KEY,
dia_laboral varchar(10) NOT NULL,
turno varchar(10) NOT NULL ,
CONSTRAINT check_dia_laboral CHECK (dia_laboral in ('lunes', 'martes', 'miércoles', 'jueves', 'viernes')),
CONSTRAINT check_turno CHECK (turno in ('mañana', 'tarde', 'completo'))
);


CREATE TABLE proveedor(
id_proveedor serial PRIMARY KEY,
nombre varchar(50) NOT NULL,
rif int NOT NULL UNIQUE,
num_telefono varchar(12) NOT NULL
);
CREATE TABLE sucursal(
id_sucursal serial PRIMARY KEY,
nombre varchar(100) NOT NULL,
num_telefono varchar(12) NOT NULL,
direccion varchar(100) NOT NULL
);


CREATE TABLE empleado(
id_empleado serial PRIMARY KEY,
cedula int NOT NULL UNIQUE,
primer_nombre varchar(20) NOT NULL,
primer_apellido varchar(20) NOT NULL,
segundo_apellido varchar(20) NOT NULL,
departamento varchar(25) NOT NULL,
num_telefono varchar(12) NOT NULL,
direccion varchar(100) NOT NULL,
CONSTRAINT fk_empleado FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado)
);


CREATE TABLE factura (
	id_factura SERIAL,
	id_sucursal int NOT NULL,
	id_cliente int NOT NULL,
	gasto_factura gasto,
	CONSTRAINT fk_factura_cliente FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
CONSTRAINT fk_factura_sucursal FOREIGN KEY (id_sucursal) REFERENCES sucursal (id_sucursal),
CONSTRAINT pk_factura PRIMARY KEY (id_factura,id_sucursal)
);


CREATE TABLE producto(
id_producto serial PRIMARY KEY,
nombre varchar(20) NOT NULL,
fecha_elab date NOT NULL,
fecha_venc date NOT NULL,
descuento numeric (3,2)
);


CREATE TABLE promocion(
id_promocion serial PRIMARY KEY,
nombre varchar(50) NOT NULL
);
CREATE TABLE hist_trabajo(
id_empleado int NOT NULL,
id_sucursal int NOT NULL,
CONSTRAINT fk_hist_trab_emp FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado),
CONSTRAINT fk_hist_sucursal FOREIGN KEY (id_sucursal) REFERENCES sucursal (id_sucursal),
CONSTRAINT pk_hist_trab PRIMARY KEY(id_empleado,id_sucursal)
);


CREATE TABLE hist_horario(
id_empleado int NOT NULL,
id_horario int NOT NULL,
CONSTRAINT fk_hist_emp FOREIGN KEY (id_empleado) REFERENCES empleado (id_empleado),
CONSTRAINT fk_hist_horario FOREIGN KEY (id_horario) REFERENCES horario_laboral (id_horario),
CONSTRAINT pk_hist_emp_hora PRIMARY KEY (id_empleado,id_horario)
);


CREATE TABLE gasto_sucursal(
id_gasto int NOT NULL,
id_sucursal int NOT NULL,
gasto_asociado gasto,
CONSTRAINT fk_gasto_gasto FOREIGN KEY (id_gasto) REFERENCES gasto_operativo (id_gasto),
CONSTRAINT fk_gasto_sucu FOREIGN KEY (id_sucursal) REFERENCES sucursal (id_sucursal),
CONSTRAINT pk_gs_go PRIMARY KEY (id_gasto,id_sucursal)
);


CREATE TABLE prom_sucu(
id_promocion int NOT NULL,
id_sucursal int NOT NULL,
CONSTRAINT fk_prom_sucu FOREIGN KEY (id_sucursal) REFERENCES sucursal (id_sucursal),
CONSTRAINT fk_prom_prom FOREIGN KEY (id_promocion) REFERENCES promocion (id_promocion)
);



CREATE TABLE prom_producto(
id_promocion int NOT NULL,
id_producto int NOT NULL,
CONSTRAINT fk_promprod1 FOREIGN KEY (id_promocion) REFERENCES promocion (id_promocion),
CONSTRAINT fk_promprod2 FOREIGN KEY (id_producto) REFERENCES producto (id_producto),
CONSTRAINT pk_prom_pro PRIMARY KEY (id_promocion,id_producto)
);


CREATE TABLE orden_suministro(
id_orden_sum serial PRIMARY KEY,
id_sucursal int NOT NULL,
gasto_orden gasto,
CONSTRAINT fk_sum_sucu FOREIGN KEY (id_sucursal) REFERENCES sucursal (id_sucursal)
);


CREATE TABLE detalle_orden(
	id_detalle_ord serial,
	id_orden_sum int NOT NULL,
id_proveedor int NOT NULL,
id_producto int NOT NULL,
cantidad int NOT NULL,
precio_uni int NOT NULL,
CONSTRAINT fk_det_ord_prov FOREIGN KEY (id_proveedor) REFERENCES proveedor (id_proveedor),
CONSTRAINT fk_det_ord_prod FOREIGN KEY (id_producto) REFERENCES producto (id_producto),
CONSTRAINT fk_det_sum FOREIGN KEY (id_orden_sum) REFERENCES orden_suministro (id_orden_sum),
CONSTRAINT pk_det_ord PRIMARY KEY (id_detalle_ord,id_orden_sum,id_proveedor,id_producto)
);


CREATE TABLE hist_precio_venta(
	fecha_inicio date PRIMARY KEY,
id_producto int,
id_promocion int,
fecha_final date,
monto numeric(8,2) NOT NULL,
CONSTRAINT fk_precio_prod FOREIGN KEY (id_producto) REFERENCES producto (id_producto),
CONSTRAINT fk_precio_prom FOREIGN KEY (id_promocion) REFERENCES promocion (id_promocion)
);


CREATE TABLE detalle_factura(
id_detallef serial,
	id_factura int NOT NULL,
           	id_sucursal int NOT NULL,
	fecha_inicio date NOT NULL,
	cantidad_producto int,
CONSTRAINT fk_det_fact FOREIGN KEY (id_factura,id_sucursal) REFERENCES factura (id_factura,id_sucursal),
CONSTRAINT fk_det_hist FOREIGN KEY (fecha_inicio) REFERENCES hist_precio_venta (fecha_inicio),
CONSTRAINT pk_det_fac PRIMARY KEY (id_detallef, id_factura, id_sucursal)
);

CREATE SEQUENCE cedulac 
START with 12457845
INCREMENT BY 103;

CREATE SEQUENCE rif
START with 211465
INCREMENT BY 101;

CREATE SEQUENCE cedulae
START with 34126954
INCREMENT BY 103;
