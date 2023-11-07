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
                    <br>
                    <a href="<?= base_url('siswa/tambah'); ?>" class="btn btn-primary btn-sm"><i class="fas fa-plus"></i> Tambah Data</a>
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
                                <th>Jenis Kelamin</th>
                                <th>Action</th>
                            </tr>
                        </thead>

                        <?php $i = 1; ?>
                        <?php foreach ($siswa as $s) : ?>

                            <tr class="text-center">
                                <td><?= $i; ?></td>
                                <td><?= $s['no_induk']; ?></td>
                                <td><?= $s['nama_siswa']; ?></td>
                                <td><?= $s['id_jurusan']; ?></td>
                                <td><?= $s['jk']; ?></td>
                                <td>
                                    <a href="" class="btn btn-warning btn-sm">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <a href="<?= base_url('siswa/hapus/'); ?><?= $s['id_siswa'] ?>" class="btn btn-danger btn-sm" onclick="return confirm('Apakah anda yakin ingin menghapus data?')">
                                        <i class="fas fa-trash"></i>
                                    </a>
                                    <a href="" class="btn btn-success btn-sm">
                                        <i class="fas fa-search-plus"></i>
                                    </a>
                                </td>
                            </tr>


                            <?php $i++; ?>
                        <?php endforeach ?>


                    </table>
                </div>

            </div>