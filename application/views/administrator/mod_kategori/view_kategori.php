  
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Kategori Berita</h3>
                  <div class="card-tools">
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url().$this->uri->segment(1); ?>/tambah_kategoriberita'>Tambahkan Data</a>
                  </div>
                </div><!-- /.card-header -->
                <div class="card-body">
                <div class="table-responsive">
                  <table id="example1" class="table table-sm table-striped">
                    <thead>
                      <tr>
                        <th style='width:40px'>No</th>
                        <th>Nama Kategori</th>
                        <th>Link</th>
                        <th>Artikel</th>
                        <th>Posisi</th>
                        <th>Aktif</th>
                        <th style='width:70px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record as $row){
                    $artikel = $this->model_app->view_where('berita',array('id_kategori'=>$row['id_kategori']))->num_rows();
                    echo "<tr><td>$no</td>
                              <td>$row[nama_kategori]</td>
                              <td><a target='_BLANK' href='".base_url()."kategori/detail/$row[kategori_seo]'>kategori/detail/$row[kategori_seo]</a></td>
                              <td>$artikel</td>
                              <td>$row[sidebar]</td>
                              <td>$row[aktif]</td>
                              <td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url().$this->uri->segment(1)."/edit_kategoriberita/$row[id_kategori]'><span class='nav-icon fas fa-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_kategoriberita/$row[id_kategori]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='nav-icon fas fa-trash-alt'></span></a>
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