<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="description" content="">
      <meta name="author" content="">
      <title><?=label('title');?> <?= $this->setting->companyname;?></title>
      <!-- jQuery -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery-2.2.2.min.js"></script>
      <script type="text/javascript" src="<?=base_url()?>assets/js/loading.js"></script>
      <!-- normalize & reset style -->
      <link rel="stylesheet" href="<?=base_url();?>assets/css/normalize.min.css"  type='text/css'>
      <link rel="stylesheet" href="<?=base_url();?>assets/css/reset.min.css"  type='text/css'>
      <link rel="stylesheet" href="<?=base_url();?>assets/css/jquery-ui.css"  type='text/css'>
      <!-- google lato/Kaushan/Pinyon fonts -->
      <link href='https://fonts.googleapis.com/css?family=Lato:400,700,900,300' rel='stylesheet' type='text/css'>
      <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Pinyon+Script" rel="stylesheet">
      <!-- Bootstrap Core CSS -->
      <link href="<?=base_url();?>assets/css/bootstrap.min.css" rel="stylesheet">
      <link href="<?=base_url();?>assets/css/argon.css" rel="stylesheet">
      <link href="<?=base_url();?>assets/css/menu.css" rel="stylesheet">
      <!-- bootstrap-horizon -->
      <link href="<?=base_url();?>assets/css/bootstrap-horizon.css" rel="stylesheet">
      
      <!-- datatable style -->
      <link href="<?php echo base_url('assets/datatables/css/dataTables.bootstrap.css')?>" rel="stylesheet">
      <!-- font awesome -->
      <link rel="stylesheet" href="<?=base_url();?>assets/css/font-awesome.min.css">
      <!-- include summernote css-->
      <link href="<?=base_url();?>assets/css/summernote.css" rel="stylesheet">
      <!-- waves -->
      <link rel="stylesheet" href="<?=base_url()?>assets/css/waves.min.css">
      <!-- daterangepicker -->
      <link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/css/daterangepicker.css" />
      <!-- css for the preview keyset extension -->
      <link href="<?=base_url()?>assets/css/keyboard-previewkeyset.css" rel="stylesheet">
      <!-- keyboard widget style -->
      <link href="<?=base_url()?>assets/css/keyboard.css" rel="stylesheet">
      <!-- Select 2 style -->
      <link href="<?=base_url()?>assets/css/select2.min.css" rel="stylesheet">
      <!-- Sweet alert swal -->
      <link rel="stylesheet" type="text/css" href="<?=base_url()?>assets/css/sweetalert.css">
      <!-- datepicker css -->
      <link rel="stylesheet" type="text/css" href="<?=base_url();?>assets/css/bootstrap-datepicker.min.css">
      <!-- Custom CSS -->
      <link href="<?=base_url()?>assets/css/Style-<?=$this->setting->theme?>.css" rel="stylesheet">
      <!-- favicon -->
      <link rel="shortcut icon" href="<?=base_url();?>/favicon.ico?v=2" type="image/x-icon">
      <link rel="icon" href="<?=base_url();?>/favicon.ico?v=2" type="image/x-icon">
      <link rel="icon" href="<?=base_url();?>/assets/img/Preloader.gif?v=2" type="image/x-icon">
      <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
      <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
   </head>

   <body class="home">

    <div id="loadingimg"></div>

   <div class="container-fluid display-table">

        <div class="row display-table-row">

            <div class="col-md-2 col-sm-1 hidden-xs display-table-cell v-align box" id="navigation">

                <div class="logo">

                <a hef="home.html"><?php if($this->setting->logo){ ?><img src="<?=base_url()?>files/Setting/<?=$this->setting->logo;?>" alt="merkery_logo" class="hidden-xs hidden-sm"><?php } else { ?>

                <img src="<?=base_url()?>assets/img/logo.png" alt="merkery_logo" class="visible-xs visible-sm circle-logo"> <?php } ?>

                    </a>

                </div><br>

                <div class="navi">

                    <ul>

                       <?php if($this->user->role !== "kitchen"){?><li class="active"><a href="<?=base_url();?>"><i class="fa fa-credit-card"></i> <span><?=label("POS");?></span></a></li><?php } ?>

                  <?php if($this->user->role !== "waiter" && $this->user->role !== "kitchen"){?>

                        <!--

                        <li class="active"><a href="<?=base_url();?>"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a></li>

                       sales -->

                        <li><a href="<?=base_url()?>sales"><i class="fa fa-tasks" aria-hidden="true"></i><span><?=label("Sales");?></span></a></li>

                        <!--Gastos-->

                        <li><a href="<?=base_url()?>expences"><i class="fa fa-book" aria-hidden="true"></i><span><?=label("Expense");?></span></a></li>

                        <!--Productos -->

                        <li>

                        <a href="<?=base_url()?>products"><i class="fa fa-cart-arrow-down" aria-hidden="true"></i><span><?=label("Product");?></span></a>                                                

                        </li>

                         <!--Categorias -->

                    <li class="dropdown">

                    <a href="#" class="dropdown flat-box" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-bookmark"></i> <span class="menu-text"><?=label("Categories");?> </span><span class="caret"></span></a>
                    <ul class="dropdown-menu">
                       <li class="flat-box"><a href="<?=base_url()?>categories"><i class="fa fa-archive"></i> <span class="menu-text"><?=label("Product");?></span></a></li>
                       <li class="flat-box"><a href="<?=base_url()?>categorie_expences"><i class="fa fa-usd"></i> <span class="menu-text"><?=label("Expense");?></span></a></li>

                    </ul>

                 </li>

                       <!--Tiendas -->

                        <li>
                        <a href="<?=base_url()?>stores"><i class="fa fa-sitemap" aria-hidden="true"></i><span><?=label("Stores");?></span></a>                                              

                        </li>

                        <!--sales -->

                         <li class="dropdown">
                    <a href="#" class="dropdown flat-box" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-users"></i> <span class="menu-text"><?=label("People");?></span> <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                       <li class="flat-box"><a href="<?=base_url()?>waiters"><i class="fa fa-user"></i> <span class="menu-text"><?=label("Waiters");?></span></a></li>                       
                       <li class="flat-box"><a href="<?=base_url()?>customers"><i class="fa fa-user"></i> <span class="menu-text"><?=label("Customers");?></span></a></li>

                       <li class="flat-box"><a href="<?=base_url()?>suppliers"><i class="fa fa-truck"></i> <span class="menu-text"><?=label("Suppliers");?></span></a></li>

                    </ul>

                 </li>

                        <!--Report -->

                        <?php if($this->user->role === "admin"){?>

                        <li><a href="<?=base_url()?>stats"><i class="fa fa-bar-chart" aria-hidden="true"></i><span><?=label("Reports");?></span></a></li><?php } ?>

                        <!--Config -->

                        <?php if($this->user->role === "admin"){?>

                        <li><a href="<?=base_url()?>settings?tab=setting"><i class="fa fa-cog" aria-hidden="true"></i><span><?=label("Setting");?></span></a></li><?php } ?>

                        <?php } ?>

                        

                    </ul>

                </div>

            </div>

            <div class="col-md-10 col-sm-11 display-table-cell v-align">

                <!--<button type="button" class="slide-toggle">Slide Toggle</button> -->

                <div class="row">

                    <header>

                        <div class="col-md-7">

                            <nav class="navbar-default pull-left">

                                <div class="navbar-header">

                                    <button type="button" class="navbar-toggle collapsed" data-toggle="offcanvas" data-target="#side-menu" aria-expanded="false">

                                        <span class="sr-only"></span>

                                        <span class="icon-bar"></span>

                                        <span class="icon-bar"></span>

                                        <span class="icon-bar"></span>

                                    </button>

                                </div>

                            </nav>                            

                        </div>

                        <div class="col-md-5">

                            <div class="header-rightside">

                                <ul class="list-inline header-top pull-right">

                                   

             <li class="dropdown">

                     <a href="#" class="dropdown flat-box" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">

                        <img src="<?=base_url();?>assets/img/flags/<?=label('LnImage');?>" class="flag" alt="language">

                        <span class="caret"></span></a>

                     <ul class="dropdown-menu">

                        <li class="flat-box"><a href="<?=base_url()?>dashboard/change/spanish"><img src="<?=base_url()?>assets/img/flags/sp.png" class="flag" alt="language"> Español</a></li>



                        <li class="flat-box"><a href="<?=base_url()?>dashboard/change/english"><img src="<?=base_url()?>assets/img/flags/en.png" class="flag" alt="language"> English</a></li>



                        <li class="flat-box"><a href="<?=base_url()?>dashboard/change/portuguese"><img src="<?=base_url()?>assets/img/flags/pr.png" class="flag" alt="language"> Portugués</a></li>

                     </ul>

                  </li>      <!-- Modal                 

                            <li class="hidden-xs"><a href="#" class="add-project" data-toggle="modal" data-target="#add_project">Add Project</a></li> --> 

                             <li><a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a></li>

                                    <li>

                                        <a href="#" class="icon-info">

                                            <i class="fa fa-bell" aria-hidden="true"></i>

                                            <span class="label label-primary"></span>

                                        </a>

                                    </li>

                                    <li class="dropdown">

                                        <a href="#" class="dropdown" data-toggle="dropdown"><img src="<?=$this->user->avatar ? base_url().'files/Avatars/'.$this->user->avatar : base_url().'assets/img/Avatar.jpg' ?>" alt="user">                                           

                                            <b class="caret"></b></a>

                                        <ul class="dropdown-menu">

                                            <li>

                                                <div class="navbar-content">

                                                    <span><?php echo $this->user->firstname?> </span>

                                                    <p class="text-muted small">

                                                       <?php echo $this->user->role?>

                                                    </p>

                                                    <div class="divider">

                                                    </div>

                                                    <a href="<?=base_url()?>logout" class="view btn-sm active">cerrar sesion</a>

                                                </div>

                                            </li>

                                        </ul>

                                    </li>

                                </ul>

                            </div>

                        </div>

                    </header>

                </div>

                <div class="user-dashboard"> <h4>Dashboard</h4>

                   <?=$yield?>

                   <!-- ./wrapper >

                    <div class="row">

                        <div class="col-md-5 col-sm-5 col-xs-12 gutter">

                         

                            <div class="sales">

                                <h2>Your Sale</h2>



                                <div class="btn-group">

                                    <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                                        <span>Period:</span> Last Year

                                    </button>

                                    <div class="dropdown-menu">

                                        <a href="#">2012</a>

                                        <a href="#">2014</a>

                                        <a href="#">2015</a>

                                        <a href="#">2016</a>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="col-md-7 col-sm-7 col-xs-12 gutter">

                             

                            <div class="sales report">

                                <h2>Report</h2>

                                <div class="btn-group">

                                    <button class="btn btn-secondary btn-lg dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                                        <span>Period:</span> Last Year

                                    </button>

                                    <div class="dropdown-menu">

                                        <a href="#">2012</a>

                                        <a href="#">2014</a>

                                        <a href="#">2015</a>

                                        <a href="#">2016</a>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                      -->

                 </div>

            </div>

        </div>



    </div>







    <!-- Modal 

    

            <div class="modal-content">

                <div class="modal-header login-header">

                    <button type="button" class="close" data-dismiss="modal">×</button>

                    <h4 class="modal-title">Add Project</h4>

                </div>

                <div class="modal-body">

                            <input type="text" placeholder="Project Title" name="name">

                            <input type="text" placeholder="Post of Post" name="mail">

                            <input type="text" placeholder="Author" name="passsword">

                            <textarea placeholder="Desicrption"></textarea>

                    </div>

                <div class="modal-footer">

                    <button type="button" class="cancel" data-dismiss="modal">Close</button>

                    <button type="button" class="add-project" data-dismiss="modal">Save</button>

                </div>

            </div>



        </div>

    </div>

  -->

</body>



<!-- Footer -->

<!-- Footer -->

<footer class="footer bg-blue-gradient">

       <p align="center"><i class="fa fa-registered"></i> © 2018 <a style="color:#0a93a6; text-decoration:none;" href="#"><i class="fa fa-sitemap"></i>  </a>, <i class="fa fa-spinner"></i> All rights reserved 2018-2022.</p>

    </footer>

<!-- Footer -->

<!-- Footer -->

<!-- ./wrapper -->





      <!-- slim scroll script -->

      <!-- slim scroll script -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.slimscroll.min.js"></script>
      <!-- waves material design effect -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/waves.min.js"></script>
      <!-- Bootstrap Core JavaScript -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/bootstrap.min.js"></script>
      <!-- keyboard widget dependencies -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.keyboard.js"></script>
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.keyboard.extension-all.js"></script>
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.keyboard.extension-extender.js"></script>
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.keyboard.extension-typing.js"></script>
      <script type="text/javascript" src="<?=base_url()?>assets/js/jquery.mousewheel.js"></script>
      
      <!-- select2 plugin script -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/select2.min.js"></script>
      <!-- dalatable scripts -->
      <script src="<?php echo base_url('assets/datatables/js/jquery.dataTables.min.js')?>"></script>
      <script src="<?php echo base_url('assets/datatables/js/dataTables.bootstrap.js')?>"></script>
      <!-- summernote js -->
      <script src="<?=base_url()?>assets/js/summernote.js"></script>
      <!-- chart.js script -->
      <script src="<?=base_url()?>assets/js/Chart.js"></script>
      <!-- moment JS -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/moment.min.js"></script>
      <!-- Include Date Range Picker -->
      <script type="text/javascript" src="<?=base_url()?>assets/js/daterangepicker.js"></script>
      <!-- Sweet Alert swal -->
      <script src="<?=base_url()?>assets/js/sweetalert.min.js"></script>
      <!-- datepicker script -->
      <script src="<?=base_url()?>assets/js/bootstrap-datepicker.min.js"></script>
      <!-- creditCardValidator script -->
      <script src="<?=base_url()?>assets/js/jquery.creditCardValidator.js"></script>
      <!-- creditCardValidator script -->
      <script src="<?=base_url()?>assets/js/credit-card-scanner.js"></script>
      <script src="<?=base_url()?>assets/js/jquery.redirect.js"></script>
      <!-- ajax form -->
      <script src="<?=base_url()?>assets/js/jquery.form.min.js"></script>
      <!-- custom script -->
      <script src="<?=base_url()?>assets/js/app.js"></script>
      <script>

$(document).ready(function(){

   $('[data-toggle="offcanvas"]').click(function(){

       $("#navigation").toggleClass("hidden-xs");

   });

});



  </script>
      
   </body>
</html>

