<%-- 
    Document   : signin
    Created on : Sep 25, 2014, 6:40:33 AM
    Author     : sanoussysangary
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
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
<link href='http://fonts.googleapis.com/css?family=Buenard:700' rel='stylesheet' type='text/css'>
<script src="http://pupunzi.com/mb.components/mb.YTPlayer/demo/inc/jquery.mb.YTPlayer.js"></script>

    <!-- Custom styles for this template -->
    <link href="css/carousel.css" rel="stylesheet">
  </head>
    <body>
        
        <jsp:include page="top.jsp"></jsp:include>
        <br><br><br><br><br><br><br><br>
        
        <div class="container">
    <div class="row thumbnail">
        <div class="container">
            <center><h2>CHA CHA</h2></center><br><br>
    <div class="row form-group product-chooser">
    
    	<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
    		<div class="product-chooser-item selected">
                    <a href="academics.jsp"><img src="images/academics.jpg" class="img-rounded col-xs-4 col-sm-4 col-md-12 col-lg-12" alt="Mobile and Desktop"></a>
                <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                    <center><h3 class="title">ACADEMICS</h3></center>
    			<!--	<span class="description">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</span>
    				--><input type="radio" name="product" value="mobile_desktop" checked="checked">
    			</div>
    			<div class="clear"></div>
    		</div>
    	</div>
    	
    	<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
    		<div class="product-chooser-item">
                      <a href="food.jsp"><img src="images/food.jpg" class="img-rounded col-xs-4 col-sm-4 col-md-12 col-lg-12" alt="Mobile and Desktop"></a>
            
    			 <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                           <center><h3 class="title">FOOD</h3></center>
    				<!--<span class="description">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</span>
    				--><input type="radio" name="product" value="desktop">
    			</div>
    			<div class="clear"></div>
    		</div>
    	</div>
    	
    	<div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
    		<div class="product-chooser-item">
    			<img src="images/gym1.jpg" class="img-rounded col-xs-4 col-sm-4 col-md-12 col-lg-12" alt="Desktop">
                       <div class="col-xs-8 col-sm-8 col-md-12 col-lg-12">
                           <center><h3 class="title">PHYSICAL ACTIVITY</h3></center>
    				<!--<span class="description">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</span>
    				--><input type="radio" name="product" value="desktop">
    			</div>
    			<div class="clear"></div>
    		</div>
    	</div>
    	
    	
    </div>
</div>

<div class="container">

   
	
	</div>
</div>
       
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function(){
	$('div.product-chooser').not('.disabled').find('div.product-chooser-item').on('click', function(){
		$(this).parent().parent().find('div.product-chooser-item').removeClass('selected');
		$(this).addClass('selected');
		$(this).find('input[type="radio"]').prop("checked", true);
		
	});
});
    </script>
    </body>
</html>
