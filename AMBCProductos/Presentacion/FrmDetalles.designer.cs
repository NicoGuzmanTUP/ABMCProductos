namespace AMBCProductos.Presentacion
{
    partial class FrmDetalles
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
            GrbDetalles = new GroupBox();
            cboCategoria = new ComboBox();
            cboMarca = new ComboBox();
            cboTipoProducto = new ComboBox();
            nudLimite = new NumericUpDown();
            label5 = new Label();
            nudPeso = new NumericUpDown();
            label4 = new Label();
            label3 = new Label();
            label2 = new Label();
            label1 = new Label();
            txtDescripcion = new TextBox();
            TxtNombre = new TextBox();
            TxtCodigo = new TextBox();
            LblAutor = new Label();
            LblNombre = new Label();
            LblCodigo = new Label();
            btnAceptar = new MetroFramework.Controls.MetroButton();
            btnCancelar = new MetroFramework.Controls.MetroButton();
            GrbDetalles.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)nudLimite).BeginInit();
            ((System.ComponentModel.ISupportInitialize)nudPeso).BeginInit();
            SuspendLayout();
            // 
            // GrbDetalles
            // 
            GrbDetalles.Controls.Add(cboCategoria);
            GrbDetalles.Controls.Add(cboMarca);
            GrbDetalles.Controls.Add(cboTipoProducto);
            GrbDetalles.Controls.Add(nudLimite);
            GrbDetalles.Controls.Add(label5);
            GrbDetalles.Controls.Add(nudPeso);
            GrbDetalles.Controls.Add(label4);
            GrbDetalles.Controls.Add(label3);
            GrbDetalles.Controls.Add(label2);
            GrbDetalles.Controls.Add(label1);
            GrbDetalles.Controls.Add(txtDescripcion);
            GrbDetalles.Controls.Add(TxtNombre);
            GrbDetalles.Controls.Add(TxtCodigo);
            GrbDetalles.Controls.Add(LblAutor);
            GrbDetalles.Controls.Add(LblNombre);
            GrbDetalles.Controls.Add(LblCodigo);
            GrbDetalles.Location = new Point(32, 29);
            GrbDetalles.Margin = new Padding(4);
            GrbDetalles.Name = "GrbDetalles";
            GrbDetalles.Padding = new Padding(4);
            GrbDetalles.Size = new Size(420, 423);
            GrbDetalles.TabIndex = 35;
            GrbDetalles.TabStop = false;
            GrbDetalles.Text = "Detalles";
            // 
            // cboCategoria
            // 
            cboCategoria.FormattingEnabled = true;
            cboCategoria.Location = new Point(158, 273);
            cboCategoria.Name = "cboCategoria";
            cboCategoria.Size = new Size(214, 23);
            cboCategoria.TabIndex = 56;
            // 
            // cboMarca
            // 
            cboMarca.FormattingEnabled = true;
            cboMarca.Location = new Point(158, 219);
            cboMarca.Name = "cboMarca";
            cboMarca.Size = new Size(214, 23);
            cboMarca.TabIndex = 55;
            // 
            // cboTipoProducto
            // 
            cboTipoProducto.FormattingEnabled = true;
            cboTipoProducto.Location = new Point(158, 170);
            cboTipoProducto.Name = "cboTipoProducto";
            cboTipoProducto.Size = new Size(215, 23);
            cboTipoProducto.TabIndex = 54;
            // 
            // nudLimite
            // 
            nudLimite.Location = new Point(157, 372);
            nudLimite.Name = "nudLimite";
            nudLimite.Size = new Size(65, 23);
            nudLimite.TabIndex = 53;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(29, 376);
            label5.Margin = new Padding(4, 0, 4, 0);
            label5.Name = "label5";
            label5.Size = new Size(88, 15);
            label5.TabIndex = 52;
            label5.Text = "Limite de Stock";
            // 
            // nudPeso
            // 
            nudPeso.Location = new Point(157, 323);
            nudPeso.Name = "nudPeso";
            nudPeso.Size = new Size(65, 23);
            nudPeso.TabIndex = 51;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(29, 327);
            label4.Margin = new Padding(4, 0, 4, 0);
            label4.Name = "label4";
            label4.Size = new Size(32, 15);
            label4.TabIndex = 50;
            label4.Text = "Peso";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(29, 277);
            label3.Margin = new Padding(4, 0, 4, 0);
            label3.Name = "label3";
            label3.Size = new Size(58, 15);
            label3.TabIndex = 48;
            label3.Text = "Categoria";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(29, 223);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(40, 15);
            label2.TabIndex = 46;
            label2.Text = "Marca";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(29, 174);
            label1.Margin = new Padding(4, 0, 4, 0);
            label1.Name = "label1";
            label1.Size = new Size(99, 15);
            label1.TabIndex = 44;
            label1.Text = "Tipo De Producto";
            // 
            // txtDescripcion
            // 
            txtDescripcion.Location = new Point(158, 120);
            txtDescripcion.Margin = new Padding(4);
            txtDescripcion.Name = "txtDescripcion";
            txtDescripcion.Size = new Size(215, 23);
            txtDescripcion.TabIndex = 43;
            // 
            // TxtNombre
            // 
            TxtNombre.Location = new Point(157, 76);
            TxtNombre.Margin = new Padding(4);
            TxtNombre.Name = "TxtNombre";
            TxtNombre.Size = new Size(215, 23);
            TxtNombre.TabIndex = 32;
            // 
            // TxtCodigo
            // 
            TxtCodigo.Enabled = false;
            TxtCodigo.Location = new Point(157, 35);
            TxtCodigo.Margin = new Padding(4);
            TxtCodigo.Name = "TxtCodigo";
            TxtCodigo.Size = new Size(116, 23);
            TxtCodigo.TabIndex = 30;
            // 
            // LblAutor
            // 
            LblAutor.AutoSize = true;
            LblAutor.Location = new Point(29, 124);
            LblAutor.Margin = new Padding(4, 0, 4, 0);
            LblAutor.Name = "LblAutor";
            LblAutor.Size = new Size(69, 15);
            LblAutor.TabIndex = 35;
            LblAutor.Text = "Descripcion";
            // 
            // LblNombre
            // 
            LblNombre.AutoSize = true;
            LblNombre.Location = new Point(29, 80);
            LblNombre.Margin = new Padding(4, 0, 4, 0);
            LblNombre.Name = "LblNombre";
            LblNombre.Size = new Size(51, 15);
            LblNombre.TabIndex = 33;
            LblNombre.Text = "Nombre";
            // 
            // LblCodigo
            // 
            LblCodigo.AutoSize = true;
            LblCodigo.Location = new Point(29, 38);
            LblCodigo.Margin = new Padding(4, 0, 4, 0);
            LblCodigo.Name = "LblCodigo";
            LblCodigo.Size = new Size(46, 15);
            LblCodigo.TabIndex = 31;
            LblCodigo.Text = "Código";
            // 
            // btnAceptar
            // 
            btnAceptar.BackColor = SystemColors.ActiveCaption;
            btnAceptar.Highlight = false;
            btnAceptar.Location = new Point(98, 478);
            btnAceptar.Name = "btnAceptar";
            btnAceptar.Size = new Size(94, 55);
            btnAceptar.Style = MetroFramework.MetroColorStyle.Blue;
            btnAceptar.StyleManager = null;
            btnAceptar.TabIndex = 54;
            btnAceptar.Text = "Aceptar";
            btnAceptar.Theme = MetroFramework.MetroThemeStyle.Light;
            btnAceptar.UseVisualStyleBackColor = false;
            // 
            // btnCancelar
            // 
            btnCancelar.Highlight = false;
            btnCancelar.Location = new Point(290, 478);
            btnCancelar.Name = "btnCancelar";
            btnCancelar.Size = new Size(94, 55);
            btnCancelar.Style = MetroFramework.MetroColorStyle.Blue;
            btnCancelar.StyleManager = null;
            btnCancelar.TabIndex = 55;
            btnCancelar.Text = "Cancelar";
            btnCancelar.Theme = MetroFramework.MetroThemeStyle.Light;
            // 
            // FrmDetalles
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(488, 558);
            Controls.Add(btnCancelar);
            Controls.Add(btnAceptar);
            Controls.Add(GrbDetalles);
            Margin = new Padding(4);
            Name = "FrmDetalles";
            Text = "FrmDetalles";
            Load += FrmDetalles_Load;
            GrbDetalles.ResumeLayout(false);
            GrbDetalles.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)nudLimite).EndInit();
            ((System.ComponentModel.ISupportInitialize)nudPeso).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private System.Windows.Forms.GroupBox GrbDetalles;
        private System.Windows.Forms.TextBox TxtNombre;
        private System.Windows.Forms.TextBox TxtCodigo;
        private System.Windows.Forms.Label LblAutor;
        private System.Windows.Forms.Label LblNombre;
        private System.Windows.Forms.Label LblCodigo;
        private Label label1;
        private TextBox txtDescripcion;
        private NumericUpDown nudPeso;
        private Label label4;
        private Label label3;
        private Label label2;
        private NumericUpDown nudLimite;
        private Label label5;
        private MetroFramework.Controls.MetroButton btnAceptar;
        private MetroFramework.Controls.MetroButton btnCancelar;
        private ComboBox cboTipoProducto;
        private ComboBox cboCategoria;
        private ComboBox cboMarca;
    }
}