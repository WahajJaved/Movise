<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Person.aspx.cs" Inherits="DBProject.Person" %>
<asp:Content ID="Content1" ContentPlaceHolderID="searchPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceHolder" runat="server">
		<section class="welcome-area section_padding_100 mt-100 bgImg">
		<div>
			<div  id="movie-content" itemscope="" itemtype="http://schema.org/Movie">
				<div class="row">
					
					<div id="movie-poster" class="col-xs-10 col-sm-5 col-lg-4">
						<img id="personImg" runat="server" class="mainImg img-responsive" style="border-radius:10px" ssrc="#" alt=""/>
					</div>
					<div id="mobile-movie-info" class="visible-xs col-xs-10 col-sm-3 col-lg-4">
						<h1 style="font-size:40px" runat="server" id="personName"> Person Name 	 </h1>
						<h2 style="font-size: 30px;" runat="server" id="personCountry"> Genre </h2>
						<div id="info" >
							<br />
							<br />
						<h1><strong>Info</strong></h1>
						<p id="personDescript" runat="server" class="hidden-sm hidden-md hidden-lg" style="text-align:justify;">Enter the Info</p>
					</div>
						
					</div>
					<div class="col-xs-10 col-sm-4 col-lg-4"  runat="server" id="castList">
						</div>
				</div>
				<div id="movie-sub-info"  class="row">
					<div id="crew" class="col-sm-10 col-md-7 col-lg-offset-1">
					</div>
				</div>
			</div>
		</div>
	</section>
	
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

