<script type="text/javascript">
$(document).ready(function() {$('#ticket').modal({show: false, backdrop: 'static', keyboard: false});});

var id = setTimeout(function(){
 window.location.reload(1);
}, 15000);

function showticket(table){
   $('#printSection').load("<?php echo site_url('pos/showticketKit')?>/"+table);
   clearTimeout(id);
   $('#ticket').modal('show');
}
function PrintTicket() {
   $('.modal-body').removeAttr('id');
   window.print();
   $('.modal-body').attr('id', 'modal-body');
}
function closeModal() {
  window.location.reload(1);
}
</script>
<!-- Page Content -->
<section id="main-content">
 <section class="wrapper">
  <div class="row">
  <div class="col-sm-12">
   
   <div class="card">
<div class="panel-body">
  
   
        <?=!$zones ? '<h5 style="margin-top:10px">'.label("NoTables").'</h5>' : '';?>
        <?php foreach ($zones as $zone):?>
        <div class="row">
           <h1 class="choose_store" align="center"> <?=$zone->name;?> </h1><hr>
        </div>
        <div class="row tablesrow">
           <?php foreach ($tables as $table):?>
              <?php if($table->zone_id == $zone->id) {?>
           <div class="col-sm-2 col-xs-4 tableList nohover-item" >
              <?php if($table->time == 'n'){?><span><i class="fa fa-id-badge"></i></span><?php } ?>
              <a class="btn btn-lg <?= $table->status == 1 ? 'kitchentable-btn' : 'kitchentableoff-btn disabled'; ?>" href="javascript:void(0)" onclick="showticket(<?=$table->id;?>)">
                <?=$table->name;?>
              </a>
           </div>
           <?php } ?>
           <?php endforeach;?>
        </div>
     <?php endforeach;?>



<!-- /.container -->
</div>
</div>

</div>
</div>
</section>
 </section>
<!-- Modal ticket -->
<div class="modal fade" id="ticket" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
 <div class="modal-dialog" role="document" id="ticketModal">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="ticket"><?=label("Receipt");?></h4>
      </div>
      <div class="modal-body" id="modal-body">
         <div id="printSection">
            <!-- El boleto va aquí. -->
            <center><h1 style="color:#34495E"><?=label("empty");?></h1></center>
         </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default hiddenpr" onclick="closeModal()"><?=label("Close");?></button>
        <button type="button" class="btn btn-add hiddenpr" onclick="PrintTicket()"><?=label("print");?></button>
      </div>
    </div>
 </div>
</div>
<!-- /.Modal -->
