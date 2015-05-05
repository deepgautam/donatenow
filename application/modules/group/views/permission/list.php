<form action="<?php echo $url.'updateAll/';?>" method="post">
	<div class="panel panel-default">
		<div class="panel-heading">Permissions</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th class="center">s.no</th>
						<th>name</th>
						<th>description</th>
						<th>created at</th>
						<th>actions</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					if ($rows && count($rows) > 0) {
						$c = $offset;
						foreach ($rows as $row) {
							$c++;
							?>
							<tr class="tr-head">
								<td class="center"><?php echo $c;?></td>
								<td>
									<input name="permission[<?php echo $row['id']?>][name]" 
									type="text" class="form-control" 
									placeholder="Name"
									value="<?=$row['name'] ?>">
								</td>
								<td>
									<textarea cols="50" rows="2"
									name="permission[<?php echo $row['id']?>][desc]"
									class="form-control" 
									placeholder="Description"><?=$row['desc'] ?></textarea> 
								</td>
								<td class="no-capitalize"><?php echo format($row['created_at']);?></td>
								<td>
									<?php 
									echo anchor($url."add/".$row['slug'],"Add",'class="a-add"');
									echo " / ".anchor($url."delete/".$row['slug'],"Delete",'class="a-delete"');
									$child_permissions=$permission_m->get_child_permissions($row['id']);
									?>
								</td>
							</tr>
							<?php
							foreach ($child_permissions as $permission) {
								?>
								<tr class="tr-hide">
									<td class="center"></td>
									<td>
										<input name="permission[<?php echo $permission['id']?>][name]" 
										type="text" class="form-control" 
										placeholder="Name"
										value="<?=$permission['name'] ?>">
									</td>
									<td>
										<textarea cols="50" rows="2"
										name="permission[<?php echo $permission['id']?>][desc]"
										class="form-control" 
										placeholder="Description"><?=$permission['desc'] ?></textarea> 
									</td>
									<td class="no-capitalize"><?php echo format($permission['created_at']);?></td>
									<td>
										<?php 
										echo anchor($url."delete/".$permission['slug'],"Delete",'class="a-delete"');
										?>
									</td>
								</tr>
								<?php 
						}//end of child permissons
						?>
						<?php 
					}
				}
				else {
					?>
					<tr>
						<td colspan="6" class="td_no_data">No data</td>
					</tr>
					<?php
				}
				?>
			</tbody>
		</table>
	</div>
	<div class="panel-footer">
		<div class="table-footer">
			<a href="<?= $url ?>add" class="btn btn-primary"/>Add New  </a>
			<input type="submit" value="Update" class="btn btn-primary">
			<ul class="pagination">
				<? if (!empty($pages)) echo $pages; ?>
			</ul>
		</div>
	</div>
</div>
</form>

