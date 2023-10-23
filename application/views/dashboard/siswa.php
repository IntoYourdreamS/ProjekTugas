<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">Siswa</h1>
						</div><!-- /.col -->
						<div class="col-sm-6">
						</div><!-- /.col -->
					</div><!-- /.row -->
				</div><!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<div class="content">
				<div class="container-fluid">
<div class="card">	
	<div class="card-header">
		<h3 class="card-title">DATA SISWA</h3>
		<br>
		<a href="http://localhost/poin_pelanggaran/siswa/tambah" class="btn btn-primary btn-sm"><i class="fas fa-plus"></i> Tambah Data</a>

	</div>
	<!-- /.card-header -->
	<div class="card-body">
		<table id="example1" class="table table-bordered table-striped">
			<thead>
				<tr class="text-center">
					<th>ID</th>
                    <th>NISN</th>
                    <th>Nama</th>
                    <th>Jurusan</th>
                    <th>Kelas</th>
                    <th>Jenis Kelamin</th>
                    <th>Action</th>
				</tr>
			</thead>
			
				<tr class="text-center">
					<td>1</td>
					<td>1234567890</td>
					<td>rahmat</td>
					<td>Rekayasa Perangkat Lunak</td>
					<td>Laki-Laki</td>
					<td>2023-10-09</td>
					<td>
						<button data-toggle="modal" data-target="#edit19" type="submit" class="btn btn-warning btn-sm">
							<i class="fas fa-edit"></i>
                        </button>
						<a href="http://localhost/poin_pelanggaran/siswa/delete/19" class="btn btn-danger btn-sm"
						onclick="return confirm('Apakah anda yakin ingin menghapus data?')"><i class="fas fa-trash"></i></a>
						<a href="http://localhost/poin_pelanggaran/siswa/detail/19" class="btn btn-success btn-sm">
						<i class="fas fa-search-plus"></i></a>
					</td>
				</tr>

			
				

					</table>
	</div>

</div>


 