using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AMBCProductos.Negocio
{
    public class Categoria
    {
        private int idCategoria;
        private string nombre;
        private string? descripcion;

        public int IdCategoria
        {
            get { return idCategoria; }
            set { idCategoria = value; }
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
