<div class="card">
  <div class="card-header">
    <h3 class="card-title">Semua Berita</h3>
    <div class="card-tools">
      <a class='btn btn-primary btn-sm' href='<?php echo base_url().$this->uri->segment(1); ?>/tambah_listberita'>Tambahkan Data</a>
    </div>
  </div><!-- /.card-header -->
  <div class="card-body">
  <div class="table-responsive">
    <table id="example1" class="table table-striped table-sm">
      <thead>
        <tr>
          <th style='width:40px'>No</th>
          <th>Judul Berita</th>
          <th>Tanggal</th>
          <th>Status</th>
          <th style='width:75px'>Action</th>
        </tr>
      </thead>
      <tbody>
      <?php 
        $no = 1;
        foreach ($record as $row){
        $tgl_posting = tgl_indo($row['tanggal']);
        if ($row['status']=='Y'){ $status = '<span style="color:green">Published</span>'; }else{ $status = '<span style="color:red">Unpublished</span>'; }
        echo "<tr><td>$no</td>
                  <td>$row[judul]</td>
                  <td>$tgl_posting</td>
                  <td>$status</td>
                  <td><center>
                    <a class='btn btn-primary btn-xs' title='Publish Data' href='".base_url().$this->uri->segment(1)."/publish_listberita/$row[id_berita]/$row[status]'><span class='nav-icon fas fa-check-double'></span></a>
                    <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url().$this->uri->segment(1)."/edit_listberita/$row[id_berita]'><span class='nav-icon fas fa-edit'></span></a>
                    <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_listberita/$row[id_berita]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='nav-icon fas fa-trash-alt'></span></a>
                  </center></td>
              </tr>";
          $no++;
        }
      ?>
      </tbody>
    </table>
  </div>
  </div>
</div>