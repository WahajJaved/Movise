<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DBProject.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="searchPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainPlaceHolder" runat="server">
  <!-- About Me Area Start -->
    <section class="about-me-area mt-100 section_padding_100">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-10">
                    <div class="about-me-thumb">
                        <img src="img/bg-img/about-me.jpg" alt="">
                    </div>
                </div>
                <div class="col-10">
                    <div class="about-content mt-100 mb-100 text-center">
                        <span></span>
                        <h2>What can I tell you about me?</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel lectus eu felis semper finibus ac eget ipsum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vulputate id justo quis facilisis. Vestibulum id orci ligula. Sed tempor, nunc ut sodales pulvinar, mauris ante euismod magna, at elementum lectus leo sed enim. Praesent dictum suscipit tincidunt. Nulla facilisi. Aenean in mollis orci. Ut interdum vulputate ante a egestas. Pellentesque varius purus malesuada arcu semper vehicula.</p>
                    </div>
                </div>
                <div class="col-10">
                    <div class="row">
                        <div class="col-12 col-md-4">
                            <div class="single-service-area section_padding_0_100 text-center wow fadeInUp" data-wow-delay="0.1s">
                                <img src="img/core-img/heart.png" alt="">
                                <h5>Wedding Photography</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel lectus eu felis semper finibus ac eget ipsum. Lorem ipsum.</p>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="single-service-area section_padding_0_100 text-center wow fadeInUp" data-wow-delay="0.4s">
                                <img src="img/core-img/photo-camera.png" alt="">
                                <h5>Movie Studio Photography</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel lectus eu felis semper finibus ac eget ipsum. Lorem ipsum.</p>
                            </div>
                        </div>
                        <div class="col-12 col-md-4">
                            <div class="single-service-area section_padding_0_100 text-center wow fadeInUp" data-wow-delay="0.9s">
                                <img src="img/core-img/video-camera.png" alt="">
                                <h5>Portraits Photography</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel lectus eu felis semper finibus ac eget ipsum. Lorem ipsum.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-10">
                    <!-- Pie Bars Area Start -->
                    <div class="our-skills-area text-center">
                        <div class="row">
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="single-pie-bar" data-percent="75">
                                    <canvas class="bar-circle" width="100" height="100"></canvas>
                                    <h6>Fashion</h6>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="single-pie-bar" data-percent="83">
                                    <canvas class="bar-circle" width="100" height="100"></canvas>
                                    <h6>Portraits</h6>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="single-pie-bar" data-percent="25">
                                    <canvas class="bar-circle" width="100" height="100"></canvas>
                                    <h6>Movie Studio</h6>
                                </div>
                            </div>
                            <div class="col-12 col-sm-6 col-md-3">
                                <div class="single-pie-bar" data-percent="95">
                                    <canvas class="bar-circle" width="100" height="100"></canvas>
                                    <h6>Weddings</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Me Area End -->

    <!-- Follow Me Instagram Area Start -->
    <section class="follow-me-instagram-area clearfix">
        <div class="container">
            <div class="row">
                <div class="col-11 ml-auto">
                    <div class="follow-me-title">
                        <h5>Follow me @ Instagram</h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Instagram Feeds Area -->
        <div class="instagram-feeds-area owl-carousel">
            <div class="single-instagram-feeds">
                <img src="img/bg-img/i1.jpg" alt="">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
            <div class="single-instagram-feeds">
                <img src="img/bg-img/i2.jpg" alt="">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
            <div class="single-instagram-feeds">
                <img src="img/bg-img/i3.jpg" alt="">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
            <div class="single-instagram-feeds">
                <img src="img/bg-img/i4.jpg" alt="">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
            <div class="single-instagram-feeds">
                <img src="img/bg-img/i5.jpg" alt="">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
            <div class="single-instagram-feeds">
                <img src="img/bg-img/i6.jpg" alt="">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
            <div class="single-instagram-feeds">
                <img src="img/bg-img/i7.jpg" alt="">
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
            </div>
        </div>
    </section>
    <!-- Follow Me Instagram Area End -->

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
