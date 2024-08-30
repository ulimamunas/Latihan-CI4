<?php

		namespace App\Controllers;
		use App\Models\ProdukModel;

		class ProdukController extends BaseController
		{
			protected $produk;

			function __construct()
			{
				helper('form');
				$this->validation = \Config\Services::validation();
				$this->produk = new ProdukModel();
			}

			public function index()
			{
				$data['produks'] = $this->produk->findAll();
				return view('pages/produk_view', $data);
			}

			public function create()
			{
				$data = $this->request->getPost();
				$validate = $this->validation->run($data, 'barang');
				$errors = $this->validation->getErrors();

				if(!$errors){
					$dataForm = [ 
						'name' => $this->request->getPost('name'),
						'price' => $this->request->getPost('price'),
						'stok' => $this->request->getPost('stok'),
						'deskripsi' => $this->request->getPost('deskripsi')
					];
			
					$dataFoto = $this->request->getFile('foto_pdt');
			
					if ($dataFoto->isValid()){
						$fileName = $dataFoto->getRandomName();
						$dataFoto->move('public/img/', $fileName);
						$dataForm['foto_pdt'] = $fileName;
					}  
			
					$this->produk->insert($dataForm); 
			
					return redirect('produk')->with('success','Data Berhasil Ditambah');
				}else{
					return redirect('produk')->with('failed',implode("<br>",$errors));
				}    
			}

			public function edit($id)
			{
				$data = $this->request->getPost();
				$validate = $this->validation->run($data, 'barang');
				$errors = $this->validation->getErrors();

				if(!$errors){
					$dataForm = [
						'name' => $this->request->getPost('name'),
						'price' => $this->request->getPost('price'),
						'stok' => $this->request->getPost('stok'),
						'deskripsi' => $this->request->getPost('deskripsi')
					];

					if($this->request->getPost('check')){
						$dataFoto = $this->request->getFile('foto_pdt');
						if ($dataFoto->isValid()){
							$fileName = $dataFoto->getRandomName();
							$dataFoto->move('public/img/', $fileName);
							$dataForm['foto_pdt'] = $fileName;
						}             
					}

					$this->produk->update($id, $dataForm);

					return redirect('produk')->with('success','Data Berhasil Diubah');
				}else{
					return redirect('produk')->with('failed',implode("",$errors));
				}
				
			}

			public function delete($id)
			{
				$dataProduk = $this->produk->find($id);
				unlink("public/img/".$dataProduk['foto_pdt']);	

				$this->produk->delete($id);

				return redirect('produk')->with('success','Data Berhasil Dihapus');
			}
		}