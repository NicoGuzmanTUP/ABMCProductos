using AcercaDeAugusto;
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
            FrmConsulta1 fc = new FrmConsulta1();
            fc.ShowDialog();
        }

        private void generosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmProductos frmProductos = new FrmProductos();
            frmProductos.ShowDialog();
        }

        private void consulta2ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmConsulta2 frmConsulta2 = new FrmConsulta2();
            frmConsulta2.ShowDialog();
        }

        private void facundoNicolásGuzmánOlariagaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAcerdaDe frmAcercaDe = new FrmAcerdaDe();
            frmAcercaDe.ShowDialog();
        }

        private void FrmPrincipal_Load(object sender, EventArgs e)
        {

        }

        private void chamorroToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAcercaDeBauti frmBauti = new FrmAcercaDeBauti();
            frmBauti.ShowDialog();
        }

        private void monierAxelAugustoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAcercaDeAugusto frmAcercaDeAugusto = new FrmAcercaDeAugusto();
            frmAcercaDeAugusto.ShowDialog();
        }

        private void consulta3ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmConsulta3 frmbc = new frmConsulta3();
            frmbc.ShowDialog();
        }

        private void productosUltimos5AñosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmConsulta4 frmb2 = new frmConsulta4();
            frmb2.ShowDialog();
        }

        private void informacionEmpleadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmConsulta5 frmConsulta5 = new FrmConsulta5();
            frmConsulta5.ShowDialog();
        }

        private void productosDeCategoríasGourmetGranelEImportadosConStockEntre100Y300UnidadesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmConsulta11 frmConsulta11 = new FrmConsulta11();
            frmConsulta11.ShowDialog();
        }

        private void biancottiFrancoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAcercaDeFranco frmAcercaDeFranco = new FrmAcercaDeFranco();
            frmAcercaDeFranco.ShowDialog();
        }
    }
}

