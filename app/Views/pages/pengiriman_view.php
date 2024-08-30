<?= $this->extend('components/layout') ?>
<?= $this->section('content') ?>
<?php
if(session()->getFlashData('success')){
?> 
<div class="alert alert-info alert-dismissible fade show" role="alert">
	<?= session()->getFlashData('success') ?>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<?php
}
?>
<?php
if(session()->getFlashData('failed')){
?> 
<div class="alert alert-danger alert-dismissible fade show" role="alert">
	<?= session()->getFlashData('failed') ?>
	<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<?php
}
?>

<!-- Table with stripped rows -->
<table class="table datatable">
<thead>
	<tr>
	<th scope="col">#</th>
	<th scope="col">Tanggal</th>
	<th scope="col">Username</th>
	<th scope="col">Total Harga</th>
	<th scope="col">Ongkir</th> 
	<th scope="col">Status</th> 
	<th scope="col">Aksi</th> 
	</tr>
</thead>
<tbody>
	<?php foreach($pengiriman as $index=>$pengiriman): ?>
	<tr>
	<th scope="row"><?php echo $index+1?></th>
	<td><?php echo $pengiriman['created_date'] ?></td> 
	<td><?php echo $pengiriman['username'] ?></td> 
  <td><?php echo $pengiriman['total_harga']?></td>
  <td><?php echo $pengiriman['ongkir']?></td>
  <td><?php 
  if($pengiriman['status'] == 0){
    echo 'Diproses';
  } elseif($pengiriman['status'] == 1) {
    echo 'Dikirim';
  } else {
    echo 'Selesai';
  }
  ?></td>
		</form>
	</td>
    <td>
		<button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#editModal-<?= $pengiriman['id'] ?>">
			Ubah
    </td>
</tr>
<!-- Edit Modal Begin -->
<div class="modal fade" id="editModal-<?= $pengiriman['id'] ?>" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Edit Data</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form action="<?= base_url('pengiriman/edit/'.$pengiriman['id']) ?>" method="post" >
				<?= csrf_field(); ?>
				<div class="modal-body">
					<div class="form-group">
						<label for="username">Username</label>
						<?= form_input('username',$pengiriman['username'],'class="form-control" id="username" disabled')?>
					</div>
					<br>
					<?= form_hidden('status',true)?>
					<label for="status">Status</label>
					<?= form_dropdown('status', [0 => 'Diproses', 1 => 'Dikirim', 2 => 'Selesai'], $pengiriman['status'], 'class="form-select" id="status"'); ?>
				</div>
				<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Simpan</button>
			</div>
		</form>
	</div>
</div>
</div>
<!-- Edit Modal End -->

<?php endforeach ?>   
</tbody>
</table>
<!-- End Table with stripped rows -->
<!-- Add Modal Begin -->
<div class="modal fade" id="addModal" tabindex="-1">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
		<div class="modal-header">
			<h5 class="modal-title">Tambah Data</h5>
			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		</div>
		<form action="<?= base_url('account') ?>" method="post" enctype="multipart/form-data">
		<?= csrf_field(); ?>
		<div class="modal-body">
			<div class="form-group">
				<label for="name">Nama</label>
				<input type="text" name="nama" class="form-control" id="nama" placeholder="Nama Barang" required>
			</div>
			<div class="form-group">
				<label for="name">Harga</label>
				<input type="text" name="harga" class="form-control" id="harga" placeholder="Harga Barang" required>
			</div>
			<div class="form-group">
				<label for="name">Jumlah</label>
				<input type="text" name="jumlah" class="form-control" id="jumlah" placeholder="Jumlah Barang" required>
			</div>
			<div class="form-group">
				<label for="name">Keterangan</label>
				<input type="text" name="keterangan" class="form-control" id="keterangan" placeholder="Keterangan Barang" required>
			</div>
			<div class="form-group">
				<label for="name">Foto</label>
				<input type="file" class="form-control" id="foto" name="foto">
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
			<button type="submit" class="btn btn-primary">Simpan</button>
		</div>
		</form>
		</div>
	</div>
</div>
<!-- Add Modal End -->
<?= $this->endSection() ?>