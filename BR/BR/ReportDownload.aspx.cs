using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Syncfusion.HtmlConverter;
using Syncfusion.Pdf;
using System.IO;

namespace BR
{
    public partial class ReportDownload : System.Web.UI.Page
    {
        int userId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DAL dal = new DAL();
                //userId = Convert.ToInt32(Session["userId"]);
                //industry = Session["industry"].ToString();
                userId = dal.GetRecentFeedbackUser();

                DataTable dtUserInfo = dal.GetUserInfo(userId);
                DataTable dtFeedbackReport = dal.GetFeedbackReport(userId);

                createReport(dtUserInfo, dtFeedbackReport);
                
            }
          
        }

        //private void SendPdfToUser()
        //{
        //    MailMessage mail = new MailMessage();
        //    SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
        //    mail.From = new MailAddress("roshandeep810@gmail.com");
        //    mail.To.Add("roshandeep1995@gmail.com");
        //    mail.Subject = "Bryon Insurance Feedback report PDF";
        //    mail.Body = "The feedback Report from Bryson Insurance";

        //    string filename = Session["filename"].ToString().Replace('/', '_');
        //    string path = @"C:\Users\rosha\Downloads\";

        //    Attachment attachment;
        //    attachment = new Attachment(Path.Combine(path, filename), "application/pdf");
        //    mail.Attachments.Add(attachment);

        //    SmtpServer.Port = 587;
        //    SmtpServer.Credentials = new System.Net.NetworkCredential("roshandeep810@gmail.com", "roshandeep2895");
        //    SmtpServer.EnableSsl = true;

        //    SmtpServer.Send(mail);

        //}

        public void createReport(DataTable dtUserInfo, DataTable dtFeedbackReport)
        {
            //lblUserId.Text = dtUserInfo.Rows[0]["userId"].ToString().ToUpper();
            //lblEmailId.Text = dtUserInfo.Rows[0]["email_id"].ToString();
            //lblUsername.Text = dtUserInfo.Rows[0]["userName"].ToString().ToUpper();
  
            double netAndSecInfo_sc = 0.0, intelProp_sc = 0.0, busiInter_sc = 0.0, compSecStand_sc = 0.0, wkPlsAsset_sc = 0.0, physicalDoc_sc = 0.0, insideThreat_sc = 0.0;

            netAndSecInfo_sc = Convert.ToDouble(dtFeedbackReport.Rows[0]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[1]["answer"].ToString())
                + Convert.ToDouble(dtFeedbackReport.Rows[2]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[3]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[4]["answer"].ToString());

            intelProp_sc = Convert.ToDouble(dtFeedbackReport.Rows[5]["answer"].ToString());

            busiInter_sc = Convert.ToDouble(dtFeedbackReport.Rows[6]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[7]["answer"].ToString())
                + Convert.ToDouble(dtFeedbackReport.Rows[8]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[9]["answer"].ToString());

            compSecStand_sc = Convert.ToDouble(dtFeedbackReport.Rows[10]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[11]["answer"].ToString());

            wkPlsAsset_sc = Convert.ToDouble(dtFeedbackReport.Rows[12]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[13]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[14]["answer"].ToString())
                + Convert.ToDouble(dtFeedbackReport.Rows[15]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[16]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[17]["answer"].ToString());

            physicalDoc_sc = Convert.ToDouble(dtFeedbackReport.Rows[18]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[19]["answer"].ToString())
                + Convert.ToDouble(dtFeedbackReport.Rows[20]["answer"].ToString());

            insideThreat_sc = Convert.ToDouble(dtFeedbackReport.Rows[21]["answer"].ToString()) + Convert.ToDouble(dtFeedbackReport.Rows[22]["answer"].ToString())
                + Convert.ToDouble(dtFeedbackReport.Rows[23]["answer"].ToString());

            //NETWORK AND INFORMATION SECURITY
            if (netAndSecInfo_sc > .75)
            {
                img_networkAndInfoSec.ImageUrl = "~/report_images/High_Risk.PNG";
                lblnetworkAndInfoSec.Text = netAndSecInfo_sc.ToString();
            }
            else if((netAndSecInfo_sc > .5) && (netAndSecInfo_sc <= .75))
            {
                img_networkAndInfoSec.ImageUrl = "~/report_images/Average_Risk.PNG";
                lblnetworkAndInfoSec.Text = netAndSecInfo_sc.ToString();
            }
            else
            {
                img_networkAndInfoSec.ImageUrl = "~/report_images/Low_Risk.PNG";
                lblnetworkAndInfoSec.Text = netAndSecInfo_sc.ToString();
            }
            //MULTIMEDIA AND INTERNET INTELLECTUAL PROPERTY
            if (intelProp_sc > .75)
            {
                img_intelProp_sc.ImageUrl = "~/report_images/High_Risk.PNG";
                lblintelProp_sc.Text = intelProp_sc.ToString();
            }
            else if ((intelProp_sc > .5) && (intelProp_sc <= .75))
            {
                img_intelProp_sc.ImageUrl = "~/report_images/Average_Risk.PNG";
                lblintelProp_sc.Text = intelProp_sc.ToString();
            }
            else
            {
                img_intelProp_sc.ImageUrl = "~/report_images/Low_Risk.PNG";
                lblintelProp_sc.Text = intelProp_sc.ToString();
            }
            //BUSINESS INTERRUPTION AND RECOVERY
            if (busiInter_sc > .75)
            {
                img_busiInter_sc.ImageUrl = "~/report_images/High_Risk.PNG";
                lblbusiInter_sc.Text = busiInter_sc.ToString();
            }
            else if ((busiInter_sc > .5) && (busiInter_sc <= .75))
            {
                img_busiInter_sc.ImageUrl = "~/report_images/Average_Risk.PNG";
                lblbusiInter_sc.Text = busiInter_sc.ToString();
            }
            else
            {
                img_busiInter_sc.ImageUrl = "~/report_images/Low_Risk.PNG";
                lblbusiInter_sc.Text = busiInter_sc.ToString();
            }

            //COMPLAINCE TO SECURITY STANDARDS
            if (compSecStand_sc > .75)
            {
                img_compSecStand_sc.ImageUrl = "~/report_images/High_Risk.PNG";
                lblcompSecStand_sc.Text = compSecStand_sc.ToString();
            }
            else if ((compSecStand_sc > .5) && (compSecStand_sc <= .75))
            {
                img_compSecStand_sc.ImageUrl = "~/report_images/Average_Risk.PNG";
                lblcompSecStand_sc.Text = compSecStand_sc.ToString();
            }
            else
            {
                img_compSecStand_sc.ImageUrl = "~/report_images/Low_Risk.PNG";
                lblcompSecStand_sc.Text = compSecStand_sc.ToString();
            }

            //WORKPLACE ASSET SECURITY AND EMPLOYEE SECURITY AWARENESS
            if (wkPlsAsset_sc > .75)
            {
                img_wkPlsAsset_sc.ImageUrl = "~/report_images/High_Risk.PNG";
                lblwkPlsAsset_sc.Text = wkPlsAsset_sc.ToString();
            }
            else if ((wkPlsAsset_sc > .5) && (wkPlsAsset_sc <= .75))
            {
                img_wkPlsAsset_sc.ImageUrl = "~/report_images/Average_Risk.PNG";
                lblwkPlsAsset_sc.Text = wkPlsAsset_sc.ToString();
            }
            else
            {
                img_wkPlsAsset_sc.ImageUrl = "~/report_images/Low_Risk.PNG";
                lblwkPlsAsset_sc.Text = wkPlsAsset_sc.ToString();
            }

            //PHYSICAL DOCUMENT PROTECTION
            if (physicalDoc_sc > .75)
            {
                img_physicalDoc_sc.ImageUrl = "~/report_images/High_Risk.PNG";
                lblphysicalDoc_sc.Text = physicalDoc_sc.ToString();
            }
            else if ((physicalDoc_sc > .5) && (physicalDoc_sc <= .75))
            {
                img_physicalDoc_sc.ImageUrl = "~/report_images/Average_Risk.PNG";
                lblphysicalDoc_sc.Text = physicalDoc_sc.ToString();
            }
            else
            {
                img_physicalDoc_sc.ImageUrl = "~/report_images/Low_Risk.PNG";
                lblphysicalDoc_sc.Text = physicalDoc_sc.ToString();
            }

            //INSIDER THREAT/ROGUE EMPLOYEE PROTECTION
            if (insideThreat_sc > .75)
            {
                img_insideThreat_sc.ImageUrl = "~/report_images/High_Risk.PNG";
                lblinsideThreat_sc.Text = insideThreat_sc.ToString();
            }
            else if ((insideThreat_sc > .5) && (insideThreat_sc <= .75))
            {
                img_insideThreat_sc.ImageUrl = "~/report_images/Average_Risk.PNG";
                lblinsideThreat_sc.Text = insideThreat_sc.ToString();
            }
            else
            {
                img_insideThreat_sc.ImageUrl = "~/report_images/Low_Risk.PNG";
                lblinsideThreat_sc.Text = insideThreat_sc.ToString();
            }

            AssignSummary(dtFeedbackReport);
        }

        private void AssignSummary(DataTable dtFeedbackReport)
        {
            if(dtFeedbackReport.Rows[0]["ansText"].ToString() == "Yes")
            {
                Label1_bullet.Text = "\u25C9";
                Label1.Text =   "A data breach can be catastrophic for an organization as this can result into loss of customer confidence, regulatory penalties and lawsuits. As per a study from IBM Security and Ponemon Institue the average cost of a data breach is $3.86 million ";
                Label2.Enabled = false;
                Label3.Enabled = false;
                Label4.Enabled = false;
                Label5.Enabled = false;
                Label2_bullet.Enabled = false;
                Label3_bullet.Enabled = false;
                Label4_bullet.Enabled = false;
                Label5_bullet.Enabled = false;
            }
            else if (dtFeedbackReport.Rows[0]["ansText"].ToString() == "No")
            {
                Label1.Enabled = false;
                Label1_bullet.Enabled = false;
                Label2_bullet.Text = "\u25C9";
                Label2.Text = "Outsourcing the security of your organization to an MSSP helps in reducing the costs and gets benefits like  24x7x365 Security Operation Centers (SOCs) for continous monitoring and rapid response on any incidents by intrusions from advanced attack groups. ";
                Label3_bullet.Text = "\u25C9";
                Label3.Text = "An anti virus software in your computer systems protects it from spywares, viruses and scans removable devices of any threats before they can harm your computer systems. Also, it can help by protecting it from phishing attacks, blocking Ads and spam websites.";
                Label4_bullet.Text = "\u25C9";
                Label4.Text = "Encryption is a process of converting your information or data to an indecipherable code that can only be decrypted by someone possessing the actual encryption key.You can encrypt data not only which transist on the internet but also data which resides on your computer, hard drives or mobile devices.";
                Label5_bullet.Text = "\u25C9";
                Label5.Text = "An Incident response plan includes written instructions on how to respond to an incident like data breaches/Denial of service, network intrusions or malware outbreaks.Incident response plan can help in mitigating the cyber incidents faster and minimize the risks to your business. ";
            }
            else if(dtFeedbackReport.Rows[0]["ansText"].ToString() == "Don't Know")
            {
                Label1_bullet.Text = "\u25C9";
                Label1.Text = "A data breach can be catastrophic for an organization as this can result into loss of customer confidence, regulatory penalties and lawsuits. As per a study from IBM Security and Ponemon Institue the average cost of a data breach is $3.86 million ";
                Label2_bullet.Text = "\u25C9";
                Label2.Text = "Outsourcing the security of your organization to an MSSP helps in reducing the costs and gets benefits like  24x7x365 Security Operation Centers (SOCs) for continous monitoring and rapid response on any incidents by intrusions from advanced attack groups. ";
                Label3_bullet.Text = "\u25C9";
                Label3.Text = "An anti virus software in your computer systems protects it from spywares, viruses and scans removable devices of any threats before they can harm your computer systems. Also, it can help by protecting it from phishing attacks, blocking Ads and spam websites.";
                Label4_bullet.Text = "\u25C9";
                Label4.Text = "Encryption is a process of converting your information or data to an indecipherable code that can only be decrypted by someone possessing the actual encryption key.You can encrypt data not only which transist on the internet but also data which resides on your computer, hard drives or mobile devices.";
                Label5_bullet.Text = "\u25C9";
                Label5.Text = "An Incident response plan includes written instructions on how to respond to an incident like data breaches/Denial of service, network intrusions or malware outbreaks.Incident response plan can help in mitigating the cyber incidents faster and minimize the risks to your business.";
            }

            if (dtFeedbackReport.Rows[5]["ansText"].ToString() == "Yes")
            {
                Label6_bullet.Text = "\u25C9";
                Label6.Text = "Intellectual properties are at risk from Cyber squatters who are registering internet domain names of companies and brand names in order to resell them off at a profit. Also, it can be used to lure customers to a fake website and defraud them and obtain their personal details or decieve them in buying goods.";
            }
            else if(dtFeedbackReport.Rows[5]["ansText"].ToString() == "No")
            {
                Label6_bullet.Enabled = false;
                Label6.Enabled = false;
            }
            else if(dtFeedbackReport.Rows[5]["ansText"].ToString() == "Don't Know")
            {
                Label6_bullet.Text = "\u25C9";
                Label6.Text = "Intellectual properties are at risk from Cyber squatters who are registering internet domain names of companies and brand names in order to resell them off at a profit. Also, it can be used to lure customers to a fake website and defraud them and obtain their personal details or decieve them in buying goods.";
            }


            if (dtFeedbackReport.Rows[6]["ansText"].ToString() == "Yes")
            {
                Label7_bullet.Text = "\u25C9";
                Label7.Text = "Employees today are heavily reliant on electronic systems and the data it stores to keep the business operations up and running";
                Label8_bullet.Enabled = false;
                Label8.Enabled = false;
                Label9_bullet.Enabled = false;
                Label9.Enabled = false;
            }
            else if(dtFeedbackReport.Rows[6]["ansText"].ToString() == "No")
            {
                Label7_bullet.Enabled = false;
                Label7.Enabled = false;
                Label8_bullet.Text = "\u25C9";
                Label8.Text = "BCP and DRP have become really crucial when recovering from cyber incidents. These are strategies that the organizations need to carry on while it recovers from disruptions and data loss, caused by a cyber Incident or disaster like earthquake or a major outage.";
                Label9_bullet.Text = "\u25C9";
                Label9.Text = "As a best practice it is recommended to be running weekly integrity checks on your backup databases to ensure they are free of corruption. Data backups allow for minimal business interruption and helps mitigating data loss during a security incident";
            }
            else if(dtFeedbackReport.Rows[6]["ansText"].ToString() == "Don't Know")
            {
                Label7_bullet.Text = "\u25C9";
                Label7.Text = "Employees today are heavily reliant on electronic systems and the data it stores to keep the business operations up and running";
                Label8_bullet.Text = "\u25C9";
                Label8.Text = "BCP and DRP have become really crucial when recovering from cyber incidents. These are strategies that the organizations need to carry on while it recovers from disruptions and data loss, caused by a cyber Incident or disaster like earthquake or a major outage.";
                Label9_bullet.Text = "\u25C9";
                Label9.Text = "As a best practice it is recommended to be running weekly integrity checks on your backup databases to ensure they are free of corruption. Data backups allow for minimal business interruption and helps mitigating data loss during a security incident";
            }

            if (dtFeedbackReport.Rows[9]["ansText"].ToString() == "Yes")
            {
                Label10_bullet.Text = "\u25C9";
                Label10.Text = "Even while the cloud is much more safer place while compared to your physical disks, it is still susceptible to hacking by cybercriminals who can either bypass passwords or guess the security questions to find their way inside.Cloud is not exempt to data loss either, it can happen as a result of human error or databases getting accidentaly deleted. ";
            }
            else if(dtFeedbackReport.Rows[9]["ansText"].ToString() == "No")
            {
                Label10_bullet.Text = "\u25C9";
                Label10.Text = "One of the most effective ways of dealing with a ransomware attack is to backup your files to a cloud service. Clouds are heavily guarded and has advanced encryption applied to your data to protect it from cybercriminals";
            }
            else if(dtFeedbackReport.Rows[9]["ansText"].ToString() == "Don't Know")
            {
                Label10_bullet.Text = "\u25C9";
                Label10.Text = "One of the most effective ways of dealing with a ransomware attack is to backup your files to a cloud service. Clouds are heavily guarded and has advanced encryption applied to your data to protect it from cybercriminals";
            }

            if (dtFeedbackReport.Rows[10]["ansText"].ToString() == "Yes")
            {
                Label11_bullet.Text = "\u25C9";
                Label11.Text = "Regulatory requirements are the absolute minimum that an organization should be following for the security of their IT assets, if you are not meeting these or lapses in following them, there is a high possibility that you might be an easy target for a cybercriminal";
            }
            else if (dtFeedbackReport.Rows[10]["ansText"].ToString() == "No")
            {
                Label11_bullet.Text = "\u25C9";
                Label11.Text = "Regulatory requirements are the absolute minimum that an organization should be following for the security of their IT assets, if you are not meeting these or lapses in following them, there is a high possibility that you might be an easy target for a cybercriminal";
            }
            else if (dtFeedbackReport.Rows[10]["ansText"].ToString() == "Don't Know")
            {
                Label11_bullet.Text = "\u25C9";
                Label11.Text = "Regulatory requirements are the absolute minimum that an organization should be following for the security of their IT assets, if you are not meeting these or lapses in following them, there is a high possibility that you might be an easy target for a cybercriminal";
            }

            if (dtFeedbackReport.Rows[11]["ansText"].ToString() == "Yes")
            {
                Label12_bullet.Text = "\u25C9";
                Label12.Text = "Regulatory requirements are the absolute minimum that an organization should be following for the security of their IT assets, if you are not meeting these or lapses in following them, there is a high possibility that you might be an easy target for a cybercriminal";
            }
            else if (dtFeedbackReport.Rows[11]["ansText"].ToString() == "No")
            {
                Label12_bullet.Text = "\u25C9";
                Label12.Text = "Regulatory requirements are the absolute minimum that an organization should be following for the security of their IT assets, if you are not meeting these or lapses in following them, there is a high possibility that you might be an easy target for a cybercriminal";
            }
            else if (dtFeedbackReport.Rows[11]["ansText"].ToString() == "Don't Know")
            {
                Label12_bullet.Text = "\u25C9";
                Label12.Text = "Regulatory requirements are the absolute minimum that an organization should be following for the security of their IT assets, if you are not meeting these or lapses in following them, there is a high possibility that you might be an easy target for a cybercriminal";
            }

            if (dtFeedbackReport.Rows[12]["ansText"].ToString() == "Yes")
            {
                Label13_bullet.Enabled = false;
                Label13.Enabled = false;
            }
            else if (dtFeedbackReport.Rows[12]["ansText"].ToString() == "No")
            {
                Label13_bullet.Text = "\u25C9";
                Label13.Text = "Not changing the default password on critical networking devices will lead to unauthorized device and network access. This makes it easy for attackers to identify and access critical and confidential company information.";
            }
            else if (dtFeedbackReport.Rows[12]["ansText"].ToString() == "Don't Know")
            {
                Label13_bullet.Text = "\u25C9";
                Label13.Text = "Not changing the default password on critical networking devices will lead to unauthorized device and network access. This makes it easy for attackers to identify and access critical and confidential company information.";
            }

            if (dtFeedbackReport.Rows[13]["ansText"].ToString() == "Yes")
            {
                Label14_bullet.Enabled = false;
                Label14.Enabled = false;
            }
            else if (dtFeedbackReport.Rows[13]["ansText"].ToString() == "No")
            {
                Label14_bullet.Text = "\u25C9";
                Label14.Text = "One of the most common ways that hackers break into a computer system or application is by guessing the user passwords. Simple and commonly used passwords allow a hacker to easily gain access and control of the computing device or application";
            }
            else if (dtFeedbackReport.Rows[13]["ansText"].ToString() == "Don't Know")
            {
                Label14_bullet.Text = "\u25C9";
                Label14.Text = "One of the most common ways that hackers break into a computer system or application is by guessing the user passwords. Simple and commonly used passwords allow a hacker to easily gain access and control of the computing device or application";
            }

            if (dtFeedbackReport.Rows[14]["ansText"].ToString() == "Yes")
            {
                Label15_bullet.Enabled = false;
                Label15.Enabled = false;
            }
            else if (dtFeedbackReport.Rows[14]["ansText"].ToString() == "No")
            {
                Label15_bullet.Text = "\u25C9";
                Label15.Text = "Given the large of amount of log data generated by applications, computing and networking devices, it is important that these logs be reviewed daily as they could help to identify malicious attacks within your organization. Having a log management system takes care of this as it incorporates rules that automate the review of logs and identify events that might represent problems or threats";
            }
            else if (dtFeedbackReport.Rows[14]["ansText"].ToString() == "Don't Know")
            {
                Label15_bullet.Text = "\u25C9";
                Label15.Text = "Given the large of amount of log data generated by applications, computing and networking devices, it is important that these logs be reviewed daily as they could help to identify malicious attacks within your organization. Having a log management system takes care of this as it incorporates rules that automate the review of logs and identify events that might represent problems or threats";
            }


            if (dtFeedbackReport.Rows[15]["ansText"].ToString() == "Yes")
            {
                Label16_bullet.Enabled = false;
                Label16.Enabled = false;
            }
            else if (dtFeedbackReport.Rows[15]["ansText"].ToString() == "No")
            {
                Label16_bullet.Text = "\u25C9";
                Label16.Text = "Conducting a periodic penetration testing is essential as it not only identifies security vulnerabilities with your organization but can also be used to test the organization's security policy, its adherence to compliance requirements, its employees' security awareness and the organization's ability to identify and respond to security incidents.";
            }
            else if (dtFeedbackReport.Rows[15]["ansText"].ToString() == "Don't Know")
            {
                Label16_bullet.Text = "\u25C9";
                Label16.Text = "Conducting a periodic penetration testing is essential as it not only identifies security vulnerabilities with your organization but can also be used to test the organization's security policy, its adherence to compliance requirements, its employees' security awareness and the organization's ability to identify and respond to security incidents.";
            }

            if (dtFeedbackReport.Rows[16]["ansText"].ToString() == "Yes")
            {
                Label17_bullet.Enabled = false;
                Label17.Enabled = false;
            }
            else if (dtFeedbackReport.Rows[16]["ansText"].ToString() == "No")
            {
                Label17_bullet.Text = "\u25C9";
                Label17.Text = "Ensuring that you have the latest application and operating system updates or patches are important, because they often include critical patches to security vulnerabilities which malware attacks seek to take advantage of. ";
            }
            else if (dtFeedbackReport.Rows[16]["ansText"].ToString() == "Don't Know")
            {
                Label17_bullet.Text = "\u25C9";
                Label17.Text = "Ensuring that you have the latest application and operating system updates or patches are important, because they often include critical patches to security vulnerabilities which malware attacks seek to take advantage of. ";
            }

            if (dtFeedbackReport.Rows[17]["ansText"].ToString() == "Yes")
            {
                Label18_bullet.Enabled = false;
                Label18.Enabled = false;
            }
            else if (dtFeedbackReport.Rows[17]["ansText"].ToString() == "No")
            {
                Label18_bullet.Text = "\u25C9";
                Label18.Text = "Not having a security awareness program in place can leads to risky employee behaviours that could potentially result in a breach of the organization’s network by major threats such as web-based attacks, phishing emails, malware, and social engineering scams via the telephone, text messages, or social media channels ";
            }
            else if (dtFeedbackReport.Rows[17]["ansText"].ToString() == "Don't Know")
            {
                Label18_bullet.Text = "\u25C9";
                Label18.Text = "Not having a security awareness program in place can leads to risky employee behaviours that could potentially result in a breach of the organization’s network by major threats such as web-based attacks, phishing emails, malware, and social engineering scams via the telephone, text messages, or social media channels ";
            }

            if (dtFeedbackReport.Rows[18]["ansText"].ToString() == "Yes")
            {
                Label19_bullet.Text = "\u25C9";
                Label19.Text = "Important paper documents must be stored securely in a locked file cabinet when not in use and must be handled only by authorized staff members to actively used them. Failure to do so can lead to a breach in confidential client or company information";
            }
            else if (dtFeedbackReport.Rows[18]["ansText"].ToString() == "No")
            {
                Label19_bullet.Enabled = false;
                Label19.Enabled = false;
                Label20_bullet.Enabled = false;
                Label20.Enabled = false;
                Label21_bullet.Text = "\u25C9";
                Label21.Text = "Without a proper file processing system in place, employees will resort to storing client and company information locally on their computing devices. In the event of a compromise, this puts the organization and its client at risk";
            }
            else if (dtFeedbackReport.Rows[18]["ansText"].ToString() == "Don't Know")
            {
                Label19_bullet.Text = "\u25C9";
                Label19.Text = "Important paper documents must be stored securely in a locked file cabinet when not in use and must be handled only by authorized staff members to actively used them. Failure to do so can lead to a breach in confidential client or company information";
                Label20_bullet.Enabled = false;
                Label20.Enabled = false;
                Label21_bullet.Text = "\u25C9";
                Label21.Text = "Without a proper file processing system in place, employees will resort to storing client and company information locally on their computing devices. In the event of a compromise, this puts the organization and its client at risk";
            }

            if (dtFeedbackReport.Rows[21]["ansText"].ToString() == "Yes")
            {
                Label22_bullet.Enabled = false;
                Label22.Enabled = false;
            }
            else if (dtFeedbackReport.Rows[21]["ansText"].ToString() == "Yes")
            {
                Label22_bullet.Text = "\u25C9";
                Label22.Text = "Having an access control system in place allows for the identification, authentication and authorization of users and entities by evaluating the users’ login credentials. Without this, unauthorized access can be gained to critical client and or organization information ";
            }
            else if (dtFeedbackReport.Rows[21]["ansText"].ToString() == "Don't Know")
            {
                Label22_bullet.Text = "\u25C9";
                Label22.Text = "Having an access control system in place allows for the identification, authentication and authorization of users and entities by evaluating the users’ login credentials. Without this, unauthorized access can be gained to critical client and or organization information ";
            }

            if (dtFeedbackReport.Rows[22]["ansText"].ToString() == "Yes")
            {
                Label23_bullet.Enabled = false;
                Label23.Enabled = false;
            }
            else if (dtFeedbackReport.Rows[22]["ansText"].ToString() == "No")
            {
                Label23_bullet.Text = "\u25C9";
                Label23.Text = "User activity monitoring is necessary for data protection and immediately detect and investigate suspicious users. It can also be valuable in finding rogue employees who can help in exfiltrating your data to competitors or engage in corporate espionage";
            }
            else if (dtFeedbackReport.Rows[22]["ansText"].ToString() == "Don't Know")
            {
                Label23_bullet.Text = "\u25C9";
                Label23.Text = "User activity monitoring is necessary for data protection and immediately detect and investigate suspicious users. It can also be valuable in finding rogue employees who can help in exfiltrating your data to competitors or engage in corporate espionage";
            }

            if (dtFeedbackReport.Rows[23]["ansText"].ToString() == "Yes")
            {
                Label24_bullet.Enabled = false;
                Label24.Enabled = false;
            }
            else if (dtFeedbackReport.Rows[23]["ansText"].ToString() == "No")
            {
                Label24_bullet.Text = "\u25C9";
                Label24.Text = "Your employees are the first line of defence to protect the IT assets which stores valuable company data. Security awareness training serves as an added layer of defence and ensures your employees are aware of the potential cyber threats and how to prevent them.";
            }
            else if (dtFeedbackReport.Rows[23]["ansText"].ToString() == "Don't Know")
            {
                Label24_bullet.Text = "\u25C9";
                Label24.Text = "Your employees are the first line of defence to protect the IT assets which stores valuable company data. Security awareness training serves as an added layer of defence and ensures your employees are aware of the potential cyber threats and how to prevent them.";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Initialize HTML to PDF converter 
            HtmlToPdfConverter htmlConverter = new HtmlToPdfConverter(HtmlRenderingEngine.WebKit);
            WebKitConverterSettings settings = new WebKitConverterSettings();
            //Set WebKit path
            settings.WebKitPath = Server.MapPath("~/QtBinaries");
            //Assign WebKit settings to HTML converter
            htmlConverter.ConverterSettings = settings;
            //Get the current URL
            string url = HttpContext.Current.Request.Url.AbsoluteUri;
            //Convert URL to PDF
            PdfDocument document = htmlConverter.Convert(url);
            //Save the document
            string filename = "Risk_Report" + DateTime.Now.ToString();
            Session["filename"] = filename;
            document.Save(filename+".pdf", HttpContext.Current.Response, HttpReadType.Save);

        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    SendPdfToUser();
        //}
    }
}