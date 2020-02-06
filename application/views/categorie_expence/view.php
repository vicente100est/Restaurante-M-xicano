<!-- Page Content -->

    <!--main content start-->
  <section id="main-content">
 <section class="wrapper">
  <div class="row">
  <div class="col-sm-10">
   <section class="panel">
   <div class="card">

    <header class="panel-heading">
    <h4 class="card-subtitle text-muted"><?=label('Category_expences');?></h4>
     <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-cog"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
	</header>
	
  <div class="panel-body">
  <div class="adv-table">
   
     <table  class="display table table-bordered table-striped" id="table">
          <thead>
              <tr>
                  <th><?=label("CategoryName");?></th>
                  <th><?=label("CreatedAt");?></th>
                  <th><?=label("Action");?></th>
              </tr>
          </thead>

          <tbody>
             <?php foreach ($categories as $category):?>
              <tr>
                 <td><?=$category->name;?></td>
                 <td><?=$category->created_date->format('Y-m-d h:i:s');?></td>
                 <td><div class="btn-group">
                       <?php if($this->user->role === "admin"){?><a class="btn btn-danger" href="javascript:void(0)" data-toggle="popover" data-placement="left"  data-html="true" title='<?=label("Areyousure");?>' data-content='<a class="btn btn-danger" href="categorie_expences/delete/<?=$category->id;?>"><?=label("yesiam");?></a>'><i class="fa fa-times"></i></a><?php } ?>
                       <a class="btn btn-primary" href="categorie_expences/edit/<?=$category->id;?>" data-toggle="tooltip" data-placement="top" title="<?=label('Edit');?>"><i class="fa fa-pencil"></i></a>
                     </div>
                  </td>
              </tr>
           <?php endforeach;?>
          </tbody>
      </table>
   
   <!-- Button trigger modal -->
   <button type="button" class="btn btn-add btn-lg" data-toggle="modal" data-target="#Addcategory">
     <?=label("AddCategory");?>
   </button>
</div>
</div>
</div>
</section>
</div>
</div>
<!-- /.container -->
</section>
    </section>
<!-- Modal -->
<div class="modal fade" id="Addcategory" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
 <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><?=label("AddCategory");?></h4>
      </div>
      <?php echo form_open_multipart('categorie_expences/add'); ?>
      <div class="modal-body">
           <div class="form-group">
             <label for="CategoryName"><?=label("CategoryName");?></label>
             <input type="text" maxlength="50" name="name" class="form-control" id="CategoryName" placeholder="<?=label("CategoryName");?>" required>
           </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><?=label("Close");?></button>
        <button type="submit" class="btn btn-add"><?=label("Submit");?></button>
      </div>
   <?php echo form_close(); ?>
    </div>
 </div>
</div>
<!-- /.Modal -->
<script>
  $(function () {
    $("#table").DataTable();
    $('#table2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>

