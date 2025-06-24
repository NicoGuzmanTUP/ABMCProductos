namespace AMBCProductos.Presentacion
{
    partial class frmConsulta3
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
            dgvConsulta = new DataGridView();
            metroTile1 = new MetroFramework.Controls.MetroTile();
            btnConsultar = new Button();
            nmPeso = new NumericUpDown();
            label1 = new Label();
            label2 = new Label();
            cboCategoria = new ComboBox();
            ((System.ComponentModel.ISupportInitialize)dgvConsulta).BeginInit();
            ((System.ComponentModel.ISupportInitialize)nmPeso).BeginInit();
            SuspendLayout();
            // 
            // dgvConsulta
            // 
            dgvConsulta.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvConsulta.Location = new Point(60, 119);
            dgvConsulta.Name = "dgvConsulta";
            dgvConsulta.Size = new Size(700, 285);
            dgvConsulta.TabIndex = 0;
            // 
            // metroTile1
            // 
            metroTile1.ActiveControl = null;
            metroTile1.Location = new Point(60, 12);
            metroTile1.Name = "metroTile1";
            metroTile1.Size = new Size(700, 23);
            metroTile1.Style = MetroFramework.MetroColorStyle.Blue;
            metroTile1.StyleManager = null;
            metroTile1.TabIndex = 9;
            metroTile1.Text = "Productos solicitados con medios de pago tipo 'TARJETA', peso entre 1 y 5 kg y categoría distinta de 'Congelados'";
            metroTile1.Theme = MetroFramework.MetroThemeStyle.Light;
            metroTile1.TileCount = 0;
            // 
            // btnConsultar
            // 
            btnConsultar.Location = new Point(657, 65);
            btnConsultar.Name = "btnConsultar";
            btnConsultar.Size = new Size(103, 39);
            btnConsultar.TabIndex = 10;
            btnConsultar.Text = "Consultar";
            btnConsultar.UseVisualStyleBackColor = true;
            btnConsultar.Click += btnConsultar_Click;
            // 
            // nmPeso
            // 
            nmPeso.Location = new Point(141, 75);
            nmPeso.Name = "nmPeso";
            nmPeso.Size = new Size(36, 23);
            nmPeso.TabIndex = 11;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(75, 77);
            label1.Name = "label1";
            label1.Size = new Size(35, 15);
            label1.TabIndex = 12;
            label1.Text = "Peso:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(241, 77);
            label2.Name = "label2";
            label2.Size = new Size(58, 15);
            label2.TabIndex = 13;
            label2.Text = "Categoria";
            // 
            // cboCategoria
            // 
            cboCategoria.DropDownStyle = ComboBoxStyle.DropDownList;
            cboCategoria.FormattingEnabled = true;
            cboCategoria.Location = new Point(325, 74);
            cboCategoria.Name = "cboCategoria";
            cboCategoria.Size = new Size(121, 23);
            cboCategoria.TabIndex = 14;
            // 
            // frmConsulta3
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(cboCategoria);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(nmPeso);
            Controls.Add(btnConsultar);
            Controls.Add(metroTile1);
            Controls.Add(dgvConsulta);
            Name = "frmConsulta3";
            Text = "frmConsulta3";
            Load += frmConsulta3_Load;
            ((System.ComponentModel.ISupportInitialize)dgvConsulta).EndInit();
            ((System.ComponentModel.ISupportInitialize)nmPeso).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private DataGridView dgvConsulta;
        private MetroFramework.Controls.MetroTile metroTile1;
        private Button btnConsultar;
        private NumericUpDown nmPeso;
        private Label label1;
        private Label label2;
        private ComboBox cboCategoria;
    }
}