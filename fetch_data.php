<?php

//fetch_data.php

include('database_connection.php');

if(isset($_POST["action"]))
{
	$query = "
		SELECT * FROM product WHERE product_status = '1'
	";
	if(isset($_POST["minimum_price"], $_POST["maximum_price"]) && !empty($_POST["minimum_price"]) && !empty($_POST["maximum_price"]))
	{
		$query .= "
		 AND product_price BETWEEN '".$_POST["minimum_price"]."' AND '".$_POST["maximum_price"]."'
		";
	}
	if(isset($_POST["brand"]))
	{
		$brand_filter = implode("','", $_POST["brand"]);
		$query .= "
		 AND product_brand IN('".$brand_filter."')
		";
	}
	if(isset($_POST["ram"]))
	{
		$ram_filter = implode("','", $_POST["ram"]);
		$query .= "
		 AND product_ram IN('".$ram_filter."')
		";
	}
	if(isset($_POST["storage"]))
	{
		$storage_filter = implode("','", $_POST["storage"]);
		$query .= "
		 AND product_storage IN('".$storage_filter."')
		";
	}

	$statement = $connect->prepare($query);
	$statement->execute();
	$result = $statement->fetchAll();
	$total_row = $statement->rowCount();
	$output = '';
	if($total_row > 0)
	{
		foreach($result as $row)
		{
			$output .= '
			<div class="col-sm-4 col-lg-4 col-md-3">
				<div style="border:2px solid #2fa4e7; border-radius:7px; padding:15px; margin-bottom:15px; height:440px;">
					<img src="image/'. $row['product_image'] .'" alt="" class="img-responsive" >
					<p align="center"><strong><a href="#" class="text-primary">'. $row['product_name'] .'</a></strong></p>
					<h4 style="text-align:center;" class="text-success" ><b>'. $row['product_price'] .'</b></h4>
					<p><strong>Camera :</strong> '. $row['product_camera'].' MP<br />
					<strong>Brand :</strong> '. $row['product_brand'] .' <br />
					<strong>RAM :</strong> '. $row['product_ram'] .' GB<br />
					<strong>Storage :</strong> '. $row['product_storage'] .' GB </p>
				</div>

			</div>
			';
		}
	}
	else
	{
		$output = '<h3 class="text-danger alert alert-danger text-center">No Data Found</h3>';
	}
	echo $output;
}

?>