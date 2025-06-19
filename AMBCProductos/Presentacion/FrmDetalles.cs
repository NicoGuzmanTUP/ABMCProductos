using AMBCProductos.Negocio;

namespace AMBCProductos.Presentacion
{
    public enum Modo
    {
        VER,    //1. Ver detalles
        EDITAR,     //2. Editar
        BORRAR,     //3. Borrar
        NUEVO       //4. Nuevo
    }
    public partial class FrmDetalles : Form
    {
        ProductoServicio oServicio;
        Modo accion;
        Producto oProducto;

        public FrmDetalles(Modo modo, Producto producto)
        {
            InitializeComponent();
            oServicio = new ProductoServicio();
            accion = modo;
            oProducto = producto;
        }

        private void FrmDetalles_Load(object sender, EventArgs e)
        {
            CargarCombo(cboTipoProducto, "Tipos_productos", "id_tipo_producto", "nombre");
            CargarCombo(cboMarca, "Marcas", "id_marca", "nombre");
            CargarCombo(cboCategoria, "Categorias", "id_categoria", "nombre");
            if (accion == Modo.NUEVO)
            {
                oProducto = new Producto();
            }
            else
            {
                //MessageBox.Show($"id_marca = {oProducto.Marca.IdMarca}");
                CargarCampos(oProducto);
            }
        }

        private void CargarCampos(Producto oProducto)
        {
            TxtCodigo.Text = oProducto.IdProducto.ToString();
            TxtNombre.Text = oProducto.Nombre.ToString();
            if (oProducto.Descripcion == null)
            {
                txtDescripcion.Text = "No hay descripción disponible.";
            }
            else
            {
                txtDescripcion.Text = oProducto.Descripcion.ToString();
            }
            cboTipoProducto.SelectedValue = oProducto.TipoProducto.IdTipoProducto;
            cboMarca.SelectedValue = oProducto.Marca.IdMarca;
            cboCategoria.SelectedValue = oProducto.Categoria.IdCategoria;
            nudPeso.Value = Convert.ToDecimal(oProducto.PesoKg);
            if (oProducto.LimiteStockId == 1 || oProducto.LimiteStockId == 2 || oProducto.LimiteStockId == 3 || oProducto.LimiteStockId == 4)
            {
                rbt30.Checked = true;
            }
            if (oProducto.LimiteStockId == 5)
            {
                rbt50.Checked = true;
            }
            else
            {
                rbt100.Checked = true;
            }
        }

        private void CargarCombo(ComboBox combo, string nombreTabla, string pkTabla, string nomColumna)
        {
            var lista = oServicio.TraerCombo(combo, nombreTabla, pkTabla, nomColumna);
        }

        private void BtnAceptar_Click(object sender, EventArgs e)
        {
            //ValidarDatos

            //Cargar el objeto
            //oLibro.Titulo = TxtTitulo.Text;
            //oLibro.Autor = (Autor)CboAutor.SelectedItem;
            //if (RbtImpreso.Checked)
            //    oLibro.Formato = 1;
            //else
            //    oLibro.Formato = 2;
            //oLibro.Fecha = DtpFecha.Value;
            //oLibro.Precio = double.Parse(TxtPrecio.Text);

            //if (accion == Modo.NUEVO)
            //{
            //    //llamar al servicio nuevo
            //    if (oServicio.CrearLibro(oLibro) > 0)
            //        MessageBox.Show("Se creo nuevo libro!!!");
            //    else
            //        MessageBox.Show("Intente más tarde!");
            //}
            //if (accion == Modo.EDITAR)
            //{
            //    //update
            //}
        }

        private void BtnCancelar_Click(object sender, EventArgs e)
        {

        }

        private void btnAceptar_Click_1(object sender, EventArgs e)
        {
            //ValidarDatos

            oProducto.IdProducto = Convert.ToInt32(TxtCodigo.Text);
            oProducto.Nombre = TxtNombre.Text;
            oProducto.Descripcion = txtDescripcion.Text;
            oProducto.TipoProducto.IdTipoProducto = Convert.ToInt32(cboTipoProducto.SelectedValue);
            oProducto.Marca.IdMarca = Convert.ToInt32(cboMarca.SelectedValue);
            oProducto.Categoria.IdCategoria = Convert.ToInt32(cboCategoria.SelectedValue);
            oProducto.PesoKg = Convert.ToDecimal(nudPeso.Value);
            if (rbt30.Checked)
            {
                oProducto.LimiteStockId = 1;
            }
            if (rbt50.Checked)
            {
                oProducto.LimiteStockId = 5;
            }
            else
            {
                oProducto.LimiteStockId = 11;
            }



            if (accion == Modo.NUEVO)
            {
                //llamar al servicio nuevo
                //if (oServicio.CrearLibro(oLibro) > 0)
                //    MessageBox.Show("Se creo nuevo libro!!!");
                //else
                //    MessageBox.Show("Intente más tarde!");
            }
            if (accion == Modo.EDITAR)
            {
                if (oServicio.ModificarProducto(oProducto) > 0)
                {
                    oServicio.MensajeExito("Producto actualizado con éxtio!");
                    LimpiarCampos();
                }

                else
                    oServicio.MensajeAdvertencia("Intente de nuevo mas tarde");
            }
        }

        private void LimpiarCampos()
        {
            TxtCodigo.Text = string.Empty;
            TxtNombre.Text = string.Empty;
            txtDescripcion.Text = string.Empty;
            cboTipoProducto.SelectedIndex = -1;
            cboMarca.SelectedIndex = -1;
            cboCategoria.SelectedIndex = -1;
            nudPeso.Value = 0;
            rbt30.Checked = false;
            rbt50.Checked = false;
            rbt100.Checked = false;

        }

        private void btnCancelar_Click_1(object sender, EventArgs e)
        {
            if(oServicio.MensajePregunta("¿Estas seguro de querer cancelar?"))
            {
                Close();
            }
        }
    }
}
