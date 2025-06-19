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
    public partial class FrmPrincipal : Form
    {
        ProductoServicio oServicio;
        public FrmPrincipal()
        {
            oServicio = new ProductoServicio();
            InitializeComponent();
        }

        private void toolStripMenuItem1_Click(object sender, EventArgs e)
        {
            if (oServicio.MensajePregunta("¿Estas seguro de querer salir?"))
            {
                Close();
            }
        }

        private void librosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //FrmLibros fl= new FrmLibros();
            //fl.ShowDialog();
        }

        private void consulta1ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmConsulta fc = new FrmConsulta();
            fc.ShowDialog();
        }

        private void generosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmProductos frmProductos = new FrmProductos();
            frmProductos.ShowDialog();
        }

        private void consulta2ToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void facundoNicolásGuzmánOlariagaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAcerdaDe frmAcercaDe = new FrmAcerdaDe();
            frmAcercaDe.ShowDialog();
        }

        private void FrmPrincipal_Load(object sender, EventArgs e)
        {

        }
    }
}
