<div class="panel panel-default">
	<div class="panel-heading">Groups</div>
	<div class="panel-body">
		<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th class="center">s.no</th>
					<th>name</th>
					<th>created at</th>
					<th>parent group</th>
					<th>no of users</th>
					<th>status</th>
					<th>actions</th>
				</tr>
			</thead>
			<tbody>
				<?php 
				if ($rows && count($rows) > 0) {
					$c = $offset;
					foreach ($rows as $row) {
						$c++;
						$data=get_action_links($group_m,$row['status']);
						?>
						<tr class="<?php echo $data['alertClass']?>">
							<td class="center"><?php echo $c;?></td>
							<td><?=$row['name'] ?></td>
							<td class="no-capitalize"><?php echo format($row['created_at']);?></td>
							<td><?php echo $row['parent_group_id']?$group_m->get_group_name($row['parent_group_id']):'---';?></td>
							<td><?php echo count_group_user($row['id']) ?></td>
							<td><?php echo group_m::status($row['status']);?></td>
							<td>
							<?php echo generate_action_links($group_m,$data['action_links'],$link,$row['id']);?>
							<?php echo " / ".anchor($link."group_permsission/".$row['slug'],"Group Permsission");?>
							</td>
						</tr>
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
			<a href="<?= $link ?>add" class="btn btn-primary"/>Add New  </a>
			<ul class="pagination">
				<?php  if (!empty($pages)) echo $pages; ?>
			</ul>
		</div>
	</div>
</div>

