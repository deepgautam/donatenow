<form method="post" action="" enctype="multipart/form-data">
    <div class="panel panel-default">
        <div class="panel-heading">Edit Details</div>
        <div class="panel-body">
            <div class="form-group">
                <label for="student">Testimonial</label>
                <textarea name="testimonial" class="form-control"
                placeholder="Testimonial here"><?php echo set_value('testimonial', $row['testimonial']); ?></textarea>
            </div>
            <div class="form-group">
                <label for="student">Student Name</label>
                <input name="std_name" type="text" class="form-control" placeholder="Student Name here"
                value="<?php echo set_value('std_name', $row['std_name']); ?>">
            </div>
            <div class="form-group">
                <label for="student">Student Email</label>
                <input name="std_email" type="text" class="form-control" placeholder="Student Email here"
                value="<?php echo set_value('std_email',$row['std_email']); ?>">
            </div>        
            <div class="form-group">
                <label for="student">Student Addrress</label>
                <textarea name="std_add" class="form-control"
                placeholder="Testimonial here"><?php echo set_value('std_add', $row['std_add']); ?></textarea>
            </div>
            <label for="student">Student Picture</label>
            <div class="thumbnail">
                <img src="<?php echo $testimonial_m->std_pic(set_value('std_pic', $row['std_pic']));?>" class="img-responsive">
                <div class="caption">
                    <?php echo set_value('std_pic', $row['std_pic']); ?>
                </div>
            </div>
            <div class="form-group">
                <input name="std_pic" type="file" class="form-input">
            </div>
            <div class="form-group">
                <label for="status">Status</label>
                <select name="status" id="input" class="form-control">
                    <option value="">Select</option>
                    <?php foreach ($actions as $k => $v) { if($row['status']!=0 && $k==0) continue?>
                    <option value="<?php echo $k ?>" <?php echo $k==$row['status']?'selected':'';?>><?php echo $v ?></option>
                    <?php } ?>
                </select>
            </div>
        </div>
        <div class="panel-footer">
            <input type="submit" name="update" value="Update" class="btn btn-primary"/>
            <a href="<?= $link ?>" class="btn btn-default"/>Cancel</a>
        </div>
    </div>
</form>


