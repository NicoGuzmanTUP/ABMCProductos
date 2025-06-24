using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AMBCProductos.Negocio
{
    public class Producto
    {
        private int idProducto;
        private string nombre;
        private string descripcion;
        private TipoProducto tipoProducto;
        private Marca marca;
        private Categoria categoria;
        private decimal pesoKg;
        private int limiteStockId;
        private string rutaImg;



        public int IdProducto
        {
            get { return idProducto; }
            set { idProducto = value; }
        }

        public string Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string Descripcion
        {
            get { return descripcion; }
            set { descripcion = value; }
        }

        public TipoProducto TipoProducto
        {
            get { return tipoProducto; }
            set { tipoProducto = value; }
        }

        public Marca Marca
        {
            get { return marca; }
            set { marca = value; }
        }

        public Categoria Categoria
        {
            get { return categoria; }
            set { categoria = value; }
        }

        public decimal PesoKg
        {
            get { return pesoKg; }
            set { pesoKg = value; }
        }

        public int LimiteStockId
        {
            get { return limiteStockId; }
            set { limiteStockId = value; }
        }

        public string RutaImg
        {
            get { return rutaImg; }
            set { rutaImg = value; }
        }
    }
}
