    <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Web_based_Learning_System.HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

    <link href="bootstrap/css/customStyleSheet.css" rel="stylesheet" />


    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <main class="cd-main-content">
            <div class="bg-info banner bg-info p-5 text-dark" style="min-height:500px">
                <div class="container">
                    <div class="row flex-row-reverse">
                        <div class="col-lg-6 col-md-12 align-self-center">
                            <img class="image-container img-fluid p-5" src="images/hello.jpg" alt="online-courses-in-Nepal">
                        </div>
                        <div class="col-lg-6 col-md-12 align-self-center ">
                            <div class="text-container">
                                <h1 class="text-white font-weight-bold">Learn from the comfort of your home</h1>
                                <p class="text-white">
                                    We empower students with cutting-edge technology and personalized education to achieve their full potential.With advanced features and interactive tools, we make education more accessible, engaging, and effective than ever before.
                                </p>
                                <asp:LinkButton class="btn btn-light btn-lg rounded-pill mb-5 text-2" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Start Learning</asp:LinkButton>
                                
                            </div>
                        </div>
          
                    </div>
                </div>
            </div>

            <div class="py-5 bg-light" style="min-height:300px;">
                <center> 
                    <h4>Our students have been hired by</h4>
                    <div class="owl-carousel" style="max-width:600px;" id="companies">
                     <div>
                          <img class="mr-3" src="images/amazon2.png" width="100"  alt="lbef" />
                     </div> 
                     <div>
                          <img class="mr-3" src="images/paypal2.png"  alt="lbef" />
                     </div> 
                     <div>
                         <img class="mr-3" src="images/meta2.png"  alt="lbef" />
                     </div> 
                     <div>
                        <img class="mr-3" src="images/google2.png"  alt="lbef" />
                     </div> 

            
            </div>
                </center>
            </div>
            <div class="bg-info py-4">
                <div class="section-header text-center">
                    <br />
                    <h2>How does our e-learning portal work?</h2>
                    <span class="sub-text fs-2"><span class="line">4 simple steps</span> to achieve your academic goals</span>
                </div>

                <div class="row text-center mb-5">
                    <div class="col-md-3 py-sm-2">
                        <div class="steps aos-init aos-animate" data-aos="fade-right" data-aos-duration="500">
                            <img alt="create-an-account" src="images/login2.svg" height="120" width="150">

                            <h6>Create an Account</h6>
                            <h2>1</h2>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="steps aos-init aos-animate" data-aos="flip-up" data-aos-duration="700">
                            <img alt="enroll-course" src="images/start.svg" height="120" width="150">

                            <h6>Enroll Course</h6>
                            <h2>2</h2>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="steps aos-init aos-animate" data-aos="flip-up" data-aos-duration="900">
                            <img alt="learn-and-practice-anytime" src="images/date.svg" height="120" width="130">

                            <h6>Learn &amp; Practice anytime</h6>
                            <h2>3</h2>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="steps aos-init aos-animate" data-aos="fade-left" data-aos-duration="900">
                            <img alt="get-awarded" src="images/certificate.svg" height="120" width="150">

                            <h6>Get Certified</h6>
                            <h4>4</h4>
                        </div>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="mb-5 px-3 text-center">
                    <h2 class="section-header">Explore Our Top Courses &<br>
                        <b>Stay Head</b></h2>
                </div>
                <div class="row justify-content-end py-3 my-3 align-items-center flex-row-reverse">
                    <div class="col-md-6 col-sm-12 aos-init aos-animate" data-aos="fade-left" data-aos-duration="1000">
                                                
                            <img class="card-img-top" src="imgs/python.jpg" alt="Card image cap">
                            <div class="align-items-center"><br />
                                <center><a href="viewCourses.aspx" class="btn btn-info">Explore Courses</a></center>                     
                            </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 mt-3">
                        <h3 class="mt-5 mt-md-3 mb-3">Programming Fundamentals with Python</h3>
                        <p class="p-medium text-grey">
                            Behind every mouse click and touch-screen tap, there is a computer program that makes things happen.
                            <br>
                            This course introduces the fundamental building blocks of programming and
                            teaches you how to write fun and useful programs using the Python language.
                        </p>
                    </div>
                </div>
                <div class="row justify-content-start py-3 my-3 align-items-center">
                    <div class="col-md-6 col-sm-12 aos-init aos-animate" data-aos="fade-right" data-aos-duration="1000">
                                                
                            <img class="card-img-top" src="imgs/java.jpg" alt="Card image cap">
                            <div class="align-items-center"><br />
                                <center><a href="viewCourses.aspx" class="btn btn-info">Explore Courses</a></center>                     
                            </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 mt-3">
                        <h3 class="mt-5 mt-md-3 mb-3">OOP Concept with Java</h3>
                        <p class="p-medium text-grey">
                            With this Course we will provide completeness on every topic.
 This Course will make you to Strong on Theoretically and  Pro grammatically.This Course will provide Good Platform for the Advanced Technologies and Frameworks like Jdbc, Servlets, Jsps, Hibernate, JPA, Spring,.
                        </p>
                    </div>
                </div>
                <div class="row justify-content-start py-3 my-3 align-items-center flex-row-reverse">
                    <div class="col-md-6 col-sm-12 aos-init" data-aos="fade-left" data-aos-duration="1000">
                                                
                            <img class="card-img-top" src="imgs/dsa.jpg" alt="Card image cap">
                            <div class="align-items-center"><br />
                                <center><a href="viewCourses.aspx" class="btn btn-info">Explore Courses</a></center>                     
                            </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 mt-3">
                        <h3 class="mt-5 mt-md-3 mb-3">Data Structure Algorithm with C</h3>
                        <p class="p-medium text-grey">
                            Great Learning offers Post Graduate Programs in the field of 
                            Software Engineering for Data Science. You can join our Online Software Engineering Courses
                            to develop the advanced Software Engineering skills.
                      
                        </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6 col-sm-12 aos-init" data-aos="fade-right" data-aos-duration="1000">
                                                
                            <img class="card-img-top" src="imgs/sql.jpg" alt="Card image cap">
                            <div class="align-items-center"><br />
                                <center><a href="viewCourses.aspx" class="btn btn-info">Explore Courses</a></center>                     
                            </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 mt-3">
                        <h3 class="mt-5 mt-md-3 mb-3">SQL for Data Analytics</h3>
                        <p class="p-medium text-grey">
                            In this course, instead of just learning
                            about the basic fundamentals of SQL, We learn how to use
                            SQL and data to develop your Data Analytics mindset. 
                            Together, we will learn how to apply SQL and Data Analysis to real-life business use cases, to draw insights from data in order to make data-informed decisions.
                        </p>
                    </div>
                </div>
                <div class="row justify-content-start py-3 my-3 align-items-center flex-row-reverse">
                    <div class="col-md-6 col-sm-12 aos-init" data-aos="fade-left" data-aos-duration="1000">


                        
                            <img class="card-img-top" src="imgs/asp.net.jpg" alt="Card image cap">
                            <div class="align-items-center"><br />
                                <center><a href="viewCourses.aspx" class="btn btn-info">Explore Courses</a></center>                     
                            </div>
                   


                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 mt-3">
                        <h3 class="mt-5 mt-md-3 mb-3">Web Appplication in ASP.NET</h3>
                        <p class="p-medium text-grey">
                            This Course has been prepared for the beginners to help 
                            them understand basic ASP.NET programming. After completing this tutorial you will 
                            find yourself at a moderate level of expertise
                            in ASP.NET programming from where you can take yourself to next levels.
                        </p>
                    </div>
                </div>

            </div>
          <div class="cta d-block d-md-flex align-items-center px-5">
                <div>
                    <h2 class="mb-0">Ready for a next Course?</h2>
                    <h3 class="text-dark">Let's get started!</h3>
                </div>
                <div class="ml-auto">
                    <a href="Contact.aspx" class="btn btn-info rounded-5 py-3 px-5">Contact us</a>
                </div>
            </div>

        </main>
    </section>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">

    </script>
    <script>
        jQuery(document).ready(function ($) {
            "use strict";
            //  TESTIMONIALS CAROUSEL HOOK
            $('#companies').owlCarousel({
                loop: true,
                center: true,
                margin: 0,
                dots: true,
                autoplayTimeout: 1500,
                autoplay: true,
                smartSpeed: 450,
                responsive: {
                    0: {
                        items: 3
                    },
                    768: {
                        items: 3
                    },
                    1170: {
                        items: 3
                    }
                }
            });
        });
    </script>
    <script>
        AOS.init();
    </script>
</asp:Content>
