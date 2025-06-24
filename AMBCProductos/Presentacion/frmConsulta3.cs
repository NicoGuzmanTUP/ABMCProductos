using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using AMBCProductos.Datos;
using AMBCProductos.Negocio;

namespace AMBCProductos.Presentacion
{
    public partial class frmConsulta3 : Form
    {
        AccesoDatos oBD;
        ProductoDao oDao;
        ProductoServicio oProducto;

        public frmConsulta3()
        {
            InitializeComponent();
            oBD = new AccesoDatos();
            oDao = new ProductoDao();
            oProducto = new ProductoServicio();
        }

        private void btnConsultar_Click(object sender, EventArgs e)
        {
            if(Validar())
            {
                int valorSeleccionado = (int)nmPeso.Value;
                int categoriaSeleccionada = (int)cboCategoria.SelectedValue;
                string consultasql = $"SELECT pr.nombre AS producto, pr.peso_kg, c.nombre AS categoria, mp.nombre AS medio_pago, mp.recargo FROM detalle_pedidos dp JOIN productos pr ON dp.producto_id = pr.id_producto JOIN categorias c ON pr.categoria_id = c.id_categoria JOIN pedidos p ON dp.pedido_id = p.id_pedido JOIN facturas f ON f.pedido_id = p.id_pedido JOIN Facturas_medios_pago fmp ON fmp.factura_id = f.id_factura JOIN medios_pagos mp ON mp.id_medio_pago = fmp.medio_pago_id WHERE UPPER(mp.nombre) LIKE '%TARJETA%' AND pr.peso_kg = {valorSeleccionado} AND c.id_categoria = {categoriaSeleccionada} ";
                DataTable tabla = oBD.ConsultarBD(consultasql);
                dgvConsulta.DataSource = tabla;
            } 
        }

        private bool Validar()
        {
            int valorSeleccionado = (int)nmPeso.Value;
            int categoriaSeleccionada = (int)cboCategoria.SelectedValue;
            if (valorSeleccionado < 1 || valorSeleccionado > 5)
            {
                oProducto.MensajeAdvertencia("Debe seleccionar un peso entre 1 y 5 KG");
                return false;
            }
            if (categoriaSeleccionada == 2)
            {
                oProducto.MensajeAdvertencia("Debe seleccionar una categoria distinta a 'Congelados'");
                return false;
            }
            return true;
        }

        private void frmConsulta3_Load(object sender, EventArgs e)
        {
            cargarCombo();
        }

        private void cargarCombo()
        {
            oDao.RecuperarCombo(cboCategoria,"Categorias","id_categoria","nombre");
        }
    }
}
