using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using AMBCProductos.Datos;
using AMBCProductos.Negocio;

namespace AMBCProductos.Presentacion
{
    public partial class frmConsulta4 : Form
    {
        AccesoDatos oBD;
        ProductoDao oDao;
        ProductoServicio oProducto;
        public frmConsulta4()
        {
            InitializeComponent();
            oBD = new AccesoDatos();
            oDao = new ProductoDao();
            oProducto = new ProductoServicio();
        }

        private void Consulta4_Load(object sender, EventArgs e)
        {
            cargarCombo();
        }

        private void cargarCombo()
        {
            oDao.RecuperarCombo(cboZonas, "zonas_envio", "id_zona_envio", "descripcion");
        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                int zonaSeleccionada = (int)cboZonas.SelectedValue;
                string consultasql = $"SELECT p.id_producto, p.descripcion, dp.prec_uni, FORMAT(CONVERT(DATE, ped.fecha), 'dd/MM/yyyy') AS 'fecha', ze.descripcion FROM Productos p JOIN detalle_pedidos dp ON dp.producto_id = p.id_producto JOIN pedidos ped ON ped.id_pedido = dp.pedido_id JOIN Direcciones_Entregas dire ON dire.id_dir_entrega = ped.direccion_entrega_id JOIN zonas_envio ze ON ze.id_zona_envio = dire.zona_envio_id WHERE ped.fecha >= DATEADD(YEAR, -5, GETDATE()) AND ze.id_zona_envio = {zonaSeleccionada} AND dp.prec_uni IN (500, 900, 1200) ORDER BY ped.fecha DESC";
                DataTable tabla = oBD.ConsultarBD(consultasql);
                dgvConsulta.DataSource = tabla;
            }
        }

        private bool Validar()
        {
            if(!rbt500.Checked && !rbt900.Checked && !rbt1200.Checked)
            {
                oProducto.MensajeAdvertencia("Debe seleccionar un precio unitario");
                return false;
            }
            if(cboZonas.SelectedIndex == -1)
            {
                oProducto.MensajeAdvertencia("Debe seleccionar una zona de envio");
                return false;
            }

            return true;
        }
    }
}
