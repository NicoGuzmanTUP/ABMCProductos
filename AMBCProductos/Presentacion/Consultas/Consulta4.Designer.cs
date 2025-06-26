namespace AMBCProductos.Presentacion
{
    partial class frmConsulta4
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
            metroTile1 = new MetroFramework.Controls.MetroTile();
            dgvConsulta = new DataGridView();
            btnConsultar = new Button();
            label1 = new Label();
            rbt500 = new RadioButton();
            rbt900 = new RadioButton();
            rbt1200 = new RadioButton();
            label2 = new Label();
            cboZonas = new ComboBox();
            ((System.ComponentModel.ISupportInitialize)dgvConsulta).BeginInit();
            SuspendLayout();
            // 
            // metroTile1
            // 
            metroTile1.ActiveControl = null;
            metroTile1.Location = new Point(166, 12);
            metroTile1.Name = "metroTile1";
            metroTile1.Size = new Size(456, 39);
            metroTile1.Style = MetroFramework.MetroColorStyle.Blue;
            metroTile1.StyleManager = null;
            metroTile1.TabIndex = 10;
            metroTile1.Text = "Productos con pedidos realizados en los últimos 5 años, solo en zonas de\r\n envío válidas, y cuyo precio unitario sea 500, 900 o 1200.";
            metroTile1.Theme = MetroFramework.MetroThemeStyle.Light;
            metroTile1.TileCount = 0;
            // 
            // dgvConsulta
            // 
            dgvConsulta.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvConsulta.Location = new Point(55, 139);
            dgvConsulta.Name = "dgvConsulta";
            dgvConsulta.Size = new Size(700, 285);
            dgvConsulta.TabIndex = 11;
            // 
            // btnConsultar
            // 
            btnConsultar.Location = new Point(652, 79);
            btnConsultar.Name = "btnConsultar";
            btnConsultar.Size = new Size(103, 39);
            btnConsultar.TabIndex = 12;
            btnConsultar.Text = "Consultar";
            btnConsultar.UseVisualStyleBackColor = true;
            btnConsultar.Click += btnConsultar_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(56, 92);
            label1.Name = "label1";
            label1.Size = new Size(43, 15);
            label1.TabIndex = 13;
            label1.Text = "Precio:";
            // 
            // rbt500
            // 
            rbt500.AutoSize = true;
            rbt500.Location = new Point(123, 92);
            rbt500.Name = "rbt500";
            rbt500.Size = new Size(43, 19);
            rbt500.TabIndex = 14;
            rbt500.TabStop = true;
            rbt500.Text = "500";
            rbt500.UseVisualStyleBackColor = true;
            // 
            // rbt900
            // 
            rbt900.AutoSize = true;
            rbt900.Location = new Point(184, 92);
            rbt900.Name = "rbt900";
            rbt900.Size = new Size(43, 19);
            rbt900.TabIndex = 15;
            rbt900.TabStop = true;
            rbt900.Text = "900";
            rbt900.UseVisualStyleBackColor = true;
            // 
            // rbt1200
            // 
            rbt1200.AutoSize = true;
            rbt1200.Location = new Point(233, 92);
            rbt1200.Name = "rbt1200";
            rbt1200.Size = new Size(49, 19);
            rbt1200.TabIndex = 16;
            rbt1200.TabStop = true;
            rbt1200.Text = "1200";
            rbt1200.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(323, 92);
            label2.Name = "label2";
            label2.Size = new Size(90, 15);
            label2.TabIndex = 17;
            label2.Text = "Zonas de Envio:";
            // 
            // cboZonas
            // 
            cboZonas.DropDownStyle = ComboBoxStyle.DropDownList;
            cboZonas.FormattingEnabled = true;
            cboZonas.Location = new Point(438, 88);
            cboZonas.Name = "cboZonas";
            cboZonas.Size = new Size(121, 23);
            cboZonas.TabIndex = 18;
            // 
            // frmConsulta4
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(cboZonas);
            Controls.Add(label2);
            Controls.Add(rbt1200);
            Controls.Add(rbt900);
            Controls.Add(rbt500);
            Controls.Add(label1);
            Controls.Add(btnConsultar);
            Controls.Add(dgvConsulta);
            Controls.Add(metroTile1);
            Name = "frmConsulta4";
            Text = "Consulta4";
            Load += Consulta4_Load;
            ((System.ComponentModel.ISupportInitialize)dgvConsulta).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private MetroFramework.Controls.MetroTile metroTile1;
        private DataGridView dgvConsulta;
        private Button btnConsultar;
        private Label label1;
        private RadioButton rbt500;
        private RadioButton rbt900;
        private RadioButton rbt1200;
        private Label label2;
        private ComboBox cboZonas;
    }
}