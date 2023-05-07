using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PH2
{
    public partial class NhanVien : Form
    {
        
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
        public NhanVien()
        {
            InitializeComponent();
            HienThi();
        }
        private void NhanVien_Load(object sender, EventArgs e)
        {
            try
            {
               
                HienThi();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Không thể kết nối đến cơ sở dữ liệu: " + ex.Message);
            }
        }

        private void NhanVien_FormClosing(object sender, FormClosingEventArgs e)
        {
            con.Close();
        }

        public void HienThi()
        {
            con.Open();
            OracleCommand cmd = new OracleCommand("SELECT * FROM QLNV_NHANVIEN", con);
            OracleDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            infoNV.DataSource = dt;
        }
    }
}
