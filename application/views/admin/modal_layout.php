<!-- Core CSS - Include with every page -->
<link href="<?=base_url()?>assets/css/bootstrap.min.css" rel="stylesheet">
<link href="<?=base_url()?>assets/font-awesome/css/font-awesome.css" rel="stylesheet">

<!-- Page-Level Plugin CSS - Dashboard -->
<link href="<?=base_url()?>assets/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">
<link href="<?=base_url()?>assets/css/plugins/timeline/timeline.css" rel="stylesheet">

<!-- SB Admin CSS - Include with every page -->
<link href="<?=base_url()?>assets/css/sb-admin.css" rel="stylesheet">

<!-- my CSS - Include with every page -->
<link href="<?=base_url()?>assets/css/my.css" rel="stylesheet">

<?php require_once("includes/header.php"); ?>
<div class="row">
<div class="col-lg-12">
<?php
if($this->session->flashdata('success')){
$class="alert-success";
$message=$this->session->flashdata('success');
}
else if($this->session->flashdata('error')){
$class="alert-danger";
$message=$this->session->flashdata('error');
}
?>
<?php if(validation_errors()){ ?>
<!-- form validation -->
<div class="row"><br/>      
<div class="alert alert-danger" alert-dismissible>
<button type="button" class="close" data-dismiss="alert">
<span aria-hidden="true">&times;</span>
<span class="sr-only">Close</span>
</button>
<?php echo validation_errors()?>
</div>
</div>
<!-- form validation ends -->
<?php } ?>
<?php if(isset($class) && isset($message)){ ?>
<!-- flash message -->
<div class="row"><br/>      
<div class="alert <?php echo isset($class)?$class:'';?>" alert-dismissible>
<button type="button" class="close" data-dismiss="alert">
<span aria-hidden="true">&times;</span>
<span class="sr-only">Close</span>
</button>
<?php echo isset($message)?$message:'';?>
</div>
</div>
<!-- flash message ends-->
<?php } ?>
<!-- breadcumrb -->
<div class="row">
<ol class="breadcrumb">
<?php echo $this->breadcrumb->output();?>
</ol>    
</div>
<!-- breadcumrb ends -->
<!-- subview -->
<div class="row">
<!-- <a class="btn btn-primary" data-toggle="modal" href='#modal-id'>Trigger modal</a> -->
<div class="modal fade" id="modal-id">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
<h4 class="modal-title">Modal title</h4>
</div>
<div class="modal-body">

</div>
<div class="modal-footer">
<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
<button type="button" class="btn btn-primary">Save changes</button>
</div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</div>
<!-- subview ends -->

</div>
</div>
<?php require_once("includes/footer.php"); ?>


<script type="text/javascript">
$(function(){
consoe.log("im in");
$('#modal-id').modal({keyboard:false});
})
</script>


