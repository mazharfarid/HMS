using HMS.DbContext;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HMS.Views.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MessageAlert.Visible = false;
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            using (HospitalManagementEntities db=new HospitalManagementEntities())
            {
                if(!String.IsNullOrEmpty(UserNameTxt.Text) && !String.IsNullOrEmpty(PasswordTxt.Text))
                {
                    var Query = db.UserTbs.Where(x => x.UserName == UserNameTxt.Text && x.Password == PasswordTxt.Text).ToList();
                    if (Query.Count > 0)
                    {
                        Session["UserId"] = Query[0].UserId.ToString();
                        Session["UserName"] = Query[0].UserName.ToString();
                        Response.Redirect("~/Default.aspx");
                    }
                    else
                    {
                        MessageAlert.Visible = true;

                    }


                }
            }
        }
    }
}