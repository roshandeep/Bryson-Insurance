<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Questionnaire.aspx.cs" Inherits="BR.Questionnaire" %>

<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Risk Assessment</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- <link rel="manifest" href="site.webmanifest"> -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/gijgo.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/slicknav.css">
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">
    <link href="https://fonts.googleapis.com/css?family=Quattrocento+Sans" rel="stylesheet">
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript">
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
        });

        function growDiv() {
            debugger;
            var ddlAns1 = document.getElementById('<%=ddlAns1.ClientID%>');
            var ddlAns1value = ddlAns1.value;
            var growDiv = document.getElementById('grow');
            if (growDiv.clientHeight && (ddlAns1value == 'No' || ddlAns1value == 'Don\'t Know')) {
                growDiv.style.height = 0;
                var ddlAns2 = document.getElementById('<%=ddlAns2.ClientID%>');
                ddlAns2.disabled = true;
                ValidatorEnable(document.getElementById('<%= reqAns2.ClientID %>'), false);

                var ddlAns3 = document.getElementById('<%=ddlAns3.ClientID%>');
                ddlAns3.disabled = true;
                ValidatorEnable(document.getElementById('<%= reqAns3.ClientID %>'), false);

                var ddlAns4 = document.getElementById('<%=ddlAns4.ClientID%>');
                ddlAns4.disabled = true;
                ValidatorEnable(document.getElementById('<%= reqAns4.ClientID %>'), false);

                var ddlAns5 = document.getElementById('<%=ddlAns5.ClientID%>');
                ddlAns5.disabled = true;
                ValidatorEnable(document.getElementById('<%= reqAns5.ClientID %>'), false);
            } else {
                var wrapper = document.querySelector('#measuringWrapper');
                growDiv.style.height = wrapper.clientHeight + "px";
                var ddlAns2 = document.getElementById('<%=ddlAns2.ClientID%>');
                ddlAns2.disabled = false;
                ValidatorEnable(document.getElementById('<%= reqAns2.ClientID %>'), true);

                var ddlAns3 = document.getElementById('<%=ddlAns3.ClientID%>');
                ddlAns3.disabled = false;
                ValidatorEnable(document.getElementById('<%= reqAns3.ClientID %>'), true);

                var ddlAns4 = document.getElementById('<%=ddlAns4.ClientID%>');
                ddlAns4.disabled = false;
                ValidatorEnable(document.getElementById('<%= reqAns4.ClientID %>'), true);

                var ddlAns5 = document.getElementById('<%=ddlAns5.ClientID%>');
                ddlAns5.disabled = false;
                ValidatorEnable(document.getElementById('<%= reqAns5.ClientID %>'), true);
            }
        }
        function growDiv2() {
            var ddlAns7 = document.getElementById('<%=ddlAns7.ClientID%>');
            var ddlAns7value = ddlAns7.value;
            var growDiv = document.getElementById('grow2');
            if (growDiv.clientHeight && (ddlAns7value == 'No' || ddlAns7value == 'Don\'t Know')) {
                growDiv.style.height = 0;
                var ddlAns8 = document.getElementById('<%=ddlAns8.ClientID%>');
                ddlAns8.disabled = true;
                ValidatorEnable(document.getElementById('<%= reqAns8.ClientID %>'), false);

                var ddlAns9 = document.getElementById('<%=ddlAns9.ClientID%>');
                ddlAns9.disabled = true;
                ValidatorEnable(document.getElementById('<%= reqAns9.ClientID %>'), false);
            } else {
                var wrapper = document.querySelector('#measuringWrapper2');
                growDiv.style.height = wrapper.clientHeight + "px";
                var ddlAns8 = document.getElementById('<%=ddlAns8.ClientID%>');
                ddlAns8.disabled = false;
                ValidatorEnable(document.getElementById('<%= reqAns8.ClientID %>'), true);

                var ddlAns9 = document.getElementById('<%=ddlAns9.ClientID%>');
                ddlAns9.disabled = false;
                ValidatorEnable(document.getElementById('<%= reqAns9.ClientID %>'), true);
            }
        }
        function growDiv3() {
            var ddlAns11 = document.getElementById('<%=ddlAns11.ClientID%>');
            var ddlAns11value = ddlAns11.value;
            var growDiv = document.getElementById('grow3');
            if (growDiv.clientHeight && (ddlAns11value == 'No' || ddlAns11value == 'Don\'t Know')) {
                growDiv.style.height = 0;
            } else {
                var wrapper = document.querySelector('#measuringWrapper3');
                growDiv.style.height = wrapper.clientHeight + "px";
            }
        }
        function growDiv4() {
            var ddlAns12 = document.getElementById('<%=ddlAns12.ClientID%>');
            var ddlAns12value = ddlAns12.value;
            var growDiv = document.getElementById('grow4');
            if (growDiv.clientHeight && (ddlAns12value == 'No' || ddlAns12value == 'Don\'t Know')) {
                growDiv.style.height = 0;
            } else {
                var wrapper = document.querySelector('#measuringWrapper4');
                growDiv.style.height = wrapper.clientHeight + "px";
            }
        }
        function growDiv5() {
            var ddlAns19 = document.getElementById('<%=ddlAns19.ClientID%>');
            var ddlAns19value = ddlAns19.value;
            var growDiv = document.getElementById('grow5');
            if (growDiv.clientHeight && (ddlAns19value == 'No' || ddlAns19value == 'Don\'t Know')) {
                growDiv.style.height = 0;
                var ddlAns20 = document.getElementById('<%=ddlAns20.ClientID%>');
                ddlAns20.disabled = true;
                ValidatorEnable(document.getElementById('<%= reqAns20.ClientID %>'), false);

                var ddlAns21 = document.getElementById('<%=ddlAns21.ClientID%>');
                ddlAns21.disabled = true;
                ValidatorEnable(document.getElementById('<%= reqAns21.ClientID %>'), false);
            } else {
                var wrapper = document.querySelector('#measuringWrapper5');
                growDiv.style.height = wrapper.clientHeight + "px";
                var ddlAns20 = document.getElementById('<%=ddlAns20.ClientID%>');
                ddlAns20.disabled = false;
                ValidatorEnable(document.getElementById('<%= reqAns20.ClientID %>'), true);

                var ddlAns21 = document.getElementById('<%=ddlAns21.ClientID%>');
                ddlAns21.disabled = false;
                ValidatorEnable(document.getElementById('<%= reqAns21.ClientID %>'), true);
            }
        }


        /* jQuery for the estimate box*/

        $(document).ready(function () {
            $("#firstParty").hide();
            $("#crimes").hide();
            $("#otherCoverage").hide();

        });

        $(document).on('click', '[id*=btnThirdParty]', function () {
            var v1 = document.getElementById("<%=RequiredFieldValidator1.ClientID%>");
            var v6 = document.getElementById("<%=reqAns6.ClientID%>");
            ValidatorValidate(v1);
            ValidatorValidate(v6);
            if (v1.isvalid && v6.isvalid) {
                $("#thirdParty").slideUp(1000);
                $("#firstParty").slideDown(1000);
                window.scrollTo({
                    top: 10,
                    left: 0,
                    behavior: 'smooth'
                });
            } else {
                alert("Fill in all the questions before moving ahead");
            }
        });

        $(document).on('click', '[id*=btnFirstParty]', function () {
            var v7 = document.getElementById("<%=reqAns7.ClientID%>");
            var v10 = document.getElementById("<%=reqAns10.ClientID%>");
            var v11 = document.getElementById("<%=reqAns11.ClientID%>");
            var v12 = document.getElementById("<%=reqAns12.ClientID%>");
            ValidatorValidate(v7);
            ValidatorValidate(v10);
            ValidatorValidate(v11);
            ValidatorValidate(v12);
            if (v7.isvalid && v10.isvalid && v11.isvalid && v12.isvalid) {
                $("#firstParty").slideUp(1000);
                $("#crimes").slideDown(1000);
                window.scrollTo({
                    top: 10,
                    left: 0,
                    behavior: 'smooth'
                });
            } else {
                alert("Fill in all the questions before moving ahead");
            }
        });

        $(document).on('click', '[id*=btnCrime]', function () {
            var v13 = document.getElementById("<%=reqAns13.ClientID%>");
            var v14 = document.getElementById("<%=reqAns14.ClientID%>");
            var v15 = document.getElementById("<%=reqAns15.ClientID%>");
            var v16 = document.getElementById("<%=reqAns16.ClientID%>");
            var v17 = document.getElementById("<%=reqAns17.ClientID%>");
            var v18 = document.getElementById("<%=reqAns18.ClientID%>");
            ValidatorValidate(v13);
            ValidatorValidate(v14);
            ValidatorValidate(v15);
            ValidatorValidate(v16);
            ValidatorValidate(v17);
            ValidatorValidate(v18);
            if (v13.isvalid && v14.isvalid && v15.isvalid && v16.isvalid && v17.isvalid && v18.isvalid) {
                $("#crimes").slideUp(1000);
                $("#otherCoverage").slideDown(1000);
                window.scrollTo({
                    top: 10,
                    left: 0,
                    behavior: 'smooth'
                });
            } else {
                alert("Fill in all the questions before moving ahead");
            }
        });

    </script>
    <style>
        label {
            color: white;
            cursor: pointer;
            font-size: 16px;
            font-weight: 400;
            padding-left: 10px;
        }

        #grow {
            -moz-transition: height .5s;
            -ms-transition: height .5s;
            -o-transition: height .5s;
            -webkit-transition: height .5s;
            transition: height .5s;
            height: 0;
            overflow: hidden;
        }

        #grow2 {
            -moz-transition: height .5s;
            -ms-transition: height .5s;
            -o-transition: height .5s;
            -webkit-transition: height .5s;
            transition: height .5s;
            height: 0;
            overflow: hidden;
        }

        #grow3 {
            -moz-transition: height .5s;
            -ms-transition: height .5s;
            -o-transition: height .5s;
            -webkit-transition: height .5s;
            transition: height .5s;
            height: 0;
            overflow: hidden;
        }

        #grow4 {
            -moz-transition: height .5s;
            -ms-transition: height .5s;
            -o-transition: height .5s;
            -webkit-transition: height .5s;
            transition: height .5s;
            height: 0;
            overflow: hidden;
        }

        #grow5 {
            -moz-transition: height .5s;
            -ms-transition: height .5s;
            -o-transition: height .5s;
            -webkit-transition: height .5s;
            transition: height .5s;
            height: 0;
            overflow: hidden;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- header-start -->
        <header>
            <div class="header-area" style="position: fixed; top: 0;">
                <div class="header-top_area d-none d-lg-block" style="padding: 10px 0;">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-xl-4 col-lg-4">
                                <div class="logo">
                                    <a href="index.html">
                                        <img src="img/logo-sm.png" alt="" style="width: 250px; height: 75px;">
                                    </a>
                                </div>
                            </div>
                            <div class="col-xl-8 col-md-8">
                                <div class="header_right d-flex align-items-center">
                                    <div class="short_contact_list">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-envelope"></i>connect@brysoninsurance.ca</a></li>
                                            <li><a href="#"><i class="fa fa-phone"></i>905.426.8787</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </header>
        <!-- header-end -->

        <!-- bradcam_area  -->
        <div class="bradcam_area bradcam_bg_1" style="background-image: url('../report_images/backdrop.png');">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="bradcam_text text-center">
                            <h3 style="margin-top: 40px;">Risk Assessment</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/ bradcam_area  -->

        <!-- Estimate_area start Third party claims: -->
        <div class="Estimate_area overlay" id="thirdParty" style="display: flex; width: auto">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="form">
                            <div class="row">
                                <div class="col-xl-12" style="color: white !Important; padding-bottom: 30px; text-align: center;">
                                    <div class="input_field">
                                        <p style="color: WHITE !Important; font-size: 28px; font-weight: 400; font-family: 'Poppins';">
                                            Network and Information Security 
                                        </p>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                    <div class="input_field">
                                        <asp:Label ID="lblQues1" runat="server" Text="" ForeColor="White" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Sensitive information must be safeguarded from illegitimate access for the privacy of an individual or an organization"></span>
                                    </div>
                                </div>

                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns1" CssClass="form-control" onChange="growDiv()">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="ddlAns1" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field">
                                        &nbsp
                                    </div>
                                </div>
                                <div class="col-xl-6" style="width: 400px; height: 180px; color: white !Important;">
                                    <div>
                                        <asp:CheckBoxList runat="server" ID="CheckBoxList2" CssClass="form-control" RepeatDirection="Vertical" BackColor="Transparent" BorderStyle="None"
                                            ForeColor="White" TextAlign="Right" CellSpacing="20" Width="300px" Height="180px">
                                            <asp:ListItem Text="Credit Card Info"></asp:ListItem>
                                            <asp:ListItem Text="Financial account Numbers"></asp:ListItem>
                                            <asp:ListItem Text="Healthcare Info"></asp:ListItem>
                                            <asp:ListItem Text="Social Insurance Numbers"></asp:ListItem>
                                            <asp:ListItem Text="Others"></asp:ListItem>
                                        </asp:CheckBoxList>
                                    </div>
                                </div>
                                <div id='grow' class="col-xl-12">
                                    <div id='measuringWrapper' class="col-xl-12">
                                        <div class="row">

                                            <div class="col-xl-6">
                                                <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                                    <asp:Label ID="lblQues2" runat="server" Text="" />
                                                    <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="MSSP provides cybersecurity services to an organization to protect its critical IT assets and maintain an acceptable security standard."></span>
                                                </div>
                                            </div>
                                            <div class="col-xl-6" style="padding-top: 20px;">
                                                <div class="input_field">
                                                    <asp:DropDownList runat="server" ID="ddlAns2" CssClass="form-control">
                                                        <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Text="No"></asp:ListItem>
                                                        <asp:ListItem Text="Don't Know"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="reqAns2" ControlToValidate="ddlAns2" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />

                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">

                                                    <asp:Label ID="lblQues3" runat="server" Text="" />
                                                    <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="An anti virus software will protect your system from different kinds of malwares like spyware,adware, ransomware and various other kinds of viruses."></span>
                                                </div>
                                            </div>
                                            <div class="col-xl-6" style="padding-top: 20px;">
                                                <div class="input_field">
                                                    <asp:DropDownList runat="server" ID="ddlAns3" CssClass="form-control">
                                                        <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Text="No"></asp:ListItem>
                                                        <asp:ListItem Text="Don't Know"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="reqAns3" ControlToValidate="ddlAns3" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                                </div>
                                            </div>
                                            <div class="col-xl-6" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                                <div class="input_field">
                                                    <asp:Label ID="lblQues4" runat="server" Text="" />
                                                    <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Encryption translates the data to another form or code that can be retranslated only by someone who has the correct decryption key, thereby safeguarding your sensitive data."></span>
                                                </div>
                                            </div>
                                            <div class="col-xl-6" style="padding-top: 20px;">
                                                <div class="input_field">
                                                    <asp:DropDownList runat="server" ID="ddlAns4" CssClass="form-control">
                                                        <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Text="No"></asp:ListItem>
                                                        <asp:ListItem Text="Don't Know"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="reqAns4" ControlToValidate="ddlAns4" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">

                                                    <asp:Label ID="lblQues5" runat="server" Text="" />
                                                    <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="An incident response plan is a set of detailed instructions to help an organization to respond or recover from network security incidents."></span>
                                                </div>
                                            </div>
                                            <div class="col-xl-6" style="padding-top: 20px;">
                                                <div class="input_field">
                                                    <asp:DropDownList runat="server" ID="ddlAns5" CssClass="form-control">
                                                        <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Text="No"></asp:ListItem>
                                                        <asp:ListItem Text="Don't Know"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="reqAns5" ControlToValidate="ddlAns5" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12" style="color: white !Important; padding-bottom: 30px; padding-top: 40px; text-align: center;">
                                    <div class="input_field">
                                        <p style="color: WHITE !Important; font-size: 28px; font-weight: 400; font-family: 'Poppins';">
                                            Multimedia and Internet Intellectual property 
                                        </p>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                        <asp:Label ID="lblQues6" runat="server" Text="" />
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns6" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns6" ControlToValidate="ddlAns6" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="input_field">
                                        <asp:Button ID="btnThirdParty" runat="server" CssClass="boxed-btn3-line" Text="Next" Font-Size="20px" Style="padding: 0px;" ClientIDMode="Static" OnClientClick="return false;" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Estimate_area end  -->

        <!-- Estimate_area start First party claims: -->
        <div class="Estimate_area overlay" id="firstParty" style="display: flex; width: auto">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="form">
                            <div class="row">
                                <div class="col-xl-12" style="color: white !Important; padding-bottom: 30px; text-align: center;">
                                    <div class="input_field">
                                        <p style="color: white !Important; font-size: 28px; font-weight: 400; font-family: 'Poppins';">
                                            Business Interruption and Recovery 
                                        </p>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                        <asp:Label ID="lblQues7" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Based on our research, companies that rely heavily on electronic records or transactions such as insurance agencies, healthcare providers, medical practices, legal and accounting expects the network or the systems to restore to full functionality within minutes after a failure."></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns7" CssClass="form-control" onChange="growDiv2()">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns7" ControlToValidate="ddlAns7" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />

                                    </div>
                                </div>
                                <div id='grow2' class="col-xl-12">
                                    <div id='measuringWrapper2' class="col-xl-12">
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">

                                                    <asp:Label ID="lblQues8" runat="server" Text="" />
                                                    <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Cloud backup is a service in which the data stored in physical servers at the business premises are backed up and stored on a remote server."></span>
                                                </div>
                                            </div>
                                            <div class="col-xl-6" style="padding-top: 20px;">
                                                <div class="input_field">
                                                    <asp:DropDownList runat="server" ID="ddlAns8" CssClass="form-control">
                                                        <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Text="No"></asp:ListItem>
                                                        <asp:ListItem Text="Don't Know"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="reqAns8" ControlToValidate="ddlAns8" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">

                                                    <asp:Label ID="lblQues9" runat="server" Text="" />
                                                    <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Many organizations conduct daily testing and verification of image-based backups. The daily reports are then sent to the client once a week to show that the backup was tested and in good working order."></span>
                                                </div>
                                            </div>
                                            <div class="col-xl-6" style="padding-top: 20px;">
                                                <div class="input_field">
                                                    <asp:DropDownList runat="server" ID="ddlAns9" CssClass="form-control">
                                                        <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Text="No"></asp:ListItem>
                                                        <asp:ListItem Text="Don't Know"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="reqAns9" ControlToValidate="ddlAns9" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">

                                        <asp:Label ID="lblQues10" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Business continuity planning helps an organization to continue its business operations using various process or tools. While DRP helps the restoration back to normal after a disaster has taken place."></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns10" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns10" ControlToValidate="ddlAns10" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />

                                    </div>
                                </div>
                                <div class="col-xl-12" style="color: white !Important; padding-bottom: 30px; padding-top: 40px; text-align: center;">
                                    <div class="input_field">
                                        <p style="color: white !Important; font-size: 28px; font-weight: 400; font-family: 'Poppins';">
                                            Complaince to Security Standards
                                        </p>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">

                                        <asp:Label ID="lblQues11" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Regulatory compliances are required by organizations to adher with the laws relevant to its business processes. Non-complaince can often result in legal punishment which can include federal fines."></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns11" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns11" ControlToValidate="ddlAns11" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="col-xl-12">
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <div class="input_field">
                                                    &nbsp
                                                </div>
                                            </div>
                                            <div class="col-xl-6" style="width: 400px; height: 250px; color: white !Important;">
                                                <div>
                                                    <asp:CheckBoxList runat="server" ID="chk11" CssClass="form-control" RepeatDirection="Vertical" BackColor="Transparent" BorderStyle="None"
                                                        ForeColor="White" TextAlign="Right" CellSpacing="20" Width="300px" Height="180px">
                                                        <asp:ListItem Text=" ISO/IEC 27002"></asp:ListItem>
                                                        <asp:ListItem Text="SOX"></asp:ListItem>
                                                        <asp:ListItem Text="PCI DSS"></asp:ListItem>
                                                        <asp:ListItem Text="HIPAA"></asp:ListItem>
                                                        <asp:ListItem Text="GLBA"></asp:ListItem>
                                                        <asp:ListItem Text="NIST"></asp:ListItem>
                                                        <asp:ListItem Text="Others"></asp:ListItem>
                                                    </asp:CheckBoxList>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                        <asp:Label ID="lblQues12" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Regulatory compliances are required by organizations to adher with the laws relevant to its business processes. Non-complaince can often result in legal punishment which can include federal fines."></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns12" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns12" ControlToValidate="ddlAns12" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="col-xl-12">
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <div class="input_field">
                                                    &nbsp
                                                </div>
                                            </div>
                                            <div class="col-xl-6" style="width: 400px; height: 250px; color: white !Important;">
                                                <div>
                                                    <asp:CheckBoxList runat="server" ID="chkbxAns12" CssClass="form-control" RepeatDirection="Vertical" BackColor="Transparent" BorderStyle="None"
                                                        ForeColor="White" TextAlign="Right" CellSpacing="20" Width="300px" Height="180px">
                                                        <asp:ListItem Text=" ISO/IEC 27002"></asp:ListItem>
                                                        <asp:ListItem Text="SOX"></asp:ListItem>
                                                        <asp:ListItem Text="PCI DSS"></asp:ListItem>
                                                        <asp:ListItem Text="HIPAA"></asp:ListItem>
                                                        <asp:ListItem Text="GLBA"></asp:ListItem>
                                                        <asp:ListItem Text="NIST"></asp:ListItem>
                                                        <asp:ListItem Text="Others"></asp:ListItem>
                                                    </asp:CheckBoxList>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="input_field">
                                        <asp:Button ID="btnFirstParty" runat="server" CssClass="boxed-btn3-line" Text="Next" ClientIDMode="Static" OnClientClick="return false;" Font-Size="20px" Style="padding: 0px;" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Estimate_area end  -->

        <!-- Estimate_area start Crimes: -->
        <div class="Estimate_area overlay" id="crimes" style="display: flex; width: auto">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="form">
                            <div class="row">
                                <div class="col-xl-12" style="color: white !Important; padding-bottom: 30px; text-align: center;">
                                    <div class="input_field">
                                        <p style="color: white !Important; font-size: 25px; font-weight: 400; font-family: 'Poppins';">
                                            Information System Security and Employee Security Awareness
                                        </p>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                        <asp:Label ID="lblQues13" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="A default password is a password assigned to a program or hardware device by the developer or manufacturer"></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns13" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns13" ControlToValidate="ddlAns13" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                        <asp:Label ID="lblQues14" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="A password policy is a set of established rules designed to enhance both computer and application security by encouraging users to employ and use strong password properly."></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns14" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns14" ControlToValidate="ddlAns14" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                        <asp:Label ID="lblQues15" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Log management is a processes used to a facilitate the generation, transmission, analysis, storage, archiving and disposal of the large volumes of log data created within an organization by applications, computing and networking devices."></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns15" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns15" ControlToValidate="ddlAns15" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                        <asp:Label ID="lblQues16" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Penetration testing, also called pen testing or ethical hacking, is the practice of testing an application, computer or network to find security vulnerabilities that an attacker/hacker could exploit."></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns16" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns16" ControlToValidate="ddlAns16" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                        <asp:Label ID="lblQues17" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="A software update or patch is a free download for an application or operating system, that provides fixes for vulnerabilities or features that aren't working as intended or adds minor software enhancements and compatibility"></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns17" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns17" ControlToValidate="ddlAns17" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                        <asp:Label ID="lblQues18" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="A security awareness program is a formal program with the aim of training employees about the potential threats to an organization's information and how to avoid situations that might put the organization's data at risk."></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns18" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns18" ControlToValidate="ddlAns18" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-12">
                                    <div class="input_field">
                                        <asp:Button ID="btnCrime" runat="server" CssClass="boxed-btn3-line" Text="Next" ClientIDMode="Static" OnClientClick="return false;" Font-Size="20px" Style="padding: 0px;" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Estimate_area end  -->

        <!-- Estimate_area start Other coverages: -->
        <div class="Estimate_area overlay" id="otherCoverage" style="display: flex; width: auto">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12">
                        <div class="form">
                            <div class="row">
                                <div class="col-xl-12" style="color: white !Important; padding-bottom: 30px; text-align: center;">
                                    <div class="input_field">
                                        <p style="color: white !Important; font-size: 28px; font-weight: 400; font-family: 'Poppins';">
                                            Physical Document Protection 
                                        </p>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                    <div class="input_field">
                                        <asp:Label ID="lblQues19" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Paper documents include consent forms, printouts, case tracking sheets that contain personal identifying information (PII) and other important company documents."></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns19" CssClass="form-control" onChange="growDiv5()">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns19" ControlToValidate="ddlAns19" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div id='grow5' class="col-xl-12">
                                    <div id='measuringWrapper5' class="col-xl-12">
                                        <div class="row">
                                            <div class="col-xl-6">
                                                <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">

                                                    <asp:Label ID="lblQues20" runat="server" Text="" />
                                                </div>
                                            </div>
                                            <div class="col-xl-6" style="padding-top: 20px;">
                                                <div class="input_field">
                                                    <asp:DropDownList runat="server" ID="ddlAns20" CssClass="form-control">
                                                        <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Text="No"></asp:ListItem>
                                                        <asp:ListItem Text="Don't Know"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="reqAns20" ControlToValidate="ddlAns20" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                                </div>
                                            </div>
                                            <div class="col-xl-6">
                                                <div class="input_field" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">

                                                    <asp:Label ID="lblQues21" runat="server" Text="" />
                                                    <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="A file processing system is a technique for storing and organizing computer files and the data they contain to make access easy and efficient"></span>
                                                </div>
                                            </div>
                                            <div class="col-xl-6" style="padding-top: 20px;">
                                                <div class="input_field">
                                                    <asp:DropDownList runat="server" ID="ddlAns21" CssClass="form-control">
                                                        <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                                        <asp:ListItem Text="Yes"></asp:ListItem>
                                                        <asp:ListItem Text="No"></asp:ListItem>
                                                        <asp:ListItem Text="Don't Know"></asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator runat="server" ID="reqAns21" ControlToValidate="ddlAns21" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                                </div>
                                            </div>
                                            <br />
                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-12" style="color: white !Important; padding-bottom: 30px; padding-top: 40px; text-align: center;">
                                    <div class="input_field">
                                        <p style="color: white !Important; font-size: 28px; font-weight: 400; font-family: 'Poppins';">
                                            Insider Threat And Rogue Employee Protection
                                        </p>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                    <div class="input_field">
                                        <asp:Label ID="lblQues22" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="Access control is a security practise that controls who or what can view or use resources within the organization"></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns22" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns22" ControlToValidate="ddlAns22" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-6" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                    <div class="input_field">
                                        <asp:Label ID="lblQues23" runat="server" Text="" />
                                        <span class="fa fa-info-circle" style="color: red" data-toggle="tooltip" title="User activity monitoring is a form of surveillance to prevent insider threats, whether unintentional or with malicious intent."></span>
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns23" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns23" ControlToValidate="ddlAns23" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <div class="col-xl-6" style="color: white !Important; padding-top: 20px; padding-bottom: 20px; text-align: justify;">
                                    <div class="input_field">
                                        <asp:Label ID="lblQues24" runat="server" Text="" />
                                    </div>
                                </div>
                                <div class="col-xl-6" style="padding-top: 20px;">
                                    <div class="input_field">
                                        <asp:DropDownList runat="server" ID="ddlAns24" CssClass="form-control">
                                            <asp:ListItem Text="--SELECT--" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Yes"></asp:ListItem>
                                            <asp:ListItem Text="No"></asp:ListItem>
                                            <asp:ListItem Text="Don't Know"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator runat="server" ID="reqAns24" ControlToValidate="ddlAns24" ErrorMessage="* Required" ForeColor="Red" InitialValue="-1" />
                                    </div>
                                </div>
                                <br />
                                <div class="col-xl-12">
                                    <div class="input_field">
                                        <asp:Button ID="btnSubmit" runat="server" CssClass="boxed-btn3-line" Text="SUBMIT" OnClick="btnSubmit_Click" Font-Size="20px" Style="padding: 0px;" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Estimate_area end  -->
    </form>
</body>
</html>
