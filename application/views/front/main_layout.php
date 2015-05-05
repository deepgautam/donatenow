<?php require_once("includes/header.php"); ?>


<!-- display error -->
<?php
$CI =& get_instance();
if($CI->session->flashdata('success')){
	$class="alert-success";
	$message=$CI->session->flashdata('success');
}
else if($CI->session->flashdata('error')){
	$class="alert-danger";
	$message=$CI->session->flashdata('error');
}

function flash_msg($class,$message){
	?>
	<div class="alert <?php echo isset($class)?$class:'';?>" alert-dismissible>
		<button type="button" class="close" data-dismiss="alert">
			<span aria-hidden="true">&times;</span>
			<span class="sr-only">Close</span>
		</button>
		<?php echo isset($message)?$message:'';?>
	</div>
	<?php
}

function template_validation(){
	?>
	<?php if(validation_errors()){ ?>
	<!-- form validation -->
	<div class="alert alert-danger" alert-dismissible>
		<button type="button" class="close" data-dismiss="alert">
			<span aria-hidden="true">&times;</span>
			<span class="sr-only">Close</span>
		</button>
		<?php echo validation_errors()?>
	</div>
	<!-- form validation ends -->
	<?php } 
}

?>
<!-- display error ends -->



<?php if($subview=='home'){ ?>
<?php $this->load->view("front/templates/$subview");?>
<?php }else{ ?>
<section class="main-info" id="main_layout">
	<div class="container">
		<div class="row-fluid">
			<?php 
			template_validation();
			if(isset($class) && isset($message)){ 
				flash_msg($class,$message);
			} 
			$this->load->view("$subview");
			?>
		</div>
	</div>
</section>
<?php } ?>
<?php include("includes/footer.php") ?>