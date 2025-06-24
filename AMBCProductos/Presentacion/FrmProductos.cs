using AMBCProductos.Datos;
using AMBCProductos.Negocio;
using System.Reflection;

namespace AMBCProductos.Presentacion
{
    public partial class FrmProductos : Form
    {
        ProductoServicio oServicio;
        public FrmProductos()
        {
            InitializeComponent();
            oServicio = new ProductoServicio();
            dgvProductos.SelectionChanged += dgvProductos_SelectionChanged;
        }

        private void metroButton6_Click(object sender, EventArgs e)
        {
            Filtro oFiltro = null;
            if (!chkTodos.Checked)
            {
                oFiltro = new Filtro();

                if (!String.IsNullOrEmpty(txtNombre.Text))
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
                dgvProductos.Rows.Add(P.IdProducto, P.Nombre, P.TipoProducto.Nombre, P.Marca.Descripcion, P.Categoria.Nombre, P.LimiteStockId, P.RutaImg);
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

        private void dgvProductos_SelectionChanged(object sender, EventArgs e)
        {
            if (dgvProductos.CurrentRow == null || dgvProductos.CurrentRow.Index < 0)
            {
                CargarImagenPorDefecto();
                return;
            }

            string nombre = dgvProductos.CurrentRow.Cells[6].Value?.ToString()?.Trim();

            if (string.IsNullOrEmpty(nombre) || nombre.ToUpper() == "NULL")
            {
                CargarImagenPorDefecto();
                return;
            }

            try
            {
                Image imagen = CargarImagenDesdeRecurso(nombre);

                if (imagen != null)
                {
                    // Liberar imagen anterior si existe
                    if (pictureBox1.Image != null)
                    {
                        pictureBox1.Image.Dispose();
                    }

                    pictureBox1.Image = imagen;
                    pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
                    Console.WriteLine($"Imagen '{nombre}' cargada exitosamente");
                }
                else
                {
                    // Si no se puede cargar la imagen específica, cargar imagen por defecto
                    CargarImagenPorDefecto();
                    Console.WriteLine($"No se pudo cargar la imagen '{nombre}', cargando imagen por defecto");
                }
            }
            catch (Exception ex)
            {
                CargarImagenPorDefecto();
                Console.WriteLine($"Error al cargar imagen: {ex.Message}");
            }
        }

        private void CargarImagenPorDefecto()
        {
            try
            {
                // Opción 1: Cargar una imagen por defecto desde recursos
                Image imagenDefecto = CargarImagenDesdeRecurso("producto_no_encontrado"); // Reemplaza con el nombre de tu imagen por defecto

                if (imagenDefecto != null)
                {
                    // Liberar imagen anterior si existe
                    if (pictureBox1.Image != null)
                    {
                        pictureBox1.Image.Dispose();
                    }

                    pictureBox1.Image = imagenDefecto;
                    pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error al cargar imagen por defecto: {ex.Message}");
                // Como último recurso, crear imagen programática
                CrearImagenPorDefectoProgramatica();
            }
        }

        private void CrearImagenPorDefectoProgramatica()
        {
            try
            {
                // Liberar imagen anterior si existe
                if (pictureBox1.Image != null)
                {
                    pictureBox1.Image.Dispose();
                }

                // Crear una imagen simple con texto
                Bitmap imagenDefecto = new Bitmap(pictureBox1.Width, pictureBox1.Height);
                using (Graphics g = Graphics.FromImage(imagenDefecto))
                {
                    // Fondo gris claro
                    g.Clear(Color.LightGray);

                    // Dibujar borde
                    using (Pen pen = new Pen(Color.Gray, 2))
                    {
                        g.DrawRectangle(pen, 1, 1, imagenDefecto.Width - 2, imagenDefecto.Height - 2);
                    }

                    // Agregar texto
                    string texto = "Sin imagen\ndisponible";
                    using (Font font = new Font("Arial", 12, FontStyle.Bold))
                    {
                        SizeF tamaño = g.MeasureString(texto, font);
                        float x = (imagenDefecto.Width - tamaño.Width) / 2;
                        float y = (imagenDefecto.Height - tamaño.Height) / 2;

                        using (SolidBrush brush = new SolidBrush(Color.DarkGray))
                        {
                            g.DrawString(texto, font, brush, x, y);
                        }
                    }
                }

                pictureBox1.Image = imagenDefecto;
                pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error al crear imagen por defecto programática: {ex.Message}");
                pictureBox1.Image = null;
            }
        }

        private Image CargarImagenDesdeRecurso(string nombreRecurso)
        {
            try
            {
                object recurso = Properties.Resources.ResourceManager.GetObject(nombreRecurso);

                if (recurso == null)
                {
                    Console.WriteLine($"Recurso '{nombreRecurso}' no encontrado.");
                    return null;
                }

                if (recurso is Image imagen)
                {
                    return imagen;
                }
                else if (recurso is byte[] imageBytes)
                {
                    using (MemoryStream ms = new MemoryStream(imageBytes))
                    {
                        // Crear una copia independiente del stream
                        return new Bitmap(ms);
                    }
                }
                else
                {
                    Console.WriteLine($"Tipo de recurso no soportado: {recurso.GetType()}");
                    return null;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error en CargarImagenDesdeRecurso: {ex.Message}");
                return null;
            }
        }

    }
}
