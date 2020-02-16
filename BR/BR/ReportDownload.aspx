<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportDownload.aspx.cs" Inherits="BR.ReportDownload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous" />
    <style>
        #backdrop {
            width: initial;
            height: 400px;
            color: #FFFFFF;
            background-color: #1E4886;
            border-radius: 25px;
            padding: 20px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        .brysonLogo {
            border-radius: 25px;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        #reportTitle {
            text-align: center;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }

        #scoreCircle {
            height: 105px;
            width: 105px;
            background-color: #ffbd17;
            border-radius: 50%;
            display: inline-block;
            color: #FFFFFF;
            font-size: 25px;
            font-weight: bold;
            text-align: center;
            padding: 5px;
            vertical-align: middle;
        }

        #scoreValue {
            margin-left: auto;
            margin-right: auto;
            position: relative;
            top: 50%;
            transform: translateY(-50%);
        }

        #scoreTable {
            display: block;
            margin-left: auto;
            margin-right: auto;
            align-content: center;
            table-layout: auto;
            width: 475px;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        #reportdetail {
            display: block;
            margin-left: auto;
            margin-right: auto;
            align-content: center;
            padding-top: 10px;
            padding-bottom: 10px;
            text-align: center;
        }

        #exportButton {
            display: block;
            margin-left: auto;
            margin-right: auto;
            align-content: center;
            padding-top: 10px;
            padding-bottom: 10px;
            text-align: center;
        }

        .scoreAlignment {
            font-size: 22px;
            text-align: center;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            font-weight: bold;
        }

        .boxshadow {
            display: block;
            margin-left: auto;
            margin-right: auto;
            align-content: center;
            margin-bottom: 20px;
            padding: 20px;
            width: 1100px;
            min-height: 300px;
            overflow-y: hidden;
            /*box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);*/
            box-shadow: 10px 10px 5px rgba(0, 0, 0, 0.50);
        }

        .divBullet {
            width: 5%;
            float: left;
            /*display: block;*/
            display: table-cell;
        }

        .divLabel {
            width: 95%;
            float: right;
            /*display: block;*/
            display: table-cell;
        }

        .statemenRow {
            /*display:flex;*/
            display: table;
        }

        @media print {
            .no-print, .no-print * {
                display: none !important;
                visibility: hidden; 
            }
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">


        <div class="boxshadow" style="background-color: #1E4886; height: 350px;">
            <table style="margin: 0 auto; text-align: center">
                <tr>
                    <td style="text-align: center;">
                        <asp:Image CssClass="brysonLogo" ID="brysonLogo" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; color: white;">
                        <h2>Risk Scorecard</h2>
                    </td>
                </tr>
            </table>


            <p style="text-align: center; color: white;">
                Below is a risk assessment that has evaluated your company's security posture. For every category we have assigned a risk score which helps in evaluating the risks to your company and how it can be mitigated based on the industry standard security controls.
            </p>

        </div>

        <%--NETWORK AND INFORMATION SECURITY--%>
        <div class="boxshadow">
            <table>
                <tr style="background-color: #1E4886;">
                    <th colspan="2" style="text-align: center;">
                        <h3 style="color: white;">NETWORK AND INFORMATION SECURITY</h3>
                    </th>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="text-align: center;">
                                    <asp:Image ID="img_networkAndInfoSec" runat="server" ImageAlign="Middle" Width="300" />
                                </td>
                            </tr>
                            <tr>
                                <td class="scoreAlignment" style="text-align: center;">
                                    <%--<asp:Label ID="lblnetworkAndInfoSec" runat="server" Text="" />--%>
                                </td>
                            </tr>

                        </table>
                    </td>
                    <td style="width: 100%; text-align: justify;">
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label1_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label1" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label2_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label2" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label3_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label3" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label4_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label4" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label5_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label5" runat="server" Text="" />
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>

        <%--MULTIMEDIA AND INTERNET INTELLECTUAL PROPERTY--%>
        <div class="boxshadow">
            <table>
                <tr style="background-color: #1E4886;">
                    <th colspan="2" style="text-align: center;">
                        <h3 style="color: white;">MULTIMEDIA AND INTERNET INTELLECTUAL PROPERTY</h3>
                    </th>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="text-align: center;">
                                    <asp:Image ID="img_intelProp_sc" runat="server" ImageUrl="report_images/High_Risk.PNG" AlternateText="Score" ImageAlign="Middle" Width="300" />
                                </td>
                            </tr>
                            <tr>
                                <td class="scoreAlignment" style="text-align: center;">
                                    <%--<asp:Label ID="lblintelProp_sc" runat="server" Text="" />--%>
                                </td>
                            </tr>

                        </table>
                    </td>
                    <td style="width: 100%; text-align: justify;">
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label6_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label6" runat="server" Text="" />
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>



        <%--BUSINESS INTERRUPTION AND RECOVERY--%>
        <div class="boxshadow">
            <table>
                <tr style="background-color: #1E4886;">
                    <th colspan="2" style="text-align: center;">
                        <h3 style="color: white;">BUSINESS INTERRUPTION AND RECOVERY</h3>
                    </th>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="text-align: center;">
                                    <asp:Image ID="img_busiInter_sc" runat="server" ImageUrl="report_images/High_Risk.PNG" AlternateText="Score" ImageAlign="Middle" Width="300" />
                                </td>
                            </tr>
                            <tr>
                                <td class="scoreAlignment" style="text-align: center;">
                                    <%-- <asp:Label ID="lblbusiInter_sc" runat="server" Text="" />--%>
                                </td>
                            </tr>

                        </table>
                    </td>
                    <td style="width: 100%; text-align: justify;">
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label7_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label7" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label8_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label8" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label9_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label9" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label10_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label10" runat="server" Text="" />
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>



        <%--COMPLAINCE TO SECURITY STANDARDS--%>
        <div class="boxshadow">
            <table>
                <tr style="background-color: #1E4886;">
                    <th colspan="2" style="text-align: center;">
                        <h3 style="color: white;">COMPLAINCE TO SECURITY STANDARDS</h3>
                    </th>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="text-align: center;">
                                    <asp:Image ID="img_compSecStand_sc" runat="server" ImageUrl="report_images/High_Risk.PNG" AlternateText="Score" ImageAlign="Middle" Width="300" />
                                </td>
                            </tr>
                            <tr>
                                <td class="scoreAlignment" style="text-align: center;">
                                    <%--<asp:Label ID="lblcompSecStand_sc" runat="server" Text="" />--%>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td style="width: 100%; text-align: justify;">
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label11_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label11" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label12_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label12" runat="server" Text="" />
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>


        <%--INFORMATION SYSTEM SECURITY AND EMPLOYEE SECURITY AWARENESS--%>
        <div class="boxshadow">
            <table>
                <tr style="background-color: #1E4886;">
                    <th colspan="2" style="text-align: center;">
                        <h3 style="color: white;">INFORMATION SYSTEM SECURITY AND EMPLOYEE SECURITY AWARENESS</h3>
                    </th>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="text-align: center;">
                                    <asp:Image ID="img_wkPlsAsset_sc" runat="server" ImageUrl="report_images/High_Risk.PNG" AlternateText="Score" ImageAlign="Middle" Width="300" />
                                </td>
                            </tr>
                            <tr>
                                <td class="scoreAlignment" style="text-align: center;">
                                    <%-- <asp:Label ID="lblwkPlsAsset_sc" runat="server" Text="" />--%>
                                </td>
                            </tr>

                        </table>
                    </td>
                    <td style="width: 100%; text-align: justify;">
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label13_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label13" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label14_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label14" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label15_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label15" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label16_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label16" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label17_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label17" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label18_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label18" runat="server" Text="" />
                            </div>
                        </div>

                    </td>
                </tr>
            </table>
        </div>



        <%--PHYSICAL DOCUMENT PROTECTION--%>
        <div class="boxshadow">
            <table>
                <tr style="background-color: #1E4886;">
                    <th colspan="2" style="text-align: center;">
                        <h3 style="color: white;">PHYSICAL DOCUMENT PROTECTION</h3>
                    </th>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="text-align: center;">
                                    <asp:Image ID="img_physicalDoc_sc" runat="server" ImageUrl="report_images/High_Risk.PNG" AlternateText="Score" ImageAlign="Middle" Width="300" />
                                </td>
                            </tr>
                            <tr>
                                <td class="scoreAlignment" style="text-align: center;">
                                    <%--<asp:Label ID="lblphysicalDoc_sc" runat="server" Text="" />--%>
                                </td>
                            </tr>

                        </table>
                    </td>
                    <td style="width: 100%; text-align: justify;">
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label19_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label19" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label20_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label20" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label21_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label21" runat="server" Text="" />
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>

        <%--INSIDER THREAT/ROGUE EMPLOYEE PROTECTION--%>
        <div class="boxshadow">
            <table>
                <tr style="background-color: #1E4886;">
                    <th colspan="2" style="text-align: center;">
                        <h3 style="color: white;">INSIDER THREAT/ROGUE EMPLOYEE PROTECTION</h3>
                    </th>
                </tr>
                <tr>
                    <td>
                        <table>
                            <tr>
                                <td style="text-align: center;">
                                    <asp:Image ID="img_insideThreat_sc" runat="server" ImageUrl="report_images/High_Risk.PNG" AlternateText="Score" ImageAlign="Middle" Width="300" />
                                </td>
                            </tr>
                            <tr>
                                <td class="scoreAlignment" style="text-align: center;">
                                    <%--<asp:Label ID="lblinsideThreat_sc" runat="server" Text="" />--%>
                                </td>
                            </tr>

                        </table>
                    </td>
                    <td style="width: 100%; text-align: justify;">
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label22_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label22" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label23_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label23" runat="server" Text="" />
                            </div>
                        </div>
                        <div class="statemenRow">
                            <div class="divBullet">
                                <asp:Label ID="Label24_bullet" runat="server" Text="" />
                            </div>
                            <div class="divLabel">
                                <asp:Label ID="Label24" runat="server" Text="" />
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
        </div>

        <div id="exportButton" class="no-print">
            <asp:Button Width="150px" Style="margin-left: 3px;" ID="Button1" Height="27px" runat="server"
                OnClick="Button1_Click" Text="Download Report"/>
        </div>


    </form>

</body>
</html>
