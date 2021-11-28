<div class="header_bottom">
		<div class="header_bottom_left">
			<div class="section group">
				<?php
				$getLastestOsun = $product->getLastestOsun();
					if($getLastestOsun){
						while($resultosun = $getLastestOsun->fetch_assoc()){
					
				?>

				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="preview.html"> <img src="admin/uploads/<?php echo $resultosun['image'] ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>OSUN</h2>
						<p><?php echo $resultosun['productName'] ?></p>
						<div class="button"><span><a href="details.php">Add to cart</a></span></div>
				   </div>
			   </div>
			   <?php
			   }
			   }
			   ?>

			   <?php
				$getLastestKing = $product->getLastestKing();
					if($getLastestKing){
						while($resultking = $getLastestKing->fetch_assoc()){
					
				?>			
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						  <a href="preview.html"><img src="admin/uploads/<?php echo $resultking['image'] ?>" alt="" / ></a>
					</div>
					<div class="text list_2_of_1">
						  <h2>KING</h2>
						  <p><?php echo $resultking['productName'] ?></p>
						  <div class="button"><span><a href="preview.html">Add to cart</a></span></div>
					</div>
				</div>
				<?php
			}
		}
		?>
			</div>
			<div class="section group">

				<?php
				$getLastestZocker = $product->getLastestZocker();
					if($getLastestZocker){
						while($resultzo = $getLastestZocker->fetch_assoc()){
					
				?>	
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						 <a href="preview.html"> <img src="admin/uploads/<?php echo $resultzo['image'] ?>" alt="" /></a>
					</div>
				    <div class="text list_2_of_1">
						<h2>ZOKER</h2>
						<p><?php echo $resultzo['productName'] ?></p>
						<div class="button"><span><a href="preview.html">Add to cart</a></span></div>
				   </div>
			   </div>
			   <?php
			}
		}
		?>


				<?php
				$getLastestZasami = $product->getLastestZasami();
					if($getLastestZasami){
						while($resultza = $getLastestZasami->fetch_assoc()){
					
				?>	
				<div class="listview_1_of_2 images_1_of_2">
					<div class="listimg listimg_2_of_1">
						  <a href="preview.html"><img src="admin/uploads/<?php echo $resultza['image'] ?>" alt="" /></a>
					</div>
					<div class="text list_2_of_1">
						  <h2>ZASAMI</h2>
						  <p><?php echo $resultza['productName'] ?></p>
						  <div class="button"><span><a href="preview.html">Add to cart</a></span></div>
					</div>
				</div>
				<?php
			}
		}
		?>
			</div>
		  <div class="clear"></div>
		</div>
			 <div class="header_bottom_right_images">
		   <!-- FlexSlider -->
             
			<section class="slider">
				  <div class="flexslider">
					<ul class="slides">
						<li><img src="images/6.jpg" alt=""/></li>
						<li><img src="images/8.jpg" alt=""/></li>
						<li><img src="images/5.jpg" alt=""/></li>
						<li><img src="images/7.jpg" alt=""/></li>
				    </ul>
				  </div>
	      </section>
<!-- FlexSlider -->
	    </div>
	  <div class="clear"></div>
  </div>