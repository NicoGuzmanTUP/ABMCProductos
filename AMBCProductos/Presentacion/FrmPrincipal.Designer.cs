namespace AMBCProductos.Presentacion
{
    partial class FrmPrincipal
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmPrincipal));
            menuStrip1 = new MenuStrip();
            archivoToolStripMenuItem = new ToolStripMenuItem();
            toolStripMenuItem1 = new ToolStripMenuItem();
            soporteToolStripMenuItem = new ToolStripMenuItem();
            generosToolStripMenuItem = new ToolStripMenuItem();
            consultasToolStripMenuItem = new ToolStripMenuItem();
            consulta1ToolStripMenuItem = new ToolStripMenuItem();
            consulta2ToolStripMenuItem = new ToolStripMenuItem();
            aCercaDeToolStripMenuItem = new ToolStripMenuItem();
            facundoNicolásGuzmánOlariagaToolStripMenuItem = new ToolStripMenuItem();
            chamorroToolStripMenuItem = new ToolStripMenuItem();
            pictureBox1 = new PictureBox();
            monierAxelAugustoToolStripMenuItem = new ToolStripMenuItem();
            menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            SuspendLayout();
            // 
            // menuStrip1
            // 
            menuStrip1.Font = new Font("Segoe UI", 9F);
            menuStrip1.ImageScalingSize = new Size(20, 20);
            menuStrip1.Items.AddRange(new ToolStripItem[] { archivoToolStripMenuItem, soporteToolStripMenuItem, consultasToolStripMenuItem, aCercaDeToolStripMenuItem });
            menuStrip1.Location = new Point(0, 0);
            menuStrip1.Name = "menuStrip1";
            menuStrip1.Padding = new Padding(5, 2, 0, 2);
            menuStrip1.Size = new Size(705, 24);
            menuStrip1.TabIndex = 0;
            menuStrip1.Text = "menuStrip1";
            // 
            // archivoToolStripMenuItem
            // 
            archivoToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { toolStripMenuItem1 });
            archivoToolStripMenuItem.Name = "archivoToolStripMenuItem";
            archivoToolStripMenuItem.Size = new Size(60, 20);
            archivoToolStripMenuItem.Text = "Archivo";
            // 
            // toolStripMenuItem1
            // 
            toolStripMenuItem1.Name = "toolStripMenuItem1";
            toolStripMenuItem1.Size = new Size(96, 22);
            toolStripMenuItem1.Text = "Salir";
            toolStripMenuItem1.Click += toolStripMenuItem1_Click;
            // 
            // soporteToolStripMenuItem
            // 
            soporteToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { generosToolStripMenuItem });
            soporteToolStripMenuItem.Name = "soporteToolStripMenuItem";
            soporteToolStripMenuItem.Size = new Size(60, 20);
            soporteToolStripMenuItem.Text = "Soporte";
            // 
            // generosToolStripMenuItem
            // 
            generosToolStripMenuItem.Name = "generosToolStripMenuItem";
            generosToolStripMenuItem.Size = new Size(165, 22);
            generosToolStripMenuItem.Text = "ABMC Productos";
            generosToolStripMenuItem.Click += generosToolStripMenuItem_Click;
            // 
            // consultasToolStripMenuItem
            // 
            consultasToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { consulta1ToolStripMenuItem, consulta2ToolStripMenuItem });
            consultasToolStripMenuItem.Name = "consultasToolStripMenuItem";
            consultasToolStripMenuItem.Size = new Size(71, 20);
            consultasToolStripMenuItem.Text = "Consultas";
            // 
            // consulta1ToolStripMenuItem
            // 
            consulta1ToolStripMenuItem.Name = "consulta1ToolStripMenuItem";
            consulta1ToolStripMenuItem.Size = new Size(267, 22);
            consulta1ToolStripMenuItem.Text = "Transportistas con entregas a tiempo";
            consulta1ToolStripMenuItem.Click += consulta1ToolStripMenuItem_Click;
            // 
            // consulta2ToolStripMenuItem
            // 
            consulta2ToolStripMenuItem.Name = "consulta2ToolStripMenuItem";
            consulta2ToolStripMenuItem.Size = new Size(267, 22);
            consulta2ToolStripMenuItem.Text = "Consulta 2";
            consulta2ToolStripMenuItem.Click += consulta2ToolStripMenuItem_Click;
            // 
            // aCercaDeToolStripMenuItem
            // 
            aCercaDeToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { facundoNicolásGuzmánOlariagaToolStripMenuItem, chamorroToolStripMenuItem, monierAxelAugustoToolStripMenuItem });
            aCercaDeToolStripMenuItem.Name = "aCercaDeToolStripMenuItem";
            aCercaDeToolStripMenuItem.Size = new Size(83, 20);
            aCercaDeToolStripMenuItem.Text = "A cerca de...";
            // 
            // facundoNicolásGuzmánOlariagaToolStripMenuItem
            // 
            facundoNicolásGuzmánOlariagaToolStripMenuItem.Name = "facundoNicolásGuzmánOlariagaToolStripMenuItem";
            facundoNicolásGuzmánOlariagaToolStripMenuItem.Size = new Size(256, 22);
            facundoNicolásGuzmánOlariagaToolStripMenuItem.Text = "Facundo Nicolás Guzmán Olariaga";
            facundoNicolásGuzmánOlariagaToolStripMenuItem.Click += facundoNicolásGuzmánOlariagaToolStripMenuItem_Click;
            // 
            // chamorroToolStripMenuItem
            // 
            chamorroToolStripMenuItem.Name = "chamorroToolStripMenuItem";
            chamorroToolStripMenuItem.Size = new Size(256, 22);
            chamorroToolStripMenuItem.Text = "Chamorro Crettino Bautista";
            chamorroToolStripMenuItem.Click += chamorroToolStripMenuItem_Click;
            // 
            // pictureBox1
            // 
            pictureBox1.Image = (Image)resources.GetObject("pictureBox1.Image");
            pictureBox1.InitialImage = null;
            pictureBox1.Location = new Point(138, 48);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(429, 362);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 1;
            pictureBox1.TabStop = false;
            // 
            // monierAxelAugustoToolStripMenuItem
            // 
            monierAxelAugustoToolStripMenuItem.Name = "monierAxelAugustoToolStripMenuItem";
            monierAxelAugustoToolStripMenuItem.Size = new Size(256, 22);
            monierAxelAugustoToolStripMenuItem.Text = "Monier Axel Augusto";
            monierAxelAugustoToolStripMenuItem.Click += monierAxelAugustoToolStripMenuItem_Click;
            // 
            // FrmPrincipal
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = SystemColors.ButtonHighlight;
            ClientSize = new Size(705, 440);
            Controls.Add(pictureBox1);
            Controls.Add(menuStrip1);
            MainMenuStrip = menuStrip1;
            Margin = new Padding(4);
            Name = "FrmPrincipal";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "FrmPrincipal";
            Load += FrmPrincipal_Load;
            menuStrip1.ResumeLayout(false);
            menuStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem archivoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem soporteToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consultasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem aCercaDeToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem consulta1ToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem generosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem consulta2ToolStripMenuItem;
        private PictureBox pictureBox1;
        private ToolStripMenuItem facundoNicolásGuzmánOlariagaToolStripMenuItem;
        private ToolStripMenuItem chamorroToolStripMenuItem;
        private ToolStripMenuItem monierAxelAugustoToolStripMenuItem;
    }
}