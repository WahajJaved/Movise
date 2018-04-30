<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DBProject.Home" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



<asp:Content ID="searchContent" ContentPlaceHolderID="searchPlaceHolder" runat="server">
	<!-- Search Form -->

	<div class="header-search-form ml-auto">
		<form runat="server" action="#" id="searchForm">
			<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
			<div>
				<asp:TextBox ID="search" runat="server" CssClass="form-control" placeholder="Input Query"></asp:TextBox>
				<asp:Button runat="server" onclick="Search_Click" CssClass="d-none"/>
				<asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" TargetControlID="search" MinimumPrefixLength="1" EnableCaching="true" CompletionSetCount="1" CompletionInterval="200" ServiceMethod='getSearchResults' CompletionListItemCssClass="dropdown-item bg-transparent-dark font-weight-bold text-white" ></asp:AutoCompleteExtender>
			</div>
		</form>
	</div>
	
	<!-- Search btn -->
	
	<div id="searchbtn">
		<img src="img/core-img/search.png" alt="">
	</div>	
</asp:Content>


<asp:Content ID="contentMain" ContentPlaceHolderID="mainPlaceholder" runat="server">


	<!-- ***** Welcome Area Start ***** -->
	<section class="welcome-area">
		<div class="carousel h-100 slide" data-ride="carousel" id="welcomeSlider">
			<!-- Carousel Inner -->
			<div class="carousel-inner h-100">

				<div class="carousel-item h-100 bg-img active" style="background-image: url(img/bg-img/1.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>

				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/2.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/3.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/4.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/5.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/6.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/7.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/8.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/9.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/10.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/11.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/12.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
				<div class="carousel-item h-100 bg-img" style="background-image: url(img/bg-img/13.jpg);">
					<div class="carousel-content h-100">
						<div class="slide-text">

							<h2>Upcoming movies</h2>
						</div>
					</div>
				</div>
			</div>

			<!-- Carousel Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#welcomeSlider" data-slide-to="0" class="active bg-img" style="background-image: url(img/bg-img/1.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="1" class="bg-img" style="background-image: url(img/bg-img/2.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="2" class="bg-img" style="background-image: url(img/bg-img/3.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="3" class="bg-img" style="background-image: url(img/bg-img/4.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="4" class="bg-img" style="background-image: url(img/bg-img/5.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="5" class="bg-img" style="background-image: url(img/bg-img/6.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="6" class="bg-img" style="background-image: url(img/bg-img/7.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="7" class="bg-img" style="background-image: url(img/bg-img/8.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="8" class="bg-img" style="background-image: url(img/bg-img/9.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="9" class="bg-img" style="background-image: url(img/bg-img/10.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="10" class="bg-img" style="background-image: url(img/bg-img/11.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="11" class="bg-img" style="background-image: url(img/bg-img/12.jpg);"></li>
				<li data-target="#welcomeSlider" data-slide-to="12" class="bg-img" style="background-image: url(img/bg-img/13.jpg);"></li>
			</ol>
		</div>
	</section>
	<!-- ***** Welcome Area End ***** -->

</asp:Content>
