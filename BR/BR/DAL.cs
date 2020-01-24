using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace BR
{
    public class DAL
    {
        string connetionString = @"Server=LAPTOP-HM18U6J6; Database=BRYSON_INSURANCE;Integrated Security=true;";

        SqlCommand cmd;

        public DataTable LoadIndustryQuestions(string industry)
        {
            SqlConnection cnn = new SqlConnection(connetionString);
            cnn.Open();
            string sql = "SELECT question_id, question, question_wt_yes, question_wt_no, question_dontKnow FROM br_Feedback_Questions WHERE question_type ='" + industry + "'";
            cmd = new SqlCommand(sql, cnn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cnn.Close();
            return ds.Tables[0];
        }

        public int GetRecentFeedbackUser()
        {
            SqlConnection cnn = new SqlConnection(connetionString);
            cnn.Open();
            string sql = "select top 1 userId from br_User_Feedback_Collection order by feedback_id desc ";
            cmd = new SqlCommand(sql, cnn);
            int userId = Convert.ToInt32(cmd.ExecuteScalar());
            cnn.Close();
            return userId;
        }

        public DataTable BindCategories(string selectedText)
        {
            SqlConnection cnn = new SqlConnection(connetionString);
            cnn.Open();
            string sql = "SELECT coverage FROM br_industries WHERE industry_name ='" + selectedText + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, connetionString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cnn.Close();
            return ds.Tables[0];
        }


        public DataTable BindIndustries()
        {
            SqlConnection cnn = new SqlConnection(connetionString);
            cnn.Open();
            string sql = "SELECT DISTINCT industry_name FROM br_industries";
            SqlDataAdapter da = new SqlDataAdapter(sql, connetionString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cnn.Close();
            return ds.Tables[0];
        }

        public void SaveInustryQuesAnswers(int userId, string industry, List<int> quesId, string ans1, string ans2, string ans3, string ans4, string ans5, string ans6, string ans7, string ans8, string ans9, string ans10, string ans11, string ans12, string ans13, string ans14, string ans15, string ans16, string ans17, string ans18, string ans19, string ans20, string ans21, string ans22, string ans23, string ans24, string ansText1, string ansText2, string ansText3, string ansText4, string ansText5, string ansText6, string ansText7, string ansText8, string ansText9, string ansText10, string ansText11, string ansText12, string ansText13, string ansText14, string ansText15, string ansText16, string ansText17, string ansText18, string ansText19, string ansText20, string ansText21, string ansText22, string ansText23, string ansText24)
        {
            SqlConnection cnn = new SqlConnection(connetionString);
            cnn.Open();
            string sql = "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id1, @question_type, @answer1, @answerText1);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id2, @question_type, @answer2, @answerText2);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id3, @question_type, @answer3, @answerText3);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id4, @question_type, @answer4, @answerText4);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id5, @question_type, @answer5, @answerText5);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id6, @question_type, @answer6, @answerText6);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id7, @question_type, @answer7, @answerText7);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id8, @question_type, @answer8, @answerText8);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id9, @question_type, @answer9, @answerText9);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id10, @question_type, @answer10, @answerText10);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id11, @question_type, @answer11, @answerText11);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id12, @question_type, @answer12, @answerText12);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id13, @question_type, @answer13, @answerText13);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id14, @question_type, @answer14, @answerText14);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id15, @question_type, @answer15, @answerText15);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id16, @question_type, @answer16, @answerText16);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id17, @question_type, @answer17, @answerText17);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id18, @question_type, @answer18, @answerText18);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id19, @question_type, @answer19, @answerText19);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id20, @question_type, @answer20, @answerText20);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id21, @question_type, @answer21, @answerText21);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id22, @question_type, @answer22, @answerText22);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id23, @question_type, @answer23, @answerText23);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer, ansText) VALUES (@userId, @question_id24, @question_type, @answer24, @answerText24);";

            cmd = new SqlCommand(sql, cnn);
            cmd.Parameters.Add(new SqlParameter("@userId", userId));
            cmd.Parameters.Add(new SqlParameter("@question_id1", quesId[0]));
            cmd.Parameters.Add(new SqlParameter("@question_id2", quesId[1]));
            cmd.Parameters.Add(new SqlParameter("@question_id3", quesId[2]));
            cmd.Parameters.Add(new SqlParameter("@question_id4", quesId[3]));
            cmd.Parameters.Add(new SqlParameter("@question_id5", quesId[4]));
            cmd.Parameters.Add(new SqlParameter("@question_id6", quesId[5]));
            cmd.Parameters.Add(new SqlParameter("@question_id7", quesId[6]));
            cmd.Parameters.Add(new SqlParameter("@question_id8", quesId[7]));
            cmd.Parameters.Add(new SqlParameter("@question_id9", quesId[8]));
            cmd.Parameters.Add(new SqlParameter("@question_id10", quesId[9]));
            cmd.Parameters.Add(new SqlParameter("@question_id11", quesId[10]));
            cmd.Parameters.Add(new SqlParameter("@question_id12", quesId[11]));
            cmd.Parameters.Add(new SqlParameter("@question_id13", quesId[12]));
            cmd.Parameters.Add(new SqlParameter("@question_id14", quesId[13]));
            cmd.Parameters.Add(new SqlParameter("@question_id15", quesId[14]));
            cmd.Parameters.Add(new SqlParameter("@question_id16", quesId[15]));
            cmd.Parameters.Add(new SqlParameter("@question_id17", quesId[16]));
            cmd.Parameters.Add(new SqlParameter("@question_id18", quesId[17]));
            cmd.Parameters.Add(new SqlParameter("@question_id19", quesId[18]));
            cmd.Parameters.Add(new SqlParameter("@question_id20", quesId[19]));
            cmd.Parameters.Add(new SqlParameter("@question_id21", quesId[20]));
            cmd.Parameters.Add(new SqlParameter("@question_id22", quesId[21]));
            cmd.Parameters.Add(new SqlParameter("@question_id23", quesId[22]));
            cmd.Parameters.Add(new SqlParameter("@question_id24", quesId[23]));
            cmd.Parameters.Add(new SqlParameter("@question_type", industry));
            cmd.Parameters.Add(new SqlParameter("@answer1", ans1));
            cmd.Parameters.Add(new SqlParameter("@answer2", ans2));
            cmd.Parameters.Add(new SqlParameter("@answer3", ans3));
            cmd.Parameters.Add(new SqlParameter("@answer4", ans4));
            cmd.Parameters.Add(new SqlParameter("@answer5", ans5));
            cmd.Parameters.Add(new SqlParameter("@answer6", ans6));
            cmd.Parameters.Add(new SqlParameter("@answer7", ans7));
            cmd.Parameters.Add(new SqlParameter("@answer8", ans8));
            cmd.Parameters.Add(new SqlParameter("@answer9", ans9));
            cmd.Parameters.Add(new SqlParameter("@answer10", ans10));
            cmd.Parameters.Add(new SqlParameter("@answer11", ans11));
            cmd.Parameters.Add(new SqlParameter("@answer12", ans12));
            cmd.Parameters.Add(new SqlParameter("@answer13", ans13));
            cmd.Parameters.Add(new SqlParameter("@answer14", ans14));
            cmd.Parameters.Add(new SqlParameter("@answer15", ans15));
            cmd.Parameters.Add(new SqlParameter("@answer16", ans16));
            cmd.Parameters.Add(new SqlParameter("@answer17", ans17));
            cmd.Parameters.Add(new SqlParameter("@answer18", ans18));
            cmd.Parameters.Add(new SqlParameter("@answer19", ans19));
            cmd.Parameters.Add(new SqlParameter("@answer20", ans20));
            cmd.Parameters.Add(new SqlParameter("@answer21", ans21));
            cmd.Parameters.Add(new SqlParameter("@answer22", ans22));
            cmd.Parameters.Add(new SqlParameter("@answer23", ans23));
            cmd.Parameters.Add(new SqlParameter("@answer24", ans24));
            cmd.Parameters.Add(new SqlParameter("@answerText1", ansText1));
            cmd.Parameters.Add(new SqlParameter("@answerText2", ansText2));
            cmd.Parameters.Add(new SqlParameter("@answerText3", ansText3));
            cmd.Parameters.Add(new SqlParameter("@answerText4", ansText4));
            cmd.Parameters.Add(new SqlParameter("@answerText5", ansText5));
            cmd.Parameters.Add(new SqlParameter("@answerText6", ansText6));
            cmd.Parameters.Add(new SqlParameter("@answerText7", ansText7));
            cmd.Parameters.Add(new SqlParameter("@answerText8", ansText8));
            cmd.Parameters.Add(new SqlParameter("@answerText9", ansText9));
            cmd.Parameters.Add(new SqlParameter("@answerText10", ansText10));
            cmd.Parameters.Add(new SqlParameter("@answerText11", ansText11));
            cmd.Parameters.Add(new SqlParameter("@answerText12", ansText12));
            cmd.Parameters.Add(new SqlParameter("@answerText13", ansText13));
            cmd.Parameters.Add(new SqlParameter("@answerText14", ansText14));
            cmd.Parameters.Add(new SqlParameter("@answerText15", ansText15));
            cmd.Parameters.Add(new SqlParameter("@answerText16", ansText16));
            cmd.Parameters.Add(new SqlParameter("@answerText17", ansText17));
            cmd.Parameters.Add(new SqlParameter("@answerText18", ansText18));
            cmd.Parameters.Add(new SqlParameter("@answerText19", ansText19));
            cmd.Parameters.Add(new SqlParameter("@answerText20", ansText20));
            cmd.Parameters.Add(new SqlParameter("@answerText21", ansText21));
            cmd.Parameters.Add(new SqlParameter("@answerText22", ansText22));
            cmd.Parameters.Add(new SqlParameter("@answerText23", ansText23));
            cmd.Parameters.Add(new SqlParameter("@answerText24", ansText24));
            cmd.ExecuteNonQuery();
            cnn.Close();
        }

        public int InsertAnswers(string name, string contactNum, string emailId, string ans1, string ans2, string ans3)
        {
            SqlConnection cnn = new SqlConnection(connetionString);
            cnn.Open();
            //Insert User
            string sql1 = "INSERT INTO br_user_info(username, contact_num, email_id) VALUES (@username, @contactno, @emailId)";
            cmd = new SqlCommand(sql1, cnn);
            cmd.Parameters.Add(new SqlParameter("@username", name));
            cmd.Parameters.Add(new SqlParameter("@emailId", emailId));
            cmd.Parameters.Add(new SqlParameter("@contactno", contactNum));
            cmd.ExecuteNonQuery();
            //Extract the user Id Created
            string sql2 = "SELECT @@IDENTITY";
            cmd = new SqlCommand(sql2, cnn);
            int insertedID = Convert.ToInt32(cmd.ExecuteScalar());
            //Insert Feedback
            string sql = "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer) VALUES (@userId, @question_id1, @question_type, @answer1);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer) VALUES (@userId, @question_id2, @question_type, @answer2);";
            sql = sql + "INSERT INTO br_User_Feedback_Collection(userid, question_id, question_type, answer) VALUES (@userId, @question_id3, @question_type, @answer3);";

            cmd = new SqlCommand(sql, cnn);
            cmd.Parameters.Add(new SqlParameter("@userId", insertedID));
            cmd.Parameters.Add(new SqlParameter("@question_id1", 2));
            cmd.Parameters.Add(new SqlParameter("@question_id2", 3));
            cmd.Parameters.Add(new SqlParameter("@question_id3", 4));
            cmd.Parameters.Add(new SqlParameter("@question_type", "Preliminary"));
            cmd.Parameters.Add(new SqlParameter("@answer1", ans1));
            cmd.Parameters.Add(new SqlParameter("@answer2", ans2));
            cmd.Parameters.Add(new SqlParameter("@answer3", ans3));
            cmd.ExecuteNonQuery();
            cnn.Close();

            return insertedID;
        }

        public DataTable BindIndustryQuestions(string industry)
        {
            SqlConnection cnn = new SqlConnection(connetionString);
            cnn.Open();
            string sql = "SELECT question FROM br_Feedback_Questions WHERE question_type ='" + industry + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, connetionString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cnn.Close();
            return ds.Tables[0];
        }

        public DataTable GetUserInfo(int userId)
        {
            SqlConnection cnn = new SqlConnection(connetionString);
            cnn.Open();
            string sql = "SELECT userId, userName, contact_num, email_id FROM br_user_info WHERE userId='" + userId + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, connetionString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cnn.Close();
            return ds.Tables[0];
        }


        public DataTable GetUserQuestions(string industry)
        {
            SqlConnection cnn = new SqlConnection(connetionString);
            cnn.Open();
            string sql = "SELECT question FROM br_Feedback_Questions WHERE question_type ='" + industry + "'";
            SqlDataAdapter da = new SqlDataAdapter(sql, connetionString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cnn.Close();
            return ds.Tables[0];
        }

        public DataTable GetFeedbackReport(int userId)
        {
            SqlConnection cnn = new SqlConnection(connetionString);
            cnn.Open();
            string sql = "SELECT q.question, fc.answer, fc.ansText FROM br_User_Feedback_Collection fc LEFT JOIN br_Feedback_Questions q ON fc.question_id = q.question_id WHERE fc.question_type <> 'Preliminary' AND  userid =" + userId;
            SqlDataAdapter da = new SqlDataAdapter(sql, connetionString);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cnn.Close();
            return ds.Tables[0];
        }

    }
}