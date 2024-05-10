<?php
include("config.php");
include("navbar.php");
include("printfunction.php");

// Retrieve data for dropdowns
$result_name = $conn->query("SELECT * FROM signatories");
$result_role = $conn->query("SELECT * FROM signatories");

$query = "select * from cart";
$result = mysqli_query($conn, $query);

// Calculate grand total
$grand_total = 0;
while ($row = mysqli_fetch_assoc($result)) {
    $grand_total += $row['total_price'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href= "CSS\print.css" >

  <title>CvSU ONLINE CANVASSING</title>
  
  <link rel="icon" href="https://myportal.cvsu.edu.ph/assets/img/resized/cvsu-logo.png" type="image/gif" sizes="18x16">

  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.min.css' />
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css' />


  <style>
  

    /* Media query for print styles */
    @media print {
      nav {
        display: none;
      }
    }
    .form-control {
    width: 550px; /* Adjust the width as needed */
}
.form-two {
    width: 250px; /* Adjust the width as needed */
}
.form-three {
    width: 250px; /* Adjust the width as needed */
}
label {
    text-align: left;
  }
   
  </style>

<script>
        function printAndDownload() {
            // Trigger the print action
            window.print();

            // Simulate a click on a hidden download link
            var downloadLink = document.createElement("a");
            downloadLink.href = "download.php"; // Change this to the server endpoint that generates the PDF
            downloadLink.download = "your_filename.pdf"; // Change the filename as needed
            document.body.appendChild(downloadLink);
            downloadLink.click();
            document.body.removeChild(downloadLink);
        }
    </script>
</head>
<body>

<div class="center-container">
    <div class="row justify-content-center ;">
      <div class="col-lg-12 px-20" id="order">

      <div class="receipt-left">
<img src="https://myportal.cvsu.edu.ph/assets/img/resized/cvsu-logo.png" style="width: 120px; border-radius: 70px;">
</div>

  <header>
    <p><center>Republic of the Philippines</center></p>
    <h3>CAVITE STATE UNIVERSITY <br> Don Severino de las Alas Campus <br></h3>
    <p><center>Indang, Cavite, Philippines <br>(046) 4150-010 <br>www.cvsu.edu.ph</center></p>
  </header> 


  <div class="center-container">
        <!-- your existing content here -->

        <div class="container">
            <h4><center>INVITATION TO SUBMIT QUOTATION</center></h4>   
    <!-- One-->
    <form method="post">
    <div class="form-group">
    <label for="exampleInput">1. The Cavite State University (CvSU) invites interested firms/supplier to submit 
    quotation for the project</label>
        <input type="text" id="input_one" name="input_one" placeholder="(e.g., Supply and Delivery of Supplies for Water Refilling Station)">
        with an Approved Budget for the Contract (ABC) <b>₱<?= number_format($grand_total, 2); ?></b>. Quotation received in excess of the ABC shall be automatically rejected at the opening.
    </div>
</p>
</div>

        <!-- Table Section -->
        <table id="invoice-items">
            <thead>
                <tr>
                    <th><center>Item No.</center></th>
                    <th><center>Quantity</center></th>
                    <th><center>Unit</center></th>
                    <th><center>Description</center></th>
                    <th><center>Unit Cost</center></th>
                    <th><center>Total Cost</center></th>
                </tr>
            </thead>
            <tbody>
                <?php
                $item_num = 1;
                $result = mysqli_query($conn, $query); // Reset the result set
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<td>{$item_num}</td>";
                    echo "<td>{$row['qty']}</td>";
                    echo "<td>{$row['product_name']}</td>";
                    echo "<td>{$row['description']}</td>";
                    echo "<td>₱" . number_format($row['product_price'], 2) . "</td>";
                    echo "<td>₱" . number_format($row['total_price'], 2) . "</td>";
                    echo "</tr>";
                    $item_num++;
                }
                ?>
            </tbody>
        </table>

        <!-- Total Section -->
        <div id="invoice-total">
            <td>Total Amount</td>
            <td><b>₱<i class=""></i>&nbsp;&nbsp;<?= number_format($grand_total, 2); ?></b></td>
        </div>

        
  <br>
  <br>
  <br>
  <header>
    <p style="font-size: 16px; margin-left: 20px; text-align: justify;" align="left" style="display: block;">2. Delivery Period: ____ calendar days from the receipt of P.O.<br></p>
    
    <p style="font-size: 16px; margin-left: 20px; text-align: justify;" align="left" style="display: block;">3. Price quotations must be valid for a period of sixty (60) calendar days from date of
      submission and shall include all taxes, duties and/or levies payable. Bidders shall also
      indicate the brand and model of the items being offered.<br></p>
    
      <p style="font-size: 16px; margin-left: 20px; text-align: justify;" align="left"  style="display: block;">4. Warranty shall be for a period of six (6) months for supplies and materials. Warranty for
      equipment must not be less than one (1) year from the date of acceptance and shall be
      accompanied with Warranty Certificate.<br></p>
    
 
 <!-- Two -->
 <div class="form-group">
      <label for="exampleInput">5. The quotation must be submitted to the Procurement Office through mail, fax or email at
      the contact details listed below</label>
      <input type="text" id="input_two" name="input_two" placeholder="(e.g., on or before 5:00 PM)">of <input type="text" id="input_three" name="input_three" placeholder="(e.g., December 14, 2023.)">
      </div>

      <p style="margin-left: 100px; text-align: justify;" align="left">Address : Procurement Office, Administration Building Cavite State University Indang, Cavite </p>
        <p style="margin-left: 100px; text-align: justify;" align="left"> E-mail : procurementoffice@cvsu.edu.ph / rfqmain@cvsu.edu.ph </p>
        <p style="margin-left: 100px; text-align: justify;" align="left"> Telefax : (046) 889-6373 </p>
      
    <p style="font-size: 16px; margin-left: 20px; text-align: justify;" align="left" style="display: block;">6. The CvSU reserves the right to reject any or all quotations and/or proposals and waive
      any formalities/informalities therein and to accept such bids it may consider as most
      advantageous to the agency and to the government. CvSU neither assumes any
      obligation for whatsoever losses that may be incurred in the preparation of bids, nor does
      it guarantee that an award will be made.<br></p>

      <br>
      <br>
      <br>

        <!-- FOR TESTING ONLY -->
        <div style="width: 100%; display: flex; flex-direction: row; justify-content: space-between;">
          <div>
              
          </div>
          <div style="display: flex; flex-direction: column; justify-content: center;">
              <div style="position: relative; height: 30px;">
                <img style="position: absolute; height: 60px; left: 50%; transform: translate(-50%, 0);" src="img/65b651efcb2c7.png">
              </div>
              <p class="mb-0 fw-bold">John Rafael Balaba</p>
              <p>BAC Secretary, Goods and Consulting Services</p>
          </div>
        </div>
        <!-- END OF TESTING -->



  
  <button type="submit" name="save" class="btn btn-success">Save</button>
</form>
  
      <div class="print-btn">
    <a href="generate_pdf.php?signee=Janjan" class="btn btn-success" target="_blank">Print and Download</a>
</div>
  </header>
  <!-- Clear Data link -->
<a href="clear_data.php" class="btn btn-danger">Clear Data</a>


        
</div>
</body>
</html>
