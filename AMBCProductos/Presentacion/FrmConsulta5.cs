using AMBCProductos.Datos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AMBCProductos.Presentacion
{
    public partial class FrmConsulta5 : Form
    {
        AccesoDatos oBD;
        public FrmConsulta5()
        {
            InitializeComponent();
            oBD = new AccesoDatos();
        }

        private void kryptonButton1_Click_1(object sender, EventArgs e)
        {
            string consultaSQL = "SELECT f.id_factura,\r\n    FORMAT(f.fecha, 'dd-MM-yyyy') AS Fecha_Factura,\r\n    mp.nombre AS Medio_Pago,\r\n    fmp.monto AS Monto_Pago,\r\n    z.descripcion AS Zona_Entrega,\r\n    pr.nombre AS Producto,\r\n    df.cantidad AS Cantidad,\r\n    df.prec_uni AS Precio_Unitario,\r\n    (df.cantidad * df.prec_uni) AS Total_Producto\r\nFROM facturas f\r\nJOIN facturas_medios_pago fmp ON f.id_factura = fmp.factura_id\r\nJOIN medios_pagos mp ON fmp.medio_pago_id = mp.id_medio_pago\r\nJOIN pedidos p ON f.pedido_id = p.id_pedido\r\nJOIN direcciones_entregas d ON p.direccion_entrega_id = d.id_dir_entrega\r\nJOIN zonas_envio z ON d.zona_envio_id = z.id_zona_envio\r\nJOIN detalles_facturas df ON f.id_factura = df.factura_id\r\nJOIN productos pr ON df.producto_id = pr.id_producto " +
        "\r\nWHERE\r\n    fmp.monto > 1000\r\n    AND z.descripcion LIKE '%Centro%'\r\n    AND YEAR(f.fecha) = 2025\r\nORDER BY fmp.monto DESC;\"\r\n";
            DgvFacturas.DataSource = oBD.ConsultarBD(consultaSQL);
        }
    }
}
