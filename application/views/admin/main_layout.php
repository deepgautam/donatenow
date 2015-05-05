<?php 
$path=template_asset_path();
require_once($path."/includes/header.php"); 

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


<?php if(config_item('admin_template')=='metis') { ?>
<!-- template charisma  starts-->
<!-- subview -->
  <div class="outer">
    <div class="inner">
      <?php template_validation()?>
      <?php 
      if(isset($class) && isset($message)){ 
        flash_msg($class,$message);
      } ?>
      <?php 
      $this->load->view($subview);?>
    </div>
  </div>
<!-- subview ends -->
<!-- template charisma  ends-->
<?php }?>


<?php 
require_once($path."/includes/footer.php"); 
?>

