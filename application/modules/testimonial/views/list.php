<div class="panel panel-default">
    <div class="panel-heading">Testimonials</div>
    <div class="panel-body">
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th class="center">s.no</th>
                    <th>testimonial</th>
                    <th width="10%">student pic</th>
                    <th>student email</th>
                    <th>student name & address</th>
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
                        $alertClass="";
                        $actions=array();
                        switch($row['status']){
                            case $testimonial_m::PENDING:
                            {
                                $alertClass="";
                                if(permission_permit(array('activate-testimonial'))) 
                                    $actions=array('activate');
                                break;
                            }
                            case $testimonial_m::ACTIVE:
                            {
                                $alertClass="";
                                if(permission_permit(array('block-testimonial'))) 
                                    $actions[]='block';
                                if(permission_permit(array('delete-testimonial'))) 
                                    $actions[]='delete';
                                break;
                            }
                            case $testimonial_m::BLOCKED:
                            {
                                $alertClass="warning";
                                if(permission_permit(array('activate-testimonial'))) 
                                    $actions[]='activate';
                                if(permission_permit(array('delete-testimonial'))) 
                                    $actions[]='delete';
                                break;
                            }
                            case $testimonial_m::DELETED:
                            {
                                $alertClass="danger";
                                if(permission_permit(array('activate-testimonial'))) 
                                    $actions=array('activate');
                                break;
                            }
                        }
                        ?>
                        <tr class="<?php echo $alertClass?>">
                            <td class="center"><?php echo $c?></td>
                            <td>
                                <a href="<?= $link ?>edit/<?= $row['id'] ?>"/><?= word_limiter(convert_accented_characters($row['testimonial']), 5) ?></a>
                            </td>
                            <td>
                                <img src="<?php echo $testimonial_m->std_pic(set_value('std_pic', $row['std_pic']));?>" class="img-responsive" width="70" height="30">
                            </td>
                            <td class="no-capitalize"><?= $row['std_email'] ?></td>
                            <td><?= $row['std_name'] ?><br/><?= $row['std_add'] ?></td>
                            <td><?php echo testimonial_m::status($row['status']);?></td>
                            <td>
                                <?php if(permission_permit(array('edit-testimonial'))) { ?>
                                    <a href="<?= $link ?>edit/<?= $row['id'] ?>"/>Edit </a>
                                    <?php if(count($actions)>0) echo "/" ?>
                                <?php } ?>
                                <?php foreach ($actions as $k=>$action) { ?>
                                <a href="<?= $link ?><?= $action ?>/<?= $row['id'] ?>"/> <?php if($k>0) echo "/"; ?> <?php echo $action?> </a>
                                <?php } ?>
                            </td>
                        </tr>
                        <?php 
                    }
                } else {
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
        <?php if(permission_permit(array('add-testimonial'))){?>
        <a href="<?= $link ?>add" class="btn btn-primary"/>Add New  </a>
        <?php } ?>
        <ul class="pagination">
            <?php  if (!empty($pages)) echo $pages; ?>
        </ul>
    </div>
</div>

