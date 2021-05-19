<!DOCTYPE html>
<html>
<head>
	<title>TSF Bank</title>
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style type="text/css">
      .th
      {
        text-align: center;
        font-size: 1.2em;
        font-weight: bold;
      }
      .tr
      {
        text-align: center;
        font-size: 1em;
        font-family: sans-serif;
        padding: 20px;
        font-weight: bold;

      }
     
    </style>
</head>
<body>


<?php
     
    include 'navbar.php';
    include 'config.php';
    $sql = "SELECT * FROM `customer`";
    $result = mysqli_query($conn,$sql);

?>    
<div class="container">
 <h2 class="text-center pt-4" style="font-family: sans-serif; font-weight: bold;">Customers Details</h2>
        <br>
  <div class="table-responsive-sm">          
  <table class="table table-hover table-sm  table-condensed table-bordered tb" >
    <thead>
      <tr class="info warning">
        <th class="th">Customer No</th>
        <th class="th">Name</th>
        <th class="th">Email</th>
        <th class="th">Balance</th>
        <th class="th">View Details</th>
      </tr>
    </thead>
   
    <tbody>
    <?php
    	while($row = mysqli_fetch_assoc($result))
     	{
     ?>
     		 <tr class="tr"> 
        			<td><?php echo $row['id']; ?></td>
        			<td><?php echo $row['name']; ?></td>
        			<td><?php echo $row['email']; ?></td>
        			<td><?php echo $row['balance']; ?></td>
              <td><a href="transfer.php?id=<?php echo $row['id'];?>"><button class="btn btn-warning">View</button></a></td>
      		</tr>
    <?php  		
       			 
    	}
    ?>
     
    </tbody>
  </table>
  </div>
</div>


</body>
</html>