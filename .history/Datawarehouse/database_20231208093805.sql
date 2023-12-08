CREATE TABLE IF NOT EXISTS dim_tiempo(
    cs_tiempo serial primary key not null,
    ano int not null,
    mes int not null,
    dia int not null
);

CREATE TABLE IF NOT EXISTS dim_empleado(
    cs_empleado serial primary key not null,
    id_empleado int not null,
    nombre varchar(150) not null,
    cargo varchar(20) not null
);

CREATE TABLE IF NOT EXISTS dim_cliente(
    cs_cliente serial primary key not null,
    id_cliente int not null,
    nombre varchar(150) not null,
    direccion varchar(150) not null 
);

CREATE TABLE IF NOT EXISTS dim_sucursal(
    cs_sucursal serial primary key not null,
    id_sucursal int not null,
    nombre varchar(100) not null,
    ubicacion varchar(150) not null 
);

CREATE TABLE IF NOT EXISTS dim_producto(
    cs_producto serial primary key not null,
    id_producto int not null,
    nombre varchar(150) not null
);

CREATE TABLE IF NOT EXISTS dim_factura(
    cs_factura serial primary key not null,
    id_factura int not null
);

CREATE TABLE IF NOT EXISTS ventas_diarias(
    cs_tiempo int not null references dim_tiempo (cs_tiempo),
    cs_empleado int not null references dim_empleado (cs_empleado),
    cs_cliente int not null references dim_cliente (cs_cliente),
    cs_sucursal int not null references dim_sucursal (cs_sucursal),
    cs_producto int not null references dim_producto (cs_producto),
    cs_factura int not null REFERENCES dim_factura(cs_factura),
    ventas_totales decimal (15,2) not null,
    cantidad_vendida int not null,
    constraint pk_ventas primary key (cs_factura,cs_sucursal,cs_empleado,cs_tiempo,cs_cliente,cs_producto) 
);
