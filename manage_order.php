<?php session_start() ?>
<div class="container-fluid">
	<div class="col-lg-12">
		<p>Accepts only cash on delivery. Type in your address and wait patiently. Thank You.</p>
		<br>
		<p>For online payment transaction, proceed to the given <a href="https://www.facebook.com/czarryanr" target="_blank">link</a></p>
		<form id="manage-order">
			<div class="form-group">
				<label for="" class="control-label">Delivery Address</label>
				<textarea name="address" id="" cols="30" rows="4" class="form-control" required=""><?php echo $_SESSION['login_address'] ?></textarea>
			</div>
		</form>
	</div>
</div>
<script>
	$('#manage-order').submit(function(e){
		e.preventDefault()
		start_load()
		$.ajax({
			url:'admin/ajax.php?action=save_order',
			method:'POST',
			data:$(this).serialize(),
			error:err=>{
				console.log(err)
			},
			success:function(resp){
				if(resp == 1){
					alert_toast('Order successfully submitted.',"success");
					setTimeout(function(){
						location.reload()
					},2000)
				}
			}
		})
	})
</script>