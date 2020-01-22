﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BR
{
    public partial class Questionnaire : System.Web.UI.Page
    {
        List<int> quesId = new List<int>();
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadQuestions();
            if (!IsPostBack)
            {

            }
        }

        public void LoadQuestions()
        {
            //string industry = Session["industry"].ToString();
            DAL dal = new DAL();
            dt = new DataTable();
            //dt = dal.LoadIndustryQuestions(industry);
            dt = dal.LoadIndustryQuestions("Manufacturers");
            lblQues1.Text = dt.Rows[0]["question"].ToString();
            lblQues2.Text = dt.Rows[1]["question"].ToString();
            lblQues3.Text = dt.Rows[2]["question"].ToString();
            lblQues4.Text = dt.Rows[3]["question"].ToString();
            lblQues5.Text = dt.Rows[4]["question"].ToString();
            lblQues6.Text = dt.Rows[5]["question"].ToString();
            lblQues7.Text = dt.Rows[6]["question"].ToString();
            lblQues8.Text = dt.Rows[7]["question"].ToString();
            lblQues9.Text = dt.Rows[8]["question"].ToString();
            lblQues10.Text = dt.Rows[9]["question"].ToString();
            lblQues11.Text = dt.Rows[10]["question"].ToString();
            lblQues12.Text = dt.Rows[11]["question"].ToString();
            lblQues13.Text = dt.Rows[12]["question"].ToString();
            lblQues14.Text = dt.Rows[13]["question"].ToString();
            lblQues15.Text = dt.Rows[14]["question"].ToString();
            lblQues16.Text = dt.Rows[15]["question"].ToString();
            lblQues17.Text = dt.Rows[16]["question"].ToString();
            lblQues18.Text = dt.Rows[17]["question"].ToString();
            lblQues19.Text = dt.Rows[18]["question"].ToString();
            lblQues20.Text = dt.Rows[19]["question"].ToString();
            lblQues21.Text = dt.Rows[20]["question"].ToString();
            lblQues22.Text = dt.Rows[21]["question"].ToString();
            lblQues23.Text = dt.Rows[22]["question"].ToString();
            lblQues24.Text = dt.Rows[23]["question"].ToString();
            foreach (DataRow row in dt.Rows)
            {
                quesId.Add(Convert.ToInt32(row["question_id"]));
            }
        }

        public void SaveAnswers()
        {
            int userId = Convert.ToInt32(Session["userId"]);
            string industry = Session["industry"].ToString();
            DAL dal = new DAL();
            string ans1 = string.Empty, ans2 = string.Empty, ans3 = string.Empty, ans4 = string.Empty, ans5 = string.Empty, ans6 = string.Empty;
            string ans7 = string.Empty, ans8 = string.Empty, ans9 = string.Empty, ans10 = string.Empty, ans11 = string.Empty, ans12 = string.Empty;
            string ans13 = string.Empty, ans14 = string.Empty, ans15 = string.Empty, ans16 = string.Empty, ans17 = string.Empty, ans18 = string.Empty;
            string ans19 = string.Empty, ans20 = string.Empty, ans21 = string.Empty, ans22 = string.Empty, ans23 = string.Empty, ans24 = string.Empty;

            /* Q1 Main Ques Q 2,3,4,5 Sub Ques*/

            if (ddlAns1.SelectedItem.Text == "Yes")
            {
                Session["Ans1"] = "Yes";
                ans1 = dt.Rows[0]["question_wt_yes"].ToString();
            }
            else if (ddlAns1.SelectedItem.Text == "No")
            {
                Session["Ans1"] = "No";
                ans1 = dt.Rows[0]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans1"] = "Don't Know";
                ans1 = dt.Rows[0]["question_dontKnow"].ToString();
            }

            if (ddlAns1.SelectedItem.Text == "Yes")
            {
                if(ddlAns2.SelectedItem.Text == "Yes")
                {
                    Session["Ans2"] = "Yes";
                    ans2 = dt.Rows[1]["question_wt_yes"].ToString();
                }
                else if (ddlAns2.SelectedItem.Text == "No")
                {
                    Session["Ans2"] = "No";
                    ans2 = dt.Rows[1]["question_wt_no"].ToString();
                }
                else
                {
                    Session["Ans2"] = "Don't Know";
                    ans2 = dt.Rows[1]["question_dontKnow"].ToString();
                }

                if (ddlAns3.SelectedItem.Text == "Yes")
                {
                    Session["Ans3"] = "Yes";
                    ans3 = dt.Rows[2]["question_wt_yes"].ToString();
                }
                else if (ddlAns3.SelectedItem.Text == "No")
                {
                    Session["Ans3"] = "No";
                    ans3 = dt.Rows[2]["question_wt_no"].ToString();
                }
                else
                {
                    Session["Ans3"] = "Don't Know";
                    ans3 = dt.Rows[2]["question_dontKnow"].ToString();
                }

                if (ddlAns4.SelectedItem.Text == "Yes")
                {
                    Session["Ans4"] = "Yes";
                    ans4 = dt.Rows[3]["question_wt_yes"].ToString();
                }
                else if (ddlAns4.SelectedItem.Text == "No")
                {
                    Session["Ans4"] = "No";
                    ans4 = dt.Rows[3]["question_wt_no"].ToString();
                }
                else
                {
                    Session["Ans4"] = "Don't Know";
                    ans4 = dt.Rows[3]["question_dontKnow"].ToString();
                }

                if (ddlAns5.SelectedItem.Text == "Yes")
                {
                    Session["Ans5"] = "Yes";
                    ans5 = dt.Rows[4]["question_wt_yes"].ToString();
                }
                else if (ddlAns5.SelectedItem.Text == "No")
                {
                    Session["Ans5"] = "No";
                    ans5 = dt.Rows[4]["question_wt_no"].ToString();
                }
                else
                {
                    Session["Ans5"] = "Don't Know";
                    ans5 = dt.Rows[4]["question_dontKnow"].ToString();
                }
                //double sum = Convert.ToDouble(ans1) - Convert.ToDouble(ans2) - Convert.ToDouble(ans3) - Convert.ToDouble(ans4) - Convert.ToDouble(ans5);
                //ans1 = sum.ToString();

            }
            else
            if (ddlAns1.SelectedItem.Text == "No")
            {
                Session["Ans1"] = "No";
                Session["Ans2"] = "";
                Session["Ans3"] = "";
                Session["Ans4"] = "";
                Session["Ans5"] = "";
                ans2 = ans3 = ans4 = ans5 = "0";
            }
            else
            {
                Session["Ans1"] = "Don't Know";
                Session["Ans2"] = "";
                Session["Ans3"] = "";
                Session["Ans4"] = "";
                Session["Ans5"] = "";
                ans2 = ans3 = ans4 = ans5 = "0";
            }

            
            if (ddlAns6.SelectedItem.Text == "Yes")
            {
                Session["Ans6"] = "Yes";
                ans6 = dt.Rows[5]["question_wt_yes"].ToString();
            }
            else if (ddlAns6.SelectedItem.Text == "No")
            {
                Session["Ans6"] = "No";
                ans6 = dt.Rows[5]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans6"] = "Don't Know";
                ans6 = dt.Rows[5]["question_dontKnow"].ToString();
            }

            if (ddlAns7.SelectedItem.Text == "Yes")
            {
                Session["Ans7"] = "Yes";
                ans7 = dt.Rows[6]["question_wt_yes"].ToString();
            }
            else if (ddlAns7.SelectedItem.Text == "No")
            {
                Session["Ans7"] = "No";
                ans7 = dt.Rows[6]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans7"] = "Don't Know";
                ans7 = dt.Rows[6]["question_dontKnow"].ToString();
            }

            if (ddlAns7.SelectedItem.Text == "Yes")
            {
                if(ddlAns8.SelectedItem.Text == "Yes")
                {
                    Session["Ans8"] = "Yes";
                    ans8 = dt.Rows[7]["question_wt_yes"].ToString();
                }
                else if(ddlAns8.SelectedItem.Text == "No")
                {
                    Session["Ans8"] = "No";
                    ans8 = dt.Rows[7]["question_wt_no"].ToString();
                }
                else
                {
                    Session["Ans8"] = "Don't Know";
                    ans8 = dt.Rows[7]["question_dontKnow"].ToString();
                }

                if (ddlAns9.SelectedItem.Text == "Yes")
                {
                    Session["Ans9"] = "Yes";
                    ans9 = dt.Rows[8]["question_wt_yes"].ToString();
                }
                else if (ddlAns9.SelectedItem.Text == "No")
                {
                    Session["Ans9"] = "No";
                    ans9 = dt.Rows[8]["question_wt_no"].ToString();
                }
                else
                {
                    Session["Ans9"] = "Don't Know";
                    ans9 = dt.Rows[8]["question_dontKnow"].ToString();
                }
            }
            else
            if (ddlAns7.SelectedItem.Text == "No")
            {
                Session["Ans8"] = "";
                Session["Ans9"] = "";
                ans8 = ans9 = "0";
            }
            else
            {
                Session["Ans8"] = "";
                Session["Ans9"] = "";
                ans8 = ans9 = "0";
            }

            if (ddlAns10.SelectedItem.Text == "No")
            {
                Session["Ans10"] = "Yes";
                ans10 = dt.Rows[9]["question_wt_yes"].ToString();
            }
            else if (ddlAns10.SelectedItem.Text == "Yes")
            {
                Session["Ans10"] = "No";
                ans10 = dt.Rows[9]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans10"] = "Don't Know";
                ans10 = dt.Rows[9]["question_dontKnow"].ToString();
            }

            if (ddlAns11.SelectedItem.Text == "Yes")
            {
                Session["Ans11"] = "Yes";
                ans11 = dt.Rows[10]["question_wt_yes"].ToString();
            }
            else if (ddlAns11.SelectedItem.Text == "No")
            {
                Session["Ans11"] = "No";
                ans11 = dt.Rows[10]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans11"] = "Don't Know";
                ans11 = dt.Rows[10]["question_dontKnow"].ToString();
            }

            if (ddlAns12.SelectedItem.Text == "No")
            {
                Session["Ans12"] = "No";
                ans12 = dt.Rows[11]["question_wt_no"].ToString();
            }
            else if (ddlAns12.SelectedItem.Text == "Yes")
            {
                Session["Ans12"] = "Yes";
                ans12 = dt.Rows[11]["question_wt_yes"].ToString();
            }
            else
            {
                Session["Ans12"] = "Don't Know";
                ans12 = dt.Rows[11]["question_dontKnow"].ToString();
            }



            if (ddlAns13.SelectedItem.Text == "Yes")
            {
                Session["Ans13"] = "Yes";
                ans13 = dt.Rows[12]["question_wt_yes"].ToString();
            }
            else if (ddlAns13.SelectedItem.Text == "No")
            {
                Session["Ans13"] = "No";
                ans13 = dt.Rows[12]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans13"] = "Don't Know";
                ans13 = dt.Rows[12]["question_dontKnow"].ToString();
            }


            if (ddlAns14.SelectedItem.Text == "Yes")
            {
                Session["Ans14"] = "Yes";
                ans14 = dt.Rows[13]["question_wt_yes"].ToString();
            }
            else if (ddlAns14.SelectedItem.Text == "No")
            {
                Session["Ans14"] = "No";
                ans14 = dt.Rows[13]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans14"] = "Don't Know";
                ans14 = dt.Rows[13]["question_dontKnow"].ToString();
            }


            if (ddlAns15.SelectedItem.Text == "Yes")
            {
                Session["Ans15"] = "Yes";
                ans15 = dt.Rows[14]["question_wt_yes"].ToString();
            }
            else if (ddlAns15.SelectedItem.Text == "No")
            {
                Session["Ans15"] = "No";
                ans15 = dt.Rows[14]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans15"] = "Don't Know";
                ans15 = dt.Rows[14]["question_dontKnow"].ToString();
            }

            if (ddlAns16.SelectedItem.Text == "Yes")
            {
                Session["Ans16"] = "Yes";
                ans16 = dt.Rows[15]["question_wt_yes"].ToString();
            }
            else if (ddlAns16.SelectedItem.Text == "No")
            {
                Session["Ans16"] = "No";
                ans16 = dt.Rows[15]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans16"] = "Don't Know";
                ans16 = dt.Rows[15]["question_dontKnow"].ToString();
            }

            if (ddlAns17.SelectedItem.Text == "Yes")
            {
                Session["Ans17"] = "Yes";
                ans17 = dt.Rows[16]["question_wt_yes"].ToString();
            }
            else if (ddlAns17.SelectedItem.Text == "No")
            {
                Session["Ans17"] = "No";
                ans17 = dt.Rows[16]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans17"] = "Don't Know";
                ans17 = dt.Rows[16]["question_dontKnow"].ToString();
            }

            if (ddlAns18.SelectedItem.Text == "Yes")
            {
                Session["Ans18"] = "Yes";
                ans18 = dt.Rows[17]["question_wt_yes"].ToString();
            }
            else if (ddlAns18.SelectedItem.Text == "No")
            {
                Session["Ans18"] = "No";
                ans18 = dt.Rows[17]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans18"] = "Don't Know";
                ans18 = dt.Rows[17]["question_dontKnow"].ToString();
            }

            if (ddlAns19.SelectedItem.Text == "Yes")
            {
                Session["Ans19"] = "Yes";
                ans19 = dt.Rows[18]["question_wt_yes"].ToString();
            }
            else if (ddlAns19.SelectedItem.Text == "No")
            {
                Session["Ans19"] = "No";
                ans19 = dt.Rows[18]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans19"] = "Don't Know";
                ans19 = dt.Rows[18]["question_dontKnow"].ToString();
            }

            if (ddlAns19.SelectedItem.Text == "Yes")
            {
                if (ddlAns20.SelectedItem.Text == "Yes")
                {
                    Session["Ans20"] = "Yes";
                    ans20 = dt.Rows[19]["question_wt_yes"].ToString();
                }
                else if (ddlAns20.SelectedItem.Text == "No")
                {
                    Session["Ans20"] = "No";
                    ans20 = dt.Rows[19]["question_wt_no"].ToString();
                }
                else
                {
                    Session["Ans20"] = "Don't Know";
                    ans20 = dt.Rows[19]["question_dontKnow"].ToString();
                }

                if (ddlAns21.SelectedItem.Text == "Yes")
                {
                    Session["Ans21"] = "Yes";
                    ans21 = dt.Rows[20]["question_wt_yes"].ToString();
                }
                else if (ddlAns21.SelectedItem.Text == "No")
                {
                    Session["Ans21"] = "No";
                    ans21 = dt.Rows[20]["question_wt_no"].ToString();
                }
                else
                {
                    Session["Ans21"] = "Don't Know";
                    ans21 = dt.Rows[20]["question_dontKnow"].ToString();
                }
     
            }
            else if (ddlAns19.SelectedItem.Text == "No")
            {
                Session["Ans20"] = "";
                Session["Ans21"] = "";
                ans20 = ans21 = "0";
            }
            else
            {
                Session["Ans20"] = "";
                Session["Ans21"] = "";
                ans20 = ans21 = "0";
            }

 
            if (ddlAns22.SelectedItem.Text == "Yes")
            {
                Session["Ans22"] = "Yes";
                ans22 = dt.Rows[21]["question_wt_yes"].ToString();
            }
            else if (ddlAns22.SelectedItem.Text == "No")
            {
                Session["Ans22"] = "No";
                ans22 = dt.Rows[21]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans22"] = "Don't Know";
                ans22 = dt.Rows[21]["question_dontKnow"].ToString();
            }

            if (ddlAns23.SelectedItem.Text == "Yes")
            {
                Session["Ans23"] = "Yes";
                ans23 = dt.Rows[22]["question_wt_yes"].ToString();
            }
            else if (ddlAns23.SelectedItem.Text == "No")
            {
                Session["Ans23"] = "No";
                ans23 = dt.Rows[22]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans23"] = "Don't Know";
                ans23 = dt.Rows[22]["question_dontKnow"].ToString();
            }

            if (ddlAns24.SelectedItem.Text == "Yes")
            {
                Session["Ans24"] = "Yes";
                ans24 = dt.Rows[23]["question_wt_yes"].ToString();
            }
            else if (ddlAns24.SelectedItem.Text == "No")
            {
                Session["Ans24"] = "No";
                ans24 = dt.Rows[23]["question_wt_no"].ToString();
            }
            else
            {
                Session["Ans24"] = "Don't Know";
                ans24 = dt.Rows[23]["question_dontKnow"].ToString();
            }

            dal.SaveInustryQuesAnswers(userId, industry, quesId, ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans8, ans9, ans10, ans11, ans12, ans13, ans14, ans15, ans16, ans17, ans18, ans19, ans20, ans21, ans22, ans23, ans24);
            //dal.SaveInustryQuesAnswers(20, "Healthcare", quesId, ans1, ans2, ans3, ans4, ans5, ans6, ans7, ans8, ans9, ans10, ans11, ans12, ans13, ans14, ans15, ans16, ans17, ans18, ans19, ans20, ans21, ans22, ans23, ans24);
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            SaveAnswers();
            Response.Redirect("~/ReportDownload.aspx", false);
        }

    }
}