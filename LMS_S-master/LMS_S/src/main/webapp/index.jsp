<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%
   response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Cache-Control","must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", -1);

	   if(session.getAttribute("name")==null)
	   response.sendRedirect("login.jsp");

%>
    <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("name");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "nishant";
String userid = "root";
String password = "nishant98";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
    
<!doctype html>
<html lang="en">

<head>
<script>
history.forward()
</script>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
    integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <!-- cdnjs font awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

  <!-- CSS -->
  <link rel="stylesheet" href="CSS_HOME\Style-H.css">
  <title>Online Courses-Learn Everywere | Learning Management System</title>

</head>


<body>
  
  <header class="header">
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-light shadow-sm">
      <img src="Image-H\Learning management system.jpg" alt="Refresh:(" width="40" height="40">
      <a class="navbar-brand text-primary" href="#"><b>Learning Management System</b></a>
      <button class="navbar-toggler collapsed " type="button" data-toggle="collapse" data-target="#navbarCollapse"
        aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon bg-dark"></span>
      </button>
      <div class="navbar-collapse collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item ">
            <a class="nav-link text-primary" href="#">Home</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-primary" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Courses
            </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="python.html">Python</a>
              <a class="dropdown-item" href="#">Artificial Intelligence</a>
              <a class="dropdown-item" href="#">Machine Learning</a>
              <a class="dropdown-item" href="css.html">Frontend Developement</a>
              <a class="dropdown-item" href="#">Backend Developement</a>
              <a class="dropdown-item" href="#">C++</a>
              <a class="dropdown-item" href="#">Java</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="coursecatalogue.jsp">All Courses</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link  text-primary" href="#section-service">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-primary " href="#team">Team</a>
          </li>
          <li class="nav-item">
            <a class="nav-link  text-primary" href="profile.jsp?uname=<%=session.getAttribute("name")%>" target="_blank" >My Profile</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-primary " href="#">About Us</a>
          </li>
        </ul>
     
        <div class="btn-group">
          <button type="button" class="btn  dropdown-toggle " data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            <a class="btn btn-header" href="#" width="100%">
              <img src="Image-H\Person-circle1.png" alt="Refresh|:(" width="30" height="30">
            </a>
          </button>
          <div class="dropdown-menu dropdown-menu-right">
         
            <a href="profile.jsp?uname=<%=session.getAttribute("name")%>" target="_blank"><button class="dropdown-item" type="button"><%=session.getAttribute("name") %></button></a>
            <a href="logout"><button class="dropdown-item" type="button">Logout</button></a>
            <button class="dropdown-item" type="button">About Us</button>
          </div>
        </div>
          </div>
    </nav>
  </header>

  <!-- Main Section -->
  <main class="main">
    <div class="section-carousel">
      <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="Image-H\Carousel1.jpg" class="d-block w-100 h-15" alt="Refresh :(">
            <div class="carousel-caption d-none d-md-block text-light">
              <h2><b>One LMS</b></h2>
              <p>Here one Website you can get all facillities...One learning management System can fullfill Students
                need.</p>
            </div>
          </div>
          <div class="carousel-item">
            <img src="Image-H\carousel3.png" class="d-block w-100" alt="Refredsh :(">
            <div class="carousel-caption d-none d-md-block text-light">
              <h2><b>Accessible from Anywere</b></h2>
              <p> Teachers can teach classes with one or more students anywhere and anytime. They can interact with
                students and solve their problems instantly.</p>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </div>

    <!-- Course selection -->
    <div class="container" id="Course">
      <h1 class="heading" ><b>CHOOSE YOUR INTRESTED SKILLS</b></h1>
      <div class="box-container">
        <div class="box">
          <div class="image">
            <img src="Image-H\Python programming.jfif" alt="Refresh :(">
          </div>
          <div class="content">
            <h3><b>Learn Python:The complete Python Programming Course</b></h3>
            <p>A-z all about Python Programming Beginning to Advance...</p>
            <p class="teacher">Subhhankar Guha</p>
            <p class="price">Price: $10</p>
            <a href="python.html"  class="btnC">Read More</a>
            <div class="icons">
              <span><i class="fas fa-calendar"></i>21st may,2022</span>
              <span><i class="fas fa-user"> </i>Subhankar Guha</span>
            </div>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="Image-H\AI programming.jpg" alt="Refresh :(">
          </div>
          <div class="content">
            <h3><b>Learn Artificial Intelligence:The Artificial Intelligence Programming Course</b></h3>
            <p>Describe Artificial Intelligence ,Code with AI and MAke a project based on Artificial Intelligence</p>
            <p>Binod Baxi</p>
            <p class="price">Price: $80</p>
            <a href="#" class="btnC">Read More</a>
            <div class="icons">
              <span><i class="fas fa-calendar"></i>11th August,2022</span>
              <span><i class="fas fa-user"></i> Baxi</span>
            </div>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="Image-H\c++ programming.jpg" alt="Refresh :(">
          </div>
          <div class="content">
            <h3><b>Learn C++:The complete C++ Programming Course</b></h3>
            <p>A-z all about C++ Programming Beginning to Advance</p>
            <p>Sayan Nath</p>
            <p class="price">Price: $20</p>
            <a href="html.html"  class="btnC">Read More</a>
            <div class="icons">
              <span><i class="fas fa-calendar"></i>19th January,2022</span>
              <span><i class="fas fa-user"></i> Nath</span>
            </div>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="Image-H\java Programming.jpg" alt="Refresh :(">
          </div>
          <div class="content">
            <h3><b>Learn Java:The complete Java Programming Course</b></h3>
            <p>All Covered Core Java to Advance Java...</p>
            <p class="teacher">Debobroto Gosh</p>
            <p class="price">Price: $50</p>
            <a href="#" class="btnC">Read More</a>
            <div class="icons">
              <span><i class="fas fa-calendar"></i>31st june,2022</span>
              <span><i class="fas fa-user"></i>Debobroto Gosh</span>
            </div>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="Image-H\Machine Learning.jpg" alt="Refresh :(">
          </div>
          <div class="content">
            <h3><b>Learn Machine Learning:The Machine Learning Programming Course</b></h3>
            <p>Describe Machine Larning ,Code with ML and Make a project based on Machine Larning</p>
            <p>Alok Srivastav</p>
            <p class="price">Price: $70</p>
            <a href="#" class="btnC">Read More</a>
            <div class="icons">
              <span><i class="fas fa-calendar"></i>23rd may,2022</span>
              <span><i class="fas fa-user"></i>Alok Srivastav</span>
            </div>
          </div>
        </div>
        <div class="box">
          <div class="image">
            <img src="html.jfif" alt="Refresh :(">
          </div>
          <div class="content">
            <h3><b>Full Course of Html and Css</b></h3>
            <p>Covered HTML and CSS Biginner to adbvance , Make a Project with full frontend....</p>
            <p>Somnath Mondal</p>
            <p class="price">Price: $15</p>
            <a href="css.html"  class="btnC">Read More</a>
            <div class="icons">
              <span><i class="fas fa-calendar"></i>23rd may,2022</span>
              <span><i class="fas fa-user"></i>Somnath Mondal</span>
            </div>
          </div>
        </div>
      </div>
      <div id="load-more">Load More</div>
    </div>

    <!-- Admin Section -->
    <div class="section-admin">
      <section class="section section-hero">
        <div class="containerA grid grid-two-column">
          <div class="hero-data">
            <h1 class="primary-heading">Educator's Area</h1>
            <p class="para">
              Create your own Course and Published, Which will help those Students are find you as a mentor.Through our
              LMS you can teach many of students.So, click Get Started...
            </p>
            <a href="EducatorSection.jsp"  class="btnA" target="_blank">Educator Section</a>

          </div>
          <!-- Right side hero Section -->
          <div class="hero-image">
            <img src="Image-H\Admiin.png" alt="Refresh :(" class="image">
          </div>
        </div>
      </section>
    </div>

    <!-- Service Section -->
    <div id="section-service">
      <section class="service">
        <div class="container">
          <div class="headingS">
            <h1><b>Our Services</b></h1>
          </div>
          <div class="bodyS">
            <div class="row">
              <div class="col-md-4">
                <h2>Online Courses</h2>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor
                  mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna
                  mollis euismod. Donec sed odio dui. </p>
                
              </div>
              <div class="col-md-4">
                <h2>Best Online Educators</h2>
                <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor
                  mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna
                  mollis euismod. Donec sed odio dui. </p>
                
              </div>
              <div class="col-md-4">
                <h2>Provide Better Study material</h2>
                <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula
                  porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh,
                  ut fermentum massa justo sit amet risus.</p>
                
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
    <!-- Team Section -->
    <div id="team">
      <section class="Team-section">
        <div class="container">
          <div class="heading">Team Members</div>
          <div class="bodyS">
            <div class="containerTS">
              <!-- Three columns of text below the carousel -->
              <div class="slide-containerTS">
                  <div class="slide-content">
                    <img src="Image-H\IMG_20220806_143237.jpg" alt="Refresh :("
                      class="bd-placeholder-img rounded-circle" width="140" height="140">
                    <rect width="100%" height="100%" fill="#777"></rect>
                    <h2>Somnath Mondal</h2>
                    <p>B-tech Cse 3rd year</p>
                    <p>fRONTEND,Website Designer</p>
                  </div>
                  
                  <div class="slide-content">
                    <img src="Image-H\IMG_20220806_143237.jpg" alt="Refresh :("
                      class="bd-placeholder-img rounded-circle" width="140" height="140">
                    <rect width="100%" height="100%" fill="#777"></rect>
                    <h2>Somnath Mondal</h2>
                    <p>B-tech Cse 3rd year</p>
                  </div>
                  
                  <div class="slide-content">
                    <img src="Image-H\IMG_20220806_143237.jpg" alt="Refresh :("
                      class="bd-placeholder-img rounded-circle" width="140" height="140">
                    <rect width="100%" height="100%" fill="#777"></rect>
                    <h2>Somnath Mondal</h2>
                    <p>B-tech Cse 3rd year</p>
                  </div>
                  
                  <div class="slide-content">
                    <img src="Image-H\IMG_20220806_143237.jpg" alt="Refresh :("
                      class="bd-placeholder-img rounded-circle" width="140" height="140">
                    <rect width="100%" height="100%" fill="#777"></rect>
                    <h2>Somnath Mondal</h2>
                    <p>B-tech Cse 3rd year</p>
                  </div>
                  
                  <div class="slide-content">
                    <img src="Image-H\IMG_20220806_143237.jpg" alt="Refresh :("
                      class="bd-placeholder-img rounded-circle" width="140" height="140">
                    <rect width="100%" height="100%" fill="#777"></rect>
                    <h2>Somnath Mondal</h2>
                    <p>B-tech Cse 3rd year</p>
                  </div>
                  
                  <div class="slide-content">
                    <img src="Image-H\IMG_20220806_143237.jpg" alt="Refresh :("
                      class="bd-placeholder-img rounded-circle" width="140" height="140">
                    <rect width="100%" height="100%" fill="#777"></rect>
                    <h2>Somnath Mondal</h2>
                    <p>B-tech Cse 3rd year</p>
                  </div>
                  
                  <div class="slide-content">
                    <img src="Image-H\IMG_20220806_143237.jpg" alt="Refresh :("
                      class="bd-placeholder-img rounded-circle" width="140" height="140">
                    <rect width="100%" height="100%" fill="#777"></rect>
                    <h2>Somnath Mondal</h2>
                    <p>B-tech Cse 3rd year</p>
                  </div>
                  
                  <div class="slide-content">
                    <img src="Image-H\IMG_20220806_143237.jpg" alt="Refresh :("
                      class="bd-placeholder-img rounded-circle" width="140" height="140">
                    <rect width="100%" height="100%" fill="#777"></rect>
                    <h2>Somnath Mondal</h2>
                    <p>B-tech Cse 3rd year</p>
                  </div>
                  
                  <div class="slide-content">
                    <img src="Image-H\IMG_20220806_143237.jpg" alt="Refresh :("
                      class="bd-placeholder-img rounded-circle" width="140" height="140">
                    <rect width="100%" height="100%" fill="#777"></rect>
                    <h2>Somnath Mondal</h2>
                    <p>B-tech Cse 3rd year</p>
                  </div>
                  
                  <div class="slide-content">
                    <img src="Image-H\IMG_20220806_143237.jpg" alt="Refresh :("
                      class="bd-placeholder-img rounded-circle" width="140" height="140">
                    <rect width="100%" height="100%" fill="#777"></rect>
                    <h2>Somnath Mondal</h2>
                    <p>B-tech Cse 3rd year</p>
                  </div>
                  
                  <div class="slide-content">
                    <img src="Image-H\IMG_20220806_143237.jpg" alt="Refresh :("
                      class="bd-placeholder-img rounded-circle" width="140" height="140">
                    <rect width="100%" height="100%" fill="#777"></rect>
                    <h2>Somnath Mondal</h2>
                    <p>B-tech Cse 3rd year</p>
                  </div>
                  
                </div>

              </div>
            </div>
          </div>
        </div>
    </div>
    </section>
    </div>
  </main>
  <!-- Footer Section -->
  <footer class="pt-4 my-md-5 pt-md-5 border-top bg-dark">
    <div class="row">
      <div class="col-12 col-md">
        <small class="d-block mb-3 p-5 text-muted">©2022LearningManagementSystem</small>
      </div>
      <div class="col-6 col-md">
        <h5 class="text-light">Features</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Best Educators</a></li>
          <li><a class="text-muted" href="#">Random feature</a></li>
          <li><a class="text-muted" href="#">Team feature</a></li>
          <li><a class="text-muted" href="#">Stuff for developers</a></li>
          <li><a class="text-muted" href="#">Another one</a></li>
          <li><a class="text-muted" href="#">Last time</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5 class="text-light">Courses</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Python</a></li>
          <li><a class="text-muted" href="#">Artificial Intelligence</a></li>
          <li><a class="text-muted" href="#">Machine Learning</a></li>
          <li><a class="text-muted" href="#">Frontend Developement</a></li>
          <li><a class="text-muted" href="#">Backend Developement</a></li>
          <li><a class="text-muted" href="#">C++</a></li>
          <li><a class="text-muted" href="#">Java</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5 class="text-light">About</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Team</a></li>
          <li><a class="text-muted" href="#">Locations</a></li>
          <li><a class="text-muted" href="#">Privacy</a></li>
          <li><a class="text-muted" href="#">Terms</a></li>
        </ul>
      </div>
    </div>
  </footer>

  <script src="index.js"></script>
  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>
</body>

</html>