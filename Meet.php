<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
  box-sizing: border-box;
}

body {
  background-color: #f1f1f1;
  padding: 20px;
  font-family: Arial;
}

/* Center website */
.main {
  max-width: 1000px;
  margin: auto;
}

h1 {
  font-size: 50px;
  word-break: break-all;
}

.row {
  margin: 10px -16px;
}

/* Add padding BETWEEN each column */
.row,
.row > .column {
  padding: 8px;
}

/* Create three equal columns that floats next to each other */
.column {
  float: left;
  width: 33.33%;
  display: none; /* Hide all elements by default */
}

/* Clear floats after rows */ 
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Content */
.content {
  background-color: white;
  padding: 10px;
}

/* The "show" class is added to the filtered elements */
.show {
  display: block;
}

/* Style the buttons */
.btn {
  border: none;
  outline: none;
  padding: 12px 16px;
  background-color: white;
  cursor: pointer;
}

.btn:hover {
  background-color: #ddd;
}

.btn.active {
  background-color: #666;
  color: white;
}
</style>
</head>
<body>

<!-- MAIN (Center website) -->
<div class="main">

<center><h1>MEET THE TEAM</h1></center>

<div class="topnav">
  <a class="active" href="Dash.php">Home</a>   
  <hr>
  <a class="active" button onclick="window.print()">Print This Page</button></a>
  
    </form>
  </div>
<hr>

<h2>DETAILS</h2>


<div id="myBtnContainer">
  <button class="btn active" onclick="filterSelection('all')"> Show all</button>
  <button class="btn" onclick="filterSelection('nature')"> Management</button>
  <button class="btn" onclick="filterSelection('cars')"> System Team</button>
  <button class="btn" onclick="filterSelection('people')"> NOC Team</button>
  
</div>

<!-- Portfolio Gallery Grid -->
<div class="row">
  <div class="column nature">
    <div class="content">
      <img src="\secure-login-system-php\images\ganeshsarfare.jpeg" alt="Sarfare" style="width:100%">
      <center><h3>Ganesh Sarfare</h3>
        <h5><p class="title">Assistant Vice President (AVP)</p>
        <p> Systems & Network </p>
        <p>ganesh.sarfare@aksenttechserv.com</p> </center></h5>
    </div>
  </div>
  <div class="column nature">
    <div class="content">
    <img src="\secure-login-system-php\images\ganeshyadav.jpeg" alt="Yadav" style="width:100%">
    <center><h3>Ganesh Yadav</h3>
    <h5><p class="title">Assistant Vice President (AVP)</p>
        <p> Network Operations </p>
        <p>ganesh.yadav@aksenttechserv.com</p> </center></h5>
    </div>
  </div>
  <div class="column nature">
    <div class="content">
    <img src="\secure-login-system-php\images\arvindv.jpeg" alt="Arvind" style="width:100%">
    <center><h3>Arvind Venkatachalam </h3>
    <h5><p class="title">Assistant Vice President (AVP)</p>
        <p> System Operations </p>
        <p>arvind.v@aksenttechserv.com</p> </center></h5>
    </div>
  </div>
  
  <center><div class="column cars">
    <div class="content">
      <img src="\secure-login-system-php\images\tejas.jpeg" alt="Tejas" style="width:100%">
      <center><h3>Tejas Kamble</h3>
       <h5> <p class="title">NOC-Administrator</p>
        <p>tejas.kamble@aksenttechserv.com</p></center></h5>
    </div>
  </div>

  <center><div class="column cars">
    <div class="content">
      <img src="" alt="" style="width:100%">
      <center><h3></h3>
       <h5> <p class="title"></p>
        <p></p></center></h5>
    </div>
  </div>
  
  <div class="column cars">
    <div class="content">
    <img src="\secure-login-system-php\images\sagarkamble.jpg" alt="Sagar" style="width:100%">
    <center><h3>Sagar Kamble</h3>
    <h5><p class="title">System Engineer / Developer</p>
        <p>sagar.kamble@aksenttechserv.com</p></center></h5>
        
    </div>
  </div></center>

  <div class="column people">
    <div class="content">
      <img src="\secure-login-system-php\images\zaid.jpeg" alt="Zaid" style="width:100%">
      <center><h3>Mohammad Zaid Shaikh</h3>
        <h5><p class="title">NOC Engineer</p>
        <p>zaid.shaikh@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\ranjit.jpeg" alt="Ranjit" style="width:100%">
    <center><h3>Ranjit Singh</h3>
    <h5><p class="title">NOC Engineer </p>
        <p>ranjitsingh.bhuller@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\sushmita.jpeg" alt="Sushmita" style="width:100%">
    <center><h3>Sushmita Yadav </h3>
    <h5><p class="title">NOC Engineer</p>
        <p>sushmita.yadav@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\prajakta.jpeg" alt="Prajakta" style="width:100%">
    <center><h3>Prajkta Waydande </h3>
    <h5><p class="title">NOC Engineer</p>
        <p>prajakta.waydande@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\vipinp.jpeg" alt="Vipin" style="width:100%">
    <center><h3>Vipin Pal</h3>
    <h5><p class="title">NOC Engineer </p>
        <p>ranjitsingh.bhuller@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\suraj.jpeg" alt="Suraj" style="width:100%">
    <center><h3>Suraj Modi </h3>
        <h5><p class="title">NOC Engineer</p>
        <p>suraj.modi@aksenttechserv.com</p></center> </h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\roman.jpeg" alt="Akshay" style="width:100%">
    <center><h3>Akshay Roman </h3>
        <h5><p class="title">NOC Engineer</p>
        <p>akshay.roman@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\minal.jpeg" alt="Minal" style="width:100%">
    <center><h3>Minal Mohite</h3>
       <h5> <p class="title">NOC Engineer </p>
        <p>minal.mohite@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\umesh.jpeg" alt="Umesh" style="width:100%">
    <center><h3>Umesh Jadhav </h3>
       <h5> <p class="title">NOC Engineer</p>
        <p>umesh.jadhav@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\prathmesh.jpeg" alt="Prathmesh" style="width:100%">
    <center><h3>Prathmesh Kawad </h3>
       <h5> <p class="title">NOC Engineer</p>
        <p>prathmesh.kawad@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\Monika.jpeg" alt="Monika" style="width:100%">
    <center><h3>Monika Jadhav</h3>
      <h5><p class="title">NOC Engineer </p>
        <p>monika.jadhav@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\vishal.jpeg" alt="Vishal" style="width:100%">
    <center><h3>Vishal Chaudhary </h3>
        <h5><p class="title">NOC Engineer</p>
        <p>vishal.chaudhary@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\paragv.jpeg" alt="Prathmesh" style="width:100%">
    <center><h3>Parag Vaidya </h3>
       <h5> <p class="title">NOC Engineer</p>
        <p>parag.vaidya@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\dakshata.jpg" alt="Dhakshata" style="width:100%">
    <center><h3>Dakshata Patil</h3>
      <h5><p class="title">NOC Engineer </p>
        <p>dakshata.patil@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\akashata.jpg" alt="Akshata" style="width:100%">
    <center><h3>Akshata Ranpise </h3>
        <h5><p class="title">NOC Engineer</p>
        <p>akshata.ranpise@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  

  <div class="column people">
    <div class="content">
    <img src="\secure-login-system-php\images\sanakhan.jpg" alt="Sana " style="width:100%">
    <center><h3>Sana Khan </h3>
        <h5><p class="title">NOC Engineer</p>
        <p>sana.khan@aksenttechserv.com</p></center></h5>
    </div>
  </div>
  
<!-- END GRID -->
</div>

<!-- END MAIN -->
</div>

<script>
filterSelection("all")
function filterSelection(c) {
  var x, i;
  x = document.getElementsByClassName("column");
  if (c == "all") c = "";
  for (i = 0; i < x.length; i++) {
    w3RemoveClass(x[i], "show");
    if (x[i].className.indexOf(c) > -1) w3AddClass(x[i], "show");
  }
}

function w3AddClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    if (arr1.indexOf(arr2[i]) == -1) {element.className += " " + arr2[i];}
  }
}

function w3RemoveClass(element, name) {
  var i, arr1, arr2;
  arr1 = element.className.split(" ");
  arr2 = name.split(" ");
  for (i = 0; i < arr2.length; i++) {
    while (arr1.indexOf(arr2[i]) > -1) {
      arr1.splice(arr1.indexOf(arr2[i]), 1);     
    }
  }
  element.className = arr1.join(" ");
}


// Add active class to the current button (highlight it)
var btnContainer = document.getElementById("myBtnContainer");
var btns = btnContainer.getElementsByClassName("btn");
for (var i = 0; i < btns.length; i++) {
  btns[i].addEventListener("click", function(){
    var current = document.getElementsByClassName("active");
    current[0].className = current[0].className.replace(" active", "");
    this.className += " active";
  });
}
</script>

</body>
</html>





<!DOCTYPE html>
<html>
<head>
<style>
body  {
  background-image: url("main_background.jpg");
  background-color: #cccccc;
}
</style>
</head>
<body>



<br>
<br>
    © 2030 SagarKamble, Inc.

