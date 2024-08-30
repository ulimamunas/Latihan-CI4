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
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">
Tambah Data
</button>
<!-- Table with stripped rows -->
<table class="table datatable">
<thead>
	<tr>
	<th scope="col">#</th>
	<th scope="col">Nama</th>
	<th scope="col">Harga</th>
	<th scope="col">Jumlah</th> 
	<th scope="col">Foto</th> 
	<th scope="col"></th> 
	</tr>
</thead>
<tbody>
	<?php foreach($produks as $index=>$produk): ?>
	<tr>
	<th scope="row"><?php echo $index+1?></th>
	<td><?php echo $produk['name'] ?></td> 
	<td><?php echo $produk['price'] ?></td> 
	<td><?php echo $produk['stok'] ?></td> 
	<td><img src="<?php echo base_url()."public/img/".$produk['foto_pdt'] ?>" width="100px"></td> 
	<td>
		<button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#editModal-<?= $produk['id'] ?>">
			Ubah
		</button>
		<a href="<?= base_url('produk/delete/'.$produk['id']) ?>" class="btn btn-danger" onclick="return confirm('Yakin hapus data ini ?')">
			Hapus
		</a>
	</td>
	</tr>
	<!-- Edit Modal Begin -->
	<div class="modal fade" id="editModal-<?= $produk['id'] ?>" tabindex="-1">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title">Edit Data</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form action="<?= base_url('produk/edit/'.$produk['id']) ?>" method="post" enctype="multipart/form-data">
			<?= csrf_field(); ?>
			<div class="modal-body">
				<div class="form-group">
					<label for="name">Nama</label>
					<input type="text" name="name" class="form-control" id="name" value="<?= $produk['name'] ?>" placeholder="Nama Barang" required>
				</div>
				<div class="form-group">
					<label for="name">Harga</label>
					<input type="text" name="price" class="form-control" id="price" value="<?= $produk['price'] ?>" placeholder="Harga Barang" required>
				</div>
				<div class="form-group">
					<label for="name">Jumlah</label>
					<input type="text" name="stok" class="form-control" id="stok" value="<?= $produk['stok'] ?>" placeholder="Jumlah Barang" required>
				</div>
				<div class="form-group">
					<label for="name">Keterangan</label>
					<input type="text" name="deskripsi" class="form-control" id="deskripsi" value="<?= $produk['deskripsi'] ?>" placeholder="Keterangan Barang" required>
				</div>
				<img src="<?php echo base_url()."public/img/".$produk['foto_pdt'] ?>" width="100px">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" id="check" name="check" value="1">
					<label class="form-check-label" for="check">
					Ceklis jika ingin mengganti foto
					</label>
				</div>
				<div class="form-group">
					<label for="name">Foto</label>
					<input type="file" class="form-control" id="foto_pdt" name="foto_pdt">
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
		<form action="<?= base_url('produk') ?>" method="post" enctype="multipart/form-data">
		<?= csrf_field(); ?>
		<div class="modal-body">
			<div class="form-group">
				<label for="name">Nama</label>
				<input type="text" name="name" class="form-control" id="name" placeholder="Nama Barang" required>
			</div>
			<div class="form-group">
				<label for="name">Harga</label>
				<input type="text" name="price" class="form-control" id="price" placeholder="Harga Barang" required>
			</div>
			<div class="form-group">
				<label for="name">Jumlah</label>
				<input type="text" name="stok" class="form-control" id="stok" placeholder="Jumlah Barang" required>
			</div>
			<div class="form-group">
				<label for="name">Keterangan</label>
				<input type="text" name="deskripsi" class="form-control" id="deskripsi" placeholder="Keterangan Barang" required>
			</div>
			<div class="form-group">
				<label for="name">Foto</label>
				<input type="file" class="form-control" id="foto_pdt" name="foto_pdt">
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