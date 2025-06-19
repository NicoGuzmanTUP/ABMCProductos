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
                MessageBox.Show($"id_producto = {oProducto.Marca.IdMarca}");
                CargarCampos(oProducto);
            }
        }

        private void CargarCampos(Producto oProducto)
        {
            TxtCodigo.Text = oProducto.IdProducto.ToString();
            TxtNombre.Text = oProducto.Nombre.ToString();
            if(oProducto.Descripcion == null)
            {
                txtDescripcion.Text = "No hay descripción disponible.";
            }
            else
            {
                txtDescripcion.Text = oProducto.Descripcion.ToString();
            }
            cboTipoProducto.SelectedValue = oProducto.TipoProductoId;
            cboMarca.SelectedValue = oProducto.Marca.IdMarca;
            cboCategoria.SelectedValue = oProducto.CategoriaId;
            nudPeso.Value = Convert.ToDecimal(oProducto.PesoKg);
            nudLimite.Value = oProducto.LimiteStock;
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
    }
}
