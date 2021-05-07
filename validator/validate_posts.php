<?php
session_start();
include('includes/config.php');
error_reporting(0);
if(strlen($_SESSION['login'])==0)
  { 
header('location:index.php');
}
else{


    ?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <!-- App title -->
        <title>Tech Connect | Dashboard</title>
    <link rel="stylesheet" href="../plugins/morris/morris.css">

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="../plugins/switchery/switchery.min.css">
        <script src="assets/js/modernizr.min.js"></script>



    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <a href="index.html" class="logo"><span>TC<span>Validator</span></span><i class="mdi mdi-layers"></i></a>
                    <!-- Image logo -->
                    <!--<a href="index.html" class="logo">-->
                        <!--<span>-->
                            <!--<img src="assets/images/logo.png" alt="" height="30">-->
                        <!--</span>-->
                        <!--<i>-->
                            <!--<img src="assets/images/logo_sm.png" alt="" height="28">-->
                        <!--</i>-->
                    <!--</a>-->
                </div>

                <!-- Button mobile view to collapse sidebar menu -->
            <?php include('includes/topheader_validator.php');?>
            </div>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->
    <?php include('includes/leftsidebar_validator.php');?>
            <!-- Left Sidebar End -->



            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">
                        <div class="row">
              <div class="col-xs-12">
                <div class="page-title-box">
                                    <h4 class="page-title">Validator's Dashboard</h4>
                                    <ol class="breadcrumb p-0 m-0">
                                        <li>
                                            <a href="#">TechConnect</a>
                                        </li>
                                        <li>
                                            <a href="#">Validator</a>
                                        </li>
                                        <li class="active">
                                            Dashboard
                                        </li>
                                    </ol>
                                    <div class="clearfix"></div>
                                </div>
              </div>
            </div>
                        <!-- end row -->

                         <div class="container">


     
      <div class="row" style="margin-top: 4%">

        <!-- Blog Entries Column -->
        <div class="col-md-8">

          <!-- Blog Post -->
<?php 
     if (isset($_GET['pageno'])) {
            $pageno = $_GET['pageno'];
        } else {
            $pageno = 1;
        }
        $no_of_records_per_page = 8;
        $offset = ($pageno-1) * $no_of_records_per_page;


        $total_pages_sql = "SELECT COUNT(*) FROM tblpostsfptv";
        $result = mysqli_query($con,$total_pages_sql);
        $total_rows = mysqli_fetch_array($result)[0];
        $total_pages = ceil($total_rows / $no_of_records_per_page);


$query=mysqli_query($con,"select tblpostsfptv.id as pid,tblpostsfptv.PostTitle as posttitle,tblpostsfptv.PostImage,tblpostsfptv.counter as counter,tblcategory.CategoryName as category,tblcategory.id as cid,tblsubcategory.Subcategory as subcategory,tblpostsfptv.PostDetails as postdetails,tblpostsfptv.PostingDate as postingdate,tblpostsfptv.PostUrl as url from tblpostsfptv left join tblcategory on tblcategory.id=tblpostsfptv.CategoryId left join  tblsubcategory on  tblsubcategory.SubCategoryId=tblpostsfptv.SubCategoryId order by tblpostsfptv.id desc  LIMIT $offset, $no_of_records_per_page");
while ($row=mysqli_fetch_array($query)) {
?>

<div class="card mb-4">
 <img class="card-img-top" src="../publisher/postimages/<?php echo htmlentities($row['PostImage']);?>" alt="<?php echo htmlentities($row['posttitle']);?>">
            <div class="card-body">
              <h2 class="card-title"><?php echo htmlentities($row['posttitle']);?></h2>
                 <p><b>Category : </b> 
                 <a href="category.php?catid=<?php echo htmlentities($row['cid'])?>"><?php echo htmlentities($row['category']);?></a> </p>

                 <h5>
                  <p>News ID:

                   <?php

                   echo $row['pid'];

                   ?>
                   </p>
                 </h5>
       
              <a href="../news-details.php?nid=<?php echo htmlentities($row['pid'])?>" class="btn btn-primary">Read More &rarr;</a>



              <button style="margin-left: 200px;" class="btn btn-success" id="approve" onclick="disableButton(id);">Approve</button>
              <button style="margin-left: 20px;" class="btn btn-danger" id="deny" onclick="disableButton(id);">Deny</button>



              <script type="text/javascript">
                function disableButton(id)
                {


                  
                  document.getElementById('approve').disabled = true;
                   document.getElementById('deny').disabled = true;
                  alert("Thank you for voting... Response recorded");
                  //var nid = prompt("Enter news id for confirmation");
                  if (id == "approve") {

                  
                    <?php


                    $id = 22;
                    


                  $counter = $row['counter'];
                  $counter = $counter + 1;



                  $new_query = mysqli_query($con,"UPDATE tblpostsfptv SET counter=$counter WHERE id=$id;");


                  if($counter > 2)
                  {
                    $insert_query = mysqli_query($con, "INSERT INTO tblposts SELECT id,PostTitle,CategoryId,SubCategoryId,PostDetails,PostingDate,UpdationDate,Is_Active,PostUrl,PostImage FROM tblpostsfptv WHERE id=$id;");

                  $delete_query = mysqli_query($con, "DELETE FROM tblpostsfptv WHERE id=$id;");
                  }

                  


                 
                  
                  ?>
                 

                  }
                }
              </script>
             
             
            </div>
            <div class="card-footer text-muted">
              <br>Posted on <?php echo htmlentities($row['postingdate']);?>
           
            </div>
          </div>
<?php } ?>



       

      

          <!-- Pagination -->



<script type="text/javascript">

  function validate()
  {
    alert("Successfully Confirmed your validation.");

    <?php

    $final_query = mysqli_query($con,"INSERT INTO tblposts ")



    ?>

  }
  
    



</script>







     <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>





        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/detect.js"></script>
        <script src="assets/js/fastclick.js"></script>
        <script src="assets/js/jquery.blockUI.js"></script>
        <script src="assets/js/waves.js"></script>
        <script src="assets/js/jquery.slimscroll.js"></script>
        <script src="assets/js/jquery.scrollTo.min.js"></script>
        <script src="../plugins/switchery/switchery.min.js"></script>

        <!-- Counter js  -->
        <script src="../plugins/waypoints/jquery.waypoints.min.js"></script>
        <script src="../plugins/counterup/jquery.counterup.min.js"></script>

        <!--Morris Chart-->
    <script src="../plugins/morris/morris.min.js"></script>
    <script src="../plugins/raphael/raphael-min.js"></script>

        <!-- Dashboard init -->
        <script src="assets/pages/jquery.dashboard.js"></script>

        <!-- App js -->
        <script src="assets/js/jquery.core.js"></script>
        <script src="assets/js/jquery.app.js"></script>


    </body>
</html>
<?php } ?>