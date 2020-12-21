<?php
	require("includes/connection.php");
	include ("includes/header.php");
?>
<?php include ("includes/render_category.php"); ?>
<br/>
<h4>&emsp;Các sản phẩm bạn có thể thích</h4>

<section class="content__product">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="row">
			
			<?php 
				$sql = "select * from tbl_sanpham order by rand() limit 4";
				$query = mysqli_query($conn,$sql);
				while ( $data = mysqli_fetch_array($query) )
				{
					echo '
					<div class="col-lg-3 col-sm-12 ">
						<div class="content__product--item">
							<div class="show__detail" id="show__detail"><a href="detail_product.php?show=show_detail&id_detail='.$data["spMa"].'"><i class="fa fa-arrows-alt" style="color:white;font-size: 25px;"></i></a></div>
							<img id="item__img" class="item__img" src="images/img_product/'.$data["spHinh"].'" />
							<br/>
							<div class="item__detail">
								<div class="proName">'.$data["spTen"].'</div>	
								<div class="proPrice">'.number_format($data["spGia"]).' VND</div>
								
							</div>
							<div class="add_to_cart" >
								<a href="addtocard.php?spMa='.$data['spMa'].'&action=add&soluong=1&tinhtrang='.$data['spTinhtrang'].'"><div>Thêm vào giỏ hàng</div></a>
							</div>
						</div>
					</div> ';
				}
			
			?>
			
			<!------end item------>
		</div>
			</div>
		</div>
</section>
<br/><br/>
<br/><br/><br/>
<?php include ("includes/footer.php"); ?>