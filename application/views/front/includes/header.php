
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Crowd</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="<?php echo front_template_path()?>css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="<?php echo front_template_path()?>css/bootstrap/bootstrap-responsive.min.css">
    <!-- Bootstrap core CSS -->

    <!-- Custom styles for this template -->
    <link href="<?php echo front_template_path()?>css/style.css" rel="stylesheet">
    <link href="<?php echo front_template_path()?>css/font-awesome.min.css" rel="stylesheet">
    <!--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">-->


    <script src="<?php echo front_template_path()?>js/jquery.js"></script>
    <!-- jquery validation -->
    <link rel="stylesheet" href="<?php echo front_assets_path()?>/jquery-validation-1.13.1/demo/css/screen.css">
    <!-- jquery validation   -->
    <script src="<?php echo front_assets_path()?>jquery-validation-1.13.1/dist/jquery.validate.js"></script>
    <script>
        $("form").validate();
        $.validator.setDefaults({
            submitHandler: function() {
                alert("submitted!");
            }
        });
    </script>
    <!-- jquery validation   -->

    <!-- jquery validation -->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="bootstrap/js/html5shiv.js"></script>
<script src="bootstrap/js/respond.min.js"></script>
<![endif]-->

</head>

<body>
    <!-- Site header and navigation -->
    <header class="navbar navbar-inverse navbar-fixed-top" id="topnav">
        <div class="">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><img src="<?php echo front_template_path()?>/assets/images/expose-logo.png" alt="OurLibrary" height="17px" /> </a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav pull-right">
                    <li class="active"><a href="#home">How it Works</a></li>
                    <li><a href="#services">Success Stories</a></li>
                    <li><a href="#features">Help</a></li>
                    <li><a href="#pricing"><strong>Sign In</strong></a></li>
                    <a href="<?php echo base_url('signup');?>" class="btn btn-default btn-md btn-sign">Sign Up</a>


                </ul>

            </div>
            <!--/.navbar-collapse -->
        </div>
    </header>


    <?php 
    echo count(uri_string());
    // exit("eh");
    // $uris=explode('/', uri_string());
    // echo count($uris);
    if(uri_string()=='')  {
        ?>
        <div class="jumbotron" id="home">
            <div class="container">
                <div class="media">
                    <div class="media-body">
                        <div class="col-md-12">
                            <h1 class="title">Crowd <span>Funding<a href="#" class="pull-right"><!--<img class="media-object img-responsive" src="assets/images/Finder_256.png" />--></a></span></h1>

                            <p>DISCOVER YOUR CAMPINGSIGN UP </p>
                            <a class="btn btn-block btn-social btn-facebook col-md-6" style="margin:5px">
                                <i class="fa fa-facebook"></i> Sign in with Facebook
                            </a>
                            <a class="btn btn-success btn-large" href="" style="margin:5px">Sign up for free</a><br>

                            <div id="custom-search-input" style="margin:5px">
                                <div id="custom-search-input">
                                    <div class="input-group col-md-6">
                                        <input type="text" class="form-control input-lg" placeholder="SEARCH BY POSTCODE OR NAME" />
                                        <span class="input-group-btn">
                                            <button class="btn btn-info btn-lg" type="button">
                                                <i class="glyphicon glyphicon-search"></i>
                                            </button>
                                        </span>
                                    </div>                          
                                </div>
                            </div>
                            <!-- <p><a class="btn btn-success btn-lg">Learn more <i class="icon icon-angle-right"></i></a></p>-->
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- end of banner-->

        <?php
    }
    
    ?>




