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

        public bool SacarProducto(int idProducto)
        {
            return oDao.EliminarProducto(idProducto);
        }


        public DataTable TraerCombo(ComboBox combo, string nombreTabla, string pkTabla, string nomColumna)
        {
            DataTable tabla = oDao.RecuperarCombo(combo, nombreTabla, pkTabla, nomColumna);

            return tabla;
        }

        public void MensajeExito(string mensaje)
        {
            MessageBox.Show(mensaje, "Éxito", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        public void MensajeAdvertencia(string mensaje)
        {
            MessageBox.Show(mensaje, "No válido", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
        }

        public bool MensajePregunta(string mensaje)
        {
            bool yes = false;
            if (MessageBox.Show(mensaje, "Salir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                yes = true;
            }

            return yes;
        }
    }
}
