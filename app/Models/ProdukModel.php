<?php namespace App\Models;

		use CodeIgniter\Model;

		class ProdukModel extends Model
		{
			protected $table = 'product'; 
			protected $primaryKey = 'id';
			protected $allowedFields = [
				'name','price','stok','deskripsi', 'foto_pdt'
			];  
		}