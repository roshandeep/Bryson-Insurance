﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportDownload.aspx.cs" Inherits="BR.ReportDownload" %>

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

        #brysonLogo {
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
            height: 300px;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div style="width: 95%; display: block; margin-left: auto; margin-right: auto; align-content: center; border: 2px solid grey; border-radius: 2px;">
            <%--TOP MARGIN FOR PDF--%>
            <div style="width: 100%; height: 50px;">
            </div>

            <div class="boxshadow" style="background-color: #1E4886; height: 350px;">
                <table style="margin: 0 auto; text-align: center">
                    <tr>
                        <td style="text-align: center;">
                            <img id="brysonLogo" src="img/logo-sm.png" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center; color: white;">
                            <h2>Risk Scorecard</h2>
                        </td>
                    </tr>
                </table>

                <table id="scoreTable">
                    <tr>
                        <td>
                            <div>
                                <table>
                                    <tr>
                                        <td style="font-size: 16px; color: white;">Name : </td>
                                        <td style="font-size: 16px; color: white;">
                                            <asp:Label ID="lblUsername" Text="" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 16px; color: white;">Email Id : </td>
                                        <td style="font-size: 16px; color: white;">
                                            <asp:Label ID="lblEmailId" Text="" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="font-size: 16px; color: white;">User Id : </td>
                                        <td style="font-size: 16px; color: white;">
                                            <asp:Label ID="lblUserId" Text="" runat="server" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>

            </div>

            <%--NETWORK AND INFORMATION SECURITY--%>
            <div class="boxshadow">
                <table>
                    <tr>
                        <th colspan="2" style="text-align: center;">
                            <h3>NETWORK AND INFORMATION SECURITY</h3>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <table>
                                <tr>
                                    <td style="text-align: center;">
                                        <asp:Image ID="img_networkAndInfoSec" runat="server" ImageUrl="report_images/High_Risk.PNG" AlternateText="Score" ImageAlign="Middle" Width="300" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="scoreAlignment" style="text-align: center;">
                                        <asp:Label ID="lblnetworkAndInfoSec" runat="server" Text="" />
                                    </td>
                                </tr>

                            </table>
                        </td>
                        <td>
                            <ol>
                                <li>
                                    <asp:Label ID="Label1" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label2" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label3" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label4" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label5" runat="server" Text="" /></li>
                            </ol>

                        </td>
                    </tr>
                </table>
            </div>

            <%--MULTIMEDIA AND INTERNET INTELLECTUAL PROPERTY--%>
            <div class="boxshadow">
                <table>
                    <tr>
                        <th colspan="2" style="text-align: center;">
                            <h3>MULTIMEDIA AND INTERNET INTELLECTUAL PROPERTY</h3>
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
                                        <asp:Label ID="lblintelProp_sc" runat="server" Text="" />
                                    </td>
                                </tr>

                            </table>
                        </td>
                        <td>
                            <ol>
                                <li>
                                    <asp:Label ID="Label6" runat="server" Text="" /></li>

                            </ol>
                        </td>
                    </tr>
                </table>
            </div>



            <%--BUSINESS INTERRUPTION AND RECOVERY--%>
            <div class="boxshadow">
                <table>
                    <tr>
                        <th colspan="2" style="text-align: center;">
                            <h3>BUSINESS INTERRUPTION AND RECOVERY</h3>
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
                                        <asp:Label ID="lblbusiInter_sc" runat="server" Text="" />
                                    </td>
                                </tr>

                            </table>
                        </td>
                        <td>
                            <ol>
                                <li>
                                    <asp:Label ID="Label7" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label8" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label9" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label10" runat="server" Text="" /></li>
                            </ol>
                        </td>
                    </tr>
                </table>
            </div>



            <%--COMPLAINCE TO SECURITY STANDARDS--%>
            <div class="boxshadow">
                <table>
                    <tr>
                        <th colspan="2" style="text-align: center;">
                            <h3>COMPLAINCE TO SECURITY STANDARDS</h3>
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
                                        <asp:Label ID="lblcompSecStand_sc" runat="server" Text="" />
                                    </td>
                                </tr>

                            </table>
                        </td>
                        <td>
                            <ol>
                                <li>
                                    <asp:Label ID="Label11" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label12" runat="server" Text="" /></li>

                            </ol>
                        </td>
                    </tr>
                </table>
            </div>

        </div>
        <p style="page-break-after: always;"></p>
        <%--TOP MARGIN FOR PDF--%>
        <div style="width: 100%; height: 50px;">
        </div>
        <div style="width: 95%; display: block; margin-left: auto; margin-right: auto; align-content: center; border: 2px solid grey; border-radius: 2px;">
            <%--TOP MARGIN FOR PDF--%>
            <div style="width: 100%; height: 50px;">
            </div>
            <%--WORKPLACE ASSET SECURITY AND EMPLOYEE SECURITY AWARENESS--%>
            <div class="boxshadow">
                <table>
                    <tr>
                        <th colspan="2" style="text-align: center;">
                            <h3>WORKPLACE ASSET SECURITY AND EMPLOYEE SECURITY AWARENESS</h3>
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
                                        <asp:Label ID="lblwkPlsAsset_sc" runat="server" Text="" />
                                    </td>
                                </tr>

                            </table>
                        </td>
                        <td>
                            <ol>
                                <li>
                                    <asp:Label ID="Label13" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label14" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label15" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label16" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label17" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label18" runat="server" Text="" /></li>
                            </ol>
                        </td>
                    </tr>
                </table>
            </div>



            <%--PHYSICAL DOCUMENT PROTECTION--%>
            <div class="boxshadow">
                <table>
                    <tr>
                        <th colspan="2" style="text-align: center;">
                            <h3>PHYSICAL DOCUMENT PROTECTION</h3>
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
                                        <asp:Label ID="lblphysicalDoc_sc" runat="server" Text="" />
                                    </td>
                                </tr>

                            </table>
                        </td>
                        <td>
                            <ol>
                                <li>
                                    <asp:Label ID="Label19" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label20" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label21" runat="server" Text="" /></li>

                            </ol>
                        </td>
                    </tr>
                </table>
            </div>

            <%--INSIDER THREAT/ROGUE EMPLOYEE PROTECTION--%>
            <div class="boxshadow">
                <table>
                    <tr>
                        <th colspan="2" style="text-align: center;">
                            <h3>INSIDER THREAT/ROGUE EMPLOYEE PROTECTION</h3>
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
                                        <asp:Label ID="lblinsideThreat_sc" runat="server" Text="" />
                                    </td>
                                </tr>

                            </table>
                        </td>
                        <td>
                            <ol>
                                <li>
                                    <asp:Label ID="Label22" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label23" runat="server" Text="" /></li>
                                <li>
                                    <asp:Label ID="Label24" runat="server" Text="" /></li>

                            </ol>
                        </td>
                    </tr>
                </table>
            </div>

            <div id="exportButton">
                <asp:Button Width="100px" Style="margin-left: 3px;" ID="Button1" Height="27px" runat="server" OnClick="Button1_Click" Text="Create PDF" />
            </div>
            <%--       <div">
                <asp:Button Width="100px" Style="margin-left: 3px;" ID="Button2" Height="27px" runat="server" OnClick="Button2_Click" Text="Email PDF" />
            </div>--%>
        </div>
    </form>

</body>
</html>