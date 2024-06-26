<!DOCTYPE html>
<html lang="en">
<head>
  
  <!-- Bootstrap CSS -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css' />
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css' />

  <!-- Include jQuery -->
  <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
  <script src="https://cdn.datatables.net/1.13.7/js/jquery.dataTables.min.js"></script>
  <script src="https://cdn.datatables.net/1.13.7/js/dataTables.bootstrap5.min.js"></script>

  <!-- Include DataTables CSS and JS files -->
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css' />
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
     
  <!----===== Iconscout CSS ===== -->
  <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

  <!----======== CSS ======== -->
  <link rel="stylesheet" type="text/css" href="adminpanel.css">

  <title>CvSU ONLINE CANVASSING</title>
  <link rel="icon" href="https://myportal.cvsu.edu.ph/assets/img/resized/cvsu-logo.png" type="image/gif" sizes="18x16">

</head>
<body>
<nav>
    <div class="logo-name">
        <div class="logo-image">
            <img src="images/logo.png" alt="">
        </div>

        <span class="logo_name"> Canvassing</span>
    </div>

    <div class="menu-items">
        <ul class="nav-links">
            <li>
                <a href="index.php">
                    <i class="uil uil-estate"></i>
                    <span class="link-name">Product</span>
                </a>
            </li>
            
            <li>
                <a href="cart.php">
                    <i class="uil uil-clipboard-alt"></i>
                    <span class="link-name">Paper</span>
                    <span id="cart-item" class="badge badge-success"></span>
                </a>
            </li>
            <li>
                <a href="signatory.php"> <!-- Replace "signatory.php" with the actual URL of your signatory management page -->
                    <i class="uil uil-pen"></i> <!-- You can change the icon if needed -->
                    <span class="link-name">Signatory Management</span>
                </a>
            </li>
        </ul>
        
        <ul class="logout-mode">
            <li>
                <a href="logout.php">
                    <i class="uil uil-signout"></i>
                    <span class="link-name">Logout</span>
                </a>
            </li>
            <li class="mode">
                <a href="#">
                    <i class="uil uil-moon"></i>
                    <span class="link-name">Dark Mode</span>
                </a>
                <div class="mode-toggle">
                    <span class="switch"></span>
                </div>
            </li>
        </ul>
    </div>
</nav>
<script src="script.js"></script>
<script>
// Initialize DataTable
$(document).ready(function() {
    $('#example').DataTable();
});
</script>
</body>
</html>
