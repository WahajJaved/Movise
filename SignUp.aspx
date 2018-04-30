<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="DBProject.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="mainPlaceHolder" runat="server">
	<section class="Sign in-area section_padding_100 mt-100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-10">
                    <div class="Sign in-heading-text text-center mb-60">
                        <span></span>
                        <h2>SIGN UP</h2>
                        <p>Enter your name, email and password to create a new account.</p>
                    </div>
                </div>
				<!-- Sign up Form Area -->
				<div class="col-10">
					<div class="Sign in-form-area">
						<form runat="server" method="post">
							<div class="row">
								<div class="col-12 text-center">
									<asp:TextBox ID="firstName" Text="" runat="server" CssClass="form-control form-inline-new" placeholder="First name" required />
									<asp:TextBox ID="lastName" Text="" runat="server" CssClass="form-control form-inline-new" placeholder="Last name" required />
									<asp:TextBox ID="email" Text="" TextMode="Email" runat="server" CssClass="form-control form-inline-new" placeholder="Email" required /><asp:TextBox ID="password" Text="" TextMode="Password" runat="server" CssClass="form-control form-inline-new" placeholder="Password" required />
									<br />
									<div id="dvMessage" runat="server" visible="false" class="alert alert-danger">
										<asp:Label ID="status" runat="server"></asp:Label>
										<asp:Label ID="lblMessage" Text="" runat="server" />
									</div>
									<br />
									<asp:Button ID="btnLogin" Text="Register" runat="server" OnClick="signupQuery" CssClass="btn btn-primary btn-registers studio-btn mt-3 signButton" />
									<br />
								</div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- Sign in Info -->
    <div class="Sign in-core-info d-flex align-items-center wow fadeInLeftBig" data-wow-delay="1s" data-wow-duration="1000ms">
        <div class="Sign inInfo">
            <img src="img/core-img/logo.png" alt=""/>

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
                            <img src="img/core-img/map.png" alt=""/>
                            <a href="#">FAST-NUCES, MILAAD STREET, FAISAL TOWN, LAHORE, PAKISTAN</a>
                        </div>
                        <!-- Single Footer Content -->
                        <div class="single-footer-content">
                            <img src="img/core-img/smartphone.png" alt=""/>
                            <a href="#">0034 37483 2445 322</a>
                        </div>
                        <!-- Single Footer Content -->
                        <div class="single-footer-content">
                            <img src="img/core-img/envelope-2.png" alt=""/>
                            <a href="#">fast@lhr.nu.edu.pk</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->
    
</asp:Content>
