<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DBProject.Login" %>
<asp:Content ID="loginContent" ContentPlaceHolderID="mainPlaceHolder" runat="server">
	   <section class="Sign in-area section_padding_100 mt-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-10">
                    <div class="Sign in-heading-text text-center mb-45">
                        <span></span>
                        <h2>Login</h2>
                        <p>To Login, type in the email and the password for your account.</p>
                    </div>
                </div>
                <!-- Login Form Area -->
                <div class="col-10">
                    <div class="Sign in-form-area">
                        <form runat="server" method="post" id="loginForm">
                            <div class="row">
                                <div class="col-12 text-center">
                                    <asp:TextBox id="email" text="" TextMode="Email" runat="server" CssClass="form-control" placeholder="Email" required/>
                                    <br />
									<asp:TextBox id="password" text="" TextMode="Password" runat="server" CssClass="form-control" placeholder="Password" required />

                                    <div id="dvMessage" runat="server" visible="false" class="alert alert-danger">
										<asp:Label ID="status" runat="server"></asp:Label>
										<asp:Label ID="lblMessage" runat="server" />
									</div>

									<br />
                                    <button type="submit" runat="server" class="btn studio-btn mt-3" style="border-radius: 5px;" onclick="loginQuery"><img src="img/core-img/logo-icon.png" alt="" />Login</button>
                                    <br /><br />

                                    <a class="txt2" href="SignUp.aspx">
                                        Not a member yet?<br /><br>
                                        Create your Account
                                        <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
                                    </a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    
                    <!-- Login Info -->
                    <div class="Sign in-core-info d-flex align-items-center wow fadeInLeftBig" data-wow-delay="1s" data-wow-duration="1000ms">
                        <div class="Sign inInfo">
                            <img src="img/core-img/logo.png" alt="">
                          
                        </div>
                    </div>
          

    
       

    <!-- Footer Area Start -->
    <footer class="footer-area">
        <div class="container-fluid h-100">
            <div class="row h-100">
                <div class="col-12 h-100">
                    <div class="footer-content h-100 d-md-flex align-items-center justify-content-between">
                        <!-- Single Footer Content -->
                        <div class="single-footer-content">
                            <img src="img/core-img/map.png" alt="">
                            <a href="#">FAST-NUCES, MILAAD STREET, FAISAL TOWN, LAHORE, PAKISTAN</a>
                        </div>
                        <!-- Single Footer Content -->
                        <div class="single-footer-content">
                            <img src="img/core-img/smartphone.png" alt="">
                            <a href="#">0034 37483 2445 322</a>
                        </div>
                        <!-- Single Footer Content -->
                        <div class="single-footer-content">
                            <img src="img/core-img/envelope-2.png" alt="">
                            <a href="#">fast@lhr.nu.edu.pk</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->

</asp:Content>
