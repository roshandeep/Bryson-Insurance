using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BR
{
    public partial class ContactForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadIndustries();
            }
        }

        public void LoadIndustries()
        {
            DAL dal = new DAL();
            DataTable dt = new DataTable();
            dt = dal.BindIndustries();
            ddlAns3.DataTextField = dt.Columns["industry_name"].ToString();
            ddlAns3.DataValueField = dt.Columns["industry_name"].ToString();
            ddlAns3.DataSource = dt;
            ddlAns3.DataBind();
            ddlAns3.Items.Insert(0, new ListItem("Industry", "-1"));
        }

        public void ValidateEntries()
        {
            string name = string.Empty, contactNum = string.Empty, emailId = string.Empty;
            string ans1 = string.Empty, ans2 = string.Empty, ans3 = string.Empty;

            if ((txtname.Text != "") || (txtcontactNo.Text != "") || (txtemailid.Text != ""))
            {
                name = txtname.Text.Trim();
                contactNum = txtcontactNo.Text.Trim();
                emailId = txtemailid.Text.Trim();
                ans1 = ddlAns1.SelectedItem.Text;
                ans2 = ddlAns2.SelectedItem.Text;
                ans3 = ddlAns3.SelectedItem.Text;
                string selected_Text = ddlAns3.SelectedItem.Text.ToString();
                Session["industry"] = selected_Text;
                Submit_Data(name, contactNum, emailId, ans1, ans2, ans3);

            }

        }

        public void Submit_Data(string name, string contactNum, string emailId, string ans1, string ans2, string ans3)
        {
            DAL dal = new DAL();
            int userId = dal.InsertAnswers(name, contactNum, emailId, ans1, ans2, ans3);
            Session["userId"] = userId;
            Response.Redirect("~/Questionnaire.aspx", false);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            ValidateEntries();
        }
    }
}