using AMBCProductos.Datos;
using AMBCProductos.Negocio;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AMBCProductos.Presentacion
{
    public partial class FrmConsulta5 : Form
    {
        AccesoDatos oBD;
        ProductoDao oDao;
        ProductoServicio oProducto;
        public FrmConsulta5()
        {
            InitializeComponent();
            oBD = new AccesoDatos();
            oDao = new ProductoDao();
            oProducto = new ProductoServicio();
        }

        private void FrmConsulta5_Load(object sender, EventArgs e)
        {
            cargarCombo();
        }
        private void cargarCombo()
        {
            oDao.RecuperarCombo(CboTipoContacto, "Tipos_Contactos ", "id_tipo_contacto", "tipo");
            oDao.RecuperarCombo(CboSucursal, "Sucursales ", "id_sucursal", "nombre");
        }
        private void BtnConsultar_Click_1(object sender, EventArgs e)
        {
            if (Validar())
            {
                int tipoContacto = (int)CboTipoContacto.SelectedValue;
                int zona = (int)CboSucursal.SelectedValue;
                string consultaSql = $" SELECT e.id_empleado AS 'ID', CONCAT(UPPER(e.nombre_completo), ' - ', c.cargo) AS " +
                    $" 'Nombre completo y Cargo', ce.contacto AS 'Contacto Telegram', s.nombre AS " +
                    $" 'Sucursal' FROM empleados e JOIN cargos c ON e.cargo_id = c.id_cargo JOIN " +
                    $" sucursales s ON e.sucursal_id = s.id_sucursal JOIN contactos_empleados ce ON " +
                    $" ce.empleado_id = e.id_empleado JOIN tipos_contactos tc ON ce.tipo_contacto_id = " +
                    $" tc.id_tipo_contacto WHERE tc.id_tipo_contacto = {tipoContacto} AND s.id_sucursal = {zona} " +
                    $" AND e.supervisor_id IS NOT NULL ";

                DataTable tabla = oBD.ConsultarBD(consultaSql);
                DgvEmpleadosInfo.DataSource = tabla;
            }
        }
        private bool Validar()
        {
            if (CboTipoContacto.SelectedIndex == -1)
            {
                oProducto.MensajeAdvertencia("Debe seleccionar un tipo de contacto");
                return false;
            }
            if (CboSucursal.SelectedIndex == -1)
            {
                oProducto.MensajeAdvertencia("Debe seleccionar una zona");
                return false;
            }

            return true;

        }
    }
}

