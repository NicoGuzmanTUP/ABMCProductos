using AMBCProductos.Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AMBCProductos.Negocio
{
    public class ProductoServicio
    {
        ProductoDao oDao;
        public ProductoServicio()
        {
            oDao = new ProductoDao();
        }

        public List<Producto> TraerProductos(Filtro filtro)
        {
            return oDao.RecuperarProductos(filtro);
        }

        public Producto TraerProducto(int idProducto)
        {
            return oDao.RecuperarProducto(idProducto);
        }

        public int ModificarProducto(Producto producto)
        {
            return oDao.ActualizarProducto(producto);
        }


        public DataTable TraerCombo(ComboBox combo, string nombreTabla, string pkTabla, string nomColumna)
        {
            DataTable tabla = oDao.RecuperarCombo(combo, nombreTabla, pkTabla, nomColumna);

            return tabla;
        }
    }
}
