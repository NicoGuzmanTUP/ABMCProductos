namespace AMBCProductos.Presentacion
{
    partial class FrmConsulta1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        //protected override void Dispose(bool disposing)
        //{
        //    if (disposing && (components != null))
        //    {
        //        components.Dispose();
        //    }
        //    base.Dispose(disposing);
        //}

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            metroTile1 = new MetroFramework.Controls.MetroTile();
            metroLabel1 = new MetroFramework.Controls.MetroLabel();
            metroLabel2 = new MetroFramework.Controls.MetroLabel();
            dgvTransportistas = new Krypton.Toolkit.KryptonDataGridView();
            btnConsultar2 = new Krypton.Toolkit.KryptonButton();
            dtpDesde = new Krypton.Toolkit.KryptonDateTimePicker();
            dtpHasta1 = new Krypton.Toolkit.KryptonDateTimePicker();
            ((System.ComponentModel.ISupportInitialize)dgvTransportistas).BeginInit();
            SuspendLayout();
            // 
            // metroTile1
            // 
            metroTile1.ActiveControl = null;
            metroTile1.Location = new Point(169, 12);
            metroTile1.Name = "metroTile1";
            metroTile1.Size = new Size(649, 23);
            metroTile1.Style = MetroFramework.MetroColorStyle.Blue;
            metroTile1.StyleManager = null;
            metroTile1.TabIndex = 8;
            metroTile1.Text = "Camiónes y Furgonetas con Entregas Puntuales y Distancia Recorrida Superior a 100 km entre dos años";
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
            metroLabel1.Location = new Point(46, 63);
            metroLabel1.Name = "metroLabel1";
            metroLabel1.Size = new Size(48, 19);
            metroLabel1.Style = MetroFramework.MetroColorStyle.Blue;
            metroLabel1.StyleManager = null;
            metroLabel1.TabIndex = 11;
            metroLabel1.Text = "Desde:";
            metroLabel1.Theme = MetroFramework.MetroThemeStyle.Light;
            metroLabel1.UseStyleColors = false;
            // 
            // metroLabel2
            // 
            metroLabel2.AutoSize = true;
            metroLabel2.CustomBackground = false;
            metroLabel2.FontSize = MetroFramework.MetroLabelSize.Medium;
            metroLabel2.FontWeight = MetroFramework.MetroLabelWeight.Light;
            metroLabel2.LabelMode = MetroFramework.Controls.MetroLabelMode.Default;
            metroLabel2.Location = new Point(349, 63);
            metroLabel2.Name = "metroLabel2";
            metroLabel2.Size = new Size(44, 19);
            metroLabel2.Style = MetroFramework.MetroColorStyle.Blue;
            metroLabel2.StyleManager = null;
            metroLabel2.TabIndex = 12;
            metroLabel2.Text = "Hasta:";
            metroLabel2.Theme = MetroFramework.MetroThemeStyle.Light;
            metroLabel2.UseStyleColors = false;
            // 
            // dgvTransportistas
            // 
            dgvTransportistas.BorderStyle = BorderStyle.None;
            dgvTransportistas.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvTransportistas.Location = new Point(46, 143);
            dgvTransportistas.Name = "dgvTransportistas";
            dgvTransportistas.Size = new Size(873, 364);
            dgvTransportistas.TabIndex = 13;
            // 
            // btnConsultar2
            // 
            btnConsultar2.Location = new Point(758, 63);
            btnConsultar2.Name = "btnConsultar2";
            btnConsultar2.Size = new Size(161, 46);
            btnConsultar2.TabIndex = 14;
            btnConsultar2.Values.Text = "Consultar";
            btnConsultar2.Click += btnConsultar2_Click;
            // 
            // dtpDesde
            // 
            dtpDesde.Location = new Point(46, 101);
            dtpDesde.Name = "dtpDesde";
            dtpDesde.Size = new Size(234, 21);
            dtpDesde.TabIndex = 15;
            // 
            // dtpHasta1
            // 
            dtpHasta1.Location = new Point(349, 101);
            dtpHasta1.Name = "dtpHasta1";
            dtpHasta1.Size = new Size(234, 21);
            dtpHasta1.TabIndex = 16;
            // 
            // FrmConsulta1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(968, 519);
            Controls.Add(dtpHasta1);
            Controls.Add(dtpDesde);
            Controls.Add(btnConsultar2);
            Controls.Add(dgvTransportistas);
            Controls.Add(metroLabel2);
            Controls.Add(metroLabel1);
            Controls.Add(metroTile1);
            Margin = new Padding(4);
            Name = "FrmConsulta1";
            Text = "Camiones y Furgonetas con entregas puntuales";
            ((System.ComponentModel.ISupportInitialize)dgvTransportistas).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private MetroFramework.Controls.MetroTile metroTile1;
        private DateTimePicker dtpDesde1;
        private DateTimePicker dtpHasta;
        private MetroFramework.Controls.MetroLabel metroLabel1;
        private MetroFramework.Controls.MetroLabel metroLabel2;
        private Krypton.Toolkit.KryptonDataGridView dgvTransportistas;
        private Krypton.Toolkit.KryptonButton btnConsultar2;
        private Krypton.Toolkit.KryptonDateTimePicker dtpDesde;
        private Krypton.Toolkit.KryptonDateTimePicker dtpHasta1;
    }
}