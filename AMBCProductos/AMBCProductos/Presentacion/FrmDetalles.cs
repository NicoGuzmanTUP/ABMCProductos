using AMBCProductos.Negocio;
using System.Text.RegularExpressions;

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
                //oProducto = new Producto();
                oProducto = new Producto
                {
                    TipoProducto = new TipoProducto(),
                    Marca = new Marca(),
                    Categoria = new Categoria()
                };
            }
            //else if (accion == Modo.EDITAR)
            //{
            //    if (oProducto == null)
            //    {
            //        oServicio.MensajeAdvertencia("No se pudo recuperar el producto seleccionado.");
            //        Close();
            //        return;
            //    }
            //    DesabilitarCampos(true);
            //}

            else
            {
                //MessageBox.Show($"id_marca = {oProducto.Marca.IdMarca}");
                CargarCampos(oProducto);
                if (accion == Modo.VER)
                {
                    btnCancelar.Visible = false;
                    DesabilitarCampos(false);
                    CenterAceptarButton();
                }
                if (accion == Modo.BORRAR)
                {
                    DesabilitarCampos(false);
                }
            }
        }

        private void CenterAceptarButton()
        {
            btnAceptar.Left = (this.ClientSize.Width - btnAceptar.Width) / 2;
            // si quieres centrar verticalmente:
            // btnAceptar.Top = (this.ClientSize.Height - btnAceptar.Height) / 2;
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
            if (oProducto.LimiteStockId == 1 )
            {
                rbt30.Checked = true;
            }
            else if (oProducto.LimiteStockId == 2)
            {
                rbt50.Checked = true;
            }
            else if(oProducto.LimiteStockId == 3)
            {
                rbt100.Checked = true;
            }
        }

        private void CargarCombo(ComboBox combo, string nombreTabla, string pkTabla, string nomColumna)
        {
            var lista = oServicio.TraerCombo(combo, nombreTabla, pkTabla, nomColumna);
        }

        private bool Validar()
        {
            if (string.IsNullOrEmpty(TxtNombre.Text) )
            {
                oServicio.MensajeAdvertencia("Debe ingresar un nombre válido (solo letras, sin números ni espacios)");
                TxtNombre.Focus();
                return false;
            }

            //if (!Regex.IsMatch(txtDescripcion.Text, @"^[A-Za-zÁÉÍÓÚáéíóúñÑ]+$") && txtDescripcion.Text != "")
            //{
            //    oServicio.MensajeAdvertencia("Debe ingresar solo letras, sin números ni espacios");
            //    txtDescripcion.Focus();
            //    return false;
            //}

            if (cboTipoProducto.SelectedIndex == -1)
            {
                oServicio.MensajeAdvertencia("Debe seleccionar el tipo de producto que desea cargar");
                return false;
            }
            if (cboMarca.SelectedIndex == -1)
            {
                oServicio.MensajeAdvertencia("Debe seleccionar la marca del producto que desea cargar");
                return false;
            }
            if (cboCategoria.SelectedIndex == -1)
            {
                oServicio.MensajeAdvertencia("Debe seleccionar la categoria del producto que desea cargar");
                return false;
            }
            if (nudPeso.Value == 0)
            {
                oServicio.MensajeAdvertencia("El peso cargado no puede ser 0");
                nudPeso.Focus();
                return false;
            }
            if (!rbt30.Checked && !rbt50.Checked && !rbt100.Checked)
            {
                oServicio.MensajeAdvertencia("Debe seleccionar un limite de stock");
                return false;
            }

            return true;
        }

        private void btnAceptar_Click_1(object sender, EventArgs e)
        {
            if (Validar())
            {
                //oProducto.IdProducto = Convert.ToInt32(TxtCodigo.Text);
                oProducto.Nombre = TxtNombre.Text;
                oProducto.Descripcion = txtDescripcion.Text;
                if (String.IsNullOrEmpty(txtDescripcion.Text))
                {
                    oProducto.Descripcion = "";
                }
                
                oProducto.TipoProducto.IdTipoProducto = Convert.ToInt32(cboTipoProducto.SelectedValue);
                oProducto.Marca.IdMarca = Convert.ToInt32(cboMarca.SelectedValue);
                oProducto.Categoria.IdCategoria = Convert.ToInt32(cboCategoria.SelectedValue);
                oProducto.PesoKg = Convert.ToDecimal(nudPeso.Value);
                if (rbt30.Checked)
                {
                    oProducto.LimiteStockId = 1;
                }
                else if (rbt50.Checked)
                {
                    oProducto.LimiteStockId = 2;
                }
                else if(rbt100.Checked)
                {
                    oProducto.LimiteStockId = 3;
                }

                if (accion == Modo.NUEVO)
                {
                    if (oServicio.CrearProducto(oProducto) > 0)
                    {
                        oServicio.MensajeExito("Se creó un nuevo producto con éxito!!!");
                        LimpiarCampos();
                    }                    
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
                if (accion == Modo.VER)
                {
                    Close();
                }
                if(accion == Modo.BORRAR)
                {
                    if (oServicio.MensajeBorrar("¿Estas seguro de querer eliminar el producto"))
                    {
                        if (oServicio.SacarProducto(oProducto.IdProducto))
                        {
                            oServicio.MensajeExito("Producto dado de baja con éxito");
                        }
                    }                    
                }
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

        private void DesabilitarCampos(bool x)
        {
            TxtCodigo.Enabled = x;
            TxtNombre.Enabled = x;
            txtDescripcion.Enabled = x;
            cboTipoProducto.Enabled = x;
            cboMarca.Enabled = x;
            cboCategoria.Enabled = x;
            nudPeso.Enabled = x;
            rbt30.Enabled = x;
            rbt50.Enabled = x;
            rbt100.Enabled = x;

        }

        private void btnCancelar_Click_1(object sender, EventArgs e)
        {
            if (oServicio.MensajePregunta("¿Estas seguro de querer cancelar?"))
            {
                Close();
            }
        }
    }
}
