
<?php 
session_start();

if (isset($_SESSION['user_id']) && isset($_SESSION['user_email'])) { 
 
?>

<?php 
}else {
 header("Location: login.php");
}
?>




<!DOCTYPE html>
<html lang="en">

<head>
    <title>DashBoard</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {
            box-sizing: border-box;
        }
        /* Style the body */
        
        body {
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
        }
        /* Header/logo Title */
        
        .header {
            padding: 80px;
            text-align: center;
            background: #1abcae;
            color: white;
        }
        /* Increase the font size of the heading */
        
        .header h1 {
            font-size: 40px;
        }
        /* Sticky navbar - toggles between relative and fixed, depending on the scroll position. It is positioned relative until a given offset position is met in the viewport - then it "sticks" in place (like position:fixed). The sticky value is not supported in IE or Edge 15 and earlier versions. However, for these versions the navbar will inherit default position */
        
        .navbar {
            overflow: hidden;
            background-color: #333;
            position: sticky;
            position: -webkit-sticky;
            top: 0;
        }
        /* Style the navigation bar links */
        
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }
        /* Right-aligned link */
        
        .navbar a.right {
            float: right;
        }
        /* Change color on hover */
        
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        /* Active/current link */
        
        .navbar a.active {
            background-color: #666;
            color: white;
        }
        /* Column container */
        
        .row {
            display: -ms-flexbox;
            /* IE10 */
            display: flex;
            -ms-flex-wrap: wrap;
            /* IE10 */
            flex-wrap: wrap;
        }
        /* Create two unequal columns that sits next to each other */
        /* Sidebar/left column */
        
        .side {
            -ms-flex: 30%;
            /* IE10 */
            flex: 30%;
            background-color: #f1f1f1;
            padding: 20px;
        }
        /* Main column */
        
        .main {
            -ms-flex: 70%;
            /* IE10 */
            flex: 70%;
            background-color: white;
            padding: 20px;
        }
        /* Fake image, just for this example */
        
        .fakeimg {
            background-color: #aaa;
            width: 100%;
            padding: 20px;
        }
        /* Footer */
        
        .footer {
            padding: 20px;
            text-align: center;
            background: #ddd;
        }
        /* Responsive layout - when the screen is less than 700px wide, make the two columns stack on top of each other instead of next to each other */
        
        @media screen and (max-width: 700px) {
            .row {
                flex-direction: column;
            }
        }
        /* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
        
        @media screen and (max-width: 400px) {
            .navbar a {
                float: none;
                width: 100%;
            }
        }
    </style>


    <style>
        .menu-btn {
            background-color: #040008;
            color: white;
            padding: 16px;
            font-size: 20px;
            font-weight: bolder;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif, Arial, Helvetica, sans-serif;
            border: none;
        }
        
        .dropdown-menu {
            position: relative;
            display: inline-block;
        }
        
        .menu-content {
            display: none;
            position: absolute;
            background-color: #017575;
            min-width: 160px;
            z-index: 1;
        }
        
        nav {
            background-color: #017575;
        }
        
        .links,
        .links-hidden {
            display: inline-block;
            color: rgb(255, 255, 255);
            padding: 12px 16px;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
        }
        
        .links-hidden {
            display: block;
        }
        
        .links {
            display: inline-block;
        }
        
        .links-hidden:hover,
        .links:hover {
            background-color: rgb(8, 107, 46);
        }
        
        .dropdown-menu:hover .menu-content {
            display: block;
        }
        
        .dropdown-menu:hover .menu-btn {
            background-color: #3e8e41;
        }
    </style>
</head>

<body>







    <div class="header">
        <h1>NETWORK OPERATION CENTER</h1>

    </div>


    <nav>
        <a class="links" href="index.php">Home</a>

        <!--<a class="links" href="Meet.php"> Team</a>-->
     

       

      

        <!--<li id="menu-item-3654" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-3654"><a>NOC ᐁ</a>
<ul class="sub-menu">
	<li id="menu-item-3653" class="online-training-button-nav menu-item menu-item-type-post_type menu-item-object-page menu-item-3653"><a href="Meet.php">Team</a></li>
	<li id="menu-item-3650" class="elearning-library-button-nav menu-item menu-item-type-post_type menu-item-object-page menu-item-3650"><a href="noc_team.php">Contact</a></li>
	<li id="menu-item-3651" class="lms-content-button-nav menu-item menu-item-type-post_type menu-item-object-page menu-item-3651"><a href="https://www.pryor.com/lms-content/">LMS Content</a></li>
	<li id="menu-item-3652" class="microlearning-button-nav menu-item menu-item-type-post_type menu-item-object-page menu-item-3652"><a href="https://www.pryor.com/microlearning/">Microlearning</a></li>
	<li id="menu-item-5520" class="webinars-button-nav menu-item menu-item-type-post_type menu-item-object-page menu-item-5520"><a href="https://www.pryor.com/training-webinars/">Webinars</a></li>
	<li id="menu-item-7911" class="learning-paths-button-nav menu-item menu-item-type-post_type menu-item-object-page menu-item-7911"><a href="https://www.pryor.com/online-training/learning-paths/">Learning Paths</a></li>
	<li id="menu-item-8580" class="administrative-features-button-nav menu-item menu-item-type-post_type menu-item-object-page menu-item-8580"><a href="https://www.pryor.com/administration-features/">Administration Features</a></li>-->
</ul>
</li>
         
         <a class="links" href="pdf.php">RFP</a> 
        <!--<a class="links" href="noc_team.php">NOC_TEAM</a>-->
        <div class="dropdown-menu" >
            <button class="menu-btn"> NOC ᐁ </button>
            <div class="menu-content">
                <a  class="links-hidden" href="Meet.php">Team </a>
                <a class="links-hidden" href="noc_team.php">Contact</a>
                </div>     
        </div> 



        <div class="dropdown-menu">
            <button class="menu-btn">ISP Details ᐁ </button>
            <div class="menu-content">
                <a class="links-hidden" href="pack_a.php">Package A </a>
                <a class="links-hidden" href="pack_b.php">Package B</a>
                <a class="links-hidden" href="pack_c.php">Package C</a>
                <!--<a class="links-hidden" href="noc&dr_noc.php"> DC_DR</a>-->
                <a class="links-hidden" href="dc_dr.php"> DC_DR1</a>
        </div>


        </div>
        <div class="dropdown-menu">
            <button class="menu-btn">Package Resource Details ᐁ</button>
            <div class="menu-content">
                <a class="links-hidden" href="resource_pack_a.php">Pack A</a>
                <a class="links-hidden" href="resource_pack_b.php">Pack B</a>
                <a class="links-hidden" href="resource_pack_c.php">Pack C</a>
                <a class="links-hidden" href="Escalation.php">Escalation Sheet(Pack-B)</a>
                </div> 
            </div>

            
              
        </div>




        <div class="dropdown-menu">
            <button class="menu-btn">SIA Details ᐁ</button>
            <div class="menu-content">
                <a class="links-hidden" href="master_sia.php">Master SIA</a>
                <a class="links-hidden" href="sia_central_team.php">SIA Central Team</a>
                </div>
            </div>

           
               <a class="links" href="main_litup.php">🔥LIT_UP🔥</a> 


            



             
         
        





        <a class="links" href="logout.php">LOGOUT</a>
            
            
            <!--<a href="logout.php" class="btn btn-warning">LOGOUT</a>-->
            
            
           <!--<a href="main_litup.php"><button class="button button2">🔥LIT_UP🔥 </button></a>-->



    </nav>





    <!-- HTML CODE FOR BACKGROUND AND PICTURE ON DASHBOARD PAGE-->



    <!DOCTYPE html>
    <html>

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            * {
                box-sizing: border-box
            }
            
            body {
                font-family: Verdana, sans-serif;
                margin: 0
            }
            
            .mySlides {
                display: none
            }
            
            img {
                vertical-align: middle;
            }
            /* Slideshow container */
            
            .slideshow-container {
                max-width: 1000px;
                position: relative;
                margin: auto;
            }
            /* Next & previous buttons */
            
            .prev,
            .next {
                cursor: pointer;
                position: absolute;
                top: 50%;
                width: auto;
                padding: 16px;
                margin-top: -22px;
                color: white;
                font-weight: bold;
                font-size: 18px;
                transition: 0.6s ease;
                border-radius: 0 3px 3px 0;
                user-select: none;
            }
            /* Position the "next button" to the right */
            
            .next {
                right: 0;
                border-radius: 3px 0 0 3px;
            }
            /* On hover, add a black background color with a little bit see-through */
            
            .prev:hover,
            .next:hover {
                background-color: rgba(0, 0, 0, 0.8);
            }
            /* Caption text */
            
            .text {
                color: #f2f2f2;
                font-size: 15px;
                padding: 8px 12px;
                position: absolute;
                bottom: 8px;
                width: 100%;
                text-align: center;
            }
            /* Number text (1/3 etc) */
            
            .numbertext {
                color: #f2f2f2;
                font-size: 12px;
                padding: 8px 12px;
                position: absolute;
                top: 0;
            }
            /* The dots/bullets/indicators */
            
            .dot {
                cursor: pointer;
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #bbb;
                border-radius: 50%;
                display: inline-block;
                transition: background-color 0.6s ease;
            }
            
            .active,
            .dot:hover {
                background-color: #717171;
            }
            /* Fading animation */
            
            .fade {
                -webkit-animation-name: fade;
                -webkit-animation-duration: 1.5s;
                animation-name: fade;
                animation-duration: 1.5s;
            }
            
            @-webkit-keyframes fade {
                from {
                    opacity: .4
                }
                to {
                    opacity: 1
                }
            }
            
            @keyframes fade {
                from {
                    opacity: .4
                }
                to {
                    opacity: 1
                }
            }
            /* On smaller screens, decrease text size */
            
            @media only screen and (max-width: 300px) {
                .prev,
                .next,
                .text {
                    font-size: 11px
                }
            }
        </style>
    </head>

    <body>

        <div class="slideshow-container">

            <div class="mySlides fade">
                <div class="numbertext">1 / 4</div>
                <img src="noc2.jpg" style="width:100%">
                <div class="text">1</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">2 / 4</div>
                <img src="noc1.jpg" style="width:100%">
                <div class="text">2</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">3 / 4</div>
                <img src="noc3.jpg" style="width:100%">
                <div class="text">3</div>
            </div>

            <div class="mySlides fade">
                <div class="numbertext">4 / 4</div>
                <img src="noc4.jpg" style="width:100%">
                <div class="text">4</div>
            </div>

            <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
            <a class="next" onclick="plusSlides(1)">&#10095;</a>

        </div>
        <br>

        <div style="text-align:center">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
            <span class="dot" onclick="currentSlide(3)"></span>
            <span class="dot" onclick="currentSlide(4)"></span>
        </div>

       <!-- <script>
            var slideIndex = 1;
            showSlides(slideIndex);

            function plusSlides(n) {
                showSlides(slideIndex += n);
            }

            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                if (n > slides.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = slides.length
                }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
            }
        </script>-->







        <script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 5000); // Change image every 2 seconds
}
</script>


    </body>

    </html>






    <!DOCTYPE html>
    <html>

    <head>
        <style>
            .all-browsers {
                margin: 0;
                padding: 5px;
                background-color: lightgray;
            }
            
            .all-browsers>h1,
            .browser {
                margin: 10px;
                padding: 5px;
            }
            
            .browser {
                background: white;
            }
            
            .browser>h2,
            p {
                margin: 4px;
                font-size: 90%;
            }
            
            footer {
                text-align: center;
                padding: 3px;
                background-color: DarkSalmon;
                color: white;
            }
        </style>
    </head>

    <body>

        <h1></h1>

        <article class="all-browsers">
            <h1></h1>
            <article class="browser">
                <h2></h2>

                <footer>
                    <p>Author: Sagar Kamble<br>
                        <a href="https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1629544359&rver=7.0.6737.0&wp=MBI_SSL&wreply=https%3a%2f%2foutlook.live.com%2fowa%2f0%2f%3fstate%3d1%26redirectTo%3daHR0cHM6Ly9vdXRsb29rLmxpdmUuY29tL21haWwvMC8%26nlp%3d1%26RpsCsrfState%3d7957a3a7-15fc-1fe4-6dad-47bfc90e18ce&id=292841&aadredir=1&CBCXT=out&lw=1&fl=dob%2cflname%2cwld&cobrandid=90015">sagar.kamble@aksenttechserv.com</a></p>
                </footer>

    </body>

    </html>


    <!DOCTYPE html>
    <html>

    <head>
        <style>
            body {
                background-image: url("");
                background-color: #cccccc;
            }
        </style>
    </head>

    <body>



    </body>

    </html>


    <br>
    © 2030 SagarKamble, Inc.


 












    