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
    <br><br><br><br>

    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <center>  <img class="img-circle" src="images/logo1.png" alt="Generic placeholder image" style="width: 100px; height: 100px;">
                    <h4> FOOD</h4> 
                </center>

                <div class="container">
                    <div class="col-lg-12 col-md-12 col-sm-12 thumbnail">
                        <br><br>
                        <div class="row">
                            <div class="col-lg-4 col-sm-4 col-md-4">
                                <img class="img-rounded" src="images/logo1.png" alt="Generic placeholder image" style="width: 200px; height: 160px;">
                                
                                <br>
                                <button class="btn btn-primary" data-toggle="modal" data-target="#loginModal">Food 1</button>
                               
                            </div><!-- /.col-lg-4 -->
                            <div class="col-lg-4 col-sm-4 col-md-4">
                                <img class="img-rounded" src="images/logo1.png" alt="Generic placeholder image" style="width: 200px; height: 160px;">
                                <br>
                                <button class="btn btn-primary" data-toggle="modal" data-target="#myModal2">
                                    FOOD 2
                                </button>
                            </div><!-- /.col-lg-4 -->
                            <div class="col-lg-4 col-sm-4 col-md-4">
                                <img class="img-rounded" src="images/logo1.png" alt="Generic placeholder image" style="width: 200px; height: 160px;">
                                <br>
                                <button class="btn btn-primary" data-toggle="modal" data-target="#myModal3">
                                   FOOD 3
                                </button>
                            </div><!-- /.col-lg-4 --> </div><br><br>
                        <div class="row">
                            <div class="col-lg-4 col-sm-4 col-md-4">
                                <img class="img-rounded" src="images/logo1.png" alt="Generic placeholder image" style="width: 200px; height: 160px;">
                                <br>
                                <button class="btn btn-primary" data-toggle="modal" data-target="#myModal4">
                                    FOOD 4
                                </button>
                            </div><!-- /.col-lg-4 -->
                            <div class="col-lg-4 col-sm-4 col-md-4">
                                <img class="img-rounded" src="images/logo1.png" alt="Generic placeholder image" style="width: 200px; height: 160px;">
                                <br>
                                <button class="btn btn-primary" data-toggle="modal" data-target="#myModal5">
                                   FOOD 5
                                </button>
                            </div><!-- /.col-lg-4 -->
                            <div class="col-lg-4 col-sm-4 col-md-4">
                                <img class="img-rounded" src="images/logo1.png" alt="Generic placeholder image" style="width: 200px; height: 160px;">
                                <br>
                                <button class="btn btn-primary" data-toggle="modal" data-target="#myModal6">
                                   FOOD 6
                                </button>
                            </div><!-- /.col-lg-4 -->

                        </div></div>
                </div>
            </div>




        </div>
    </div>

    <!-- Modale 1-->

    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">CHA CHA 1</h4>
                </div>

                <div class="modal-body">
                    <!-- The form is placed inside the body of modal -->
                    <form id="loginForm" method="post" class="form-horizontal">
                        <div class="form-group">
                             <div class="col-lg-10">
                                <h3> Walk into one of your classes just as it’s

starting and walk up to your professor & give 

them an apple without saying a word. (pic) </h3>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">UPLOAD</label>
                                <input type="file" class="btn btn-success" />
                                </div>
                        <div class="form-group">
                            <div class="col-md-5 col-md-offset-3">
                                <button type="submit" class="btn btn-primary btn-block">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


    <!-- #/myModal -->


   <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">CHA CHA 2</h4>
                </div>

                <div class="modal-body">
                    <!-- The form is placed inside the body of modal -->
                    <form id="loginForm" method="post" class="form-horizontal">
                        <div class="form-group">
                             <div class="col-lg-10">
                                <h3> Buy a Caesar salad and eat it without using

any hands. (7 sec video) </h3>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">UPLOAD</label>
                                <input type="file" class="btn btn-success" />
                                </div>
                        <div class="form-group">
                            <div class="col-md-5 col-md-offset-3">
                                <button type="submit" class="btn btn-primary btn-block">Send</button>
                            </div>
                        </div>
                    </form>
                    
                </div>
            </div>
        </div>
    </div>


    <!-- #/myModal -->


<!-- Modal 3-->

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">CHA CHA 3</h4>
                </div>

                <div class="modal-body">
                    <!-- The form is placed inside the body of modal -->
                   <form id="loginForm" method="post" class="form-horizontal">
                        <div class="form-group">
                             <div class="col-lg-10">
                                <h3> Fine-Dining: Eat a candle lit meal with folded

napkins, sparkling cider, and the finest silverware 

you can find. *Bonus* if you have a server bring in 

your meal. </h3>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">UPLOAD</label>
                                <input type="file" class="btn btn-success" />
                                </div>
                        <div class="form-group">
                            <div class="col-md-5 col-md-offset-3">
                                <button type="submit" class="btn btn-primary btn-block">Send</button>
                            </div>
                        </div>
                    </form>
                    
                   
                    
                </div>
            </div>
        </div>
    </div>

<!-- Modal 3-->

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">CHA CHA 3</h4>
                </div>

                <div class="modal-body">
                    <!-- The form is placed inside the body of modal -->
                     <form id="loginForm" method="post" class="form-horizontal">
                        <div class="form-group">
                             <div class="col-lg-10">
                                <h3>Buy a rice bowl and eat it without using any

hands. (7 sec video) </h3>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">UPLOAD</label>
                                <input type="file" class="btn btn-success" />
                                </div>
                        <div class="form-group">
                            <div class="col-md-5 col-md-offset-3">
                                <button type="submit" class="btn btn-primary btn-block">Send</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrapValidator.min.js"></script>

    <script>


        $(document).ready(function() {
            $('#loginModal').on('shown.bs.modal', function() {
                $('#loginForm').bootstrapValidator('resetForm', true);
            });



            $('#loginForm').bootstrapValidator({
                message: 'This value is not valid',
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    password: {
                        validators: {
                            notEmpty: {
                                message: 'The password is required and cannot be empty'
                            },
                            identical: {
                                field: 'confirmPassword',
                                message: 'The password and its confirm are not the same'
                            },
                            different: {
                                field: 'username',
                                message: 'The password cannot be the same as username'
                            }
                        }
                    },
                    confirmPassword: {
                        validators: {
                            notEmpty: {
                                message: 'The answer is required and cannot be empty'
                            },
                            identical: {
                                field: 'password',
                                message: 'The password and its confirm are not the same'
                            },
                            different: {
                                field: 'username',
                                message: 'The password cannot be the same as username'
                            }
                        }
                    }

                }
            });
        });


    </script>

</body>
</html>
