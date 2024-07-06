<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
   response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Cache-Control","must-revalidate");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", -1);

	   if(session.getAttribute("t_id")==null)
	   response.sendRedirect("EducatorRegistration.jsp");

%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Become an Educator|Learning Management System</title>
    <!-- Css Link -->
    <link rel="stylesheet" href="css\Style-A.css">
</head>

<body>
    <!-- Header Section -->
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
                        <a class="nav-link text-primary" href="Index-H.html">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle text-primary" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          Courses
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="#">Python</a>
                          <a class="dropdown-item" href="#">Artificial Intelligence</a>
                          <a class="dropdown-item" href="#">Machine Learning</a>
                          <a class="dropdown-item" href="#">Frontend Developement</a>
                          <a class="dropdown-item" href="#">Backend Developement</a>
                          <a class="dropdown-item" href="#">C++</a>
                          <a class="dropdown-item" href="#">Java</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="#">Redirect Courses</a>
                        </div>
                      </li>
                    <li class="nav-item">
                        <a class="nav-link text-primary " href="#Exp">Reviews</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  text-primary" href="#">My Profile</a>
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
                        <button class="dropdown-item" type="button">For Educators</button>
                        <button class="dropdown-item" type="button">For Students</button>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <main>
        <div class="section-guide">
            <section class="guidebook">
                <div class="container">
                    <div class="heading">
                        <h2>How To Become An Educator: A step-by-step guide</h2>
                    </div>
                    <div class="body-box">
                        <p class="para">Becoming an online educator is not at all a difficult task when you have the
                            right resources, a sophisticated platform, and course material of good quality. The standard
                            question that lingers on every educator’s mind is “How do I start and from where?”

                            As an answer to the most frequently asked question, we have laid out a definitive guide on
                            how to become an online educator. From this step-by-step guide, you will get an idea of
                            starting your online academy and becoming the educator you want to be
                        <p>

                        <h4 class="secondary-heading">Determine the requirements</h4>
                        <p class="para">
                            The basic step of starting any entrepreneurial venture is to have a clear definition of the
                            requirements. Your business might seek various requirements, pre-requisites, and pros, and
                            cons that you need to sort and define.

                            Conduct an extensive survey about the existing market situation and gather information about
                            the learners and their mindsets. This will help you to design a course for them exclusively.
                            Find out the area in which you have finger-tip expertise. A sound subject knowledge combined
                            with a prior teaching experience earns you the trust factor among students.
                        </p>
                        <h4 class="secondary-heading">Audience analysis</h4>
                        <p class="para">
                            A successful online educator knows their audience well. This is the next step towards your
                            goal. Analyze your audience based on their needs and expectations through market surveys and
                            discussions on social media. Being active in discussion forums helps to get an idea about
                            the expectations of the learners.

                            To enhance your research, we have listed down a few ways in which you can do your audience
                            analysis.
                        </p>
                        <h4 class="secondary-heading">Surveys</h4>
                        <p class="para">
                            Surveys are one of the proven techniques in getting to know your audience. A simple Google
                            form or online survey tool will do just good. Circulate the forms in different forums and
                            check out the feedback from them. This will give a clear idea about their expectations.
                        </p>
                        <h4 class="secondary-heading">Choosing the subject</h4>
                        <p class="para">
                            You might have knowledge of a wide variety of subjects. But always start with the field
                            where you have enough expertise to clarify the students’ queries during the class. Your
                            expertise matters a lot as it enhances the student’s skill set. If you do not have a clear
                            idea about your level of expertise on a subject, converse with subject matter experts in the
                            industry. These are people who have expertise in specialized areas and can help you identify
                            the topic for your course.
                        </p>
                        <h4 class="secondary-heading">Set a course pattern</h4>
                        <p class="para">
                            After choosing the subject and gathering the audience for your course, the next step is to
                            focus on the teaching pattern. A distinctive teaching pattern sets you apart from the crowd
                            and makes you stand out. Course pattern is generally of two types:

                        <ul class="list">
                            <li>An asynchronous pattern where the educator and the student are present on live streams
                                andthe class is taken interactively.
                            </li>
                            <li>
                                An asynchronous pattern where the educator uploads the course video on the platform and
                                thestudent watches the video whenever he/she need it. In this pattern of teaching, there
                                is no room for educator-student interaction.
                            </li>
                        </ul>
                        <span>You also need to choose the right format for the course. Your course can either be in an
                            audio-video format, textual, or a combination of both. As a beginner, it is always
                            preferable to go for the video tutoring methods so that you can connect with your students
                            in a better manner.</span>
                        </p>
                        <h4 class="secondary-heading">Setting the platform</h4>
                        <p class="para">
                            After successfully completing all the above steps, you are one step away from your dream
                            career. This becomes complete by selecting the right platform for your course. Hundreds of
                            LMS platforms are available all over the internet and it becomes difficult to choose the
                            correct platform. Keep in mind the following 5 points while selecting the LMS platform –
                        <ul class="list">
                            <li>
                                SSL certification
                            </li>
                            <li>
                                Single Sign-On facility
                            </li>
                            <li>
                                Password protection
                            </li>
                            <li>
                                DRM Encryption
                            </li>
                            <li>
                                The authenticity of the platform
                            </li>
                        </ul>
                        <span>A good LMS platform will have all the above features incorporated in it.</span>
                        </p>
                        <h4 class="secondary-heading">Using this LearningManagementSystem to advantage</h4>
                        <p class="para">
                            In this LMS that comes with all the above-said features. A good course needs to be sold to
                            the audience to gain more viewers. LMShelps you with course creation and helps you
                            sell it from your own website. You also get access to various other features such as
                            attendance management, performance tracking, and live classes.
                            <br>
                            <span>So what are you waiting for? Sign-up with Our LMS.</span>

                        </p>
                        <h4 class="secondary-heading">Record Your Video</h4>
                        <p class="para">
                            Use basic tools like a smartphone or a DSLR camera. Add a good microphone and you’re ready
                            to start.

                            If you don’t like being on camera, just capture your screen. Either way, we recommend two
                            hours or more of video for a paid course.
                            <br>
                            <span>How we help you:</span>
                            <br>
                            Our support team is available to help you throughout the process and provide feedback on
                            test videos.
                        </p>
                        <h4 class="secondary-heading">How to Sing In this LMS</h4>
                        <p class="para">
                        <ul class="list">
                            <li>Fill Your all details with specific Id which had already provided by Our College Techno
                                India Batanagar.</li>
                            <li>Click to sing In button.</li>
                        </ul>
                        </p>
                    </div>
                </div>
            </section>
        </div>
        <div class="Section-registation">
            <section class="section section-hero">
                <div class="containerR grid grid-two-column">
                    <!-- Right side hero Section -->
                    <div class="hero-image">
                        <img src="Image-H\Educator-2.png" alt="Refresh :(" class="image">
                    </div>
                    <div class="hero-data">
                        <h1 class="primary-heading">Create Your Class</h1>
                        <p class="paraR">
                            Gather your first ratings and reviews by promoting your course through social media and your
                            professional networks.
                            Your course will be discoverable in our marketplace where you earn revenue from each paid
                            enrollment.
                            <br>
                            You will be provided with a great platform to showcase your practical knowledge and skills
                            that you have acquired over a period of time. What more, you can conduct your training from
                            any part of the world!
                            <br>
                            <span><b>so,click the below button and Start Your Journey......</b></span>
                        </p>
                        <a href="EducatorArea.jsp" target="_blank" class="btnR">Create Class</a>
                    </div>
                </div>
            </section>
        </div>
        <div class="experience">
            <section id="Exp">
                <div class="container">
                    <div class="heading">
                        <h2>Reviews Educators</h2>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-6">
                          <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                            <div class="col p-4 d-flex flex-column position-static">
                              <h3 class="mb-5">Subhankar Guha</h3>
                              <p class="card-text mb-auto">“I’m proud to wake up knowing my work is helping people around the world improve their careers and build great things. While being a full-time instructor is hard work, it lets you work when, where, and how you want.”</p>
                            </div>
                            <div class="col-auto d-none d-lg-block">
                              <img src="Image-H\Subhankar.jpg" alt="Refresh :(" width="200" height="250">
                            </div>
                           
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                            <div class="col p-4 d-flex flex-column position-static">
                              <h3 class="mb-5">Debobroto Gosh</h3>
                              <p class="card-text mb-auto">“Teaching on LMS has provided me with two important elements: the opportunity to reach more learners than I ever would be able to on my own and a steady stream of extra income.”</p>
                            </div>
                            <div class="col-auto d-none d-lg-block">
                                <img src="Image-H\debobroto.jpg" alt="Refresh :(" width="200" height="250">
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