
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
            //if (!ChkTodos.Checked)
            //{
            //    oFiltro = new Filtro();
            //    if (!string.IsNullOrEmpty(TxtTitulo.Text))
            //        oFiltro.Titulo = TxtTitulo.Text;
            //    if (CboAutor.SelectedIndex != -1)
            //        oFiltro.Autor = ((Autor)CboAutor.SelectedItem).Codigo;
            //}

            //Cargar la grilla con los datos de la lista de productos

            dgvProductos.Rows.Clear();
            List<Producto> lista = oServicio.TraerProductos(oFiltro);
            foreach (Producto P in lista)
            {
                dgvProductos.Rows.Add(P.IdProducto, P.Nombre, P.TipoProductoId, P.Marca.Descripcion, P.CategoriaId, P.LimiteStock);
            }
        }

        private void metroButton1_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("¿Estas seguro de querer salir?", "Salir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
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
    }
}
