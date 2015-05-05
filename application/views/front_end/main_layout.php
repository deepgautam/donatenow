<?php require_once("includes/header.php"); ?>
<?php if($subview=='home'){ ?>
<?php $this->load->view("front/templates/$subview");?>
<?php }else{ ?>
<section class="main-info" id="main_layout">
	<div class="container">
		<div class="row-fluid">
			<?php 
			$this->load->view("front/templates/$subview");
/*
			echo base_url()."$subview.php";
			if(file_exists(base_url()."$subview.php")){
				echo "y";
			}
			else
				echo "n";
			if(file_exists("templates/$subview.php"))
				$this->load->view("front/templates/$subview");
			else{
				$data['message']="Unable to load the requested template";
				$this->load->view("front/templates/404",$data);								
			}
*/			?>
		</div>
	</div>
</section>
<?php } ?>
<?php include("includes/footer.php") ?>