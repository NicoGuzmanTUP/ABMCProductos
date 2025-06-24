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
            label1 = new Label();
            label2 = new Label();
            label3 = new Label();
            CboTipoContacto = new ComboBox();
            CboSucursal = new ComboBox();
            DgvEmpleadosInfo = new DataGridView();
            BtnConsultar = new Button();
            ((System.ComponentModel.ISupportInitialize)DgvEmpleadosInfo).BeginInit();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(220, 25);
            label1.Name = "label1";
            label1.Size = new Size(353, 15);
            label1.TabIndex = 0;
            label1.Text = "Empleados con tipo de contacto, sucursal y muestra ID supervisor";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(220, 79);
            label2.Name = "label2";
            label2.Size = new Size(82, 15);
            label2.TabIndex = 0;
            label2.Text = "Tipo Contacto";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(452, 79);
            label3.Name = "label3";
            label3.Size = new Size(51, 15);
            label3.TabIndex = 0;
            label3.Text = "Sucursal";
            // 
            // CboTipoContacto
            // 
            CboTipoContacto.DropDownStyle = ComboBoxStyle.DropDownList;
            CboTipoContacto.FormattingEnabled = true;
            CboTipoContacto.Location = new Point(220, 97);
            CboTipoContacto.Name = "CboTipoContacto";
            CboTipoContacto.Size = new Size(121, 23);
            CboTipoContacto.TabIndex = 1;
            // 
            // CboSucursal
            // 
            CboSucursal.DropDownStyle = ComboBoxStyle.DropDownList;
            CboSucursal.FormattingEnabled = true;
            CboSucursal.Location = new Point(452, 97);
            CboSucursal.Name = "CboSucursal";
            CboSucursal.Size = new Size(121, 23);
            CboSucursal.TabIndex = 1;
            // 
            // DgvEmpleadosInfo
            // 
            DgvEmpleadosInfo.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            DgvEmpleadosInfo.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            DgvEmpleadosInfo.Location = new Point(12, 146);
            DgvEmpleadosInfo.Name = "DgvEmpleadosInfo";
            DgvEmpleadosInfo.Size = new Size(776, 292);
            DgvEmpleadosInfo.TabIndex = 3;
            // 
            // BtnConsultar
            // 
            BtnConsultar.Location = new Point(679, 97);
            BtnConsultar.Name = "BtnConsultar";
            BtnConsultar.Size = new Size(75, 23);
            BtnConsultar.TabIndex = 4;
            BtnConsultar.Text = "Consultar";
            BtnConsultar.UseVisualStyleBackColor = true;
            BtnConsultar.Click += BtnConsultar_Click_1;
            // 
            // FrmConsulta5
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(BtnConsultar);
            Controls.Add(DgvEmpleadosInfo);
            Controls.Add(CboSucursal);
            Controls.Add(CboTipoContacto);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Name = "FrmConsulta5";
            Text = "Consulta 5";
            Load += FrmConsulta5_Load;
            ((System.ComponentModel.ISupportInitialize)DgvEmpleadosInfo).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Label label2;
        private Label label3;
        private ComboBox CboTipoContacto;
        private ComboBox CboSucursal;
        private DataGridView DgvEmpleadosInfo;
        private Button BtnConsultar;
    }
}