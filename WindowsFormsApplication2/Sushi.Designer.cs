namespace WindowsFormsApplication2
{
    partial class Sushi
    {
        /// <summary>
        /// Требуется переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Обязательный метод для поддержки конструктора - не изменяйте
        /// содержимое данного метода при помощи редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.sushiKrayushkinaDataSet = new WindowsFormsApplication2.SushiKrayushkinaDataSet();
            this.adressNumberBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.adressNumberTableAdapter = new WindowsFormsApplication2.SushiKrayushkinaDataSetTableAdapters.AdressNumberTableAdapter();
            this.documentNumberBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.documentNumberTableAdapter = new WindowsFormsApplication2.SushiKrayushkinaDataSetTableAdapters.DocumentNumberTableAdapter();
            this.postNumberBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.postNumberTableAdapter = new WindowsFormsApplication2.SushiKrayushkinaDataSetTableAdapters.PostNumberTableAdapter();
            this.idPostDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.descriptionDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.salaryDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sushiKrayushkinaDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.adressNumberBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.documentNumberBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.postNumberBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(44, 22);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 0;
            this.button1.Text = "Add";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(174, 22);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 1;
            this.button2.Text = "Edit";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(301, 22);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(75, 23);
            this.button3.TabIndex = 2;
            this.button3.Text = "Remove";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idPostDataGridViewTextBoxColumn,
            this.descriptionDataGridViewTextBoxColumn,
            this.salaryDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.postNumberBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(33, 71);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(738, 213);
            this.dataGridView1.TabIndex = 3;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // sushiKrayushkinaDataSet
            // 
            this.sushiKrayushkinaDataSet.DataSetName = "SushiKrayushkinaDataSet";
            this.sushiKrayushkinaDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // adressNumberBindingSource
            // 
            this.adressNumberBindingSource.DataMember = "AdressNumber";
            this.adressNumberBindingSource.DataSource = this.sushiKrayushkinaDataSet;
            // 
            // adressNumberTableAdapter
            // 
            this.adressNumberTableAdapter.ClearBeforeFill = true;
            // 
            // documentNumberBindingSource
            // 
            this.documentNumberBindingSource.DataMember = "DocumentNumber";
            this.documentNumberBindingSource.DataSource = this.sushiKrayushkinaDataSet;
            // 
            // documentNumberTableAdapter
            // 
            this.documentNumberTableAdapter.ClearBeforeFill = true;
            // 
            // postNumberBindingSource
            // 
            this.postNumberBindingSource.DataMember = "PostNumber";
            this.postNumberBindingSource.DataSource = this.sushiKrayushkinaDataSet;
            // 
            // postNumberTableAdapter
            // 
            this.postNumberTableAdapter.ClearBeforeFill = true;
            // 
            // idPostDataGridViewTextBoxColumn
            // 
            this.idPostDataGridViewTextBoxColumn.DataPropertyName = "idPost";
            this.idPostDataGridViewTextBoxColumn.HeaderText = "idPost";
            this.idPostDataGridViewTextBoxColumn.Name = "idPostDataGridViewTextBoxColumn";
            this.idPostDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // descriptionDataGridViewTextBoxColumn
            // 
            this.descriptionDataGridViewTextBoxColumn.DataPropertyName = "description";
            this.descriptionDataGridViewTextBoxColumn.HeaderText = "description";
            this.descriptionDataGridViewTextBoxColumn.Name = "descriptionDataGridViewTextBoxColumn";
            // 
            // salaryDataGridViewTextBoxColumn
            // 
            this.salaryDataGridViewTextBoxColumn.DataPropertyName = "salary";
            this.salaryDataGridViewTextBoxColumn.HeaderText = "salary";
            this.salaryDataGridViewTextBoxColumn.Name = "salaryDataGridViewTextBoxColumn";
            // 
            // Sushi
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(809, 333);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Name = "Sushi";
            this.Text = "Sushi";
            this.Load += new System.EventHandler(this.SushiForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sushiKrayushkinaDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.adressNumberBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.documentNumberBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.postNumberBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.DataGridView dataGridView1;
        private SushiKrayushkinaDataSet sushiKrayushkinaDataSet;
        private System.Windows.Forms.BindingSource adressNumberBindingSource;
        private SushiKrayushkinaDataSetTableAdapters.AdressNumberTableAdapter adressNumberTableAdapter;
        private System.Windows.Forms.BindingSource documentNumberBindingSource;
        private SushiKrayushkinaDataSetTableAdapters.DocumentNumberTableAdapter documentNumberTableAdapter;
        private System.Windows.Forms.BindingSource postNumberBindingSource;
        private SushiKrayushkinaDataSetTableAdapters.PostNumberTableAdapter postNumberTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn idPostDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn descriptionDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn salaryDataGridViewTextBoxColumn;
    }
}

