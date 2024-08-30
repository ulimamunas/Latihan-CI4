<?php

		namespace App\Controllers;
		use App\Models\TransaksiModel;

		class PengirimanController extends BaseController
		{
			protected $pengiriman;

			function __construct()
			{
				helper('form');
				$this->pengiriman = new TransaksiModel();
			}

			public function index()
			{
				$data['pengiriman'] = $this->pengiriman->findAll();
				return view('pages/pengiriman_view', $data);
			}
      
      public function edit($id)
			{
				$data = $this->request->getPost();


				
					$dataForm = [
						'status' => $this->request->getPost('status')
					];



					$this->pengiriman->update($id, $dataForm);

					return redirect('pengiriman')->with('success','Data Berhasil Diubah');
				
				
			}
		}