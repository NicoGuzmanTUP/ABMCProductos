namespace AMBCProductos.Presentacion
{
    partial class FrmConsulta5
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
            DgvFacturas = new Krypton.Toolkit.KryptonDataGridView();
            metroTile1 = new MetroFramework.Controls.MetroTile();
            kryptonButton1 = new Krypton.Toolkit.KryptonButton();
            ((System.ComponentModel.ISupportInitialize)DgvFacturas).BeginInit();
            SuspendLayout();
            // 
            // DgvFacturas
            // 
            DgvFacturas.BorderStyle = BorderStyle.None;
            DgvFacturas.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            DgvFacturas.Location = new Point(47, 98);
            DgvFacturas.Name = "DgvFacturas";
            DgvFacturas.Size = new Size(548, 236);
            DgvFacturas.TabIndex = 0;
            // 
            // metroTile1
            // 
            metroTile1.ActiveControl = null;
            metroTile1.Location = new Point(114, 25);
            metroTile1.Name = "metroTile1";
            metroTile1.Size = new Size(372, 22);
            metroTile1.Style = MetroFramework.MetroColorStyle.Blue;
            metroTile1.StyleManager = null;
            metroTile1.TabIndex = 1;
            metroTile1.Text = "Facturas 2025 con pagos superiores a $1000 en zona centro";
            metroTile1.Theme = MetroFramework.MetroThemeStyle.Light;
            metroTile1.TileCount = 0;
            // 
            // kryptonButton1
            // 
            kryptonButton1.Location = new Point(505, 53);
            kryptonButton1.Name = "kryptonButton1";
            kryptonButton1.Size = new Size(90, 25);
            kryptonButton1.TabIndex = 2;
            kryptonButton1.Values.Text = "Consultar";
            kryptonButton1.Click += kryptonButton1_Click_1;
            // 
            // FrmConsulta5
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(620, 367);
            Controls.Add(kryptonButton1);
            Controls.Add(metroTile1);
            Controls.Add(DgvFacturas);
            Name = "FrmConsulta5";
            Text = "FrmConsulta5";
            ((System.ComponentModel.ISupportInitialize)DgvFacturas).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private Krypton.Toolkit.KryptonDataGridView DgvFacturas;
        private MetroFramework.Controls.MetroTile metroTile1;
        private Krypton.Toolkit.KryptonButton kryptonButton1;
    }
}