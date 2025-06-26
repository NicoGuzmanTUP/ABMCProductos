using AMBCProductos.Datos;
using AMBCProductos.Negocio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace AMBCProductos.Presentacion
{
    public partial class FrmConsulta11 : Form
    {
        AccesoDatos oBD;
        ProductoDao oDao;
        ProductoServicio oProducto;

        public FrmConsulta11()
        {
            oBD = new AccesoDatos();
            oDao = new ProductoDao();
            oProducto = new ProductoServicio();
            InitializeComponent();
        }

        private void metroTile1_Click(object sender, EventArgs e)
        {

        }

        private void dgvTransportistas_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void FrmConsulta11_Load(object sender, EventArgs e)
        {
            //nmStock.Maximum = 500;
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnConsultar2_Click(object sender, EventArgs e)
        {
            if (Validar())
            {
                int valorSeleccionado = (int)nmStock.Value;
                string consultasql = $"SELECT pr.nombre AS Producto,i.cantidad AS Stock, cat.nombre AS Categoria, pr.peso_kg AS Peso, s.nombre AS Sucursal, tp.nombre AS Tipo_Producto FROM inventarios i JOIN productos pr ON i.producto_id = pr.id_producto JOIN categorias cat ON pr.categoria_id = cat.id_categoria JOIN tipos_productos tp ON pr.tipo_producto_id = tp.id_tipo_producto JOIN sucursales s ON i.sucursal_id = s.id_sucursal WHERE i.cantidad = {valorSeleccionado} AND cat.nombre IN ('Gourmet', 'Fiambres', 'Lacteos') AND pr.peso_kg IS NOT NULL";
                DataTable tabla = oBD.ConsultarBD(consultasql);
                dgvConsulta11.DataSource = tabla; 
            }
        }

        private bool Validar()
        {

            int valorSeleccionado = (int)nmStock.Value;
            if (!radioButton1.Checked && !radioButton2.Checked && !radioButton3.Checked)
            {
                oProducto.MensajeAdvertencia("Debe seleccionar una categoria de producto");
                return false;
            }
            if (valorSeleccionado < 100 || valorSeleccionado > 300 || valorSeleccionado == 0 )
            {
                oProducto.MensajeAdvertencia("Debe seleccionar un peso entre 100 y 300");
                return false;
            }
            return true;

        }

    }
}
