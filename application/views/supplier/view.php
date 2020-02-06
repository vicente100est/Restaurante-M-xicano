  <!--main content start-->
  <section id="main-content">
 <section class="wrapper">
  <div class="row">
  <div class="col-sm-10">
   <section class="panel">
   <div class="card">

    <header class="panel-heading">
    <h4 class="card-subtitle text-muted"><?=label('Supplier');?></h4>
     <span class="tools pull-right">
                            <a href="javascript:;" class="fa fa-chevron-down"></a>
                            <a href="javascript:;" class="fa fa-cog"></a>
                            <a href="javascript:;" class="fa fa-times"></a>
                         </span>
	</header>
	
  <div class="panel-body">
  <div class="adv-table">
<!-- Page Table-->

        
      <table id="table" class="table table-bordered table-striped">
          <thead>
              <tr>
                  <th><?=label("SupplierName");?></th>
                  <th><?=label("SupplierPhone");?></th>
                  <th class="hidden-xs"><?=label("SupplierEmail");?></th>
                  <th class="hidden-xs"><?=label("CreatedAt");?></th>
                  <th><?=label("Action");?></th>
              </tr>
          </thead>

          <tbody>
             <?php foreach ($suppliers as $supplier):?>
              <tr>
                 <td><?=$supplier->name;?></td>
                 <td><?=$supplier->phone;?></td>
                 <td class="hidden-xs"><?=$supplier->email;?></td>
                 <td class="hidden-xs"><?=$supplier->created_at;?></td>
                 <td><div class="btn-group">
                       <a class="btn btn-danger" href="javascript:void(0)" data-toggle="popover" data-placement="left"  data-html="true" title='<?=label("Areyousure");?>' data-content='<a class="btn btn-danger" href="suppliers/delete/<?=$supplier->id;?>"><?=label("yesiam");?></a>'><i class="fa fa-times"></i></a>
                       <a class="btn btn-primary" href="suppliers/edit/<?=$supplier->id;?>" data-toggle="tooltip" data-placement="top" title="<?=label('Edit');?>"><i class="fa fa-pencil"></i></a>
                     </div>
                  </td>
              </tr>
           <?php endforeach;?>
          </tbody>
      </table>
   
   <!-- Button trigger modal -->
   <button type="button" class="btn btn-add btn-lg" data-toggle="modal" data-target="#AddSupplier">
     <?=label("AddSupplier");?>
   </button>
</div>
</div>
</div>
</section>
</div>
</div>
</section>
 </section>

<!-- /.container -->

<!-- Modal -->
<div class="modal fade" id="AddSupplier" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
 <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel"><?=label("AddSupplier");?></h4>
      </div>
      <?php echo form_open_multipart('suppliers/add'); ?>
      <div class="modal-body">
            <div class="form-group">
             <label for="SupplierName"><?=label("SupplierName");?></label>
             <input type="text" name="name" maxlength="50" Required class="form-control" id="SupplierName" placeholder="<?=label("SupplierName");?>">
           </div>
           <div class="form-group">
             <label for="SupplierPhone"><?=label("SupplierPhone");?></label>
             <input type="text" name="phone" maxlength="30" class="form-control" id="SupplierPhone" placeholder="<?=label("SupplierPhone");?>">
           </div>
           <div class="form-group">
             <label for="SupplierEmail"><?=label("SupplierEmail");?></label>
             <input type="email" maxlength="50" name="email" class="form-control" id="SupplierEmail" placeholder="<?=label("SupplierEmail");?>">
           </div>
           <div class="form-group">
           <label for="Note"><?=label("Note");?></label>
           <textarea id="summernote" name="note"></textarea>
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
