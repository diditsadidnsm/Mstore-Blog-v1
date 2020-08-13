            
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Manajemen Users</h3>
                  <div class="card-tools">
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url().$this->uri->segment(1); ?>/tambah_manajemenuser'>Tambahkan Data</a>
                  </div>
                </div><!-- /.card-header -->
                <div class="card-body">
                <div class="table-responsive">
                  <table id="example1" class="table table-sm table-striped">
                    <thead>
                      <tr>
                        <th style='width:40px'>No</th>
                        <th>Username</th>
                        <th>Nama Lengkap</th>
                        <th>Email</th>
                        <th>Foto</th>
                        <th>Blokir</th>
                        <th>Level</th>
                        <th>Kiriman</th>
                        <th style='width:60px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record as $row){
                    if ($row['foto'] == ''){ $foto ='blank.png'; }else{ $foto = $row['foto']; }
                    $artikel = $this->db->query("SELECT * FROm berita where username='$row[username]'")->num_rows();
                    echo "<tr><td>$no</td>
                              <td>$row[username]</td>
                              <td>$row[nama_lengkap]</td>
                              <td>$row[email]</td>
                              <td><img style='border:1px solid #cecece' width='40px' class='img-circle' src='".base_url()."asset/foto_user/$foto'></td>
                              <td>$row[blokir]</td>
                              <td>$row[level]</td>
                              <td><i style='color:green'>$artikel Artikel</i></td>
                              <td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url().$this->uri->segment(1)."/edit_manajemenuser/$row[username]'><span class='nav-icon fas fa-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_manajemenuser/$row[username]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='nav-icon fas fa-trash-alt'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div></div></div>