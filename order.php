<?php
include 'inc/header.php';
//include 'inc/slider.php';

?>

<?php
		   	$login_check = Session::get('customer_login');
		   	if($login_check==false){
		   		header('Location:login.php');
		   	}
		   		?>
<style type="text/css">
	.order_page {
		font-size: 30px;
		font-weight: bold;
		color: red;
	}
</style>
<div class="main">
    <div class="content">
    	<div class="cartoption">		
			<div class="cartpage">
			    	<h2>Your Cart</h2>
						<div class="cartpage">
							<div class="order_page">
								<h3>Order Page</h3>
							</div>
						</div>
					</div>
					
    	</div>  	
       <div class="clear"></div>
    </div>
 </div>
 	<?php
 	include 'inc/footer.php';
 	?>
	