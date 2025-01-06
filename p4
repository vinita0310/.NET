using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace WebApplication61
{
 public partial class WebForm1 : System.Web.UI.Page
 {
 SqlCommand command;
SqlConnection con;
public void dbcon()
 {
 String config =
System.Configuration.ConfigurationManager.ConnectionStrings["Connection
String"].ToString();
 con = new SqlConnection(config);
 con.Open();
 }
 protected void Page_Load(object sender, EventArgs e)
 {
 }
 protected void SqlDataSource1_Selecting(object sender,
SqlDataSourceSelectingEventArgs e)
 {
 }
 protected void Button1_Click(object sender, EventArgs e)
 {
 dbcon();
 String name = TextBox1.Text;
String age = TextBox2.Text;
String query="INSERT INTO Stud (name,age) VALUES('"+name+"','"+age+"');
 command=new SqlCommand(query,con);
 command.ExecuteNonQuery();
 }
 }
 }
