<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!DOCTYPE HTML>
<html>
<head>
<title>Three Birds Safaris | Tourism Kenya</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<link rel="icon" type="image/png" href="images/lbs5.png" />
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<style>
    .auto-slider{
    position: relative;
    box-sizing: content-box;
    display: inline-block;
    text-align: center;
    background: #fff;
    max-width: 100%;
    margin: 0 auto;
    overflow: hidden;
    border-radius: 0px;
    box-shadow: 1px 1px 6px rgba(0, 0, 0, 0.4);

}


@keyframes sliding{
            0%{left: 0%; }
            20%{left: -100%;}
            40%{left: -200%;}
            60%{left: -300%;}
            80%{left: -400%;}
            100%{left: 0%;}
        }        
        
@keyframes indicating{
            from{
                left: -100%;
            }
            to{
                left: 0;
            }
}  
        
        
div#slider { overflow: hidden; }
div#slider figure img { width: 20%; float: left; }
div#slider figure { 
  position: relative;
  width: 500%;
  margin: 0;
  left: 0;
  text-align: left;
  font-size: 0;
  animation: 25s sliding ease infinite; 
}

/* Slider indicator */
.indicator{
    width: 100%;
    max-width: 100%;
    height: 6px;
    background: #e41b17;
    position: absolute;
    bottom: 0;
    
    animation: indicating 5s ease infinite; 
    
}

/* gallery tab css */
* {
  box-sizing: border-box;
}

body {
  margin: 0;
  font-family: Arial;
}

/* The grid: Four equal columns that floats next to each other */
.column {
  float: left;
  width: 25%;
  padding: 10px;
}

/* Style the images inside the grid */
.column img {
  opacity: 0.8; 
  cursor: pointer; 
}

.column img:hover {
  opacity: 1;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* The expanding image container */
.container2 {
  position: relative;
  display: none;
}

/* Expanding image text */
#imgtext {
  position: absolute;
  bottom: 15px;
  left: 15px;
  color: white;
  font-size: 20px;
}

/* Closable button inside the expanded image */
.closebtn {
  position: absolute;
  top: 10px;
  right: 15px;
  color: white;
  font-size: 35px;
  cursor: pointer;
}

</style>

</head>
<body>
<?php include('includes/header.php');?>

<!----- image slideshow------>
                  
                  <!-- Start slider -->
                  <div class="container">
<section class="auto-slider">
            <div id="slider">
                <figure>
                    <img src="images/img1.jpeg" alt="Image">
                    <img src="images/img2.jpeg" alt="Image">
                    <img src="images/img3.jpeg" alt="Image">
                    <img src="images/img4.jpeg" alt="Image">
                    <img src="images/img5.jpg" alt="Image">
                </figure>
                <div class="indicator"></div>
    </div>
</section>
                  <!-- end slider -->
           
    		</div>
		</div>
    </div>
<!---holiday---->
<div class="container">
	<div class="holiday">

	<h3>Package List</h3>

					
<?php $sql = "SELECT * from tbltourpackages order by rand() limit 4";
$query = $dbh->prepare($sql);
$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);
$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $result)
{	?>
			<div class="rom-btm">
				<div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay=".5s">
					<img src="admin/pacakgeimages/<?php echo htmlentities($result->PackageImage);?>" class="img-responsive" alt="">
				</div>
				<div class="col-md-6 room-midle wow fadeInUp animated" data-wow-delay=".5s">
					<h5>Package Name: <span style="color:#e69900;"><?php echo htmlentities($result->PackageName);?></span></h5>
					<h6>Package Type : <?php echo htmlentities($result->PackageType);?></h6>
					<p><b>Package Location :</b> <?php echo htmlentities($result->PackageLocation);?></p>
					<p><b>Features</b> <?php echo htmlentities($result->PackageFetures);?></p>
				</div>
				<div class="col-md-3 room-right wow fadeInRight animated" data-wow-delay=".5s">
					<h5>USD <?php echo htmlentities($result->PackagePrice);?></h5>
					<a href="package-details.php?pkgid=<?php echo htmlentities($result->PackageId);?>" class="view">Details</a>
				</div>
				<div class="clearfix"></div>
			</div>

<?php }} ?>
			
		
<div><a href="package-list.php" class="view">View More Packages</a></div>
</div>
			<div class="clearfix"></div>
	</div>
<!---- gallery tab--->
<div class="container">
<div style="text-align:center">
  <h2 style="color:rgb(83, 3, 83);">TBS Image Gallery</h2>
  <p>Click on the images to view</p>
</div>

<!-- The four columns -->
<div class="row">
  <div class="column">
    <img src="images/lbs1.jpeg" alt="Exploring" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="images/lbs2.jpeg" alt="Lake Baringo Lake" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="images/lbs3.jpeg" alt="Lake Baringo Capture" style="width:100%" onclick="myFunction(this);">
  </div>
  <div class="column">
    <img src="images/lbs4.jpeg" alt="Field Work" style="width:100%" onclick="myFunction(this);">
  </div>
</div>

<div class="container2">
  <span onclick="this.parentElement.style.display='none'" class="closebtn">&times;</span>
  <img id="expandedImg" style="width:100%">
  <div id="imgtext"></div>
</div>

<script>
function myFunction(imgs) {
  var expandImg = document.getElementById("expandedImg");
  var imgText = document.getElementById("imgtext");
  expandImg.src = imgs.src;
  imgText.innerHTML = imgs.alt;
  expandImg.parentElement.style.display = "block";
}
</script>
</div>
<div class="container">
    	<div><a href="gallery.php" class="view"><b>View More Images</b></a></div>
</div>

<br>



<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>			
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>			
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>			
<!-- //write us -->
</body>
</html>