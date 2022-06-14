using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Database2.mdf;Integrated Security=True");
        private  void ShowMed()
        {
            con.Open();
            String query = "select * from [TABLE]";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            SqlCommandBuilder build = new SqlCommandBuilder(sda);
            var ds = new DataSet();
            sda.Fill(ds);
            mgrid.DataSource = ds.Tables[0];
            mgrid.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        protected void insert_Click(object sender, EventArgs e)
        {
            int q, p;
            q = Convert.ToInt32(qty.Text);
            p = Convert.ToInt32(price.Text);
            String ins = "Insert into [Table](MedName, MedCategory, MedQuantity, MedPrice) values ('" + Nmed.Text + "','" + DropDownList1.SelectedValue + "','" + q + "','"+p+"')";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Medicine Inserted');", true);
            con.Close();
        }

        protected void update_Click(object sender, EventArgs e)
        {
            int q, p;
            q = Convert.ToInt32(qty.Text);
            p = Convert.ToInt32(price.Text);
            String ins = "update [Table] set MedCategory='" + DropDownList1.SelectedValue + "', MedQuantity='" + q + "', MedPrice='" + p + "' where MedName = '"+Nmed.Text+"'";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Medicine Updated');", true);
            con.Close();

        }


        protected void view_Click(object sender, EventArgs e)
        {
            con.Open();
            String query = "select * from [TABLE]";
            SqlDataAdapter sda = new SqlDataAdapter(query,con);
            SqlCommandBuilder build = new SqlCommandBuilder(sda);
            var ds = new DataSet();
            sda.Fill(ds);
            mgrid.DataSource = ds.Tables[0];
            mgrid.DataBind();
            con.Close();
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            String ins = "delete from [Table] where MedName = '" + Nmed.Text + "'";
            SqlCommand com = new SqlCommand(ins, con);
            con.Open();
            com.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Script", "alert('Medicine Deleted');", true);
            con.Close();
        }
    }
}