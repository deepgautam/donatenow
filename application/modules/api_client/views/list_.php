
<div class="panel panel-default">
	<div class="panel-heading">Client API section</div>
	<div class="panel-body">
		
		<form class="form-horizontal" method="post" action="">
			<div class="form-group">
				<label for="inputEmail3" class="col-sm-2 control-label">User Email</label>
				<div class="col-sm-4">
					<input name="email" type="text" class="form-control" value="<?php echo set_value('name',$user['email']) ?>"?>
				</div>
				<div class="col-sm-4">
					<input type="submit" value="submit" class="btn btn-primary">
				</div>
			</div>
		</form>
		
	</div>
</div>


<div class="text-center">
	<a class="quick-btn" href="<?php echo base_url('article/category/'.NEWS_EVENTS)?>">
		<i class="fa fa-bolt fa-2x"></i>
		<span>News Manager</span> 
		<span class="label label-default"></span> 
	</a> 
	<a class="quick-btn" href="<?php echo base_url('article/category/'.HOME_PAGE_COURSE)?>">
		<i class="fa fa-check fa-2x"></i>
		<span>Course Manager</span> 
		<span class="label label-danger"></span> 
	</a> 
	<a class="quick-btn" href="<?php echo base_url('article/category/'.HOME_PAGE_SLIDER)?>">
		<i class="fa fa-check fa-2x"></i>
		<span>Slider Manager</span> 
		<span class="label label-danger"></span> 
	</a> 

	<a class="quick-btn" href="<?php echo base_url('article/category/'.HOME_PAGE_PARTNER)?>">
		<i class="fa fa-signal fa-2x"></i>
		<span>Partner Manager</span> 
		<span class="label label-warning"></span> 
	</a> 
	<a class="quick-btn" href="<?php echo base_url('article/edit/'.FOOTER_ADDRESS)?>">
		<i class="fa fa-bolt fa-2x"></i>
		<span>Footer Address</span> 
		<span class="label label-default"></span> 
	</a> 
	<a class="quick-btn" href="<?php echo base_url('article/edit/'.FOOTER_LINKS)?>">
		<i class="fa fa-check fa-2x"></i>
		<span>Footer Links</span> 
		<span class="label label-danger"></span> 
	</a> 

</div>


