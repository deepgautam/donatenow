<form action="<?php echo $link.'updateAll/';?>" method="post">
	<div class="panel panel-default">
		<div class="panel-heading">Settings</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th class="center">s.no</th>
						<th>name</th>
						<th>description</th>
						<th>actions</th>
					</tr>
				</thead>
				<tbody>
					<tr class="tr-head">
						<td class="center">#</td>
						<td>Slider</td>
						<td>
							<div class="form-group">
								<label for="category">Category</label>
								<select name="category" id="input" class="form-control capitalize">
									<option value="0">Select</option>
									<?php foreach ($categories as $category) {?>
									<option value="<?php echo $category['id'] ?>"
										<?php echo $category['id']==$row['category_id']?'selected':'';?>>
										<?php echo $category['name']?>
									</option>
									<?php } ?>
								</select>
							</div>
						</td>
						<td>#</td>
					</tr>
					<tr class="tr-head">
						<td class="center">#</td>
						<td>Slider</td>
						<td>
							<div class="form-group">
								<label for="category">Category</label>
								<select name="category" id="input" class="form-control capitalize">
									<option value="0">Select</option>
									<?php foreach ($categories as $category) {?>
									<option value="<?php echo $category['id'] ?>"
										<?php echo $category['id']==$row['category_id']?'selected':'';?>>
										<?php echo $category['name']?>
									</option>
									<?php } ?>
								</select>
							</div>
						</td>
						<td>#</td>
					</tr>		<?php 
					if ($rows && count($rows) > 0) {
						$c = 0;
						foreach ($rows as $row) {
							$c++;
							?>
							<tr class="tr-head">
								<td class="center"><?php echo $c;?></td>
								<td><?=$row['name'] ?></td>
								<td>
									<textarea cols="50" rows="2"
									name="setting[<?php echo $row['id']?>][desc]"
									class="form-control" 
									placeholder="Description"><?=$row['value'] ?></textarea> 
								</td>
								<td>
									<?php echo anchor($link."delete/".$row['slug'],"Delete",'class="a-delete"');?>
								</td>
							</tr>
							<?php 
						}
					}?>
				</tbody>
			</table>
		</div>
		<div class="panel-footer">
			<div class="table-footer">
				<!-- <a href="<?= $link ?>add" class="btn btn-primary"/>Add New  </a>
			-->
			<input type="submit" value="Update" class="btn btn-primary">
			<ul class="pagination">
				<?php  if (!empty($pages)) echo $pages; ?>
			</ul>
		</div>
	</div>
</div>
</form>

