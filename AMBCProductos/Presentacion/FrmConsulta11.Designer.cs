namespace AMBCProductos.Presentacion
{
    partial class FrmConsulta11
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
            dgvConsulta11 = new Krypton.Toolkit.KryptonDataGridView();
            btnConsultar2 = new Krypton.Toolkit.KryptonButton();
            label1 = new Label();
            radioButton1 = new RadioButton();
            radioButton2 = new RadioButton();
            radioButton3 = new RadioButton();
            label2 = new Label();
            nmStock = new NumericUpDown();
            ((System.ComponentModel.ISupportInitialize)dgvConsulta11).BeginInit();
            ((System.ComponentModel.ISupportInitialize)nmStock).BeginInit();
            SuspendLayout();
            // 
            // dgvConsulta11
            // 
            dgvConsulta11.BorderStyle = BorderStyle.None;
            dgvConsulta11.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvConsulta11.Location = new Point(34, 124);
            dgvConsulta11.Margin = new Padding(4, 5, 4, 5);
            dgvConsulta11.Name = "dgvConsulta11";
            dgvConsulta11.RowHeadersWidth = 62;
            dgvConsulta11.Size = new Size(804, 374);
            dgvConsulta11.TabIndex = 14;
            dgvConsulta11.CellContentClick += dgvTransportistas_CellContentClick;
            // 
            // btnConsultar2
            // 
            btnConsultar2.Location = new Point(869, 457);
            btnConsultar2.Margin = new Padding(4, 5, 4, 5);
            btnConsultar2.Name = "btnConsultar2";
            btnConsultar2.Size = new Size(175, 41);
            btnConsultar2.TabIndex = 21;
            btnConsultar2.Values.Text = "Consultar";
            btnConsultar2.Click += btnConsultar2_Click;
            // 
            // label1
            // 
            label1.BackColor = SystemColors.GradientActiveCaption;
            label1.Font = new Font("Segoe UI Light", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label1.Location = new Point(34, 18);
            label1.Name = "label1";
            label1.RightToLeft = RightToLeft.No;
            label1.Size = new Size(1010, 27);
            label1.TabIndex = 16;
            label1.Text = "Productos de categorías gourmet, granel e importados con stock entre 100 y 300 unidades, excluyendo aquellos sin peso registrado.";
            label1.Click += label1_Click;
            // 
            // radioButton1
            // 
            radioButton1.AutoSize = true;
            radioButton1.Font = new Font("Calibri", 10F, FontStyle.Regular, GraphicsUnit.Point, 0);
            radioButton1.Location = new Point(41, 75);
            radioButton1.Name = "radioButton1";
            radioButton1.Size = new Size(110, 28);
            radioButton1.TabIndex = 17;
            radioButton1.TabStop = true;
            radioButton1.Text = "Gourmet";
            radioButton1.UseVisualStyleBackColor = true;
            // 
            // radioButton2
            // 
            radioButton2.AutoSize = true;
            radioButton2.Font = new Font("Calibri", 10F, FontStyle.Regular, GraphicsUnit.Point, 0);
            radioButton2.Location = new Point(157, 75);
            radioButton2.Name = "radioButton2";
            radioButton2.Size = new Size(91, 28);
            radioButton2.TabIndex = 18;
            radioButton2.TabStop = true;
            radioButton2.Text = "Granel";
            radioButton2.UseVisualStyleBackColor = true;
            radioButton2.CheckedChanged += radioButton2_CheckedChanged;
            // 
            // radioButton3
            // 
            radioButton3.AutoSize = true;
            radioButton3.Font = new Font("Calibri", 10F, FontStyle.Regular, GraphicsUnit.Point, 0);
            radioButton3.Location = new Point(254, 75);
            radioButton3.Name = "radioButton3";
            radioButton3.Size = new Size(124, 28);
            radioButton3.TabIndex = 19;
            radioButton3.TabStop = true;
            radioButton3.Text = "Importado";
            radioButton3.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Calibri", 10F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label2.Location = new Point(670, 79);
            label2.Name = "label2";
            label2.Size = new Size(59, 24);
            label2.TabIndex = 21;
            label2.Text = "Stock:";
            // 
            // nmStock
            // 
            nmStock.Font = new Font("Calibri", 10F, FontStyle.Bold, GraphicsUnit.Point, 0);
            nmStock.Location = new Point(736, 74);
            nmStock.Margin = new Padding(4, 5, 4, 5);
            nmStock.Name = "nmStock";
            nmStock.Size = new Size(102, 32);
            nmStock.TabIndex = 22;
            nmStock.ValueChanged += nmPeso_ValueChanged;
            // 
            // FrmConsulta11
            // 
            AutoScaleDimensions = new SizeF(15F, 32F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1057, 526);
            Controls.Add(nmStock);
            Controls.Add(label2);
            Controls.Add(radioButton3);
            Controls.Add(radioButton2);
            Controls.Add(radioButton1);
            Controls.Add(label1);
            Controls.Add(btnConsultar2);
            Controls.Add(dgvConsulta11);
            Font = new Font("Segoe UI Black", 12F, FontStyle.Bold, GraphicsUnit.Point, 0);
            Margin = new Padding(4);
            Name = "FrmConsulta11";
            Text = "Consulta 11";
            Load += FrmConsulta11_Load;
            ((System.ComponentModel.ISupportInitialize)dgvConsulta11).EndInit();
            ((System.ComponentModel.ISupportInitialize)nmStock).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion
        private Krypton.Toolkit.KryptonDataGridView dgvConsulta11;
        private Krypton.Toolkit.KryptonButton btnConsultar2;
        private Label label1;
        private RadioButton radioButton1;
        private RadioButton radioButton2;
        private RadioButton radioButton3;
        private Label label2;
        private NumericUpDown nmStock;
    }
}