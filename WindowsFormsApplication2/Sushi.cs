using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication2
{
    public partial class Sushi : Form
    {
        public Sushi()
        {
            InitializeComponent();
        }

        private void SushiForm_Load(object sender, EventArgs e)
        {
            // TODO: данная строка кода позволяет загрузить данные в таблицу "sushiKrayushkinaDataSet.PostNumber". При необходимости она может быть перемещена или удалена.
            this.postNumberTableAdapter.Fill(this.sushiKrayushkinaDataSet.PostNumber);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "sushiKrayushkinaDataSet.DocumentNumber". При необходимости она может быть перемещена или удалена.
            this.documentNumberTableAdapter.Fill(this.sushiKrayushkinaDataSet.DocumentNumber);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "sushiKrayushkinaDataSet.AdressNumber". При необходимости она может быть перемещена или удалена.
            this.adressNumberTableAdapter.Fill(this.sushiKrayushkinaDataSet.AdressNumber);

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

       
    }
}
