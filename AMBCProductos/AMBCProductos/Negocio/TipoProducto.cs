using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AMBCProductos.Negocio
{
    public class TipoProducto
    {
        int idTipoProducto;
        string nombre;
        string? descripcion;

        public int IdTipoProducto
        {
            get { return idTipoProducto; }
            set { idTipoProducto = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
        public string? Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }
    }
}
