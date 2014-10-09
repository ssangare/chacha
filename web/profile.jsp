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
     <link href="css/main.min.css" rel="stylesheet">
   

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
        <div class="container">
       
        <jsp:include page="top.jsp"></jsp:include>
        
            <div class="col-lg-12 col-md-12 col-right ">
					<div class="right-content">
						<!-- MAIN CONTENT -->
						<div class="main-content">
							<div class="user-profile">
								<div class="profile-header-background"><img src="images/bg.jpg" alt="Profile Header Background"/></div>
								<div class="row">
									<div class="col-md-4">
										<div class="profile-info-left"><
											<div class="text-center">
                                                                                            <img src="images/logo.jpg" alt="Avatar" class="avatar img-rounded"  style=" width: 200px; height: 200px;"/>
												<h2>${sessionScope.user.email} </h2>
											</div>
											<div class="action-buttons">
												<div class="row">
													<div class="col-xs-6">
														<a href="#" class="btn btn-success btn-block"><i class="icon ion-plus-round"></i> Follow</a>
													</div>
													<div class="col-xs-6">
														<a href="#" class="btn btn-primary btn-block"><i class="icon ion-android-mail"></i> Message</a>
													</div>
												</div>
											</div>
											<div class="section">
												<h3>About Me</h3>
												<p>Energistically administrate 24/7 portals and enabled catalysts for change. Objectively revolutionize client-centered e-commerce via covalent scenarios. Continually envisioneer.</p>
											</div>
											<div class="section">
												<h3>Statistics</h3>
												<p><span class="badge">332</span> Following</p>
												<p><span class="badge">124</span> Followers</p>
												<p><span class="badge">620</span> Likes</p>
											</div>
											<div class="section">
												<h3>Social</h3>
												<ul class="list-unstyled list-social">
													<li><a href="#"><i class="icon ion-social-twitter"></i> @jackbay</a></li>
													<li><a href="#"><i class="icon ion-social-facebook"></i> Jack Bay</a></li>
													<li><a href="#"><i class="icon ion-social-dribbble"></i> jackdribs</a></li>
													<li><a href="#"><i class="icon ion-social-linkedin"></i> Jack Bay</a></li>
												</ul>
											</div>
										</div>
									</div>
									<div class="col-md-8">
										<div class="profile-info-right">
											<ul class="nav nav-pills nav-pills-custom-minimal custom-minimal-bottom">
												<li class="active"><a href="#activities" data-toggle="tab">WALL</a></li>
												<li><a href="#followers" data-toggle="tab">CORRECT </a></li>
												<li><a href="#following" data-toggle="tab">INCORRECT</a></li>
                                                                                                <li><a href="selection.jsp" style="color: blue">CHALLENGES</a></li>
								
                                                                                        </ul>
											<div class="tab-content">
												<!-- activities -->
												<div class="tab-pane fade in active" id="activities">
													<div class="media activity-item">
														<a href="#" class="pull-left">
															<img src="images/user.jpg" alt="Avatar" class="media-object avatar" />
														</a>
														<div class="media-body">
															<p class="activity-title"><a href="#">Antonius</a> started following <a href="profile.jsp">${sessionScope.user.email}</a> <small class="text-muted">- 2m ago</small></p>
															<small class="text-muted">Today 08:30 am - 02.05.2014</small>
															<div class="btn-group pull-right activity-actions">
																<button type="button" class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
																	<i class="icon ion-ios7-arrow-down"></i>
																	<span class="sr-only">Toggle Dropdown</span>
																</button>
																<ul class="dropdown-menu dropdown-menu-right" role="menu">
																	<li><a href="#">I don't want to see this</a></li>
																	<li><a href="#">Unfollow Jack Bay</a></li>
																	<li class="divider"></li>
																	<li><a href="#">Get Notification</a></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="media activity-item">
														<a href="#" class="pull-left">
															<img src="images/user.jpg" alt="Avatar" class="media-object avatar" />
														</a>
														<div class="media-body">
															<p class="activity-title"><a href="#">Jane Doe</a> likes <a href="profile.jsp">${sessionScope.user.email}</a> <small class="text-muted">- 36m ago</small></p>
															<small class="text-muted">Today 07:23 am - 02.05.2014</small>
															<div class="btn-group pull-right activity-actions">
																<button type="button" class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
																	<i class="icon ion-ios7-arrow-down"></i>
																	<span class="sr-only">Toggle Dropdown</span>
																</button>
																<ul class="dropdown-menu dropdown-menu-right" role="menu">
																	<li><a href="#">I don't want to see this</a></li>
																	<li><a href="#">Unfollow Jack Bay</a></li>
																	<li class="divider"></li>
																	<li><a href="#">Get Notification</a></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="media activity-item">
														<a href="#" class="pull-left">
															<img src="images/user.jpg" alt="Avatar" class="media-object avatar" />
														</a>
														<div class="media-body">
															<p class="activity-title"><a href="#">Michael</a> posted something for <a href="profile.jsp">${sessionScope.user.email}</a> <small class="text-muted">- 1h ago</small></p>
															<small class="text-muted">Today 07:23 am - 02.05.2014</small>
															<div class="activity-attachment">
																<div class="well well-sm">
																	Professionally evolve corporate services without ethical leadership. Proactively re-engineer client-focused infrastructures before alternative potentialities. Competently predominate just in time e-tailers for leveraged solutions. Intrinsicly initiate end-to-end collaboration and idea-sharing after 24/365 ROI. Rapidiously.
																</div>
															</div>
															<div class="btn-group pull-right activity-actions">
																<button type="button" class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
																	<i class="icon ion-ios7-arrow-down"></i>
																	<span class="sr-only">Toggle Dropdown</span>
																</button>
																<ul class="dropdown-menu dropdown-menu-right" role="menu">
																	<li><a href="#">I don't want to see this</a></li>
																	<li><a href="#">Unfollow ${sessionScope.user.email}</a></li>
																	<li class="divider"></li>
																	<li><a href="#">Get Notification</a></li>
																</ul>
															</div>
														</div>
													</div>
													<div class="media activity-item">
														<a href="#" class="pull-left">
															<img src="images/user.jpg" alt="Avatar" class="media-object avatar" />
														</a>
														<div class="media-body">
															<p class="activity-title"><a href="profile.jsp">${sessionScope.user.email}</a> has uploaded two photos <small class="text-muted">- Yesterday</small></p>
															<small class="text-muted">Yesterday 06:42 pm - 01.05.2014</small>
															<div class="activity-attachment">
																<div class="row">
																	<div class="col-md-6">
																		<a href="#" class="thumbnail">
																			<img src="images/academics.jpg" alt="Uploaded photo" />
																		</a>
																	</div>
																	<div class="col-md-6">
																		<a href="#" class="thumbnail">
																			<img src="images/bg.jpg" alt="Uploaded photo" />
																		</a>
																	</div>
																</div>
															</div>
															<div class="btn-group pull-right activity-actions">
																<button type="button" class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
																	<i class="icon ion-ios7-arrow-down"></i>
																	<span class="sr-only">Toggle Dropdown</span>
																</button>
																<ul class="dropdown-menu dropdown-menu-right" role="menu">
																	<li><a href="#">I don't want to see this</a></li>
																	<li><a href="#">Unfollow ${sessionScope.user.email}</a></li>
																	<li class="divider"></li>
																	<li><a href="#">Get Notification</a></li>
																</ul>
															</div>
														</div>
														
													</div>
													<div class="media activity-item">
														<a href="#" class="pull-left">
															<img src="images/logo.jpg" alt="Avatar" class="media-object avatar" />
														</a>
														<div class="media-body">
															<p class="activity-title"><a href="profile.jsp">${sessionScope.user.email}</a> has changed his profile picture <small class="text-muted">- 2 days ago</small></p>
															<small class="text-muted">2 days ago 05:42 pm - 30.04.2014</small>
															<div class="activity-attachment">
																<a href="#" class="thumbnail">
																	<img src="images/logo.jpg" alt="Uploaded photo" />
																</a>
															</div>
															<div class="btn-group pull-right activity-actions">
																<button type="button" class="btn btn-xs btn-default dropdown-toggle" data-toggle="dropdown">
																	<i class="icon ion-ios7-arrow-down"></i>
																	<span class="sr-only">Toggle Dropdown</span>
																</button>
																<ul class="dropdown-menu dropdown-menu-right" role="menu">
																	<li><a href="#">I don't want to see this</a></li>
																	<li><a href="#">Unfollow Jack Bay</a></li>
																	<li class="divider"></li>
																	<li><a href="#">Get Notification</a></li>
																</ul>
															</div>
														</div>
													</div>
													<button type="button" class="btn btn-default center-block"><i class="icon ion-refresh"></i> Load more activities</button>
												</div>
												<!-- end activities -->

												<!-- followers -->
												<div class="tab-pane fade" id="followers">
													<div class="media user-follower">
										      	<div class="media-body">
                                                                                            <a href="#"> FOOD 1<br/></a>
															<button type="button" class="btn btn-sm btn-toggle-following pull-right"><i class="icon ion-checkmark-round"></i> <span>CORRECT</span></button>
														</div>
													</div>
                                                                                                    <div class="media user-follower">
										      	<div class="media-body">
                                                                                            <a href="#"> ACTIVITY 2<br/></a>
															<button type="button" class="btn btn-sm btn-toggle-following pull-right"><i class="icon ion-checkmark-round"></i> <span>CORRECT</span></button>
														</div>
													</div>
											<div class="media user-follower">
										      	<div class="media-body">
                                                                                            <a href="#"> ACADEMIC 3<br/></a>
															<button type="button" class="btn btn-sm btn-toggle-following pull-right"><i class="icon ion-checkmark-round"></i> <span>CORRECT</span></button>
														</div>
													</div>
											<div class="media user-follower">
										      	<div class="media-body">
                                                                                            <a href="#"> FITNESS 4<br/></a>
															<button type="button" class="btn btn-sm btn-toggle-following pull-right"><i class="icon ion-checkmark-round"></i> <span>CORRECT</span></button>
														</div>
													</div>
											<div class="media user-follower">
										      	<div class="media-body">
                                                                                            <a href="#"> FITNESS 5<br/></a>
															<button type="button" class="btn btn-sm btn-toggle-following pull-right"><i class="icon ion-checkmark-round"></i> <span>CORRECT</span></button>
														</div>
													</div>
											<div class="media user-follower">
										      	<div class="media-body">
                                                                                            <a href="#"> MISC 6<br/></a>
															<button type="button" class="btn btn-sm btn-toggle-following pull-right"><i class="icon ion-checkmark-round"></i> <span>CORRECT</span></button>
														</div>
													</div>
											
															</div>
												<!-- end followers -->

												<!-- following -->
												<div class="tab-pane fade" id="following">
													<div class="media user-following">
														<div class="media-body">
															<a href="#">ACADEMIC 3<br/></a>
															<button type="button" class="btn btn-sm btn-danger pull-right"><i class="icon ion-close-round"></i> INCORRECT</button>
														</div>
													</div>
													<div class="media user-following">
														<div class="media-body">
															<a href="#">ACADEMIC 9<br/></a>
															<button type="button" class="btn btn-sm btn-danger pull-right"><i class="icon ion-close-round"></i> INCORRECT</button>
														</div>
													</div>
													<div class="media user-following">
														<div class="media-body">
															<a href="#">FOOD 10<br/></a>
															<button type="button" class="btn btn-sm btn-danger pull-right"><i class="icon ion-close-round"></i> INCORRECT</button>
														</div>
													</div>
													<div class="media user-following">
														<div class="media-body">
															<a href="#">FOOD 7<br/></a>
															<button type="button" class="btn btn-sm btn-danger pull-right"><i class="icon ion-close-round"></i> INCORRECT</button>
														</div>
													</div>
													<div class="media user-following">
														<div class="media-body">
															<a href="#">ACADEMIC 9<br/></a>
															<button type="button" class="btn btn-sm btn-danger pull-right"><i class="icon ion-close-round"></i> INCORRECT</button>
														</div>
													</div>
													<div class="media user-following">
														<div class="media-body">
															<a href="#">FITNESS 4<br/></a>
															<button type="button" class="btn btn-sm btn-danger pull-right"><i class="icon ion-close-round"></i> INCORRECT</button>
														</div>
													</div>
													<div class="media user-following">
														<div class="media-body">
															<a href="#">FITNESS 6<br/></a>
															<button type="button" class="btn btn-sm btn-danger pull-right"><i class="icon ion-close-round"></i> INCORRECT</button>
														</div>
													</div>
														
												</div>
												<!-- end following -->
											</div>
										</div>
									</div>
								</div>
							</div>

   
</div>


</div>
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
