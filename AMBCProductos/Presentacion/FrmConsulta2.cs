using AMBCProductos.Datos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AMBCProductos.Presentacion
{
    public partial class FrmConsulta2 : Form
    {
        AccesoDatos oBD;
        public FrmConsulta2()
        {
            InitializeComponent();
            oBD = new AccesoDatos();
        }

        private void kryptonButton1_Click(object sender, EventArgs e)
        {


            string consultaSQL = "SELECT  cl.nombre_completo AS 'CLIENTE', COUNT( dep.cliente_id) AS 'CANTIDAD DE DEPÓSITOS', COUNT(ped.id_pedido) AS 'VECES QUE COMPRÓ', c.nombre AS 'CATEGORÍA', cc.descripcion AS 'FORMA DE COMPRA',  co.contacto AS 'CONTACTO', CEILING(SUM(cantidad*prec_uni)) AS 'SUBTOTAL DEL PEDIDO', FORMAT(CONVERT(DATE, fecha), 'dd/MM/yyyy') AS 'FECHA' FROM categorias c JOIN productos p ON p.categoria_id = c.id_categoria JOIN detalle_pedidos dp ON dp.producto_id = p.id_producto JOIN pedidos ped ON ped.id_pedido = dp.pedido_id JOIN canales_compras cc ON cc.id_canal_compra = ped.canal_compra_id JOIN Direcciones_Entregas de ON de.id_dir_entrega = ped.direccion_entrega_id JOIN Clientes cl ON cl.id_cliente = de.cliente_id JOIN depositos dep ON dep.cliente_id = cl.id_cliente JOIN Contactos co ON co.cliente_id = cl.id_cliente JOIN Tipos_Contactos tp ON tp.id_tipo_contacto = co.tipo_contacto_id " +
                "WHERE co.contacto IS NOT NULL " +
                "AND DAY(fecha) BETWEEN 25 AND 30   ";
            if (rbtSa.Checked)
            {
                consultaSQL += "AND cl.nombre_completo LIKE '%S.A.'  GROUP BY cl.nombre_completo, c.nombre,co.contacto, cc.descripcion,fecha ORDER BY [SUBTOTAL DEL PEDIDO] DESC";
            }
            else
            {
                consultaSQL += "AND cl.nombre_completo LIKE '%Ltda.' GROUP BY cl.nombre_completo, c.nombre,co.contacto, cc.descripcion,fecha ORDER BY [SUBTOTAL DEL PEDIDO] DESC";
            }
            if (!rbtSa.Checked && !rbtLtda.Checked)
            {
                consultaSQL = "SELECT  cl.nombre_completo AS 'CLIENTE', COUNT( dep.cliente_id) AS 'CANTIDAD DE DEPÓSITOS', COUNT(ped.id_pedido) AS 'VECES QUE COMPRÓ', c.nombre AS 'CATEGORÍA', cc.descripcion AS 'FORMA DE COMPRA',  co.contacto AS 'CONTACTO', CEILING(SUM(cantidad*prec_uni)) AS 'SUBTOTAL DEL PEDIDO', FORMAT(CONVERT(DATE, fecha), 'dd/MM/yyyy') AS 'FECHA' FROM categorias c JOIN productos p ON p.categoria_id = c.id_categoria JOIN detalle_pedidos dp ON dp.producto_id = p.id_producto JOIN pedidos ped ON ped.id_pedido = dp.pedido_id JOIN canales_compras cc ON cc.id_canal_compra = ped.canal_compra_id JOIN Direcciones_Entregas de ON de.id_dir_entrega = ped.direccion_entrega_id JOIN Clientes cl ON cl.id_cliente = de.cliente_id JOIN depositos dep ON dep.cliente_id = cl.id_cliente JOIN Contactos co ON co.cliente_id = cl.id_cliente JOIN Tipos_Contactos tp ON tp.id_tipo_contacto = co.tipo_contacto_id WHERE co.contacto IS NOT NULL AND (cl.nombre_completo LIKE '%S.A.' OR cl.nombre_completo LIKE '%Ltda.')   AND DAY(fecha) BETWEEN 25 AND 30 GROUP BY cl.nombre_completo, c.nombre,co.contacto, cc.descripcion,fecha ORDER BY [SUBTOTAL DEL PEDIDO] DESC ";
            }

            dgvClientesRec.DataSource = oBD.ConsultarBD(consultaSQL);
        }

        private void FrmConsulta2_Load(object sender, EventArgs e)
        {

        }

        private void dgvClientesRec_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
