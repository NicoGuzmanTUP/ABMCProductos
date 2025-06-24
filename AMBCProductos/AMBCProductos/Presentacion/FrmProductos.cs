
using AMBCProductos.Datos;
using AMBCProductos.Negocio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AMBCProductos.Presentacion
{
    public partial class FrmProductos : Form
    {
        ProductoServicio oServicio;
        public FrmProductos()
        {
            InitializeComponent();
            oServicio = new ProductoServicio();
        }

        private void metroButton6_Click(object sender, EventArgs e)
        {
            Filtro oFiltro = null;
            if (!chkTodos.Checked)
            {
                oFiltro = new Filtro();
                
                if(!String.IsNullOrEmpty(txtNombre.Text))
                    oFiltro.Nombre = txtNombre.Text;

                if (Convert.ToInt32(cbMarca.SelectedValue) != -1)
                    oFiltro.Marca = Convert.ToInt32(cbMarca.SelectedValue);
                
                if (Convert.ToInt32(cbCategoria.SelectedValue) != -1)
                    oFiltro.Categoria = Convert.ToInt32(cbCategoria.SelectedValue);
            }

            //Cargar la grilla con los datos de la lista de productos

            dgvProductos.Rows.Clear();
            List<Producto> lista = oServicio.TraerProductos(oFiltro);
            foreach (Producto P in lista)
            {
                dgvProductos.Rows.Add(P.IdProducto, P.Nombre, P.TipoProducto.Nombre, P.Marca.Descripcion, P.Categoria.Nombre, P.LimiteStockId);
            }
        }

        private void metroButton1_Click(object sender, EventArgs e)
        {

            if (oServicio.MensajePregunta("¿Estas seguro de querer salir?"))
            {
                Close();
            }
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            FrmDetalles frmDetalles = new FrmDetalles(Modo.NUEVO, null);
            frmDetalles.ShowDialog();
        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            // Comprobación de selección de fila
            if (dgvProductos.CurrentRow == null || dgvProductos.CurrentRow.Index < 0)
            {
                MessageBox.Show("Por favor, seleccione un producto de la lista",
                                "Selección requerida",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
                return;
            }

            // Obtener el ID del producto seleccionado
            int idProducto = Convert.ToInt32(dgvProductos.CurrentRow.Cells[0].Value);


            Producto producto = oServicio.TraerProducto(idProducto);


            FrmDetalles frmDetalles = new FrmDetalles(Modo.EDITAR, producto);
            frmDetalles.ShowDialog();
        }

        private void btnVer_Click(object sender, EventArgs e)
        {
            // Comprobación de selección de fila
            if (dgvProductos.CurrentRow == null || dgvProductos.CurrentRow.Index < 0)
            {
                MessageBox.Show("Por favor, seleccione un producto de la lista",
                                "Selección requerida",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
                return;
            }

            // Obtener el ID del producto seleccionado
            int idProducto = Convert.ToInt32(dgvProductos.CurrentRow.Cells[0].Value);


            Producto producto = oServicio.TraerProducto(idProducto);


            FrmDetalles frmDetalles = new FrmDetalles(Modo.VER, producto);
            frmDetalles.ShowDialog();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (dgvProductos.CurrentRow == null || dgvProductos.CurrentRow.Index < 0)
            {
                MessageBox.Show("Por favor, seleccione un producto de la lista",
                                "Selección requerida",
                                MessageBoxButtons.OK,
                                MessageBoxIcon.Warning);
                return;
            }

            // Obtener el ID del producto seleccionado
            int idProducto = Convert.ToInt32(dgvProductos.CurrentRow.Cells[0].Value);


            Producto producto = oServicio.TraerProducto(idProducto);


            FrmDetalles frmDetalles = new FrmDetalles(Modo.BORRAR, producto);
            frmDetalles.ShowDialog();
        }

        private void FrmProductos_Load(object sender, EventArgs e)
        {
            CargarCombo(cbMarca, "Marcas", "id_marca", "nombre");
            CargarCombo(cbCategoria, "Categorias", "id_categoria", "nombre");
        }

        private void CargarCombo(ComboBox combo, string nombreTabla, string pkTabla, string nomColumna)
        {
            var lista = oServicio.TraerCombo(combo, nombreTabla, pkTabla, nomColumna);
        }
    }
}
