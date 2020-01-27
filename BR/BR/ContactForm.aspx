<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactForm.aspx.cs" Inherits="BR.ContactForm" %>

<!doctype html>
<html class="no-js" lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Bryson Insurance</title>
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

    <link rel="stylesheet" href="css/style.css">
    <!-- <link rel="stylesheet" href="css/responsive.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            // Add smooth scrolling to all links
            $("a").on('click', function (event) {
                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {
                    // Prevent default anchor click behavior
                    event.preventDefault();
                    // Store hash
                    var hash = this.hash;
                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 800, function () {
                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });
        });
    </script>

    <style>
        html {
            scroll-behaviour: smooth;
        }

        .sticky {
            position: fixed;
            top: 0;
            width: 100%;
        }

        #startBtn a {
            position: absolute;
            top: 120%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: #FFFFFF;
            padding: 30px 60px;
            font-size: 25px;
            letter-spacing: 2px;
            background-color: #ff3414 !important;
            font-weight: bold;
            text-decoration: none;
            z-index: 100;
            /*    box-shadow: 0 20px 50px rgba(0, 0, 0, 0.5);*/
            overflow: hidden;
        }

            #startBtn a:before {
                content: '';
                position: absolute;
                top: 2px;
                left: 4px;
                bottom: 2px;
                width: 50%;
                background: rgba(255, 255, 255, 0.05);
            }

            #startBtn a span:nth-child(1) {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 4px;
                background: #33ad79;
                animation: aniline1 2s linear infinite;
            }

        @keyframes aniline1 {
            0% {
                transform: translateX(-100%);
            }

            100% {
                transform: translateX(100%);
            }
        }

        #startBtn a span:nth-child(2) {
            position: absolute;
            top: 0;
            right: 0;
            width: 4px;
            height: 100%;
            background: #33ad79;
            animation: aniline2 2s linear infinite;
            animation-delay: 1s;
        }

        @keyframes aniline2 {
            0% {
                transform: translateY(-100%);
            }

            100% {
                transform: translateY(100%);
            }
        }


        #startBtn a span:nth-child(3) {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: #33ad79;
            animation: aniline3 2s linear infinite;
        }

        @keyframes aniline3 {
            0% {
                transform: translateX(100%);
            }

            100% {
                transform: translateX(-100%);
            }
        }


        #startBtn a span:nth-child(4) {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 4px;
            height: 100%;
            background: #33ad79;
            animation: aniline4 2s linear infinite;
            animation-delay: 1s;
        }

        @keyframes aniline4 {
            0% {
                transform: translateY(100%);
            }

            100% {
                transform: translateY(-100%);
            }
        }

        .single_carousel {
            float: left;
            margin-bottom: 30px;
            box-shadow: 0 20px 50px rgba(0, 0, 0, 0.5);
        }

        
/* line 2, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
        .testimonial_area {
            background-image: url(../report_images/testimonial_bg.jpg);
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
            position: relative;
            padding: 122px 0 122px 0;
        }

@media (max-width: 767px) {
  /* line 2, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
  .testimonial_area {
    padding: 50px 0;
  }
}

/* line 12, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .testmonial_active {
  background: #fff;
  -webkit-border-radius: 10px;
  -moz-border-radius: 10px;
  border-radius: 10px;
  padding: 50px 60px 66px 60px;
}

@media (max-width: 767px) {
  /* line 12, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
  .testimonial_area .testmonial_active {
    padding: 40px 25px 40px 25px;
  }
}

/* line 22, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .single_testmonial p {
  color: #001D38;
  font-weight: 400;
  font-size: 20px;
  line-height: 32px;
  margin: 34px 0;
}

@media (min-width: 320px) and (max-width: 1500px) {
  /* line 28, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
  .testimonial_area .single_testmonial p br {
    display: none;
  }
}

/* line 35, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .single_testmonial .testmonial_author {
  padding-bottom: 35px;
}

/* line 37, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .single_testmonial .testmonial_author .thumb {
  width: 42px;
  height: 42px;
  -webkit-border-radius: 50%;
  -moz-border-radius: 50%;
  border-radius: 50%;
  margin: auto;
  margin: auto auto 15px auto;
}

/* line 44, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .single_testmonial .testmonial_author h3 {
  color: #001D38;
  font-size: 15px;
  font-weight: 500;
  margin-bottom: 5px;
}

/* line 50, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .single_testmonial .testmonial_author span {
  font-size: 13px;
  font-weight: 400;
  color: #596672;
}

/* line 57, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .owl-carousel .owl-item img {
  display: inline-block;
  width: auto;
}

/* line 61, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .owl-carousel .owl-nav div.owl-next {
  left: auto;
  right: 0;
}

/* line 65, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .owl-carousel .owl-nav div {
  left: 0;
}

/* line 69, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .owl-dots {
  position: absolute;
  left: 50%;
  transform: translateX(-50%);
}

/* line 73, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .owl-dots .owl-dot {
  width: 14px;
  height: 14px;
  background: #FFD6D0;
  display: inline-block;
  margin: 0 5px;
  border-radius: 50%;
  text-align: center;
}

/* line 81, ../../Arafath/CL/Cl November/223. Transportation/HTML/scss/_testmonial.scss */
.testimonial_area .owl-dots .owl-dot.active {
  background: #FF3414;
}
    </style>
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->

    <!-- header-start -->
    <header>
        <div class="header-area " id="sThEader" style="position: fixed; top: 0;">
            <div class="header-top_area d-none d-lg-block" style="padding: 10px 0;">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-xl-4 col-lg-4">
                            <div class="logo">
                                <a href="index.html">
                                    <img src="img/logo-sm.png" alt="" style="width:250px; height:75px;">
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

    <!-- slider_area_start -->

    <div class="slider_area">
        <div class="single_slider  d-flex align-items-center slider_bg_1">
            <div class="container">
                <div class="row align-items-center justify-content-center">
                    <div class="col-xl-8">
                        <div class="slider_text text-center justify-content-center">
                            <p>
                                As per the 2019 Scalar Security Study, it has been found that 100 % of Canadian businesses surveyed have experienced a cyber security attack in the past 12 months.<br />
$9500 is the average hourly loss to SMEs experiencing cyber related downtime.<br />
Bryson Insurance has the cyber insurance solution for you and your business. To understand your business and recommend the appropriate cyber insurance, we would like to perform a short risk assessment.<br />
                                To begin click on the below button.

                            </p>

                            <div class="book_btn d-none d-lg-block">
                                <p id="startBtn">
                                    <a href="#contactArea">
                                        <span></span>
                                        <span></span>
                                        <span></span>
                                        <span></span>Let's Get Started

                                    </a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider_area_end -->

    <div class="transportaion_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single_transport" style="box-shadow: 10px 0 5px -2px #888;width:350px;height:450px;">
                        <div class="icon">
                            <img src="img/svg_icon/airplane.png" alt="">
                        </div>
                        <h3>What is cyber risk insurance?</h3>
                        <p>
                            Cyber risk insurance is designed to support your business if computer networks are breached, causing information to be stolen or ransomed, 
                            business operations to be interrupted, computer systems to be corrupted, and other serious professional consequences.
                        </p>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single_transport" style="box-shadow: 10px 0 5px -2px #888;width:350px;height:450px;">
                        <div class="icon">
                            <img src="img/svg_icon/live.png" alt="">
                        </div>
                        <h3>Who needs cyber risk insurance?</h3>
                        <p>
                            Do you handle information electronically? Unless you’re still using pencil and paper to facilitate, your data is likely vulnerable.
                            A business doesn’t need to be rooted in the tech sphere to be prone to cybercrime – any business that uses computers is exposed to cyber risk.
                        </p>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6">
                    <div class="single_transport" style="box-shadow: 10px 0 5px -2px #888;width:350px;height:450px;">
                        <div class="icon">
                            <img src="img/svg_icon/world.png" alt="">
                        </div>
                        <h3>How we can help?</h3>
                        <p>
                            Keeping your guard up can be a full-time job, but we can help ease the burden with smart and focused cyber support. 
                            From ransomware to lost devices, we’ve got you covered with first-party
                            and third-party cyber coverage, plus protection for the data stored on your system or on another system.Scroll down below to know more about the coverages we offer.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="service_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="section_title mb-50 text-center">
                        <h3>Services We Offer
                        </h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-12">
                    <div class="service_active owl-carousel">
                        <div class="single_service">
                            <div class="thumb">
                                <img src="report_images/Third%20party%20risk%20management.jpg" alt="" style="width:350px;height:250px;">
                            </div>
                            <div class="service_info">
                                <h3><a href="service_details.html">Third party claims</a></h3>
                                <p>
                                    Post a cyber breach, a company can be sued by its clients for failing in its responsibility 
                                    to a client’s online security. A third-party coverage can provide for expenses (but not limited to) such as:<br />
                                        • Lawsuits <br />
                                        • Different types of infringement  <br />
                                        • Privacy liabilities <br />
                                </p>
                            </div>
                        </div>
                        <div class="single_service">
                            <div class="thumb">
                                <img src="report_images/first_partyclaims.jpg" alt="" style="width:350px;height:250px;">
                            </div>
                            <div class="service_info">
                                <h3><a href="service_details.html">First party claims</a></h3>
                                <p>
                                    Resulting from a cyber breach, an organization can face financial fallouts. 
                                    First party coverages can provide for expenses (but not limited to) such as:<br />
                                        • Notification costs<br />
                                        • PCI fines<br />
                                        • Credit monitoring<br />
                                        • Business interruption and Recovery <br />
                                </p>
                            </div>
                        </div>
                        <div class="single_service">
                            <div class="thumb">
                                <img src="report_images/crimes.jpg" alt="" style="width:350px;height:250px;">
                            </div>
                            <div class="service_info">
                                <h3><a href="service_details.html">Crime</a></h3>
                                <p>
                                   Hackers have used malwares like ransomwares to block the victim’s owned data unless the requested ransom is paid.
                                    We can provide for expenses (but not limited to) arising from a cyber-attack such as:<br />
                                    • Network Extortion <br />
                                    • Electronic data theft <br />
                                    • Telephone Hacking <br />
                                    • Social Engineering Fraud <br />

                                </p>
                            </div>
                        </div>
                        <div class="single_service">
                            <div class="thumb">
                                <img src="report_images/others_claims.png" alt="" style="width:350px;height:250px;">
                            </div>
                            <div class="service_info">
                                <h3><a href="service_details.html">Other coverages</a></h3>
                                <p>
                                    A cyber attack can take place in many ways, which can put your company at risk. We have you covered for your data and other company assets.<br />
                                    • Rogue employee or insider threats<br />
                                   • Physical documents <br />
                                    • Mobile devices <br />
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- contact_action_area  -->
    <div class="contact_action_area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-7 col-md-6">
                    <div class="action_heading">
                        <h3>100% secure and safe</h3>
                        <p>
                            Recover rapidly with Cyber Assist – at no additional cost!
                        </p>
                    </div>
                </div>
                <div class="col-xl-5 col-md-6">
                    <div class="call_add_action">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /contact_action_area  -->
    <!-- chose_area  -->
    <div class="chose_area ">
        <div class="container">
            <div class="features_main_wrap">
                <div class="row  align-items-center">
                    <div class="col-xl-5 col-lg-5 col-md-6">
                        <div class="about_image">
                            <img src="img/about/aboutus_img.png" alt="" />
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6">
                        <div class="features_info">
                            <h3>Why Choose Us?</h3>
           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ chose_area  -->

    <!-- counter_area  -->
    <div class="counter_area">
        <div class="container">
            <div class="offcan_bg">
                <div class="row">
                    <div class="col-xl-3 col-md-3">
                        <div class="single_counter text-center">
                            <h3><span class="counter">42</span> <span>+</span> </h3>
                            <p>Countries Covered</p>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-3">
                        <div class="single_counter text-center">
                            <h3><span class="counter">97</span> <span>+</span> </h3>
                            <p>Business Success</p>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-3">
                        <div class="single_counter text-center">
                            <h3><span class="counter">2342</span></h3>
                            <p>Happy Client</p>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-3">
                        <div class="single_counter text-center">
                            <h3><span class="counter">3245</span></h3>
                            <p>Business Done</p>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- /counter_area  -->

    <!-- testimonial_area  -->
    <div class="testimonial_area">
        <div class="container">
            <div class="row">
                <div class="col-xl-7">
                    <div class="testmonial_active owl-carousel">
                        <div class="single_carousel">
                            <div class="single_testmonial text-center">
                                <div class="quote">
                                    <img src="img/svg_icon/quote.svg" alt="">
                                </div>
                                <p>These cyber events are impacting companies and customers alike. Small and medium-sized businesses are the most common victims of cyber breaches. 
                                    This is likely the result of the time and resources small and medium-sized businesses can spend on cyber security. 
                                </p>
                                <div class="testmonial_author">
                                    <div class="thumb">
                                        <img src="img/case/testmonial.png" alt="">
                                    </div>
                                    <h3>Tracy L. Makris</h3>
                                    <span>President at Bryson Insurance</span>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="single_testmonial text-center">
                                <div class="quote">
                                    <img src="img/svg_icon/quote.svg" alt="">
                                </div>
                                <p> Improve online safety for yourself and your children, specific social apps 
                                    that are especially dangerous for children, predatory research and information gathering tactics</p>
                                <div class="testmonial_author">
                                    <div class="thumb">
                                        <img src="img/case/testmonial.png" alt="">
                                    </div>
                                    <h3>Kyle Paterson</h3>
                                    <span>Director of Culture and Business Development</span>
                                </div>
                            </div>
                        </div>
                        <div class="single_carousel">
                            <div class="single_testmonial text-center">
                                <div class="quote">
                                    <img src="img/svg_icon/quote.svg" alt="">
                                </div>
                                <p>Donec imperdiet congue orci consequat mattis. Donec rutrum porttitor sollicitudin.
                                    Pellentesque id dolor tempor sapien feugiat ultrices.</p>
                                <div class="testmonial_author">
                                    <div class="thumb">
                                        <img src="img/case/testmonial.png" alt="">
                                    </div>
                                    <h3>Robert Thomson</h3>
                                    <span>Business Owner</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /testimonial_area  -->

    <!-- Estimate_area start  -->
    <section class="Estimate_area overlay" id="contactArea">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-lg-4 col-md-5">
                    <div class="Estimate_info">
                        <h3>Basic Information</h3>
                        <p>
                            Let's start by getting details about you and your business. 
                            <br />
                            After providing the details, click <b style="color: #ff3414; font-size:20px;">Next</b>
                        </p>
                        <!--   <a href="#" class="boxed-btn3">+10 672 457 356</a> -->
                    </div>
                </div>
                <div class="col-xl-8 col-lg-8 col-md-7">
                    <div class="form">
                        <form action="#" id="form1" runat="server">
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="input_field">
                                        <%--<input type="text" placeholder="Your name">--%>
                                        <asp:TextBox ID="txtname" runat="server" placeholder="Full Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="reqName" ControlToValidate="txtName" ErrorMessage="* Required" ForeColor="Red" />
                                        <asp:RegularExpressionValidator runat="server" ID="rexName" ControlToValidate="txtname" ValidationExpression="^[a-zA-Z].*[\s\.]*$" ErrorMessage="* Invalid" ForeColor="Red" />
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field">
                                        <asp:TextBox ID="txtemailid" runat="server" placeholder="Email"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="reqEmail" ControlToValidate="txtemailid" ErrorMessage="* Required" ForeColor="Red" />
                                        <asp:RegularExpressionValidator ID="rexEmail" runat="server" ControlToValidate="txtemailid" ErrorMessage="* Invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field">

                                        <asp:TextBox ID="txtcontactNo" runat="server" placeholder="10 digit phone number"></asp:TextBox>
                                        <asp:RequiredFieldValidator runat="server" ID="reqContactNo" ControlToValidate="txtcontactNo" ErrorMessage="* Required" ForeColor="Red" />
                                        <asp:RegularExpressionValidator ID="rexContactNo" runat="server" ErrorMessage="* Invalid" ControlToValidate="txtcontactNo" ForeColor="Red" ValidationExpression="^[0-9]{10}"></asp:RegularExpressionValidator>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field">

                                        <asp:DropDownList runat="server" ID="ddlAns1" CssClass="form-control" class="wide">
                                            <asp:ListItem Text="" Value="-1" Selected="True">Annual Revenue Range</asp:ListItem>
                                            <asp:ListItem Text="1M - $5M" Value="1"></asp:ListItem>
                                            <asp:ListItem Text="5M - $10M" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="10M - $25M" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="25M - $50M" Value="4"></asp:ListItem>
                                            <asp:ListItem Text="50M - $100M" Value="5"></asp:ListItem>
                                            <asp:ListItem Text="More Than 100M" Value="6"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="reqQues1" runat="server" ControlToValidate="ddlAns1" InitialValue="-1" ErrorMessage="* Required" ForeColor="Red" />

                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field">

                                        <asp:DropDownList runat="server" ID="ddlAns2" CssClass="form-control" class="wide">
                                            <asp:ListItem Text="Number Of Employees" Value="-1" Selected="True"></asp:ListItem>
                                            <asp:ListItem Text="Less Than 25" Value="3"></asp:ListItem>
                                            <asp:ListItem Text="25 To 100" Value="2"></asp:ListItem>
                                            <asp:ListItem Text="More Than 100" Value="1"></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="reqQues2" runat="server" ControlToValidate="ddlAns2" InitialValue="-1" ErrorMessage="* Required" ForeColor="Red" />
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="input_field">

                                        <asp:DropDownList runat="server" ID="ddlAns3" CssClass="form-control" class="wide">
                                            <%--<asp:ListItem Text="Industry" Value="-1" Selected="True"></asp:ListItem>--%>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="reqQues3" runat="server" ControlToValidate="ddlAns3" InitialValue="-1" ErrorMessage="* Required" ForeColor="Red" />
                                    </div>
                                </div>

                                <div class="col-xl-12">
                                    <div class="input_field">
                                        <asp:Button ID="btnSubmit" runat="server" class="boxed-btn3-line" Text="Next" OnClick="btnSubmit_Click" />
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Estimate_area end  -->




    <!-- footer start -->
    <footer class="footer">
        <div class="footer_top">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget">
                            <h3 class="footer_title">Services
                            </h3>
                            <ul>
                                <li><a href="#">Air Transportation</a></li>
                                <li><a href="#">Ocean Freight</a></li>
                                <li><a href="#">Ocean Cargo</a></li>
                                <li><a href="#">Logistics</a></li>
                                <li><a href="#">Warehouse Moving</a></li>
                            </ul>

                        </div>
                    </div>
                    <div class="col-xl-2 col-md-6 col-lg-2">
                        <div class="footer_widget">
                            <h3 class="footer_title">Company
                            </h3>
                            <ul>
                                <li><a href="#">About</a></li>
                                <li><a href="#">News</a></li>
                                <li><a href="#">Testimonials</a></li>
                                <li><a href="#">Why Us?</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6 col-lg-3">
                        <div class="footer_widget">
                            <h3 class="footer_title">Industries
                            </h3>
                            <ul>
                                <li><a href="#">Chemicals</a></li>
                                <li><a href="#">Automotive</a></li>
                                <li><a href="#">Consumer Goods</a></li>
                                <li><a href="#">Life Science</a></li>
                                <li><a href="#">Foreign Trade</a></li>
                            </ul>
                        </div>
                    </div>
                    <%--<div class="col-xl-4 col-md-6 col-lg-4">
                        <div class="footer_widget">
                            <h3 class="footer_title">Subscribe
                            </h3>
                            <form action="#" class="newsletter_form">
                                <input type="text" placeholder="Enter your mail">
                                <button type="submit">Subscribe</button>
                            </form>
                            <p class="newsletter_text">
                                Esteem spirit temper too say adieus who direct esteem esteems
                                luckily.
                            </p>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
        <div class="copy-right_text">
            <div class="container">
                <div class="footer_border"></div>
                <div class="row">
                    <div class="col-xl-12">
                        <p class="copy_right text-center">
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>


                                                    <div class="modal fade custom_search_pop" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                                        <div class="modal-dialog modal-dialog-centered" role="document">
                                                            <div class="modal-content">
                                                                <div class="serch_form">
                                                                    <input type="text" placeholder="search">
                                                                    <button type="submit">search</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

    <!-- JS here -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/ajax-form.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/scrollIt.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/nice-select.min.js"></script>
    <script src="js/jquery.slicknav.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/plugins.js"></script>
    <!-- <script src="js/gijgo.min.js"></script> -->
    <script src="js/slick.min.js"></script>



    <!--contact js-->
    <script src="js/contact.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.form.js"></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script>



</script>

    <script src="js/main.js"></script>




</body>

</html>
