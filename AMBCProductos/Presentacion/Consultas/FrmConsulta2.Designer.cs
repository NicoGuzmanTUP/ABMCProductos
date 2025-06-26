namespace AMBCProductos.Presentacion
{
    partial class FrmConsulta2
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            dgvClientesRec = new Krypton.Toolkit.KryptonDataGridView();
            metroTile1 = new MetroFramework.Controls.MetroTile();
            metroLabel1 = new MetroFramework.Controls.MetroLabel();
            btnConsultar = new Krypton.Toolkit.KryptonButton();
            rbtSa = new Krypton.Toolkit.KryptonRadioButton();
            rbtLtda = new Krypton.Toolkit.KryptonRadioButton();
            ((System.ComponentModel.ISupportInitialize)dgvClientesRec).BeginInit();
            SuspendLayout();
            // 
            // dgvClientesRec
            // 
            dgvClientesRec.BorderStyle = BorderStyle.None;
            dgvClientesRec.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvClientesRec.Location = new Point(53, 140);
            dgvClientesRec.Name = "dgvClientesRec";
            dgvClientesRec.Size = new Size(872, 321);
            dgvClientesRec.TabIndex = 0;
            // 
            // metroTile1
            // 
            metroTile1.ActiveControl = null;
            metroTile1.Location = new Point(173, 29);
            metroTile1.Name = "metroTile1";
            metroTile1.Size = new Size(630, 23);
            metroTile1.Style = MetroFramework.MetroColorStyle.Blue;
            metroTile1.StyleManager = null;
            metroTile1.TabIndex = 1;
            metroTile1.Text = " Clientes recurrentes empresariales que compraron en fin de mes,con Contacto y Detalles de compras";
            metroTile1.Theme = MetroFramework.MetroThemeStyle.Light;
            metroTile1.TileCount = 0;
            // 
            // metroLabel1
            // 
            metroLabel1.AutoSize = true;
            metroLabel1.CustomBackground = false;
            metroLabel1.FontSize = MetroFramework.MetroLabelSize.Medium;
            metroLabel1.FontWeight = MetroFramework.MetroLabelWeight.Light;
            metroLabel1.LabelMode = MetroFramework.Controls.MetroLabelMode.Default;
            metroLabel1.Location = new Point(53, 95);
            metroLabel1.Name = "metroLabel1";
            metroLabel1.Size = new Size(109, 19);
            metroLabel1.Style = MetroFramework.MetroColorStyle.Blue;
            metroLabel1.StyleManager = null;
            metroLabel1.TabIndex = 3;
            metroLabel1.Text = "Tipo de Empresa";
            metroLabel1.Theme = MetroFramework.MetroThemeStyle.Light;
            metroLabel1.UseStyleColors = false;
            // 
            // btnConsultar
            // 
            btnConsultar.Location = new Point(776, 75);
            btnConsultar.Name = "btnConsultar";
            btnConsultar.Size = new Size(149, 56);
            btnConsultar.TabIndex = 4;
            btnConsultar.Values.Text = "Consultar";
            btnConsultar.Click += kryptonButton1_Click;
            // 
            // rbtSa
            // 
            rbtSa.Location = new Point(221, 94);
            rbtSa.Name = "rbtSa";
            rbtSa.Size = new Size(40, 20);
            rbtSa.TabIndex = 5;
            rbtSa.Values.Text = "S.A";
            // 
            // rbtLtda
            // 
            rbtLtda.Location = new Point(344, 94);
            rbtLtda.Name = "rbtLtda";
            rbtLtda.Size = new Size(46, 20);
            rbtLtda.TabIndex = 6;
            rbtLtda.Values.Text = "Ltda";
            // 
            // FrmConsulta2
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(977, 473);
            Controls.Add(rbtLtda);
            Controls.Add(rbtSa);
            Controls.Add(btnConsultar);
            Controls.Add(metroLabel1);
            Controls.Add(metroTile1);
            Controls.Add(dgvClientesRec);
            Name = "FrmConsulta2";
            Text = "Clientes Recurrentes que Compraron en Fin de Mes";
            ((System.ComponentModel.ISupportInitialize)dgvClientesRec).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Krypton.Toolkit.KryptonDataGridView dgvClientesRec;
        private MetroFramework.Controls.MetroTile metroTile1;
        private MetroFramework.Controls.MetroLabel metroLabel1;
        private Krypton.Toolkit.KryptonButton btnConsultar;
        private Krypton.Toolkit.KryptonRadioButton rbtSa;
        private Krypton.Toolkit.KryptonRadioButton rbtLtda;
    }
}