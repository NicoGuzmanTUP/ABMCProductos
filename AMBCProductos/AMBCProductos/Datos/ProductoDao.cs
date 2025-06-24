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
            string consultaSQL = "select id_producto, p.nombre as producto, tp.nombre as tipo_producto, m.nombre as marca, c.nombre as categorias, limite from productos p  join marcas m on m.id_marca= p.marca_id  join tipos_productos tp on tp.id_tipo_producto = p.tipo_producto_id join categorias c on c.id_categoria = p.categoria_id join limites_stock ls on ls.id_limite_stock = p.limite_stock_id " +
                "where activo = 1";
            if (filtro != null)
            {
                if (!string.IsNullOrEmpty(filtro.Nombre))
                {
                    consultaSQL += " AND p.nombre like '%" + filtro.Nombre + "%'";
                }

                if (filtro.Marca != 0)
                {
                    consultaSQL += " AND marca_id = " + filtro.Marca;
                }

                if (filtro.Categoria != 0)
                {
                    consultaSQL += " AND categoria_id = " + filtro.Categoria;
                }

            }

            DataTable tabla = oBD.ConsultarBD(consultaSQL);
            //Mapear 
            foreach (DataRow fila in tabla.Rows)
            {
                Producto oProducto = new Producto();
                oProducto.IdProducto = (int)fila[0];
                oProducto.Nombre = fila[1].ToString();                
                oProducto.TipoProducto = new TipoProducto();
                oProducto.TipoProducto.Nombre = fila[2].ToString();
                oProducto.Marca = new Marca();
                oProducto.Marca.Descripcion = fila[3].ToString();
                oProducto.Categoria = new Categoria(); 
                oProducto.Categoria.Nombre = fila[4].ToString();
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

        public bool EliminarProducto(int idProducto)
        {
            int filasAfectadas = 0;

            List<Producto> Lista = new List<Producto>();
            //Traer dela BD
            string consultaSQL = $"update productos set activo = 0 where id_producto = "+ idProducto;

            filasAfectadas = oBD.ActualizarBD(consultaSQL);

            return filasAfectadas > 0;
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

        public int InsertarProducto(Producto oP)
        {
            int filasAfectadas = 0;

            string consultaSQL = "INSERT INTO Productos (nombre, descripcion, tipo_producto_id, marca_id, categoria_id, peso_kg, limite_stock_id, activo)"
                               + " VALUES (@nombre, @descripcion, @idTipoProducto, @idMarca, @idCategoria, @pesoKg, @LimiteStockId, 1)";
            List<Parametro> listaParametros = new List<Parametro>();
            //Producto oProducto = new Producto();
            listaParametros.Add(new Parametro("@nombre", oP.Nombre));
            listaParametros.Add(new Parametro("@descripcion", oP.Descripcion));
            listaParametros.Add(new Parametro("@idTipoProducto", oP.TipoProducto.IdTipoProducto));
            listaParametros.Add(new Parametro("@idMarca", oP.Marca.IdMarca));
            listaParametros.Add(new Parametro("@idCategoria", oP.Categoria.IdCategoria));
            listaParametros.Add(new Parametro("@pesoKg", oP.PesoKg));
            listaParametros.Add(new Parametro("@LimiteStockId", oP.LimiteStockId));

            filasAfectadas = oBD.ActualizarBD(consultaSQL, listaParametros);
            return filasAfectadas;
        }
    }
}
