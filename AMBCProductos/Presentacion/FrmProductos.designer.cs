﻿namespace AMBCProductos.Presentacion
{
    partial class FrmProductos
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            LblNombre = new Label();
            LblMarca = new Label();
            pictureBox1 = new PictureBox();
            lblCategoria = new Label();
            txtNombre = new MetroFramework.Controls.MetroTextBox();
            btnSalir = new MetroFramework.Controls.MetroButton();
            btnNuevo = new MetroFramework.Controls.MetroButton();
            btnVer = new MetroFramework.Controls.MetroButton();
            btnActualizar = new MetroFramework.Controls.MetroButton();
            btnEliminar = new MetroFramework.Controls.MetroButton();
            cbTodos = new MetroFramework.Controls.MetroCheckBox();
            btnConsultar = new MetroFramework.Controls.MetroButton();
            metroPanel1 = new MetroFramework.Controls.MetroPanel();
            dgvProductos = new DataGridView();
            idProducto = new DataGridViewTextBoxColumn();
            nombre = new DataGridViewTextBoxColumn();
            tipoProducto = new DataGridViewTextBoxColumn();
            descripcion = new DataGridViewTextBoxColumn();
            CategoriaId = new DataGridViewTextBoxColumn();
            LimiteStock = new DataGridViewTextBoxColumn();
            comboBox1 = new ComboBox();
            comboBox2 = new ComboBox();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            metroPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dgvProductos).BeginInit();
            SuspendLayout();
            // 
            // LblNombre
            // 
            LblNombre.AutoSize = true;
            LblNombre.Location = new Point(83, 15);
            LblNombre.Margin = new Padding(4, 0, 4, 0);
            LblNombre.Name = "LblNombre";
            LblNombre.Size = new Size(54, 15);
            LblNombre.TabIndex = 1;
            LblNombre.Text = "Nombre:";
            // 
            // LblMarca
            // 
            LblMarca.AutoSize = true;
            LblMarca.Location = new Point(91, 72);
            LblMarca.Margin = new Padding(4, 0, 4, 0);
            LblMarca.Name = "LblMarca";
            LblMarca.Size = new Size(43, 15);
            LblMarca.TabIndex = 5;
            LblMarca.Text = "Marca:";
            // 
            // pictureBox1
            // 
            pictureBox1.Location = new Point(34, 70);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(241, 241);
            pictureBox1.TabIndex = 6;
            pictureBox1.TabStop = false;
            // 
            // lblCategoria
            // 
            lblCategoria.AutoSize = true;
            lblCategoria.Location = new Point(82, 140);
            lblCategoria.Margin = new Padding(4, 0, 4, 0);
            lblCategoria.Name = "lblCategoria";
            lblCategoria.Size = new Size(61, 15);
            lblCategoria.TabIndex = 22;
            lblCategoria.Text = "Categoría:";
            // 
            // txtNombre
            // 
            txtNombre.BackColor = SystemColors.ActiveCaption;
            txtNombre.FontSize = MetroFramework.MetroTextBoxSize.Small;
            txtNombre.FontWeight = MetroFramework.MetroTextBoxWeight.Regular;
            txtNombre.ForeColor = Color.Black;
            txtNombre.Location = new Point(19, 33);
            txtNombre.Multiline = true;
            txtNombre.Name = "txtNombre";
            txtNombre.SelectedText = "";
            txtNombre.Size = new Size(186, 23);
            txtNombre.Style = MetroFramework.MetroColorStyle.White;
            txtNombre.StyleManager = null;
            txtNombre.TabIndex = 23;
            txtNombre.Theme = MetroFramework.MetroThemeStyle.Light;
            txtNombre.UseStyleColors = false;
            // 
            // btnSalir
            // 
            btnSalir.Highlight = false;
            btnSalir.Location = new Point(1034, 338);
            btnSalir.Name = "btnSalir";
            btnSalir.Size = new Size(97, 78);
            btnSalir.Style = MetroFramework.MetroColorStyle.Blue;
            btnSalir.StyleManager = null;
            btnSalir.TabIndex = 26;
            btnSalir.Text = "Salir";
            btnSalir.Theme = MetroFramework.MetroThemeStyle.Light;
            btnSalir.Click += metroButton1_Click;
            // 
            // btnNuevo
            // 
            btnNuevo.Highlight = false;
            btnNuevo.Location = new Point(34, 338);
            btnNuevo.Name = "btnNuevo";
            btnNuevo.Size = new Size(118, 78);
            btnNuevo.Style = MetroFramework.MetroColorStyle.Blue;
            btnNuevo.StyleManager = null;
            btnNuevo.TabIndex = 27;
            btnNuevo.Text = "Nuevo";
            btnNuevo.Theme = MetroFramework.MetroThemeStyle.Light;
            btnNuevo.Click += btnNuevo_Click;
            // 
            // btnVer
            // 
            btnVer.Highlight = false;
            btnVer.Location = new Point(203, 338);
            btnVer.Name = "btnVer";
            btnVer.Size = new Size(118, 78);
            btnVer.Style = MetroFramework.MetroColorStyle.Blue;
            btnVer.StyleManager = null;
            btnVer.TabIndex = 28;
            btnVer.Text = "Ver";
            btnVer.Theme = MetroFramework.MetroThemeStyle.Light;
            // 
            // btnActualizar
            // 
            btnActualizar.Highlight = false;
            btnActualizar.Location = new Point(371, 338);
            btnActualizar.Name = "btnActualizar";
            btnActualizar.Size = new Size(118, 78);
            btnActualizar.Style = MetroFramework.MetroColorStyle.Blue;
            btnActualizar.StyleManager = null;
            btnActualizar.TabIndex = 29;
            btnActualizar.Text = "Actualizar";
            btnActualizar.Theme = MetroFramework.MetroThemeStyle.Light;
            btnActualizar.Click += btnActualizar_Click;
            // 
            // btnEliminar
            // 
            btnEliminar.Highlight = false;
            btnEliminar.Location = new Point(541, 338);
            btnEliminar.Name = "btnEliminar";
            btnEliminar.Size = new Size(118, 78);
            btnEliminar.Style = MetroFramework.MetroColorStyle.Blue;
            btnEliminar.StyleManager = null;
            btnEliminar.TabIndex = 30;
            btnEliminar.Text = "Eliminar";
            btnEliminar.Theme = MetroFramework.MetroThemeStyle.Light;
            // 
            // cbTodos
            // 
            cbTodos.AutoSize = true;
            cbTodos.CustomBackground = false;
            cbTodos.FontSize = MetroFramework.MetroLinkSize.Small;
            cbTodos.FontWeight = MetroFramework.MetroLinkWeight.Regular;
            cbTodos.Location = new Point(21, 210);
            cbTodos.Name = "cbTodos";
            cbTodos.Size = new Size(54, 15);
            cbTodos.Style = MetroFramework.MetroColorStyle.Blue;
            cbTodos.StyleManager = null;
            cbTodos.TabIndex = 31;
            cbTodos.Text = "Todos";
            cbTodos.Theme = MetroFramework.MetroThemeStyle.Light;
            cbTodos.UseStyleColors = false;
            cbTodos.UseVisualStyleBackColor = true;
            // 
            // btnConsultar
            // 
            btnConsultar.Highlight = false;
            btnConsultar.Location = new Point(110, 206);
            btnConsultar.Name = "btnConsultar";
            btnConsultar.Size = new Size(97, 22);
            btnConsultar.Style = MetroFramework.MetroColorStyle.Blue;
            btnConsultar.StyleManager = null;
            btnConsultar.TabIndex = 32;
            btnConsultar.Text = "Consultar";
            btnConsultar.Theme = MetroFramework.MetroThemeStyle.Light;
            btnConsultar.Click += metroButton6_Click;
            // 
            // metroPanel1
            // 
            metroPanel1.Controls.Add(comboBox2);
            metroPanel1.Controls.Add(comboBox1);
            metroPanel1.Controls.Add(btnConsultar);
            metroPanel1.Controls.Add(cbTodos);
            metroPanel1.Controls.Add(txtNombre);
            metroPanel1.Controls.Add(LblNombre);
            metroPanel1.Controls.Add(LblMarca);
            metroPanel1.Controls.Add(lblCategoria);
            metroPanel1.CustomBackground = false;
            metroPanel1.HorizontalScrollbar = false;
            metroPanel1.HorizontalScrollbarBarColor = true;
            metroPanel1.HorizontalScrollbarHighlightOnWheel = false;
            metroPanel1.HorizontalScrollbarSize = 10;
            metroPanel1.Location = new Point(979, 70);
            metroPanel1.Name = "metroPanel1";
            metroPanel1.Size = new Size(224, 241);
            metroPanel1.Style = MetroFramework.MetroColorStyle.Blue;
            metroPanel1.StyleManager = null;
            metroPanel1.TabIndex = 34;
            metroPanel1.Theme = MetroFramework.MetroThemeStyle.Light;
            metroPanel1.VerticalScrollbar = false;
            metroPanel1.VerticalScrollbarBarColor = true;
            metroPanel1.VerticalScrollbarHighlightOnWheel = false;
            metroPanel1.VerticalScrollbarSize = 10;
            // 
            // dgvProductos
            // 
            dgvProductos.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvProductos.Columns.AddRange(new DataGridViewColumn[] { idProducto, nombre, tipoProducto, descripcion, CategoriaId, LimiteStock });
            dgvProductos.Location = new Point(301, 70);
            dgvProductos.Name = "dgvProductos";
            dgvProductos.Size = new Size(661, 241);
            dgvProductos.TabIndex = 35;
            // 
            // idProducto
            // 
            idProducto.HeaderText = "Código";
            idProducto.Name = "idProducto";
            // 
            // nombre
            // 
            nombre.HeaderText = "Producto";
            nombre.Name = "nombre";
            // 
            // tipoProducto
            // 
            tipoProducto.HeaderText = "tipo de Producto";
            tipoProducto.Name = "tipoProducto";
            // 
            // descripcion
            // 
            descripcion.HeaderText = "Marca";
            descripcion.Name = "descripcion";
            // 
            // CategoriaId
            // 
            CategoriaId.HeaderText = "Categoría ";
            CategoriaId.Name = "CategoriaId";
            // 
            // LimiteStock
            // 
            LimiteStock.HeaderText = "limite";
            LimiteStock.Name = "LimiteStock";
            // 
            // comboBox1
            // 
            comboBox1.FormattingEnabled = true;
            comboBox1.Location = new Point(19, 99);
            comboBox1.Name = "comboBox1";
            comboBox1.Size = new Size(186, 23);
            comboBox1.TabIndex = 33;
            // 
            // comboBox2
            // 
            comboBox2.FormattingEnabled = true;
            comboBox2.Location = new Point(19, 165);
            comboBox2.Name = "comboBox2";
            comboBox2.Size = new Size(186, 23);
            comboBox2.TabIndex = 34;
            // 
            // FrmProductos
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1240, 437);
            Controls.Add(dgvProductos);
            Controls.Add(metroPanel1);
            Controls.Add(btnEliminar);
            Controls.Add(btnActualizar);
            Controls.Add(btnVer);
            Controls.Add(btnNuevo);
            Controls.Add(btnSalir);
            Controls.Add(pictureBox1);
            Margin = new Padding(4);
            Name = "FrmProductos";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Productos";
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            metroPanel1.ResumeLayout(false);
            metroPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dgvProductos).EndInit();
            ResumeLayout(false);
        }

        #endregion
        private Label LblNombre;
        private Label LblMarca;
        private PictureBox pictureBox1;
        private Label lblCategoria;
        private MetroFramework.Controls.MetroTextBox txtNombre;
        private MetroFramework.Controls.MetroButton btnSalir;
        private MetroFramework.Controls.MetroButton btnNuevo;
        private MetroFramework.Controls.MetroButton btnVer;
        private MetroFramework.Controls.MetroButton btnActualizar;
        private MetroFramework.Controls.MetroButton btnEliminar;
        private MetroFramework.Controls.MetroCheckBox cbTodos;
        private MetroFramework.Controls.MetroButton btnConsultar;
        private MetroFramework.Controls.MetroPanel metroPanel1;
        private DataGridView dgvProductos;
        private DataGridViewTextBoxColumn idProducto;
        private DataGridViewTextBoxColumn nombre;
        private DataGridViewTextBoxColumn tipoProducto;
        private DataGridViewTextBoxColumn descripcion;
        private DataGridViewTextBoxColumn CategoriaId;
        private DataGridViewTextBoxColumn LimiteStock;
        private ComboBox comboBox2;
        private ComboBox comboBox1;
    }
}

