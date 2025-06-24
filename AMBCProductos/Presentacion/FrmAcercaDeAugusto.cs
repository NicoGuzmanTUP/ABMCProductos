using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AcercaDeAugusto
{
    public partial class FrmAcercaDeAugusto : Form
    {
        public FrmAcercaDeAugusto()
        {
            InitializeComponent();
        }

        private void BtnAceptar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
