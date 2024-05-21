using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myproject
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\itamarDatabase.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["addprouduct"] = false;
            //login
            if (Session["username"] != null)
            {
                Label4.Text = "Logged in as " + Session["username"].ToString();
                HyperLink1.Visible = false;
                Button1.Visible = true;
            }
            else
            {
                Label4.Text = "Hi You Can Login Here <3";
                HyperLink1.Visible = true;
                Button1.Visible = false;
            }
            if (!IsPostBack)
            {
                Drp_ProductCategory();
            }
        }

        //logout button
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Catalog.aspx");
            Label4.Text = "You Have Been Loged Out Successfully";
        }

        //search by name and category
        protected void ProductCategories_SelectedIndexChanged(object sender, EventArgs e)
        {
            string strQuery = "";
            string selectedProduct = ProductCategories.SelectedItem.Text;
            if (selectedProduct == "Product Category")
            {
                strQuery = "";
            }
            else
            {
                strQuery = "where Pcategory='" + selectedProduct + "' ";
            }
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 " + strQuery + " ", conn);
            DataTable table = new DataTable();
            sda.Fill(table);
            try
            {
                if (selectedProduct == table.Rows[0][6].ToString())
                {
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('No product found')</script>");
            }
            DataList1.DataSourceID = null;
            DataList1.DataSource = table;
            DataList1.DataBind();
        }

        //passing data 
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 where (Pname like '%" + TextBox1.Text + "%') or (Pcategory like '%" + TextBox1.Text + "%')", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            DataList1.DataSourceID = null;
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        //displaying quantity
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            Session["addproduct"] = true;
            if (e.CommandName == "AddToCart")
            {
                DropDownList list = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("AddToCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + list.SelectedItem.ToString());
            }
        }

        //product categories in dropdown list
        public void Drp_ProductCategory()
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Category", conn);
            ProductCategories.DataSource = cmd.ExecuteReader();
            ProductCategories.DataTextField = "CategoryName";
            ProductCategories.DataValueField = "CategoryId";
            ProductCategories.DataBind();
            ProductCategories.Items.Insert(0, "Product Category");
            conn.Close();
        }
        protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
        {
            Label productId = e.Item.FindControl("Label6") as Label;
            Label stock = e.Item.FindControl("Label5") as Label;
            ImageButton btn = e.Item.FindControl("ImageButton1") as ImageButton;
            SqlDataAdapter sda = new SqlDataAdapter("Select * from Product1 where ProductId= '" + productId.Text + "' ", conn);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            String stockdata = "";
            if (dt.Rows.Count > 0)
            {
                stockdata = dt.Rows[0]["Pquantity"].ToString();
            }
            conn.Close();
            if (stockdata == "0")
            {
                stock.Text = "Out Of Stock";
                btn.Enabled = false;
                btn.ImageUrl = "Image/outofstock.png";
            }
            else
            {
                stock.Text = stockdata;
            }
        }
    }
}