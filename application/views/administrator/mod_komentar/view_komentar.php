
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Komentar Berita</h3>
                </div><!-- /.card-header -->
                <div class="card-body">
                <div class="table-responsive">
                  <table id="example1" class="table table-sm table-striped">
                    <thead>
                      <tr>
                        <th style='width:40px'>No</th>
                        <th width='140px'>Nama Komentar</th>
                        <th>Isi Komentar</th>
                        <th>Aktif</th>
                        <th style='width:70px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record as $row){
                    $brt = $this->model_app->view_where('berita',array('id_berita'=>$row['id_berita']))->row_array();
                    if ($row['aktif']=='N'){ $bold = 'bold'; }else{ $bold = 'none'; }
                    echo "<tr style='font-weight:$bold'><td>$no</td>
                              <td><a target='_BLANK' href='".base_url()."berita/detail/$brt[judul_seo]'>$row[nama_komentar]</a></td>
                              <td>$row[isi_komentar]</td>
                              <td align=center>$row[aktif]</td>
                              <td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url().$this->uri->segment(1)."/edit_komentarberita/$row[id_komentar]'><span class='nav-icon fas fa-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_komentarberita/$row[id_komentar]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='nav-icon fas fa-trash-alt'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div></div></div>