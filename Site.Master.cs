using System.Web.UI;

namespace NIT_Registration_Form
{
    public partial class SiteMaster : MasterPage
    {
        protected void MainMenu_MenuItemClick(object sender, System.Web.UI.WebControls.MenuEventArgs e)
        {
            Session["RegType"] = e.Item.Value;
            Response.Redirect("Registration.aspx");
        }
    }
}





    

