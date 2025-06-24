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
    public partial class FrmConsulta1 : Form
    {
        AccesoDatos oBD;
        public FrmConsulta1()
        {
            InitializeComponent();
            oBD = new AccesoDatos();
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }

        private void metroRadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }


        private void btnConsultar2_Click(object sender, EventArgs e)
        {
            int desde = dtpDesde.Value.Year;
            int hasta = dtpHasta1.Value.Year;

            string consultaSQL = "SELECT  nombre_transportista AS 'TRANSPORTISTA', tv.tipo AS 'VEHICULO', distancia_km AS 'DISTANCIA', FORMAT(CONVERT(DATE, fecha_salida), 'dd/MM/yyyy') AS 'FECHA', DATEPART(hour, fecha_salida) AS 'HORA SALIDA', DATEPART(hour, hora_estimada_entrega) AS 'HORA ESTIMADA DE ENTREGA', DATEPART(hour, fecha_regreso) AS 'HORA DE REGRESO', es.estado AS 'ESTADO DEL PEDIDO', p.nombre AS 'PRODUCTO', df.cantidad AS 'CANTIDAD' FROM productos p JOIN detalles_facturas df ON p.id_producto = df.producto_id JOIN Facturas f ON f.id_factura = df.factura_id JOIN pedidos ped ON ped.id_pedido = f.pedido_id JOIN detalles_hoja_ruta dhr ON dhr.pedido_id = ped.id_pedido JOIN hojas_rutas hr ON hr.id_hoja_ruta = dhr.hoja_ruta_id JOIN transportes t ON t.id_transporte = hr.transporte_id JOIN vehiculos v ON v.transporte_id = t.id_transporte JOIN tipos_vehiculos tv ON tv.id_tipo_vehiculo = v.tipo_vehiculo_id JOIN estados_pedido es ON es.id_estado_pedido = ped.estado_id " +
                $"WHERE distancia_km > 100 AND YEAR(fecha_salida) BETWEEN {desde} AND {hasta} AND tv.tipo IN ('Camión', 'Furgoneta') ";
            dgvTransportistas.DataSource = oBD.ConsultarBD(consultaSQL);
        }

    }
}
