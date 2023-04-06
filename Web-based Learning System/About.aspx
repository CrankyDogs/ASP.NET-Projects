<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Web_based_Learning_System.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        *{
  margin:0;
  padding:0;
  box-sizing: border-box;
}
        h3{
            width:650px;
            margin-left:250px;
        }
span{
  display: inline-block;
  text-decoration: none;
  color: inherit;
}
.section-head{
  margin-bottom: 60px;
}
.section-head h4{
  position: relative;
  padding: 0;
  color:#17A2B8;
  line-height: 1;
  letter-spacing: 0.3px;
  font-size:34px;
  font-weight:700;
  text-align: center;
  text-transform: none;
  margin-bottom: 30px;
}
.section-head h4::before{
  content:'';
  width:60px;
  height:3px;
  background:#17A2B8;
  position:absolute;
  bottom:-10px;
  left:0;
  right:0;
  margin:0 auto;
}
.section-head h4 span{
  font-weight: 700;
  padding-bottom: 5px;
  color:#2f2f2f;
} 
.section-head p{
  color:#818181;
  font-size: 16px;
  line-height: 28px;
  text-align: center;
}
.item{
  background:#fff;
  text-align: center;
  padding:30px 25px;
  box-shadow: 0 0 25px rgba(0,0,0,0.07);
  border-radius: 20px;
  margin-bottom: 30px;
  border:5px solid rgba(0,0,0,0.07);
  -webkit-transition:all 0.5s ease 0s;
  transition:all 0.5s ease 0s;
}
.item:hover{
  background:#17A2B8;
  box-shadow: 0 8px 20px 0 rgba(0,0,0,0.2);
  -webkit-transition:all 0.5s ease 0s;
  transition:all 0.5s ease 0s;
}
.item:hover .item,
.item:hover span.icon{
  background:#fff;
  border-radius: 10px;
  -webkit-transition:all 0.5s ease 0s;
  transition:all 0.5s ease 0s;
}
.item:hover h6,
.item:hover p{
  color:#fff;
  -webkit-transition:all 0.5s ease 0s;
  transition:all 0.5s ease 0s;
}
.item .icon{
  font-size:40px;
  margin-bottom: 25px;
  color:#17A2B8;
  width:90px;
  height:90px;
  line-height: 96px;
  border-radius: 50px;
}
.item .feature_box_col_one{
  background:rgba(247,198,5,0.2);
  color:#17A2B8;
}
.item .feature_box_col_two{
  background: rgba(255, 77, 28, 0.15);
  color:#17A2B8;
}
.item .feature_box_col_three{
  background:rgba(0,147,38,0.15);
  color:#17A2B8;
}
.item .feature_box_col_four{
  background:rgba(0,108,255,0.15);
  color:#17A2B8;
}
.item .feature_box_col_five{
  background:rgba(146,39,255,0.15);
  color:#17A2B8;
}
.item .feature_box_col_six{
  background:rgba(23,39,246,0.15);
  color:#17A2B8;
}
.item p{
  font-size: 15px;
  line-height: 26px;
}
.item h6{
  margin-bottom: 20px;
  color:#2f2f2f;
}

.carousel-inner{
    min-height:500px;
    text-align:center;
    color:#fff;
    font-size:20px;
}

.carousel-inner p{
    padding:10px 16px;
}

.carousel-inner h1{
    font-family:"Ubuntu",sans-serif;
    font-size:32px;
    font-weight:700;
    text-transform:uppercase;
    letter-spacing:1.1px;
    margin:2rem;
}

h3{
    font-family:"Ubuntu",sans-serif;
    font-size:24px;
    font-weight:700;
}

.outer-carousel{
    padding:5rem 0 ;
    background-color:#023e8a;
    margin:0;
}



  
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;700&display=swap" rel="stylesheet">


  <div class="outer-carousel">
    <div class="container text-center">
        <h1 class="text-light">Why <span class="text-warning border-bottom border-warning"> Choose</span> Us?</h1>
   <%--    <div class="row">
        <div class="section-head col-sm-12">
          <h4><span>Why Choose</span> Us?</h4>
          <p>Enrol-On helps to level the playing field for all of our students. <br />
              They gain skills and experiences that are highly sought after in the global marketplace.</p>
        </div>
        <div class="col-lg-4 col-sm-6">
          <div class="item"> <span class="icon feature_box_col_one"><i class="fa fa-globe"></i></span>
            <h6>Global Reach</h6>
            <p>We have student all over the world, 140 countries and still adding. </p>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6">
          <div class="item"> <span class="icon feature_box_col_two"><i class="fa fa-anchor"></i></span>
            <h6>Creative Tutorials</h6>
            <p>Best ways is to practice. We provided tailored practice questions</p>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6">
          <div class="item"> <span class="icon feature_box_col_three"><i class="fa fa-hourglass-half"></i></span>
            <h6>Fexible Time</h6>
            <p>Learn and grow with in you own time. The only competetion you have with is with yourself.</p>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6">
          <div class="item"> <span class="icon feature_box_col_four"><i class="fa fa-database"></i></span>
            <h6>SQL Database</h6>
            <p>Store all your files safetly with us</p>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6">
          <div class="item"> <span class="icon feature_box_col_five"><i class="fa fa-upload"></i></span>
            <h6>Upload Test</h6>
            <p>Upload and track yur progress with us</p>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6">
          <div class="item"> <span class="icon feature_box_col_six"><i class="fa fa-camera"></i></span>
            <h6>Get Certified</h6>
            <p>Get Worldwide Valid Certificate</p>
          </div>
        </div>
      </div>
       --%>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner py-5">
    <div class="carousel-item active">
        <h1>
            Interactive
        </h1> 
        <div >
            <h3>we are dedicated to providing high-quality online learning experiences to students of all ages and backgrounds. Our mission is to make education more accessible and engaging, and to help our users achieve their personal and professional goals.</h3>
        </div>
    </div>
    <div class="carousel-item">
      <h1>Economic</h1>
        <div>
            <h3>we believe that learning should be fun and engaging, and that everyone should have the opportunity to learn and grow. That's why we offer a wide range of courses on a variety of topics, from academic subjects to personal development and career skills.</h3>
                   </div>
    </div>
    <div class="carousel-item">
      <h1>Portable</h1>
        <div>
            <h3>Our team is made up of experts in education, technology, and design, who are committed to creating the best possible learning experiences for our users. We work together to develop courses, design interactive activities, and provide support and guidance to our students.</h3>
            
        </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon text-dark" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>



</asp:Content>
