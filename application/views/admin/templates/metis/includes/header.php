<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Dashboard</title>

  <!--Mobile first-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <!--IE Compatibility modes-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="msapplication-TileColor" content="#5bc0de">
  <meta name="msapplication-TileImage" content="<?=admin_template_asset_path()?>/assets/img/metis-tile.png">
  <link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/lib/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/lib/Font-Awesome/css/font-awesome.min.css">
  
  <?php 
  switch (uri_string()) {
    case 'add':{
      ?>
      <link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/lib/wysihtml5/dist/bootstrap-wysihtml5-0.0.2.css">
      <link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/css/Markdown.Editor.hack.css">
      <link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/lib/cleditor/jquery.cleditor.css">
      <!-- <link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/css/jquery.cleditor-hack.css">
    -->
    <link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/css/bootstrap-wysihtml5-hack.css">
    <?php 
    break;
  } 
}
?>

<!-- Metis core stylesheet -->
<link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/css/main.min.css">
<link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/css/theme.css">


<link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/lib/elfinder/css/elfinder.min.css">
<link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/lib/elfinder/css/theme.css">
<link rel="stylesheet" href="<?=admin_template_asset_path()?>/assets/css/elfinder.css">
<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/flick/jquery-ui.min.css">


<link href="<?=admin_template_asset_path()?>/assets/css/my.css" rel="stylesheet">


<script src="<?=admin_template_asset_path()?>/assets/lib/jquery.min.js"></script>


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->

<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

    <!--[if lt IE 9]>
      <script src="<?=admin_template_asset_path()?>/assets/lib/html5shiv/html5shiv.js"></script>
          <script src="<?=admin_template_asset_path()?>/assets/lib/respond/respond.min.js"></script>
          <![endif]-->

          <!--Modernizr 3.0-->
<!--           <script src="<?=admin_template_asset_path()?>/assets/lib/modernizr-build.min.js"></script>
-->        </head>
<body>
  <div id="wrap">
    <div id="top">

      <!-- .navbar -->
      <nav class="navbar navbar-inverse navbar-static-top">

        <!-- Brand and toggle get grouped for better mobile display -->
        <header class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span> 
            <span class="icon-bar"></span> 
            <span class="icon-bar"></span> 
            <span class="icon-bar"></span> 
          </button>
          <a href="<?=base_url('dashboard')?>" class="navbar-brand">
            <img src="<?=admin_template_asset_path()?>/assets/img/logo.png" alt="">
          </a> 
          <a href="<?=base_url()?>" class="navbar-brand">
            <img src="<?=admin_template_asset_path()?>/assets/img/view_site.png" alt="">
          </a> 
        </header>
        <div class="topnav">
          <div class="btn-toolbar">
            <div class="btn-group">
              <a data-placement="bottom" data-original-title="Fullscreen" data-toggle="tooltip" class="btn btn-default btn-sm" id="toggleFullScreen">
                <i class="glyphicon glyphicon-fullscreen"></i>
              </a> 
            </div>
            <div class="btn-group">
              <a data-placement="bottom" data-original-title="Show / Hide Sidebar" data-toggle="tooltip" class="btn btn-success btn-sm" id="changeSidebarPos">
                <i class="fa fa-expand"></i>
              </a> 
            </div>
            <div class="btn-group">
              <a href="<?=base_url('auth/logout')?>" data-toggle="tooltip" data-original-title="Logout" data-placement="bottom" class="btn btn-metis-1 btn-sm">
                <i class="fa fa-power-off"></i>
              </a> 
            </div>
          </div>
        </div><!-- /.topnav -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <!-- .nav -->
          <ul class="nav navbar-nav">
            <?php if(permission_permit(['list-setting'])) {?>
            <li> <a href="#">Edit Profile</a></li>
            <li> <a href="#">Change Password</a></li>
<!--             <li> <a href="<?=base_url()?>user/view_profile">View Profile</a></li>
            <li> <a href="<?=base_url()?>user/edit_profile">Edit Profile</a></li>
            <li> <a href="<?=base_url()?>user/change_password">Change Password</a></li>
 -->            <?php } ?>
            <!-- <li class='dropdown '>
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                Form Elements
                <b class="caret"></b>
              </a> 
              <ul class="dropdown-menu">
                <li> <a href="form-general.html">General</a>  </li>
                <li> <a href="form-validation.html">Validation</a>  </li>
              </ul>
            </li> -->
          </ul><!-- /.nav -->
        </div>
      </nav><!-- /.navbar -->

      <!-- header.head -->
      <header class="head">
        <div class="search-bar">
          <a data-original-title="Show/Hide Menu" data-placement="bottom" data-tooltip="tooltip" class="accordion-toggle btn btn-primary btn-sm visible-xs visible-sm" id="menu-toggle">
            <i class="fa fa-bars"></i>
          </a> 
        </div>

        <!-- ."main-bar -->
        <div class="main-bar">
          <h5>
            <?php echo $this->breadcrumb->output();?>
          </h5>
        </div><!-- /.main-bar -->
      </header>
      <!-- end header.head -->
    </div><!-- /#top -->


    <!-- sidebar  -->
    <?php require_once("sidebar.php"); ?>

    <!-- sidebar ends -->

    <!-- /.navbar-static-side -->
  </nav>

  <div id="content">




