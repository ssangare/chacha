<%-- 
    Document   : index
    Created on : Sep 25, 2014, 6:20:09 AM
    Author     : sanoussysangary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="favicon.ico">

    <title>Campusepage</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="css/carousel.css" rel="stylesheet">
      <link href="css/main.min.css" rel="stylesheet">
   
    <link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>

    <style>
     body{
            background-color:#e8e8e8;
                    }
             
             .video-section .pattern-overlay {
background-color: rgba(71, 71, 71, 0.59);
padding: 110px 0 32px;
min-height: 496px; 
/* Incase of overlay problems just increase the min-height*/
}
.video-section h1, .video-section h3{
text-align:center;
color:#fff;
}
.video-section h1{
font-size:110px;
font-family: 'Buenard', serif;
font-weight:bold;
text-transform: uppercase;
margin: 40px auto 0px;
text-shadow: 1px 1px 1px #000;
-webkit-text-shadow: 1px 1px 1px #000;
-moz-text-shadow: 1px 1px 1px #000;
}
.video-section h3{
font-size: 25px;
font-weight:lighter;
margin: 0px auto 15px;
}
.video-section .buttonBar{display:none;}
.player {font-size: 1px;}
             
    </style>
    <!-- selection style  -->
    <style>
        div.clear
{
    clear: both;
}

div.product-chooser{
    
}

    div.product-chooser.disabled div.product-chooser-item
	{
		zoom: 1;
		filter: alpha(opacity=60);
		opacity: 0.6;
		cursor: default;
	}

	div.product-chooser div.product-chooser-item{
		padding: 11px;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		border: 1px solid #efefef;
		margin-bottom: 10px;
        margin-left: 10px;
        margin-right: 10x;
	}
	
	div.product-chooser div.product-chooser-item.selected{
		border: 4px solid #428bca;
		background: #efefef;
		padding: 8px;
		filter: alpha(opacity=100);
		opacity: 1;
	}
	
		div.product-chooser div.product-chooser-item img{
			padding: 0;
		}
		
		div.product-chooser div.product-chooser-item span.title{
			display: block;
			margin: 10px 0 5px 0;
			font-weight: bold;
			font-size: 12px;
		}
		
		div.product-chooser div.product-chooser-item span.description{
			font-size: 12px;
		}
		
		div.product-chooser div.product-chooser-item input{
			position: absolute;
			left: 0;
			top: 0;
			visibility:hidden;
		}
        
    </style>
    
  </head>
<!-- NAVBAR
================================================== -->
         
<body>
      
       
      
            <%

                                     JavaBeans.User user = (JavaBeans.User) session.getAttribute("user");
                                         if (user == null || user.getUserName()== null) {
             %> 
    
        <div class="row">
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        <a class="navbar-brand b" style="color:white" href="index.jsp">CHA CHA<span class=" label label-info">Beta</span></a>
 
        </div>
        <div class="collapse navbar-collapse">
          <div class="col-sm-offset-2">
          <ul class=" nav navbar-nav">
              <li class=""><a href="team.jsp">Team</a></li>
            <li class="a"><a href="#about"></a></li>
            <li class="a"><a href="#contact"></a></li>
          </ul>
            </div>
            
         <!--   
            <div class=" col-sm-5">
        <form action="#" method="get" class="al">
                <div class="input-group">
                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
              <!--      <input class="form-control" id="system-search" name="q" placeholder="Enter a school name" required>
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
                    </span>
                </div>
            </form>
        </div>
	-->
          <ul class="nav navbar-nav navbar-right">
              <li><a href="signin.jsp" style="color: white">Sign In</a></li>
     
              <li><a href="signup.jsp" style=" color: white" >Sign Up</a></li>
           </ul>
    
  
            
        </div><!--/.nav-collapse -->
        
       
	
      </div>
    </div>
        
             
             
       <br>
            
             <%  } else { /* session = request.getSession();
                          session.setMaxInactiveInterval(10); this is 10 second
                            */             
                              %>
             
            
             
        
             
             
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
          <div class="row">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
            <a class="navbar-brand b" style="color:white" href="index.jsp">CHA CHA<span class=" label label-info">Beta</span></a>
 
        </div>
        <div class="collapse navbar-collapse">
          <div class="col-sm-offset-2">
          <ul class=" nav navbar-nav">
              <li  ><a href="team.jsp"style=" color: white">team </a></li>
            <li class="a"><a href="#about"></a></li>
            <li class="a"><a href="#contact"></a></li>
          </ul>
            </div>
            
         <!--   
            <div class=" col-sm-5">
        <form action="#" method="get" class="al">
                <div class="input-group">
                    <!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
              <!--      <input class="form-control" id="system-search" name="q" placeholder="Enter a school name" required>
                    <span class="input-group-btn">
                        <button type="submit" class="btn btn-default"><i class="glyphicon glyphicon-search"></i></button>
                    </span>
                </div>
            </form>
        </div>
	-->
    <ul class="nav navbar-nav navbar-right"  role=" navigation">
               <li class="dropdown">

              
              
         <li class="dropdown">
        <a href="#" class="dropdown-toggle"style=" color: white" data-toggle="dropdown"><span class=" glyphicon glyphicon-user"></span> ${sessionScope.user.email} <b class="caret"></b></a>
        <ul class="dropdown-menu">
          <li><a href="profile.jsp"><span class=" glyphicon glyphicon-user"></span> Profile</a></li>
          <li><a href="selection.jsp"><span class=" glyphicon glyphicon-cog"></span>selection</a></li>
          <li class="divider"></li>
        <li><a href="logout.jsp">logout</a></li>
                
        </ul>
      </li>
              
              
              
           </ul>
    
  
       
          
        
        
            
        </div><!--/.nav-collapse -->
        
       
	
      </div>
    </div>
        
             
             
        
    
      <%  }
%>
          
<script src="js/response.min.js"></script>      
        
           
   
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
       <script src="js/bootstrap.min.js"></script>
 <script>
           $('.dropdown-toggle').dropdown()


       </script>
       
    
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js"></script>
    <script src="js/jquery.mb.YTPlayer.js"></script>

    <script>
      $(document).ready(function () {

    $(".player").mb_YTPlayer();

});  
    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
