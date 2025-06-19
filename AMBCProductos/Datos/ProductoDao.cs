using AMBCProductos.Negocio;
using System.Data;

namespace AMBCProductos.Datos
{
    public class ProductoDao
    {
        AccesoDatos oBD;

        public ProductoDao()
        {
            oBD = new AccesoDatos();
        }
        public List<Producto> RecuperarProductos(Filtro filtro)
        {
            List<Producto> Lista = new List<Producto>();
            //Traer dela BD
            string consultaSQL = "select id_producto, p.nombre, tipo_producto_id, m.nombre, categoria_id, limite from productos p join marcas m on m.id_marca= p.marca_id join limites_stock ls on ls.id_limite_stock = p.limite_stock_id";
            if (filtro != null)
            {
                //if (filtro.Autor != 0)
                //{
                //    consultaSQL += " AND autor = " + filtro.Autor;
                //}

                //if (!string.IsNullOrEmpty(filtro.Titulo))
                //{
                //    consultaSQL += " AND titulo like '% " + filtro.Titulo + "%'";
                //}
                
            }

            DataTable tabla = oBD.ConsultarBD(consultaSQL);
            //Mapear 
            foreach (DataRow fila in tabla.Rows)
            {
                Producto oProducto = new Producto();
                oProducto.IdProducto = (int)fila[0];
                oProducto.Nombre = fila[1].ToString();                
                oProducto.TipoProducto = new TipoProducto();
                oProducto.TipoProducto.IdTipoProducto = Convert.ToInt32(fila[2]);
                oProducto.Marca = new Marca();
                oProducto.Marca.Descripcion = fila[3].ToString();
                oProducto.Categoria = new Categoria(); 
                oProducto.Categoria.IdCategoria = (int)fila[4];
                oProducto.LimiteStockId = (int)fila[5];

                //oProducto.RutaImg = fila[8].ToString();
                Lista.Add(oProducto);
            }
            return Lista;
        }

        public Producto RecuperarProducto(int idProducto)
        {
            List<Producto> Lista = new List<Producto>();
            //Traer dela BD
            string consultaSQL = $"select * from Productos WHERE id_producto = {idProducto}";

            DataTable tabla = oBD.ConsultarBD(consultaSQL);
            //Mapear 
            foreach (DataRow fila in tabla.Rows)
            {
                Producto oProducto = new Producto();
                oProducto.IdProducto = (int)fila[0];
                oProducto.Nombre = fila[1].ToString();
                oProducto.Descripcion = fila[2].ToString();
                oProducto.TipoProducto = new TipoProducto();
                oProducto.TipoProducto.IdTipoProducto = Convert.ToInt32(fila[3]);
                oProducto.Marca = new Marca();
                oProducto.Marca.IdMarca = Convert.ToInt32(fila[4]);
                oProducto.Categoria = new Categoria();
                oProducto.Categoria.IdCategoria = (int)fila[5];
                oProducto.PesoKg = Convert.ToDecimal(fila[6]);
                oProducto.LimiteStockId = (int)fila[7];

                Lista.Add(oProducto);
            }
            return Lista[0];
        }



        public int ActualizarProducto(Producto oProducto)
        {
            int filasAfectadas = 0;

            string consultaSQL = $"update productos set nombre = @nombre, descripcion = @descripcion, tipo_producto_id = @idTipoProducto , marca_id = @idMarca, categoria_id = @idCategoria, peso_kg = @pesoKg, limite_stock_id = @LimiteStockId where id_producto =" + oProducto.IdProducto;


            List<Parametro> listaParametros = new List<Parametro>();

            listaParametros.Add(new Parametro("@nombre", oProducto.Nombre));
            listaParametros.Add(new Parametro("@descripcion", oProducto.Descripcion));
            listaParametros.Add(new Parametro("@idTipoProducto", oProducto.TipoProducto.IdTipoProducto));
            listaParametros.Add(new Parametro("@idMarca", oProducto.Marca.IdMarca));
            listaParametros.Add(new Parametro("@idCategoria", oProducto.Categoria.IdCategoria));
            listaParametros.Add(new Parametro("@pesoKg", oProducto.PesoKg));
            listaParametros.Add(new Parametro("@LimiteStockId", oProducto.LimiteStockId));

            filasAfectadas = oBD.ActualizarBD(consultaSQL, listaParametros);

            return filasAfectadas;
        }

        public DataTable RecuperarCombo(ComboBox combo, string nombreTabla, string pkTabla, string nomColumna)
        {
            DataTable tabla = oBD.ConsultarTabla(nombreTabla);
            combo.DataSource = tabla;
            combo.ValueMember = pkTabla;
            combo.DisplayMember = nomColumna;
            combo.SelectedIndex = -1;


            return tabla;
        }
    }
}
