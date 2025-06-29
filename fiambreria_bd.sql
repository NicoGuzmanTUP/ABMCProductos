CREATE DATABASE [mayorista_fiambres_lacteos_DB_logica]
GO
USE [mayorista_fiambres_lacteos_DB_logica]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[barrios](
	[id_barrio] [int] IDENTITY(1,1) NOT NULL,
	[barrio] [varchar](150) NOT NULL,
	[ciudad_id] [int] NOT NULL,
 CONSTRAINT [pk_id_barrio] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[canales_compras](
	[id_canal_compra] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [pk_canal_compra] PRIMARY KEY CLUSTERED 
(
	[id_canal_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cargos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargos](
	[id_cargo] [int] IDENTITY(1,1) NOT NULL,
	[cargo] [varchar](50) NOT NULL,
 CONSTRAINT [pk_cargo] PRIMARY KEY CLUSTERED 
(
	[id_cargo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorias]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorias](
	[id_categoria] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[id_categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ciudades]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ciudades](
	[id_ciudad] [int] IDENTITY(1,1) NOT NULL,
	[ciudad] [varchar](100) NOT NULL,
	[provincia_id] [int] NOT NULL,
 CONSTRAINT [pk_id_ciudad] PRIMARY KEY CLUSTERED 
(
	[id_ciudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[nombre_completo] [varchar](50) NOT NULL,
 CONSTRAINT [pk_cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contactos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contactos](
	[id_contacto] [int] IDENTITY(1,1) NOT NULL,
	[contacto] [varchar](100) NOT NULL,
	[tipo_contacto_id] [int] NOT NULL,
	[cliente_id] [int] NULL,
 CONSTRAINT [pk_contacto] PRIMARY KEY CLUSTERED 
(
	[id_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contactos_empleados]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactos_empleados](
	[id_contacto_empleado] [int] NOT NULL,
	[contacto] [varchar](50) NOT NULL,
	[tipo_contacto_id] [int] NULL,
	[empleado_id] [int] NULL,
 CONSTRAINT [PK_contactos_empleados] PRIMARY KEY CLUSTERED 
(
	[id_contacto_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[depositos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[depositos](
	[id_deposito] [int] NOT NULL,
	[cliente_id] [int] NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[capacidad] [decimal](8, 2) NOT NULL,
 CONSTRAINT [pk_deposito] PRIMARY KEY CLUSTERED 
(
	[id_deposito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_pedidos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_pedidos](
	[id_det_pedido] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[prec_uni] [decimal](10, 2) NOT NULL,
	[pedido_id] [int] NOT NULL,
	[peso_total_kg] [decimal](15, 2) NULL,
 CONSTRAINT [pk_det_pedido] PRIMARY KEY CLUSTERED 
(
	[id_det_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalles_facturas]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalles_facturas](
	[id_det_fact] [int] NOT NULL,
	[factura_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[prec_uni] [decimal](10, 2) NOT NULL,
	[peso_total_kg] [decimal](15, 2) NULL,
 CONSTRAINT [pk_det_factura] PRIMARY KEY CLUSTERED 
(
	[id_det_fact] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalles_hoja_ruta]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalles_hoja_ruta](
	[id_detalle_hoja_ruta] [int] IDENTITY(1,1) NOT NULL,
	[hoja_ruta_id] [int] NOT NULL,
	[pedido_id] [int] NOT NULL,
	[direccion_entrega_id] [int] NOT NULL,
	[orden_entrega] [int] NOT NULL,
	[hora_estimada_entrega] [time](7) NULL,
	[hora_real_entrega] [time](7) NULL,
	[observacion_entrega] [varchar](255) NULL,
 CONSTRAINT [pk_detalle_hoja_ruta] PRIMARY KEY CLUSTERED 
(
	[id_detalle_hoja_ruta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Direcciones_Entregas]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Direcciones_Entregas](
	[id_dir_entrega] [int] IDENTITY(1,1) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[referencia] [varchar](50) NULL,
	[cliente_id] [int] NULL,
	[zona_envio_id] [int] NULL,
 CONSTRAINT [pk_dir_entrega] PRIMARY KEY CLUSTERED 
(
	[id_dir_entrega] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[id_empleado] [int] NOT NULL,
	[sucursal_id] [int] NOT NULL,
	[cargo_id] [int] NOT NULL,
	[nombre_completo] [varchar](90) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[supervisor_id] [int] NULL,
	[barrio_id] [int] NULL,
 CONSTRAINT [pk_id_empleado] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados_pedido]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados_pedido](
	[id_estado_pedido] [int] NOT NULL,
	[estado] [varchar](50) NULL,
 CONSTRAINT [PK_estado_pedido] PRIMARY KEY CLUSTERED 
(
	[id_estado_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas](
	[id_factura] [int] NOT NULL,
	[pedido_id] [int] NOT NULL,
	[sucursal_id] [int] NOT NULL,
	[empleado_factura_id] [int] NOT NULL,
	[transporte_id] [int] NULL,
	[fecha] [date] NOT NULL,
	[subtotal] [decimal](10, 2) NOT NULL,
 CONSTRAINT [pk_id_factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Facturas_medios_pago]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Facturas_medios_pago](
	[id_factura_medio_pago] [int] NOT NULL,
	[monto] [decimal](10, 2) NOT NULL,
	[medio_pago_id] [int] NOT NULL,
	[factura_id] [int] NULL,
 CONSTRAINT [pk_factura_medio_pago] PRIMARY KEY CLUSTERED 
(
	[id_factura_medio_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[flotas]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flotas](
	[id_flota] [int] NOT NULL,
	[tipo_flota] [varchar](50) NOT NULL,
	[nombre_flota] [varchar](100) NULL,
	[recargo] [decimal](10, 2) NOT NULL,
 CONSTRAINT [pk_flota] PRIMARY KEY CLUSTERED 
(
	[id_flota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hojas_rutas]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hojas_rutas](
	[id_hoja_ruta] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [date] NOT NULL,
	[transporte_id] [int] NOT NULL,
	[observaciones] [varchar](255) NULL,
	[fecha_salida] [datetime] NULL,
	[fecha_regreso] [datetime] NULL,
	[distancia_km] [decimal](10, 2) NULL,
 CONSTRAINT [pk_hoja_ruta] PRIMARY KEY CLUSTERED 
(
	[id_hoja_ruta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventarios]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventarios](
	[id_inventario] [int] NOT NULL,
	[sucursal_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [pk_inventario] PRIMARY KEY CLUSTERED 
(
	[id_inventario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[limites_stock]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[limites_stock](
	[id_limite_stock] [int] NOT NULL,
	[limite] [int] NOT NULL,
 CONSTRAINT [PK_limite_stock] PRIMARY KEY CLUSTERED 
(
	[id_limite_stock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marcas]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marcas](
	[id_marca] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_marca] PRIMARY KEY CLUSTERED 
(
	[id_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medios_pagos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medios_pagos](
	[id_medio_pago] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[recargo] [decimal](10, 2) NULL,
 CONSTRAINT [pk_medio_pago_id] PRIMARY KEY CLUSTERED 
(
	[id_medio_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedidos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedidos](
	[id_pedido] [int] NOT NULL,
	[empleado_armado_id] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[canal_compra_id] [int] NOT NULL,
	[estado_id] [int] NULL,
	[direccion_entrega_id] [int] NOT NULL,
 CONSTRAINT [pk_pedido] PRIMARY KEY CLUSTERED 
(
	[id_pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NULL,
	[tipo_producto_id] [int] NOT NULL,
	[marca_id] [int] NOT NULL,
	[categoria_id] [int] NOT NULL,
	[peso_kg] [decimal](18, 2) NULL,
	[limite_stock_id] [int] NULL,
	[ruta_img] [varchar](250) NULL,
	[activo] [bit] NULL,
 CONSTRAINT [PK_producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[provincias]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provincias](
	[id_provincia] [int] IDENTITY(1,1) NOT NULL,
	[provincia] [varchar](100) NOT NULL,
 CONSTRAINT [fk_id_provincia] PRIMARY KEY CLUSTERED 
(
	[id_provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[registro_inventario]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[registro_inventario](
	[id_registro] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[sucursal_id] [int] NOT NULL,
	[tipo_movimiento_id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[motivo] [varchar](70) NULL,
	[fecha] [datetime] NOT NULL,
	[sucursal_destino_id] [int] NULL,
 CONSTRAINT [PK_registro_inventario] PRIMARY KEY CLUSTERED 
(
	[id_registro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursales]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursales](
	[id_sucursal] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[telefono] [varchar](50) NOT NULL,
	[barrio_id] [int] NOT NULL,
 CONSTRAINT [pk_sucursal] PRIMARY KEY CLUSTERED 
(
	[id_sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipos_Contactos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipos_Contactos](
	[id_tipo_contacto] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [varchar](50) NOT NULL,
 CONSTRAINT [pk_tipo_cont] PRIMARY KEY CLUSTERED 
(
	[id_tipo_contacto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_movimientos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_movimientos](
	[id_mov_tipo] [int] IDENTITY(1,1) NOT NULL,
	[tipo_mov] [varchar](50) NOT NULL,
 CONSTRAINT [pk_tipo_mov] PRIMARY KEY CLUSTERED 
(
	[id_mov_tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_productos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_productos](
	[id_tipo_producto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NULL,
 CONSTRAINT [PK_tipo_producto] PRIMARY KEY CLUSTERED 
(
	[id_tipo_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_vehiculos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_vehiculos](
	[id_tipo_vehiculo] [int] NOT NULL,
	[tipo] [varchar](50) NOT NULL,
 CONSTRAINT [pk_vehiculo] PRIMARY KEY CLUSTERED 
(
	[id_tipo_vehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transportes]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transportes](
	[id_transporte] [int] NOT NULL,
	[flota_id] [int] NULL,
	[nombre_transportista] [varchar](100) NULL,
	[cuit] [varchar](15) NULL,
	[telefono] [varchar](20) NULL,
 CONSTRAINT [pk_transporte] PRIMARY KEY CLUSTERED 
(
	[id_transporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vehiculos]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vehiculos](
	[id_vehiculo] [int] NOT NULL,
	[patente] [varchar](10) NOT NULL,
	[capacidad_kg] [decimal](10, 2) NULL,
	[tipo_vehiculo_id] [int] NULL,
	[transporte_id] [int] NULL,
	[refrigeracion] [bit] NULL,
 CONSTRAINT [pk_id_vehiculo] PRIMARY KEY CLUSTERED 
(
	[id_vehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zonas_envio]    Script Date: 27/6/2025 20:12:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zonas_envio](
	[id_zona_envio] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[recargo_zona] [decimal](10, 2) NULL,
 CONSTRAINT [pk_zona_envio] PRIMARY KEY CLUSTERED 
(
	[id_zona_envio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[barrios] ON 

INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (1, N'Centro', 1)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (2, N'Tolosa', 1)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (3, N'La Perla', 2)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (4, N'General Paz', 4)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (5, N'Nueva Córdoba', 4)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (6, N'Almirante Brown', 5)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (7, N'Palermo', 5)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (8, N'Barrio Sur', 9)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (9, N'Parque del virrey', 9)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (10, N'Independiente Rivadavia', 9)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (11, N'Centro', 1)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (12, N'Tolosa', 1)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (13, N'La Perla', 2)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (14, N'General Paz', 4)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (15, N'Nueva Córdoba', 4)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (16, N'Almirante Brown', 5)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (17, N'Palermo', 5)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (18, N'Barrio Sur', 9)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (19, N'Parque del virrey', 9)
INSERT [dbo].[barrios] ([id_barrio], [barrio], [ciudad_id]) VALUES (20, N'Independiente Rivadavia', 9)
SET IDENTITY_INSERT [dbo].[barrios] OFF
GO
INSERT [dbo].[canales_compras] ([id_canal_compra], [descripcion]) VALUES (1, N'Tienda Online')
INSERT [dbo].[canales_compras] ([id_canal_compra], [descripcion]) VALUES (2, N'Visita en Sucursal')
INSERT [dbo].[canales_compras] ([id_canal_compra], [descripcion]) VALUES (3, N'Llamado Telefónico')
GO
SET IDENTITY_INSERT [dbo].[cargos] ON 

INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (1, N'Gerente General')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (2, N'Jefe de Ventas Mayoristas')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (3, N'Supervisor de Almacén')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (4, N'Coordinador de Logística')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (5, N'Analista de Compras')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (6, N'Representante de Atención al Cliente')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (7, N'Especialista en Control de Calidad')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (8, N'Supervisor de Seguridad Alimentaria')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (9, N'Jefe de Recursos Humanos')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (10, N'Coordinador de Transporte Refrigerado')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (11, N'Asistente de Inventarios')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (12, N'Supervisor de Flota')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (13, N'Gerente General')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (14, N'Jefe de Ventas Mayoristas')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (15, N'Supervisor de Almacén')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (16, N'Coordinador de Logística')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (17, N'Analista de Compras')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (18, N'Representante de Atención al Cliente')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (19, N'Especialista en Control de Calidad')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (20, N'Supervisor de Seguridad Alimentaria')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (21, N'Jefe de Recursos Humanos')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (22, N'Coordinador de Transporte Refrigerado')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (23, N'Asistente de Inventarios')
INSERT [dbo].[cargos] ([id_cargo], [cargo]) VALUES (24, N'Supervisor de Flota')
SET IDENTITY_INSERT [dbo].[cargos] OFF
GO
SET IDENTITY_INSERT [dbo].[categorias] ON 

INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (1, N'Frescos', N'Productos que requieren refrigeración inmediata')
INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (2, N'Congelados', N'Alimentos Congelados')
INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (3, N'Orgánicos', N'Productos naturales sin conservantes')
INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (4, N'Económicos', N'Línea de productos de costo reducido')
INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (5, N'Gourmet', N'Productos de la mas alta calidad')
INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (6, N'Sin TACC', N'Aptos para celíacos, sin trigo, avena, cebada ni centeno')
INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (7, N'Importados', N'Productos de origen internacional')
INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (8, N'Picadas', N'Tabla de picada armada')
INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (9, N'Porciones Individuales', N'Empaquetado para consumo unitario')
INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (10, N'Granel', N'Producto suelto por mayor')
INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (11, N'Fiambres', N'Productos cárnicos procesados y embutidos')
INSERT [dbo].[categorias] ([id_categoria], [nombre], [descripcion]) VALUES (12, N'Lácteos', N'Productos derivados de la leche')
SET IDENTITY_INSERT [dbo].[categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[ciudades] ON 

INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (1, N'La Plata', 1)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (2, N'Mar del Plata', 1)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (3, N'Bahía Blanca', 1)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (4, N'Córdoba Capital', 2)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (5, N'Villa María', 2)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (6, N'Tartagal', 6)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (7, N'Despeñaderos', 2)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (8, N'Lozada', 2)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (9, N'Alta Gracia', 2)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (10, N'Puerto Iguazú', 13)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (11, N'La Plata', 1)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (12, N'Mar del Plata', 1)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (13, N'Bahía Blanca', 1)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (14, N'Córdoba Capital', 2)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (15, N'Villa María', 2)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (16, N'Tartagal', 6)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (17, N'Despeñaderos', 2)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (18, N'Lozada', 2)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (19, N'Alta Gracia', 2)
INSERT [dbo].[ciudades] ([id_ciudad], [ciudad], [provincia_id]) VALUES (20, N'Puerto Iguazú', 13)
SET IDENTITY_INSERT [dbo].[ciudades] OFF
GO
SET IDENTITY_INSERT [dbo].[Clientes] ON 

INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (1, N'Distribuidora La Anónima S.A.')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (2, N'Carnicerías Pampeanas Ltda.')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (3, N'Alimentos Frescos del Sur')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (4, N'Mayorista Don Gaucho')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (5, N'Cadena de Queserías Patagonia')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (6, N'Supermercado Granja')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (7, N'Maxikiosco El Dandy')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (8, N'Fiambreria La Gallega')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (9, N'Distribuidora El Salame')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (10, N'Despensa El Norte')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (11, N'Distribuidora La Anónima S.A.')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (12, N'Carnicerías Pampeanas Ltda.')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (13, N'Alimentos Frescos del Sur')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (14, N'Mayorista Don Gaucho')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (15, N'Cadena de Queserías Patagonia')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (16, N'Supermercado Granja')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (17, N'Maxikiosco El Dandy')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (18, N'Fiambreria La Gallega')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (19, N'Distribuidora El Salame')
INSERT [dbo].[Clientes] ([id_cliente], [nombre_completo]) VALUES (20, N'Despensa El Norte')
SET IDENTITY_INSERT [dbo].[Clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[Contactos] ON 

INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (1, N'contacto@laanonima.com.ar', 1, 1)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (2, N'+54 11 4321-0000', 3, 1)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (3, N'ventas@pampeanascarnes.com', 1, 2)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (4, N'+54 291 455-6789', 3, 2)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (5, N'info@frescosdelsur.com', 1, 3)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (6, N'+54 221 512-3400', 3, 3)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (7, N'logistica@donghaucho.com', 1, 4)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (8, N'+54 351 600-1234', 2, 4)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (9, N'administracion@queseriapatagonia.com', 1, 5)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (10, N'+54 294 477-8899', 3, 5)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (11, N'compras@supermercadogranja.com', 1, 6)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (12, N'@SuperGranjaOficial', 4, 6)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (13, N'maxidandy@kioscoelite.com', 1, 7)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (14, N'+54 261 533-2020', 2, 7)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (15, N'clientes@fiambrerialagallega.com', 1, 8)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (16, N'+54 341 409-8765', 3, 8)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (17, N'pedidos@distribuidoraelsalame.com', 1, 9)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (18, N'+54 299 488-1122', 2, 9)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (19, N'soporte@despensaelnorte.com', 1, 10)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (20, N'+54 387 512-3456', 3, 10)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (21, N'contacto@laanonima.com.ar', 1, 1)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (22, N'+54 11 4321-0000', 3, 1)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (23, N'ventas@pampeanascarnes.com', 1, 2)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (24, N'+54 291 455-6789', 3, 2)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (25, N'info@frescosdelsur.com', 1, 3)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (26, N'+54 221 512-3400', 3, 3)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (27, N'logistica@donghaucho.com', 1, 4)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (28, N'+54 351 600-1234', 2, 4)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (29, N'administracion@queseriapatagonia.com', 1, 5)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (30, N'+54 294 477-8899', 3, 5)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (31, N'compras@supermercadogranja.com', 1, 6)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (32, N'@SuperGranjaOficial', 4, 6)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (33, N'maxidandy@kioscoelite.com', 1, 7)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (34, N'+54 261 533-2020', 2, 7)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (35, N'clientes@fiambrerialagallega.com', 1, 8)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (36, N'+54 341 409-8765', 3, 8)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (37, N'pedidos@distribuidoraelsalame.com', 1, 9)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (38, N'+54 299 488-1122', 2, 9)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (39, N'soporte@despensaelnorte.com', 1, 10)
INSERT [dbo].[Contactos] ([id_contacto], [contacto], [tipo_contacto_id], [cliente_id]) VALUES (40, N'+54 387 512-3456', 3, 10)
SET IDENTITY_INSERT [dbo].[Contactos] OFF
GO
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2001, N'Juanperez@gmail.com', 1, 101)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2002, N'+54 678 898-6799', 2, 102)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2003, N'+54 333 444-5555', 2, 103)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2004, N'021 521-1478', 3, 104)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2005, N'@MColomar', 4, 105)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2006, N'+54 868 777-1111', 2, 106)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2007, N'@T_silva', 4, 107)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2008, N'555 555-5555', 3, 108)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2009, N'Enzofernandez@gmail.com.', 1, 109)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2010, N'Exequielsantoro@lanonima.com.ar', 1, 110)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2011, N'+54 435 345-3456', 2, 111)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2012, N'000 890-5467', 3, 112)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2013, N'+54 222 666-6666', 2, 113)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2014, N'+54 333 738-8737', 2, 114)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2015, N'@Maria_diaz', 1, 116)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2016, N'@carlos_m', 4, 117)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2017, N'@sole07', 4, 118)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2018, N'@pedro_alv', 4, 119)
INSERT [dbo].[contactos_empleados] ([id_contacto_empleado], [contacto], [tipo_contacto_id], [empleado_id]) VALUES (2019, N'@luciVera', 4, 120)
GO
INSERT [dbo].[depositos] ([id_deposito], [cliente_id], [direccion], [capacidad]) VALUES (5001, 1, N'Av. 7 1300', CAST(10000.00 AS Decimal(8, 2)))
INSERT [dbo].[depositos] ([id_deposito], [cliente_id], [direccion], [capacidad]) VALUES (5002, 2, N'Ruta 3 km 12, Berisso', CAST(15000.00 AS Decimal(8, 2)))
INSERT [dbo].[depositos] ([id_deposito], [cliente_id], [direccion], [capacidad]) VALUES (5003, 3, N'Calle 60 1200, Ensenada', CAST(8000.00 AS Decimal(8, 2)))
INSERT [dbo].[depositos] ([id_deposito], [cliente_id], [direccion], [capacidad]) VALUES (5004, 4, N'Av. Montevideo 450, CABA', CAST(20000.00 AS Decimal(8, 2)))
INSERT [dbo].[depositos] ([id_deposito], [cliente_id], [direccion], [capacidad]) VALUES (5005, 5, N'Camino Centenario 2200, Tolosa', CAST(7500.00 AS Decimal(8, 2)))
INSERT [dbo].[depositos] ([id_deposito], [cliente_id], [direccion], [capacidad]) VALUES (5006, 6, N'Ruta 3 km 15, Berisso', CAST(18000.00 AS Decimal(8, 2)))
INSERT [dbo].[depositos] ([id_deposito], [cliente_id], [direccion], [capacidad]) VALUES (5007, 7, N'Calle 10 333, Berisso', CAST(12000.00 AS Decimal(8, 2)))
INSERT [dbo].[depositos] ([id_deposito], [cliente_id], [direccion], [capacidad]) VALUES (5008, 8, N'Av. Circunvalación 2000, Berisso', CAST(16000.00 AS Decimal(8, 2)))
INSERT [dbo].[depositos] ([id_deposito], [cliente_id], [direccion], [capacidad]) VALUES (5009, 9, N'Ruta 11 km 8, Berisso', CAST(22000.00 AS Decimal(8, 2)))
INSERT [dbo].[depositos] ([id_deposito], [cliente_id], [direccion], [capacidad]) VALUES (5010, 10, N'Calle 25 789, Berisso', CAST(9000.00 AS Decimal(8, 2)))
INSERT [dbo].[depositos] ([id_deposito], [cliente_id], [direccion], [capacidad]) VALUES (5011, 2, N'Ruta 3 km 12, Berisso (Sector Norte)', CAST(15000.00 AS Decimal(8, 2)))
GO
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (1, 879, 10, CAST(1200.00 AS Decimal(10, 2)), 1, CAST(12.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (2, 880, 5, CAST(900.00 AS Decimal(10, 2)), 1, CAST(5.50 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (3, 932, 8, CAST(500.00 AS Decimal(10, 2)), 2, CAST(4.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (4, 965, 3, CAST(1500.00 AS Decimal(10, 2)), 2, CAST(9.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (5, 876, 6, CAST(800.00 AS Decimal(10, 2)), 3, CAST(5.40 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (6, 456, 10, CAST(950.00 AS Decimal(10, 2)), 3, CAST(11.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (7, 879, 4, CAST(1200.00 AS Decimal(10, 2)), 4, CAST(4.80 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (8, 880, 7, CAST(900.00 AS Decimal(10, 2)), 4, CAST(7.70 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (9, 932, 10, CAST(500.00 AS Decimal(10, 2)), 5, CAST(5.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (10, 345, 5, CAST(1800.00 AS Decimal(10, 2)), 11, CAST(50.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (11, 647, 8, CAST(1100.00 AS Decimal(10, 2)), 11, CAST(16.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (12, 423, 12, CAST(750.00 AS Decimal(10, 2)), 12, CAST(14.40 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (13, 234, 15, CAST(450.00 AS Decimal(10, 2)), 12, CAST(13.50 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (14, 754, 10, CAST(380.00 AS Decimal(10, 2)), 13, CAST(10.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (15, 843, 20, CAST(520.00 AS Decimal(10, 2)), 13, CAST(20.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (16, 133, 6, CAST(980.00 AS Decimal(10, 2)), 14, CAST(12.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (17, 765, 25, CAST(290.00 AS Decimal(10, 2)), 14, NULL)
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (18, 876, 8, CAST(1150.00 AS Decimal(10, 2)), 15, CAST(8.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (19, 456, 18, CAST(650.00 AS Decimal(10, 2)), 15, CAST(27.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (20, 1001, 15, CAST(2500.00 AS Decimal(10, 2)), 16, CAST(33.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (21, 1002, 8, CAST(1800.00 AS Decimal(10, 2)), 16, CAST(14.40 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (22, 1003, 25, CAST(1200.00 AS Decimal(10, 2)), 17, CAST(37.50 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (23, 1004, 12, CAST(950.00 AS Decimal(10, 2)), 17, CAST(24.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (24, 1005, 10, CAST(1600.00 AS Decimal(10, 2)), 18, CAST(30.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (25, 1006, 18, CAST(1100.00 AS Decimal(10, 2)), 18, CAST(45.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (26, 1007, 35, CAST(800.00 AS Decimal(10, 2)), 19, CAST(28.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (27, 1008, 22, CAST(650.00 AS Decimal(10, 2)), 19, CAST(22.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (28, 1009, 20, CAST(950.00 AS Decimal(10, 2)), 20, CAST(24.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (29, 1010, 14, CAST(1300.00 AS Decimal(10, 2)), 20, CAST(23.80 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (30, 1001, 12, CAST(2500.00 AS Decimal(10, 2)), 21, CAST(26.40 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (31, 1002, 16, CAST(1800.00 AS Decimal(10, 2)), 21, CAST(28.80 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (32, 1003, 30, CAST(1200.00 AS Decimal(10, 2)), 22, CAST(45.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (33, 423, 25, CAST(750.00 AS Decimal(10, 2)), 22, CAST(30.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (34, 1005, 8, CAST(1600.00 AS Decimal(10, 2)), 23, CAST(24.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (35, 1004, 28, CAST(950.00 AS Decimal(10, 2)), 23, CAST(56.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (36, 1007, 40, CAST(800.00 AS Decimal(10, 2)), 24, CAST(32.00 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (37, 1006, 11, CAST(1100.00 AS Decimal(10, 2)), 24, CAST(27.50 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (38, 1009, 24, CAST(950.00 AS Decimal(10, 2)), 25, CAST(28.80 AS Decimal(15, 2)))
INSERT [dbo].[detalle_pedidos] ([id_det_pedido], [producto_id], [cantidad], [prec_uni], [pedido_id], [peso_total_kg]) VALUES (39, 1008, 33, CAST(650.00 AS Decimal(10, 2)), 25, CAST(33.00 AS Decimal(15, 2)))
GO
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (1, 1, 879, 10, CAST(1200.00 AS Decimal(10, 2)), CAST(12.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (2, 1, 880, 5, CAST(900.00 AS Decimal(10, 2)), CAST(5.50 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (3, 2, 932, 8, CAST(500.00 AS Decimal(10, 2)), CAST(4.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (4, 2, 965, 3, CAST(1500.00 AS Decimal(10, 2)), CAST(9.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (5, 3, 876, 6, CAST(800.00 AS Decimal(10, 2)), CAST(5.40 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (6, 3, 345, 10, CAST(950.00 AS Decimal(10, 2)), CAST(11.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (7, 4, 879, 4, CAST(1200.00 AS Decimal(10, 2)), CAST(4.80 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (8, 4, 880, 7, CAST(900.00 AS Decimal(10, 2)), CAST(7.70 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (9, 5, 932, 10, CAST(500.00 AS Decimal(10, 2)), CAST(5.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (10, 6, 345, 5, CAST(1800.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (11, 6, 647, 8, CAST(1100.00 AS Decimal(10, 2)), CAST(16.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (12, 7, 423, 12, CAST(750.00 AS Decimal(10, 2)), CAST(14.40 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (13, 7, 234, 15, CAST(450.00 AS Decimal(10, 2)), CAST(13.50 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (14, 8, 754, 10, CAST(380.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (15, 8, 843, 20, CAST(520.00 AS Decimal(10, 2)), CAST(20.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (16, 9, 133, 6, CAST(980.00 AS Decimal(10, 2)), CAST(12.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (17, 9, 765, 25, CAST(290.00 AS Decimal(10, 2)), NULL)
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (18, 10, 876, 8, CAST(1150.00 AS Decimal(10, 2)), CAST(8.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (19, 10, 456, 18, CAST(650.00 AS Decimal(10, 2)), CAST(27.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (20, 11, 1001, 15, CAST(2500.00 AS Decimal(10, 2)), CAST(33.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (21, 11, 1002, 8, CAST(1800.00 AS Decimal(10, 2)), CAST(14.40 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (22, 12, 1003, 25, CAST(1200.00 AS Decimal(10, 2)), CAST(37.50 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (23, 12, 1004, 12, CAST(950.00 AS Decimal(10, 2)), CAST(24.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (24, 13, 1005, 10, CAST(1600.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (25, 13, 1006, 18, CAST(1100.00 AS Decimal(10, 2)), CAST(45.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (26, 14, 1007, 35, CAST(800.00 AS Decimal(10, 2)), CAST(28.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (27, 14, 1008, 22, CAST(650.00 AS Decimal(10, 2)), CAST(22.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (28, 15, 1009, 20, CAST(950.00 AS Decimal(10, 2)), CAST(24.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (29, 15, 1010, 14, CAST(1300.00 AS Decimal(10, 2)), CAST(23.80 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (30, 16, 1001, 12, CAST(2500.00 AS Decimal(10, 2)), CAST(26.40 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (31, 16, 1002, 16, CAST(1800.00 AS Decimal(10, 2)), CAST(28.80 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (32, 17, 1003, 30, CAST(1200.00 AS Decimal(10, 2)), CAST(45.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (33, 17, 423, 25, CAST(750.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (34, 18, 1005, 8, CAST(1600.00 AS Decimal(10, 2)), CAST(24.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (35, 18, 1004, 28, CAST(950.00 AS Decimal(10, 2)), CAST(56.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (36, 19, 1007, 40, CAST(800.00 AS Decimal(10, 2)), CAST(32.00 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (37, 19, 1006, 11, CAST(1100.00 AS Decimal(10, 2)), CAST(27.50 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (38, 20, 1009, 24, CAST(950.00 AS Decimal(10, 2)), CAST(28.80 AS Decimal(15, 2)))
INSERT [dbo].[detalles_facturas] ([id_det_fact], [factura_id], [producto_id], [cantidad], [prec_uni], [peso_total_kg]) VALUES (39, 20, 1008, 33, CAST(650.00 AS Decimal(10, 2)), CAST(33.00 AS Decimal(15, 2)))
GO
SET IDENTITY_INSERT [dbo].[detalles_hoja_ruta] ON 

INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (1, 1, 1, 1, 1, CAST(N'20:00:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (2, 2, 2, 2, 2, CAST(N'15:00:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (3, 3, 3, 3, 3, CAST(N'20:30:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (4, 4, 4, 4, 4, CAST(N'20:00:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (5, 5, 5, 5, 5, CAST(N'14:30:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (6, 6, 6, 6, 6, CAST(N'15:10:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (7, 7, 7, 7, 7, CAST(N'21:00:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (8, 8, 8, 8, 8, CAST(N'11:30:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (9, 9, 9, 9, 9, CAST(N'17:45:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (10, 10, 10, 10, 10, CAST(N'15:00:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (11, 1, 1, 1, 1, CAST(N'20:00:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (12, 2, 2, 2, 2, CAST(N'15:00:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (13, 3, 3, 3, 3, CAST(N'20:30:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (14, 4, 4, 4, 4, CAST(N'20:00:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (15, 5, 5, 5, 5, CAST(N'14:30:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (16, 6, 6, 6, 6, CAST(N'15:10:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (17, 7, 7, 7, 7, CAST(N'21:00:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (18, 8, 8, 8, 8, CAST(N'11:30:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (19, 9, 9, 9, 9, CAST(N'17:45:00' AS Time), NULL, NULL)
INSERT [dbo].[detalles_hoja_ruta] ([id_detalle_hoja_ruta], [hoja_ruta_id], [pedido_id], [direccion_entrega_id], [orden_entrega], [hora_estimada_entrega], [hora_real_entrega], [observacion_entrega]) VALUES (20, 10, 10, 10, 10, CAST(N'15:00:00' AS Time), NULL, NULL)
SET IDENTITY_INSERT [dbo].[detalles_hoja_ruta] OFF
GO
SET IDENTITY_INSERT [dbo].[Direcciones_Entregas] ON 

INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (1, N'8043 Oriole Avenue', N'Portón negro', 1, 3)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (2, N'17 Warbler Court', NULL, 2, 4)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (3, N'37 Springs Avenue', N'Frente al hospital', 3, 5)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (4, N'11 Loftsgordon Street', NULL, 4, 1)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (5, N'Ruta Nacional 9 km 45', N'A 300 metros del cruce con la Ruta 19', 5, 1)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (6, N'Calle Los Naranjos 620', N'A la vuelta de la estación de servicio YPF', 6, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (7, N'Pasaje Monteverde 850', NULL, 7, 1)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (8, N'Av. Córdoba 3400', NULL, 8, 4)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (9, N'Camino San Pedro 112', NULL, 9, 5)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (10, N'Av. Las Palmeras 1540', N'Frente al supermercado mayorista Macro', 10, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (11, N'Av. San Martín 1450', N'Entre calles 14 y 15', 3, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (12, N'Calle 7 890', N'Edificio azul', 5, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (13, N'Diagonal 74 N° 1200', N'Local comercial', 7, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (14, N'Calle 50 N° 567', N'Frente a la plaza', 8, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (15, N'Av. 1 N° 2100', N'Esquina con calle 21', 9, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (16, N'Calle Belgrano 1800', N'Local comercial esquina', 1, 3)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (17, N'Av. Rivadavia 2500', N'Frente al banco', 2, 4)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (18, N'San Martín 980', N'Edificio corporativo', 4, 1)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (19, N'Mitre 1560', N'Casa particular portón verde', 6, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (20, N'9 de Julio 2200', N'Supermercado central', 8, 5)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (21, N'Sarmiento 1100', N'Oficina administrativa', 3, 3)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (22, N'Moreno 1700', N'Depósito trasero', 5, 4)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (23, N'Córdoba 800', N'Local gastronómico', 7, 1)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (24, N'8043 Oriole Avenue', N'Portón negro', 1, 3)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (25, N'17 Warbler Court', NULL, 2, 4)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (26, N'37 Springs Avenue', N'Frente al hospital', 3, 5)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (27, N'11 Loftsgordon Street', NULL, 4, 1)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (28, N'Ruta Nacional 9 km 45', N'A 300 metros del cruce con la Ruta 19', 5, 1)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (29, N'Calle Los Naranjos 620', N'A la vuelta de la estación de servicio YPF', 6, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (30, N'Pasaje Monteverde 850', NULL, 7, 1)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (31, N'Av. Córdoba 3400', NULL, 8, 4)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (32, N'Camino San Pedro 112', NULL, 9, 5)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (33, N'Av. Las Palmeras 1540', N'Frente al supermercado mayorista Macro', 10, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (34, N'Av. San Martín 1450', N'Entre calles 14 y 15', 3, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (35, N'Calle 7 890', N'Edificio azul', 5, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (36, N'Diagonal 74 N° 1200', N'Local comercial', 7, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (37, N'Calle 50 N° 567', N'Frente a la plaza', 8, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (38, N'Av. 1 N° 2100', N'Esquina con calle 21', 9, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (39, N'Calle Belgrano 1800', N'Local comercial esquina', 1, 3)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (40, N'Av. Rivadavia 2500', N'Frente al banco', 2, 4)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (41, N'San Martín 980', N'Edificio corporativo', 4, 1)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (42, N'Mitre 1560', N'Casa particular portón verde', 6, 2)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (43, N'9 de Julio 2200', N'Supermercado central', 8, 5)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (44, N'Sarmiento 1100', N'Oficina administrativa', 3, 3)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (45, N'Moreno 1700', N'Depósito trasero', 5, 4)
INSERT [dbo].[Direcciones_Entregas] ([id_dir_entrega], [direccion], [referencia], [cliente_id], [zona_envio_id]) VALUES (46, N'Córdoba 800', N'Local gastronómico', 7, 1)
SET IDENTITY_INSERT [dbo].[Direcciones_Entregas] OFF
GO
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (101, 1001, 2, N'Juan Pérez', N'Gob. Roca 334', 110, 1)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (102, 1002, 3, N'Hector Dominguez', N'Francia 2', 101, 2)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (103, 1001, 5, N'Rocio Cabrera', N'Nilo 33 ', 105, 1)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (104, 1003, 5, N'Paula Salomon', N'Polonia 121', 105, 5)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (105, 1002, 4, N'Matias Colomar', N'Las Amapolas 109', 102, 5)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (106, 1004, 6, N'Alexander Herrrera', N'Los Andes 99', 105, 3)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (107, 1006, 6, N'Thiago Silva', N'Rio De La Plata 34', 105, 5)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (108, 1004, 7, N'Pablo Zambrotta', N'Rio Parana 555', 102, 3)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (109, 1007, 8, N'Enzo Fernandez', N'Rawson 1001', 110, 9)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (110, 1002, 1, N'Exequiel Santoro', N'25 De Mayo 709', NULL, 7)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (111, 1008, 9, N'Agustin Palacios', N'9 De Julio 335', 110, 8)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (112, 1006, 10, N'Juan Ocampos', N'Italia 98', 101, 5)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (113, 1005, 11, N'Lucas Buffa', N'India 1111', 103, 5)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (114, 1001, 12, N'Fransisco Cordoba', N'Rio Negro 100', 110, 1)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (116, 1002, 4, N'Mariana Díaz', N'Calle 45 200', 102, 3)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (117, 1002, 7, N'Carlos Méndez', N'Av. Libertador 1223', 102, 3)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (118, 1002, 5, N'Soledad Peralta', N'Pasaje Luna 98', 102, 2)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (119, 1002, 6, N'Pedro Alvarez', N'Mitre 321', 102, 2)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (120, 1002, 6, N'Luciana Vera', N'Belgrano 999', NULL, 2)
INSERT [dbo].[empleados] ([id_empleado], [sucursal_id], [cargo_id], [nombre_completo], [direccion], [supervisor_id], [barrio_id]) VALUES (121, 1003, 6, N'Ernesto Ramírez', N'Sarmiento 12', 104, 2)
GO
INSERT [dbo].[estados_pedido] ([id_estado_pedido], [estado]) VALUES (1, N'Recibido')
INSERT [dbo].[estados_pedido] ([id_estado_pedido], [estado]) VALUES (2, N'En Preparación')
INSERT [dbo].[estados_pedido] ([id_estado_pedido], [estado]) VALUES (3, N'Listo para Despacho')
INSERT [dbo].[estados_pedido] ([id_estado_pedido], [estado]) VALUES (4, N'En Camino')
INSERT [dbo].[estados_pedido] ([id_estado_pedido], [estado]) VALUES (5, N'Entregado')
INSERT [dbo].[estados_pedido] ([id_estado_pedido], [estado]) VALUES (6, N'Cancelado')
INSERT [dbo].[estados_pedido] ([id_estado_pedido], [estado]) VALUES (7, N'Rechazado por Stock')
GO
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (1, 1, 1001, 101, 3001, CAST(N'2025-05-01' AS Date), CAST(19500.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (2, 2, 1001, 102, 3002, CAST(N'2025-05-02' AS Date), CAST(11400.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (3, 3, 1002, 103, 3001, CAST(N'2025-05-03' AS Date), CAST(16700.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (4, 4, 1001, 104, NULL, CAST(N'2025-05-04' AS Date), CAST(11100.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (5, 5, 1002, 102, 3002, CAST(N'2025-05-05' AS Date), CAST(5000.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (6, 11, 1003, 103, 3003, CAST(N'2025-05-06' AS Date), CAST(17800.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (7, 12, 1004, 104, 3004, CAST(N'2025-05-07' AS Date), CAST(15750.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (8, 13, 1005, 105, 3005, CAST(N'2025-05-08' AS Date), CAST(14200.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (9, 14, 1006, 106, 3006, CAST(N'2025-05-09' AS Date), CAST(13130.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (10, 15, 1007, 107, 3007, CAST(N'2025-05-10' AS Date), CAST(20900.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (11, 16, 1001, 101, 3001, CAST(N'2025-04-15' AS Date), CAST(51900.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (12, 17, 1002, 102, 3002, CAST(N'2025-04-20' AS Date), CAST(41400.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (13, 18, 1003, 103, 3003, CAST(N'2025-05-12' AS Date), CAST(35800.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (14, 19, 1004, 104, 3004, CAST(N'2025-05-18' AS Date), CAST(42300.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (15, 20, 1005, 105, 3005, CAST(N'2025-06-05' AS Date), CAST(37200.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (16, 21, 1006, 106, 3006, CAST(N'2025-06-10' AS Date), CAST(58800.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (17, 22, 1007, 107, 3007, CAST(N'2025-06-15' AS Date), CAST(54750.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (18, 23, 1008, 108, 3008, CAST(N'2025-04-25' AS Date), CAST(39400.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (19, 24, 1009, 109, 3009, CAST(N'2025-05-28' AS Date), CAST(43100.00 AS Decimal(10, 2)))
INSERT [dbo].[Facturas] ([id_factura], [pedido_id], [sucursal_id], [empleado_factura_id], [transporte_id], [fecha], [subtotal]) VALUES (20, 25, 1010, 110, 3001, CAST(N'2025-06-20' AS Date), CAST(43250.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (1, CAST(10000.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (2, CAST(6500.00 AS Decimal(10, 2)), 2, 1)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (3, CAST(6400.00 AS Decimal(10, 2)), 1, 2)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (4, CAST(5000.00 AS Decimal(10, 2)), 3, 2)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (5, CAST(6700.00 AS Decimal(10, 2)), 1, 3)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (6, CAST(10000.00 AS Decimal(10, 2)), 2, 3)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (7, CAST(11100.00 AS Decimal(10, 2)), 1, 4)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (8, CAST(5000.00 AS Decimal(10, 2)), 3, 5)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (9, CAST(12000.00 AS Decimal(10, 2)), 1, 6)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (10, CAST(5800.00 AS Decimal(10, 2)), 2, 6)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (11, CAST(8500.00 AS Decimal(10, 2)), 1, 7)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (12, CAST(7250.00 AS Decimal(10, 2)), 3, 7)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (13, CAST(14200.00 AS Decimal(10, 2)), 2, 8)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (14, CAST(6130.00 AS Decimal(10, 2)), 1, 9)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (15, CAST(7000.00 AS Decimal(10, 2)), 4, 9)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (16, CAST(15900.00 AS Decimal(10, 2)), 1, 10)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (17, CAST(5000.00 AS Decimal(10, 2)), 2, 10)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (18, CAST(51900.00 AS Decimal(10, 2)), 1, 11)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (19, CAST(41400.00 AS Decimal(10, 2)), 2, 12)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (20, CAST(35800.00 AS Decimal(10, 2)), 1, 13)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (21, CAST(42300.00 AS Decimal(10, 2)), 4, 14)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (22, CAST(37200.00 AS Decimal(10, 2)), 1, 15)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (23, CAST(58800.00 AS Decimal(10, 2)), 2, 16)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (24, CAST(54750.00 AS Decimal(10, 2)), 1, 17)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (25, CAST(39400.00 AS Decimal(10, 2)), 3, 18)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (26, CAST(43100.00 AS Decimal(10, 2)), 1, 19)
INSERT [dbo].[Facturas_medios_pago] ([id_factura_medio_pago], [monto], [medio_pago_id], [factura_id]) VALUES (27, CAST(43250.00 AS Decimal(10, 2)), 2, 20)
GO
INSERT [dbo].[flotas] ([id_flota], [tipo_flota], [nombre_flota], [recargo]) VALUES (2001, N'INTERNA', N'Flota Pequeña', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[flotas] ([id_flota], [tipo_flota], [nombre_flota], [recargo]) VALUES (2002, N'EXTERNA', N'Flota Pequeña', CAST(15.00 AS Decimal(10, 2)))
INSERT [dbo].[flotas] ([id_flota], [tipo_flota], [nombre_flota], [recargo]) VALUES (2003, N'INTERNA', N'Flota Mediana', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[flotas] ([id_flota], [tipo_flota], [nombre_flota], [recargo]) VALUES (2004, N'EXTERNA', N'Flota Mediana', CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[flotas] ([id_flota], [tipo_flota], [nombre_flota], [recargo]) VALUES (2005, N'INTERNA', N'Flota Grande', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[flotas] ([id_flota], [tipo_flota], [nombre_flota], [recargo]) VALUES (2006, N'EXTERNA', N'Flota Grande', CAST(30.00 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[hojas_rutas] ON 

INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (1, CAST(N'2024-03-15' AS Date), 3001, N'Ruta 2 - Control térmico permanente', CAST(N'2024-03-15T07:00:00.000' AS DateTime), CAST(N'2024-03-15T19:30:00.000' AS DateTime), CAST(450.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (2, CAST(N'2023-04-01' AS Date), 3002, N'Ruta sin incidencias', CAST(N'2023-04-01T12:00:00.000' AS DateTime), CAST(N'2023-04-01T15:03:00.000' AS DateTime), CAST(120.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (3, CAST(N'2022-01-16' AS Date), 3003, NULL, CAST(N'2022-01-16T14:10:00.000' AS DateTime), CAST(N'2022-01-16T19:30:00.000' AS DateTime), CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (4, CAST(N'2025-11-22' AS Date), 3004, N'Ruta con desvío por obras viales', CAST(N'2025-11-22T09:10:00.000' AS DateTime), CAST(N'2025-11-22T13:13:00.000' AS DateTime), CAST(111.50 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (5, CAST(N'2022-06-03' AS Date), 3005, N'Ruta estándar sin incidencias', CAST(N'2022-06-03T18:20:00.000' AS DateTime), CAST(N'2022-06-03T18:55:00.000' AS DateTime), CAST(30.10 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (6, CAST(N'2023-04-01' AS Date), 3006, N'Reposición de stock', CAST(N'2023-04-01T12:00:00.000' AS DateTime), CAST(N'2023-04-01T15:03:00.000' AS DateTime), CAST(120.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (7, CAST(N'2024-05-30' AS Date), 3007, N'Entrega fuera de horario pactado', CAST(N'2024-05-30T21:00:00.000' AS DateTime), CAST(N'2024-05-30T23:55:00.000' AS DateTime), CAST(100.09 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (8, CAST(N'2023-06-10' AS Date), 3008, NULL, CAST(N'2023-06-10T10:15:00.000' AS DateTime), CAST(N'2023-06-10T12:30:00.000' AS DateTime), CAST(75.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (9, CAST(N'2025-01-20' AS Date), 3009, N'Ruta costera con alta demanda', CAST(N'2025-12-20T08:30:00.000' AS DateTime), CAST(N'2025-12-20T18:45:00.000' AS DateTime), CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (10, CAST(N'2025-04-01' AS Date), 3001, N'Ruta de prueba', CAST(N'2025-04-01T12:05:00.000' AS DateTime), CAST(N'2025-04-01T15:03:00.000' AS DateTime), CAST(23.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (11, CAST(N'2023-12-01' AS Date), 3002, NULL, CAST(N'2023-12-01T11:45:00.000' AS DateTime), CAST(N'2023-12-01T13:12:00.000' AS DateTime), CAST(55.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (12, CAST(N'2024-03-15' AS Date), 3001, N'Ruta 2 - Control térmico permanente', CAST(N'2024-03-15T07:00:00.000' AS DateTime), CAST(N'2024-03-15T19:30:00.000' AS DateTime), CAST(450.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (13, CAST(N'2023-04-01' AS Date), 3002, N'Ruta sin incidencias', CAST(N'2023-04-01T12:00:00.000' AS DateTime), CAST(N'2023-04-01T15:03:00.000' AS DateTime), CAST(120.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (14, CAST(N'2022-01-16' AS Date), 3003, NULL, CAST(N'2022-01-16T14:10:00.000' AS DateTime), CAST(N'2022-01-16T19:30:00.000' AS DateTime), CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (15, CAST(N'2025-11-22' AS Date), 3004, N'Ruta con desvío por obras viales', CAST(N'2025-11-22T09:10:00.000' AS DateTime), CAST(N'2025-11-22T13:13:00.000' AS DateTime), CAST(111.50 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (16, CAST(N'2022-06-03' AS Date), 3005, N'Ruta estándar sin incidencias', CAST(N'2022-06-03T18:20:00.000' AS DateTime), CAST(N'2022-06-03T18:55:00.000' AS DateTime), CAST(30.10 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (17, CAST(N'2023-04-01' AS Date), 3006, N'Reposición de stock', CAST(N'2023-04-01T12:00:00.000' AS DateTime), CAST(N'2023-04-01T15:03:00.000' AS DateTime), CAST(120.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (18, CAST(N'2024-05-30' AS Date), 3007, N'Entrega fuera de horario pactado', CAST(N'2024-05-30T21:00:00.000' AS DateTime), CAST(N'2024-05-30T23:55:00.000' AS DateTime), CAST(100.09 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (19, CAST(N'2023-06-10' AS Date), 3008, NULL, CAST(N'2023-06-10T10:15:00.000' AS DateTime), CAST(N'2023-06-10T12:30:00.000' AS DateTime), CAST(75.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (20, CAST(N'2025-01-20' AS Date), 3009, N'Ruta costera con alta demanda', CAST(N'2025-12-20T08:30:00.000' AS DateTime), CAST(N'2025-12-20T18:45:00.000' AS DateTime), CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (21, CAST(N'2025-04-01' AS Date), 3001, N'Ruta de prueba', CAST(N'2025-04-01T12:05:00.000' AS DateTime), CAST(N'2025-04-01T15:03:00.000' AS DateTime), CAST(23.00 AS Decimal(10, 2)))
INSERT [dbo].[hojas_rutas] ([id_hoja_ruta], [fecha], [transporte_id], [observaciones], [fecha_salida], [fecha_regreso], [distancia_km]) VALUES (22, CAST(N'2023-12-01' AS Date), 3002, NULL, CAST(N'2023-12-01T11:45:00.000' AS DateTime), CAST(N'2023-12-01T13:12:00.000' AS DateTime), CAST(55.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[hojas_rutas] OFF
GO
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7011, 1001, 879, 120)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7012, 1002, 880, 95)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7013, 1003, 932, 180)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7014, 1004, 965, 210)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7015, 1005, 876, 130)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7016, 1006, 345, 45)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7017, 1007, 456, 160)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7018, 1008, 623, 200)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7019, 1009, 765, 110)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7020, 1010, 133, 185)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7021, 1002, 423, 90)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7022, 1003, 647, 140)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7023, 1001, 234, 155)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7024, 1002, 843, 190)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (7025, 1003, 754, 170)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (8001, 1001, 1001, 150)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (8002, 1002, 1002, 200)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (8003, 1003, 1003, 180)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (8004, 1001, 1004, 220)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (8005, 1002, 1005, 160)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (8006, 1003, 1006, 190)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (8007, 1001, 1007, 250)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (8008, 1002, 1008, 180)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (8009, 1003, 1009, 170)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (8010, 1001, 1010, 200)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (9001, 1001, 1001, 150)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (9002, 1002, 1002, 180)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (9003, 1003, 1003, 200)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (9004, 1004, 1004, 120)
INSERT [dbo].[inventarios] ([id_inventario], [sucursal_id], [producto_id], [cantidad]) VALUES (9005, 1005, 1005, 250)
GO
INSERT [dbo].[limites_stock] ([id_limite_stock], [limite]) VALUES (1, 30)
INSERT [dbo].[limites_stock] ([id_limite_stock], [limite]) VALUES (2, 50)
INSERT [dbo].[limites_stock] ([id_limite_stock], [limite]) VALUES (3, 100)
GO
SET IDENTITY_INSERT [dbo].[marcas] ON 

INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (1, N'Fiambres Artesanales Don José', N'Elaborados con recetas tradicionales y carnes premium')
INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (2, N'Chacras del Sur', N'Jamones crudos y cocidos madurados naturalmente')
INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (3, N'Embutidos La Estancia', N'Salamines y chorizos ahumados con leña de roble')
INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (4, N'Quesería y Fiambrería La Abuela', N'Productos artesanales sin conservantes artificiales')
INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (5, N'Delicias del Iberá', N'Fiambres bajos en sodio y aptos para celíacos')
INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (6, N'Lácteos Campo Verde', N'Leche orgánica y quesos frescos de vacas pastoreadas')
INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (7, N'Quesos El Colonial', N'Quesos añejos en cámaras naturales por más de 12 meses')
INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (8, N'Manteca La Serenísima', N'Manteca premium con 85% de materia grasa láctea')
INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (9, N'Yogurtería Fresco', N'Yogures probióticos con frutas de estación')
INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (10, N'Dulce de Leche Estrella', N'Elaborado con leche entera y cocción a fuego lento')
INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (11, N'Pampa Gourmet', N'Fiambres y lácteos para gastronomía profesional')
INSERT [dbo].[marcas] ([id_marca], [nombre], [descripcion]) VALUES (12, N'Caserío del Valle', N'Productos regionales con certificación de origen')
SET IDENTITY_INSERT [dbo].[marcas] OFF
GO
INSERT [dbo].[medios_pagos] ([id_medio_pago], [nombre], [recargo]) VALUES (1, N'Efectivo', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[medios_pagos] ([id_medio_pago], [nombre], [recargo]) VALUES (2, N'Tarjeta débito', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[medios_pagos] ([id_medio_pago], [nombre], [recargo]) VALUES (3, N'Tarjeta crédito', CAST(0.30 AS Decimal(10, 2)))
INSERT [dbo].[medios_pagos] ([id_medio_pago], [nombre], [recargo]) VALUES (4, N'Transferencia', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[medios_pagos] ([id_medio_pago], [nombre], [recargo]) VALUES (5, N'Pago con QR', CAST(0.20 AS Decimal(10, 2)))
GO
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (1, 101, CAST(N'2025-05-01' AS Date), 1, 2, 1)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (2, 102, CAST(N'2025-05-02' AS Date), 2, 3, 2)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (3, 103, CAST(N'2025-05-03' AS Date), 1, 2, 3)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (4, 101, CAST(N'2025-05-04' AS Date), 2, 1, 4)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (5, 102, CAST(N'2025-05-05' AS Date), 1, 3, 5)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (6, 104, CAST(N'2025-05-05' AS Date), 1, 3, 6)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (7, 105, CAST(N'2025-05-05' AS Date), 1, 3, 7)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (8, 106, CAST(N'2025-05-05' AS Date), 1, 3, 8)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (9, 107, CAST(N'2025-05-05' AS Date), 1, 3, 9)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (10, 108, CAST(N'2025-05-05' AS Date), 1, 3, 10)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (11, 103, CAST(N'2025-05-06' AS Date), 1, 5, 11)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (12, 104, CAST(N'2025-05-07' AS Date), 2, 5, 12)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (13, 105, CAST(N'2025-05-08' AS Date), 1, 5, 13)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (14, 106, CAST(N'2025-05-09' AS Date), 2, 5, 14)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (15, 107, CAST(N'2025-05-10' AS Date), 1, 5, 15)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (16, 101, CAST(N'2025-04-15' AS Date), 1, 5, 16)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (17, 102, CAST(N'2025-04-20' AS Date), 2, 5, 17)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (18, 103, CAST(N'2025-05-12' AS Date), 1, 5, 18)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (19, 104, CAST(N'2025-05-18' AS Date), 3, 5, 19)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (20, 105, CAST(N'2025-06-05' AS Date), 1, 5, 20)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (21, 106, CAST(N'2025-06-10' AS Date), 2, 5, 21)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (22, 107, CAST(N'2025-06-15' AS Date), 1, 5, 22)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (23, 108, CAST(N'2025-04-25' AS Date), 3, 5, 23)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (24, 109, CAST(N'2025-05-28' AS Date), 1, 5, 16)
INSERT [dbo].[pedidos] ([id_pedido], [empleado_armado_id], [fecha], [canal_compra_id], [estado_id], [direccion_entrega_id]) VALUES (25, 110, CAST(N'2025-06-20' AS Date), 2, 5, 17)
GO
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (133, N'Mortadela bologna Light', N'Importado de Italia', 3, 1, 11, CAST(3.30 AS Decimal(18, 2)), 1, N'mortadela_gourmet', 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (234, N'Yogur Bebible', N'Frutilla y durazno', 10, 9, 12, CAST(0.90 AS Decimal(18, 2)), 3, N'lacteo', 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (345, N'parmesano reggiano', N'Importado de Italia', 2, 4, 12, CAST(10.00 AS Decimal(18, 2)), 2, N'lacteo', 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (423, N'Queso Cremoso', N'producto regional', 2, 7, 12, CAST(1.20 AS Decimal(18, 2)), 1, N'lacteo', 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (456, N'Queso Light', N'Producto dietetico', 8, 7, 12, CAST(1.50 AS Decimal(18, 2)), 1, N'lacteo', 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (623, N'Salame Milán Picado Grueso', N'Gama económica', 1, 2, 11, CAST(5.00 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (647, N'Jamón Natural', N'Producto regional cordobés', 1, 2, 11, CAST(2.00 AS Decimal(18, 2)), 1, N'fiambre', 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (754, N'Leche Descremada', N'Envasada en origen', 3, 6, 12, CAST(1.00 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (765, N'Crema De Leche', N'producto suelto', 2, 10, 12, NULL, 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (843, N'Salchicha Viena', N'segunda marca', 1, 4, 11, CAST(1.00 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (876, N'Bondiola especiada', N'Producto Regional', 7, 12, 11, CAST(1.00 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (879, N'Jamón Cocido Premium', N'Corte seleccionado', 1, 1, 11, CAST(2.50 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (880, N'Queso Gouda Ahumado', N'Madurado 6 meses', 2, 4, 12, CAST(3.00 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (932, N'Salchichón Primavera', N'Elaboración Artesanal', 3, 11, 7, CAST(1.80 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (965, N'Salame Colonia Caroya', N'Elaboración Artesanal', 3, 4, 11, CAST(0.50 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (1001, N'Jamón Crudo Serrano', N'Curado tradicional 18 meses', 1, 1, 11, CAST(2.20 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (1002, N'Queso Roquefort', N'Queso azul importado', 2, 7, 12, CAST(1.80 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (1003, N'Salchichón Extra', N'Con pimienta negra', 1, 3, 11, CAST(1.50 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (1004, N'Mozzarella Premium', N'Para pizza artesanal', 2, 6, 12, CAST(2.00 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (1005, N'Panceta Ahumada', N'Proceso artesanal', 1, 2, 11, CAST(3.00 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (1006, N'Queso Cheddar', N'Madurado 8 meses', 2, 7, 12, CAST(2.50 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (1007, N'Chorizo Colorado', N'Especiado tradicional', 1, 4, 11, CAST(0.80 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (1008, N'Ricota Fresca', N'Elaboración diaria', 2, 8, 12, CAST(1.00 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (1009, N'Longaniza Casera', N'Receta familiar', 1, 12, 11, CAST(1.20 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (1010, N'Provolone Picante', N'Sabor intenso', 2, 7, 12, CAST(1.70 AS Decimal(18, 2)), 1, NULL, 0)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (2001, N'Salame Italiano Premium', N'Importado de Milán', 1, 3, 7, CAST(2.50 AS Decimal(18, 2)), 1, N'importado', 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (2002, N'Queso Brie Gourmet', N'Queso francés de alta gama', 2, 7, 5, CAST(1.20 AS Decimal(18, 2)), 1, N'queso_gourmet', 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (2003, N'Jamón Cocido Granel', N'Sin envoltorio', 1, 2, 10, CAST(1.80 AS Decimal(18, 2)), 1, N'granel', 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (2004, N'Mortadela Gourmet Extra', N'Con pistacho', 1, 4, 5, CAST(2.00 AS Decimal(18, 2)), 1, NULL, 1)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (2005, N'Queso Azul Importado', N'Roquefort de origen belga', 2, 6, 7, CAST(1.70 AS Decimal(18, 2)), 1, NULL, 0)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (2006, N'Queso Azul', N'', 8, 4, 12, CAST(2.00 AS Decimal(18, 2)), 1, NULL, 0)
INSERT [dbo].[productos] ([id_producto], [nombre], [descripcion], [tipo_producto_id], [marca_id], [categoria_id], [peso_kg], [limite_stock_id], [ruta_img], [activo]) VALUES (2007, N'actualizado', N'cosito', 2, 1, 2, CAST(1.00 AS Decimal(18, 2)), 1, NULL, 0)
SET IDENTITY_INSERT [dbo].[productos] OFF
GO
SET IDENTITY_INSERT [dbo].[provincias] ON 

INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (1, N'Buenos Aires')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (2, N'Córdoba')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (3, N'Santa Fe')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (4, N'Mendoza')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (5, N'Tucumán')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (6, N'Salta')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (7, N'Entre Ríos')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (8, N'Corrientes')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (9, N'Chaco')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (10, N'San Juan')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (11, N'Jujuy')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (12, N'Río Negro')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (13, N'Misiones')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (14, N'Santiago del Estero')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (15, N'Ciudad Autónoma de Buenos Aires')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (16, N'Buenos Aires')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (17, N'Córdoba')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (18, N'Santa Fe')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (19, N'Mendoza')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (20, N'Tucumán')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (21, N'Salta')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (22, N'Entre Ríos')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (23, N'Corrientes')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (24, N'Chaco')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (25, N'San Juan')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (26, N'Jujuy')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (27, N'Río Negro')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (28, N'Misiones')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (29, N'Santiago del Estero')
INSERT [dbo].[provincias] ([id_provincia], [provincia]) VALUES (30, N'Ciudad Autónoma de Buenos Aires')
SET IDENTITY_INSERT [dbo].[provincias] OFF
GO
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8101, 879, 1001, 1, 120, N'Stock inicial', CAST(N'2024-02-14T09:30:00.000' AS DateTime), NULL)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8102, 880, 1002, 2, -30, N'Venta a cliente', CAST(N'2024-07-22T11:10:00.000' AS DateTime), NULL)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8103, 932, 1004, 3, -5, N'Reconteo físico', CAST(N'2025-01-10T15:00:00.000' AS DateTime), NULL)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8104, 965, 1001, 1, 210, N'Reposición mensual', CAST(N'2024-03-18T08:45:00.000' AS DateTime), 1002)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8105, 876, 1002, 2, -40, N'Despacho mayorista', CAST(N'2025-03-04T10:15:00.000' AS DateTime), 1003)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8106, 345, 1003, 3, 3, N'Ajuste por ingreso no registrado', CAST(N'2024-12-01T07:50:00.000' AS DateTime), 1001)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8107, 456, 1005, 1, 160, N'Stock inicial', CAST(N'2024-10-19T14:20:00.000' AS DateTime), NULL)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8108, 623, 1006, 2, -60, N'Salida por pedido', CAST(N'2025-04-15T09:00:00.000' AS DateTime), NULL)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8109, 765, 1007, 1, 110, N'Stock inicial', CAST(N'2024-06-21T12:00:00.000' AS DateTime), NULL)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8110, 133, 1008, 3, -10, N'Pérdida por rotura', CAST(N'2025-03-30T16:10:00.000' AS DateTime), NULL)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8111, 423, 1009, 1, 90, N'Compra a proveedor', CAST(N'2024-02-28T08:30:00.000' AS DateTime), NULL)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8112, 647, 1003, 2, -50, N'Remito a sucursal', CAST(N'2024-11-12T13:35:00.000' AS DateTime), 1001)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8113, 234, 1001, 3, 5, N'Ingreso por ajuste', CAST(N'2025-02-18T10:25:00.000' AS DateTime), NULL)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8114, 843, 1010, 1, 190, N'Stock inicial', CAST(N'2024-05-03T09:45:00.000' AS DateTime), NULL)
INSERT [dbo].[registro_inventario] ([id_registro], [producto_id], [sucursal_id], [tipo_movimiento_id], [cantidad], [motivo], [fecha], [sucursal_destino_id]) VALUES (8115, 754, 1003, 2, -70, N'Venta mayorista', CAST(N'2024-08-24T11:50:00.000' AS DateTime), NULL)
GO
INSERT [dbo].[sucursales] ([id_sucursal], [nombre], [direccion], [telefono], [barrio_id]) VALUES (1001, N'Central Frigorífica', N'Av. 7 1250', N'221-555-1001', 1)
INSERT [dbo].[sucursales] ([id_sucursal], [nombre], [direccion], [telefono], [barrio_id]) VALUES (1002, N'Zona Portuaria', N'Alvarado 2200', N'223-555-2002', 3)
INSERT [dbo].[sucursales] ([id_sucursal], [nombre], [direccion], [telefono], [barrio_id]) VALUES (1003, N'Distribución Córdoba', N'Bv. San Juan 550', N'351-555-3003', 5)
INSERT [dbo].[sucursales] ([id_sucursal], [nombre], [direccion], [telefono], [barrio_id]) VALUES (1004, N'Sucursal NortePack', N'Av. Los Fresnos 1234', N'351-6098234', 3)
INSERT [dbo].[sucursales] ([id_sucursal], [nombre], [direccion], [telefono], [barrio_id]) VALUES (1005, N'LogiCentro', N'Calle 9 de Julio 567', N'351-7841200', 4)
INSERT [dbo].[sucursales] ([id_sucursal], [nombre], [direccion], [telefono], [barrio_id]) VALUES (1006, N'Sucursal Distribeck', N'Boulevard Central 8900', N'351-4329187', 2)
INSERT [dbo].[sucursales] ([id_sucursal], [nombre], [direccion], [telefono], [barrio_id]) VALUES (1007, N'Distribución FiamExpress', N'Ruta Provincial 20 km 12,5', N'351-5500912', 7)
INSERT [dbo].[sucursales] ([id_sucursal], [nombre], [direccion], [telefono], [barrio_id]) VALUES (1008, N'Sucursal PuntoFrío', N'Pasaje El Ceibo 245', N'351-6654778', 6)
INSERT [dbo].[sucursales] ([id_sucursal], [nombre], [direccion], [telefono], [barrio_id]) VALUES (1009, N'Sucursal RápidoSur', N'Camino a La Estancia 3321', N'351-8124567', 8)
INSERT [dbo].[sucursales] ([id_sucursal], [nombre], [direccion], [telefono], [barrio_id]) VALUES (1010, N'Sucursal MaxiRuta', N'Av. San Martín 4020', N'351-7903345', 6)
GO
SET IDENTITY_INSERT [dbo].[Tipos_Contactos] ON 

INSERT [dbo].[Tipos_Contactos] ([id_tipo_contacto], [tipo]) VALUES (1, N'Email')
INSERT [dbo].[Tipos_Contactos] ([id_tipo_contacto], [tipo]) VALUES (2, N'Teléfono móvil')
INSERT [dbo].[Tipos_Contactos] ([id_tipo_contacto], [tipo]) VALUES (3, N'Teléfono fijo')
INSERT [dbo].[Tipos_Contactos] ([id_tipo_contacto], [tipo]) VALUES (4, N'Telegram')
SET IDENTITY_INSERT [dbo].[Tipos_Contactos] OFF
GO
SET IDENTITY_INSERT [dbo].[tipos_movimientos] ON 

INSERT [dbo].[tipos_movimientos] ([id_mov_tipo], [tipo_mov]) VALUES (1, N'Entrada')
INSERT [dbo].[tipos_movimientos] ([id_mov_tipo], [tipo_mov]) VALUES (2, N'Salida')
INSERT [dbo].[tipos_movimientos] ([id_mov_tipo], [tipo_mov]) VALUES (3, N'Ajuste de stock')
INSERT [dbo].[tipos_movimientos] ([id_mov_tipo], [tipo_mov]) VALUES (4, N'Entrada')
INSERT [dbo].[tipos_movimientos] ([id_mov_tipo], [tipo_mov]) VALUES (5, N'Salida')
INSERT [dbo].[tipos_movimientos] ([id_mov_tipo], [tipo_mov]) VALUES (6, N'Ajuste de stock')
SET IDENTITY_INSERT [dbo].[tipos_movimientos] OFF
GO
SET IDENTITY_INSERT [dbo].[tipos_productos] ON 

INSERT [dbo].[tipos_productos] ([id_tipo_producto], [nombre], [descripcion]) VALUES (1, N'Fiambres', N'Productos cárnicos curados y procesados para consumo en frío')
INSERT [dbo].[tipos_productos] ([id_tipo_producto], [nombre], [descripcion]) VALUES (2, N'Lácteos', N'Derivados de leche para consumo humano')
INSERT [dbo].[tipos_productos] ([id_tipo_producto], [nombre], [descripcion]) VALUES (3, N'Fiambres Premium', N'Cortes seleccionados con procesos de maduración extendidos')
INSERT [dbo].[tipos_productos] ([id_tipo_producto], [nombre], [descripcion]) VALUES (4, N'Lácteos Deslactosados', N'Productos lácteos sin lactosa para dietas especiales')
INSERT [dbo].[tipos_productos] ([id_tipo_producto], [nombre], [descripcion]) VALUES (5, N'Fiambres Ahumados', N'Carnes sometidas a procesos de ahumado natural')
INSERT [dbo].[tipos_productos] ([id_tipo_producto], [nombre], [descripcion]) VALUES (6, N'Lácteos Fermentados', N'Productos con cultivos vivos y procesos bioactivos')
INSERT [dbo].[tipos_productos] ([id_tipo_producto], [nombre], [descripcion]) VALUES (7, N'Fiambres Especiados', N'Embutidos con mezclas exclusivas de especias')
INSERT [dbo].[tipos_productos] ([id_tipo_producto], [nombre], [descripcion]) VALUES (8, N'Lácteos Light', N'Versiones reducidas en grasas y calorías')
INSERT [dbo].[tipos_productos] ([id_tipo_producto], [nombre], [descripcion]) VALUES (9, N'Fiambres de Aves', N'Embutidos y cortes fríos de pollo y pavo')
INSERT [dbo].[tipos_productos] ([id_tipo_producto], [nombre], [descripcion]) VALUES (10, N'Lácteos Vegetales', N'Alternativas vegetales a base de soja y almendras')
SET IDENTITY_INSERT [dbo].[tipos_productos] OFF
GO
INSERT [dbo].[tipos_vehiculos] ([id_tipo_vehiculo], [tipo]) VALUES (1, N'Camión')
INSERT [dbo].[tipos_vehiculos] ([id_tipo_vehiculo], [tipo]) VALUES (2, N'Furgoneta')
INSERT [dbo].[tipos_vehiculos] ([id_tipo_vehiculo], [tipo]) VALUES (3, N'Camioneta de Reparto')
INSERT [dbo].[tipos_vehiculos] ([id_tipo_vehiculo], [tipo]) VALUES (4, N'Tráiler')
INSERT [dbo].[tipos_vehiculos] ([id_tipo_vehiculo], [tipo]) VALUES (5, N'Utilitario')
GO
INSERT [dbo].[transportes] ([id_transporte], [flota_id], [nombre_transportista], [cuit], [telefono]) VALUES (3001, 2001, N'Juan Perez', N'30-12345678-9', N'0800-555-0001')
INSERT [dbo].[transportes] ([id_transporte], [flota_id], [nombre_transportista], [cuit], [telefono]) VALUES (3002, 2002, N'Alberto Fernandez', N'30-87654321-0', N'0800-555-0002')
INSERT [dbo].[transportes] ([id_transporte], [flota_id], [nombre_transportista], [cuit], [telefono]) VALUES (3003, 2003, N'Cristian Castro', N'20-01654327-3', N'0800-555-0003')
INSERT [dbo].[transportes] ([id_transporte], [flota_id], [nombre_transportista], [cuit], [telefono]) VALUES (3004, 2004, N'Cristiano Ronaldo', N'25-31054027-3', N'0800-555-0004')
INSERT [dbo].[transportes] ([id_transporte], [flota_id], [nombre_transportista], [cuit], [telefono]) VALUES (3005, 2005, N'Roberto Carlos', N'29-32054322-8', N'0800-555-0005')
INSERT [dbo].[transportes] ([id_transporte], [flota_id], [nombre_transportista], [cuit], [telefono]) VALUES (3006, 2006, N'Ricardo Montaner', N'31-52554525-5', N'0800-555-0006')
INSERT [dbo].[transportes] ([id_transporte], [flota_id], [nombre_transportista], [cuit], [telefono]) VALUES (3007, 2001, N'Carlos Gardel', N'21-72757527-7', N'0800-555-0007')
INSERT [dbo].[transportes] ([id_transporte], [flota_id], [nombre_transportista], [cuit], [telefono]) VALUES (3008, 2002, N'Abel Pintos', N'11-92957929-9', N'0800-555-0008')
INSERT [dbo].[transportes] ([id_transporte], [flota_id], [nombre_transportista], [cuit], [telefono]) VALUES (3009, 2003, N'Juan Román Riquelme', N'14-44947424-4', N'0800-555-0019')
GO
INSERT [dbo].[vehiculos] ([id_vehiculo], [patente], [capacidad_kg], [tipo_vehiculo_id], [transporte_id], [refrigeracion]) VALUES (4001, N'AB123CD', CAST(5000.00 AS Decimal(10, 2)), 1, 3001, 1)
INSERT [dbo].[vehiculos] ([id_vehiculo], [patente], [capacidad_kg], [tipo_vehiculo_id], [transporte_id], [refrigeracion]) VALUES (4002, N'EF456GH', CAST(3000.00 AS Decimal(10, 2)), 2, 3002, 1)
INSERT [dbo].[vehiculos] ([id_vehiculo], [patente], [capacidad_kg], [tipo_vehiculo_id], [transporte_id], [refrigeracion]) VALUES (4003, N'QE456GH', CAST(1000.00 AS Decimal(10, 2)), 3, 3001, 0)
INSERT [dbo].[vehiculos] ([id_vehiculo], [patente], [capacidad_kg], [tipo_vehiculo_id], [transporte_id], [refrigeracion]) VALUES (4004, N'RE456GR', CAST(6000.00 AS Decimal(10, 2)), 1, 3005, 1)
INSERT [dbo].[vehiculos] ([id_vehiculo], [patente], [capacidad_kg], [tipo_vehiculo_id], [transporte_id], [refrigeracion]) VALUES (4005, N'SE456GS', CAST(10000.00 AS Decimal(10, 2)), 1, 3001, 1)
INSERT [dbo].[vehiculos] ([id_vehiculo], [patente], [capacidad_kg], [tipo_vehiculo_id], [transporte_id], [refrigeracion]) VALUES (4006, N'XE456GX', CAST(3000.00 AS Decimal(10, 2)), 3, 3008, 0)
INSERT [dbo].[vehiculos] ([id_vehiculo], [patente], [capacidad_kg], [tipo_vehiculo_id], [transporte_id], [refrigeracion]) VALUES (4007, N'YE456GY', CAST(5500.00 AS Decimal(10, 2)), 4, 3003, 1)
INSERT [dbo].[vehiculos] ([id_vehiculo], [patente], [capacidad_kg], [tipo_vehiculo_id], [transporte_id], [refrigeracion]) VALUES (4008, N'ZE456GZ', CAST(15000.00 AS Decimal(10, 2)), 1, 3006, 1)
INSERT [dbo].[vehiculos] ([id_vehiculo], [patente], [capacidad_kg], [tipo_vehiculo_id], [transporte_id], [refrigeracion]) VALUES (4009, N'VE456GV', CAST(1100.00 AS Decimal(10, 2)), 3, 3009, 1)
INSERT [dbo].[vehiculos] ([id_vehiculo], [patente], [capacidad_kg], [tipo_vehiculo_id], [transporte_id], [refrigeracion]) VALUES (4010, N'IE456GI', CAST(5001.20 AS Decimal(10, 2)), 5, 3004, 0)
GO
INSERT [dbo].[zonas_envio] ([id_zona_envio], [descripcion], [recargo_zona]) VALUES (1, N'Zona Norte', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[zonas_envio] ([id_zona_envio], [descripcion], [recargo_zona]) VALUES (2, N'Zona Centro', CAST(12.50 AS Decimal(10, 2)))
INSERT [dbo].[zonas_envio] ([id_zona_envio], [descripcion], [recargo_zona]) VALUES (3, N'Zona Sur', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[zonas_envio] ([id_zona_envio], [descripcion], [recargo_zona]) VALUES (4, N'Zona Este', CAST(7.80 AS Decimal(10, 2)))
INSERT [dbo].[zonas_envio] ([id_zona_envio], [descripcion], [recargo_zona]) VALUES (5, N'Zona Oeste', CAST(0.00 AS Decimal(10, 2)))
INSERT [dbo].[zonas_envio] ([id_zona_envio], [descripcion], [recargo_zona]) VALUES (6, N'Zona Noreste', CAST(11.00 AS Decimal(10, 2)))
INSERT [dbo].[zonas_envio] ([id_zona_envio], [descripcion], [recargo_zona]) VALUES (7, NULL, CAST(0.00 AS Decimal(10, 2)))
GO
ALTER TABLE [dbo].[barrios]  WITH CHECK ADD  CONSTRAINT [fk_id_ciudad_barrio] FOREIGN KEY([ciudad_id])
REFERENCES [dbo].[ciudades] ([id_ciudad])
GO
ALTER TABLE [dbo].[barrios] CHECK CONSTRAINT [fk_id_ciudad_barrio]
GO
ALTER TABLE [dbo].[ciudades]  WITH CHECK ADD  CONSTRAINT [fk_provincia_ciudad] FOREIGN KEY([provincia_id])
REFERENCES [dbo].[provincias] ([id_provincia])
GO
ALTER TABLE [dbo].[ciudades] CHECK CONSTRAINT [fk_provincia_ciudad]
GO
ALTER TABLE [dbo].[Contactos]  WITH CHECK ADD  CONSTRAINT [fk_cliente_contacto] FOREIGN KEY([cliente_id])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Contactos] CHECK CONSTRAINT [fk_cliente_contacto]
GO
ALTER TABLE [dbo].[Contactos]  WITH CHECK ADD  CONSTRAINT [fk_tipo_cont] FOREIGN KEY([tipo_contacto_id])
REFERENCES [dbo].[Tipos_Contactos] ([id_tipo_contacto])
GO
ALTER TABLE [dbo].[Contactos] CHECK CONSTRAINT [fk_tipo_cont]
GO
ALTER TABLE [dbo].[contactos_empleados]  WITH CHECK ADD  CONSTRAINT [FK_contactos_empleados_empleados] FOREIGN KEY([empleado_id])
REFERENCES [dbo].[empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[contactos_empleados] CHECK CONSTRAINT [FK_contactos_empleados_empleados]
GO
ALTER TABLE [dbo].[contactos_empleados]  WITH CHECK ADD  CONSTRAINT [FK_contactos_empleados_Tipos_Contactos] FOREIGN KEY([tipo_contacto_id])
REFERENCES [dbo].[Tipos_Contactos] ([id_tipo_contacto])
GO
ALTER TABLE [dbo].[contactos_empleados] CHECK CONSTRAINT [FK_contactos_empleados_Tipos_Contactos]
GO
ALTER TABLE [dbo].[depositos]  WITH CHECK ADD  CONSTRAINT [fk_cliente_deposito] FOREIGN KEY([cliente_id])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[depositos] CHECK CONSTRAINT [fk_cliente_deposito]
GO
ALTER TABLE [dbo].[detalle_pedidos]  WITH CHECK ADD  CONSTRAINT [fk_pedido_det_ped] FOREIGN KEY([pedido_id])
REFERENCES [dbo].[pedidos] ([id_pedido])
GO
ALTER TABLE [dbo].[detalle_pedidos] CHECK CONSTRAINT [fk_pedido_det_ped]
GO
ALTER TABLE [dbo].[detalle_pedidos]  WITH CHECK ADD  CONSTRAINT [fk_prod_det_ped] FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[detalle_pedidos] CHECK CONSTRAINT [fk_prod_det_ped]
GO
ALTER TABLE [dbo].[detalles_facturas]  WITH CHECK ADD  CONSTRAINT [fk_factura_det_fac] FOREIGN KEY([factura_id])
REFERENCES [dbo].[Facturas] ([id_factura])
GO
ALTER TABLE [dbo].[detalles_facturas] CHECK CONSTRAINT [fk_factura_det_fac]
GO
ALTER TABLE [dbo].[detalles_facturas]  WITH CHECK ADD  CONSTRAINT [fk_producto_det_fac] FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[detalles_facturas] CHECK CONSTRAINT [fk_producto_det_fac]
GO
ALTER TABLE [dbo].[detalles_hoja_ruta]  WITH CHECK ADD  CONSTRAINT [fk_dir_entrega_detalle_hoja] FOREIGN KEY([direccion_entrega_id])
REFERENCES [dbo].[Direcciones_Entregas] ([id_dir_entrega])
GO
ALTER TABLE [dbo].[detalles_hoja_ruta] CHECK CONSTRAINT [fk_dir_entrega_detalle_hoja]
GO
ALTER TABLE [dbo].[detalles_hoja_ruta]  WITH CHECK ADD  CONSTRAINT [fk_hoja_ruta_detalle] FOREIGN KEY([hoja_ruta_id])
REFERENCES [dbo].[hojas_rutas] ([id_hoja_ruta])
GO
ALTER TABLE [dbo].[detalles_hoja_ruta] CHECK CONSTRAINT [fk_hoja_ruta_detalle]
GO
ALTER TABLE [dbo].[detalles_hoja_ruta]  WITH CHECK ADD  CONSTRAINT [fk_pedido_detalle_hoja] FOREIGN KEY([pedido_id])
REFERENCES [dbo].[pedidos] ([id_pedido])
GO
ALTER TABLE [dbo].[detalles_hoja_ruta] CHECK CONSTRAINT [fk_pedido_detalle_hoja]
GO
ALTER TABLE [dbo].[Direcciones_Entregas]  WITH CHECK ADD  CONSTRAINT [fk_cliente_dir_entrega] FOREIGN KEY([cliente_id])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[Direcciones_Entregas] CHECK CONSTRAINT [fk_cliente_dir_entrega]
GO
ALTER TABLE [dbo].[Direcciones_Entregas]  WITH CHECK ADD  CONSTRAINT [fk_zona_envio_dir_entr] FOREIGN KEY([zona_envio_id])
REFERENCES [dbo].[zonas_envio] ([id_zona_envio])
GO
ALTER TABLE [dbo].[Direcciones_Entregas] CHECK CONSTRAINT [fk_zona_envio_dir_entr]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [fk_cargo_empleados] FOREIGN KEY([cargo_id])
REFERENCES [dbo].[cargos] ([id_cargo])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [fk_cargo_empleados]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [FK_empleados_barrios] FOREIGN KEY([barrio_id])
REFERENCES [dbo].[barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [FK_empleados_barrios]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [FK_empleados_supervisor] FOREIGN KEY([supervisor_id])
REFERENCES [dbo].[empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [FK_empleados_supervisor]
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [fk_sucursal_empleados] FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [fk_sucursal_empleados]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [fk_empleado_factura_id] FOREIGN KEY([empleado_factura_id])
REFERENCES [dbo].[empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [fk_empleado_factura_id]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [fk_pedido_id] FOREIGN KEY([pedido_id])
REFERENCES [dbo].[pedidos] ([id_pedido])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [fk_pedido_id]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [fk_sucursal_id] FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [fk_sucursal_id]
GO
ALTER TABLE [dbo].[Facturas]  WITH CHECK ADD  CONSTRAINT [fk_transporte_factura] FOREIGN KEY([transporte_id])
REFERENCES [dbo].[transportes] ([id_transporte])
GO
ALTER TABLE [dbo].[Facturas] CHECK CONSTRAINT [fk_transporte_factura]
GO
ALTER TABLE [dbo].[Facturas_medios_pago]  WITH CHECK ADD  CONSTRAINT [fk_factura_id] FOREIGN KEY([factura_id])
REFERENCES [dbo].[Facturas] ([id_factura])
GO
ALTER TABLE [dbo].[Facturas_medios_pago] CHECK CONSTRAINT [fk_factura_id]
GO
ALTER TABLE [dbo].[Facturas_medios_pago]  WITH CHECK ADD  CONSTRAINT [fk_medio_pago_id] FOREIGN KEY([medio_pago_id])
REFERENCES [dbo].[medios_pagos] ([id_medio_pago])
GO
ALTER TABLE [dbo].[Facturas_medios_pago] CHECK CONSTRAINT [fk_medio_pago_id]
GO
ALTER TABLE [dbo].[hojas_rutas]  WITH CHECK ADD  CONSTRAINT [fk_transporte_hoja_ruta] FOREIGN KEY([transporte_id])
REFERENCES [dbo].[transportes] ([id_transporte])
GO
ALTER TABLE [dbo].[hojas_rutas] CHECK CONSTRAINT [fk_transporte_hoja_ruta]
GO
ALTER TABLE [dbo].[inventarios]  WITH CHECK ADD  CONSTRAINT [FK_producto_inventario] FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[inventarios] CHECK CONSTRAINT [FK_producto_inventario]
GO
ALTER TABLE [dbo].[inventarios]  WITH CHECK ADD  CONSTRAINT [fk_sucursal_inventario] FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[inventarios] CHECK CONSTRAINT [fk_sucursal_inventario]
GO
ALTER TABLE [dbo].[pedidos]  WITH CHECK ADD  CONSTRAINT [fk_canal_compra_pedidos] FOREIGN KEY([canal_compra_id])
REFERENCES [dbo].[canales_compras] ([id_canal_compra])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [fk_canal_compra_pedidos]
GO
ALTER TABLE [dbo].[pedidos]  WITH CHECK ADD  CONSTRAINT [fk_direccion_entrega_pedido] FOREIGN KEY([direccion_entrega_id])
REFERENCES [dbo].[Direcciones_Entregas] ([id_dir_entrega])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [fk_direccion_entrega_pedido]
GO
ALTER TABLE [dbo].[pedidos]  WITH CHECK ADD  CONSTRAINT [fk_empleado_armado_pedidos] FOREIGN KEY([empleado_armado_id])
REFERENCES [dbo].[empleados] ([id_empleado])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [fk_empleado_armado_pedidos]
GO
ALTER TABLE [dbo].[pedidos]  WITH CHECK ADD  CONSTRAINT [fk_estado_pedido] FOREIGN KEY([estado_id])
REFERENCES [dbo].[estados_pedido] ([id_estado_pedido])
GO
ALTER TABLE [dbo].[pedidos] CHECK CONSTRAINT [fk_estado_pedido]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [FK_categoria_producto] FOREIGN KEY([categoria_id])
REFERENCES [dbo].[categorias] ([id_categoria])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_categoria_producto]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [FK_marca_producto] FOREIGN KEY([marca_id])
REFERENCES [dbo].[marcas] ([id_marca])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_marca_producto]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [FK_productos_limites_stock] FOREIGN KEY([limite_stock_id])
REFERENCES [dbo].[limites_stock] ([id_limite_stock])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_productos_limites_stock]
GO
ALTER TABLE [dbo].[productos]  WITH CHECK ADD  CONSTRAINT [FK_tipo_producto] FOREIGN KEY([tipo_producto_id])
REFERENCES [dbo].[tipos_productos] ([id_tipo_producto])
GO
ALTER TABLE [dbo].[productos] CHECK CONSTRAINT [FK_tipo_producto]
GO
ALTER TABLE [dbo].[registro_inventario]  WITH CHECK ADD  CONSTRAINT [fk_prod_registro] FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([id_producto])
GO
ALTER TABLE [dbo].[registro_inventario] CHECK CONSTRAINT [fk_prod_registro]
GO
ALTER TABLE [dbo].[registro_inventario]  WITH CHECK ADD  CONSTRAINT [fk_suc_destino] FOREIGN KEY([sucursal_destino_id])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[registro_inventario] CHECK CONSTRAINT [fk_suc_destino]
GO
ALTER TABLE [dbo].[registro_inventario]  WITH CHECK ADD  CONSTRAINT [fk_suc_registro] FOREIGN KEY([sucursal_id])
REFERENCES [dbo].[sucursales] ([id_sucursal])
GO
ALTER TABLE [dbo].[registro_inventario] CHECK CONSTRAINT [fk_suc_registro]
GO
ALTER TABLE [dbo].[registro_inventario]  WITH CHECK ADD  CONSTRAINT [fk_tipo_mov] FOREIGN KEY([tipo_movimiento_id])
REFERENCES [dbo].[tipos_movimientos] ([id_mov_tipo])
GO
ALTER TABLE [dbo].[registro_inventario] CHECK CONSTRAINT [fk_tipo_mov]
GO
ALTER TABLE [dbo].[sucursales]  WITH CHECK ADD  CONSTRAINT [fk_barrio_sucursal] FOREIGN KEY([barrio_id])
REFERENCES [dbo].[barrios] ([id_barrio])
GO
ALTER TABLE [dbo].[sucursales] CHECK CONSTRAINT [fk_barrio_sucursal]
GO
ALTER TABLE [dbo].[transportes]  WITH CHECK ADD  CONSTRAINT [FK_flota_transporte] FOREIGN KEY([flota_id])
REFERENCES [dbo].[flotas] ([id_flota])
GO
ALTER TABLE [dbo].[transportes] CHECK CONSTRAINT [FK_flota_transporte]
GO
ALTER TABLE [dbo].[vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_tipo_vehiculo_vehiculo] FOREIGN KEY([tipo_vehiculo_id])
REFERENCES [dbo].[tipos_vehiculos] ([id_tipo_vehiculo])
GO
ALTER TABLE [dbo].[vehiculos] CHECK CONSTRAINT [FK_tipo_vehiculo_vehiculo]
GO
ALTER TABLE [dbo].[vehiculos]  WITH CHECK ADD  CONSTRAINT [FK_transporte_vehiculo] FOREIGN KEY([transporte_id])
REFERENCES [dbo].[transportes] ([id_transporte])
GO
ALTER TABLE [dbo].[vehiculos] CHECK CONSTRAINT [FK_transporte_vehiculo]
GO
USE [master]
GO
ALTER DATABASE [mayorista_fiambres_lacteos_DB_logica] SET  READ_WRITE 
GO
use [mayorista_fiambres_lacteos_DB_logica]
