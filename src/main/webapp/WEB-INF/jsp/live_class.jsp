<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css"/>

        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/js/angular.min.js" type="text/javascript"></script>


    </head>
    <body>
        <div class="container">
            <div class="row">
                <!-- header -->
                <div class="header col-md-12">
                    <h2><a href="${pageContext.request.contextPath}">EduCare</a></h2>
                </div>


                <!-- menu -->
                <div class="menu col-md-12">
                    <nav class="navbar navbar-inverse">
                        <div class="container-fluid">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span> 
                                </button>
                            </div>
                            <div class="collapse navbar-collapse" id="myNavbar">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="#"><i class="fa fa-home"></i> Home</a></li>
                                    <li><a href="${pageContext.request.contextPath}/live_class">Live Class</a></li>
                                </ul>
                                <ul class="nav navbar-nav navbar-right">
                                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                                    <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>

                </div>

                <!-- container -->
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-5">
                            <div class="list-group">
                                <a href="#" class="list-group-item active">
                                    <h4 class="list-group-item-heading">HTML</h4>
                                    <p class="list-group-item-text">Learn HTML</p>

                                </a>
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">CSS</h4>
                                    <p class="list-group-item-text">Learn CSS</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <h4 class="list-group-item-heading">JavaScript</h4>
                                    <p class="list-group-item-text">Learn JavaScript</p>
                                </a>
                            </div>
                        </div>
                        <div class="col-md-7">
                            <div class="row">
                                <!-- live video -->
                                <div class="col-md-12">
                                    <div style="width:100%; height: 100%; background: #333; padding: 20px 20px 20px 20px; box-sizing: border-box;">
                                        <iframe width="100%" height="360" src="https://www.youtube.com/embed/36TkDNvTIIA" frameborder="0" allowfullscreen></iframe>
                                        <a href="" class="btn btn-success" style="margin-top: 15px;"><i class="fa fa-download"></i> Download Notes</a>
                                        <a href="" class="btn btn-warning pull-right" style="margin-top: 15px;">MCQ Exam</a>
                                    </div>
                                </div>

                                <!-- comments -->
                                <div class="col-md-12" style="margin-top: 20px;">
                                    <!-- Left-aligned -->
                                    <div class="form-group">
                                        <label for="comment">Comment:</label>
                                        <textarea class="form-control" rows="5" id="comment"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary"><i class="fa fa-send"></i> Submit</button>
                                    </div>

                                    <div class="media" style="border-bottom: 1px solid #DDD;">
                                        <div class="media-left">
                                            <img src="${pageContext.request.contextPath}/resources/img/avatar1.png" class="media-object" style="width:60px">
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading">John Doe</h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..</p>
                                        </div>
                                    </div>
                                    <div class="media" style="border-bottom: 1px solid #DDD;">
                                        <div class="media-left">
                                            <img src="${pageContext.request.contextPath}/resources/img/avatar1.png" class="media-object" style="width:60px">
                                        </div>
                                        <div class="media-body">
                                            <h4 class="media-heading">John Doe</h4>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
