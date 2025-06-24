using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AMBCProductos.Negocio
{
    public class Marca
    {
        private int idMarca;
        private string nombre;
        private string? descripcion;

        public int IdMarca
        {
            get { return idMarca; }
            set { idMarca = value; }
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
