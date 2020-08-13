            <div class="col-xs-12">  
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Template Website</h3>
                  <div class="card-tools">
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url().$this->uri->segment(1); ?>/tambah_templatewebsite'>Tambahkan Data</a>
                  </div>
                </div><!-- /.card-header -->
                <div class="card-body">
                <div class="table-responsive">
                  <table id="example1" class="table table-sm table-striped">
                    <thead>
                      <tr>
                        <th style='width:40px'>No</th>
                        <th>Nama Template</th>
                        <th>Pembuat</th>
                        <th>Directory</th>
                        <th>Aktif</th>
                        <th style='width:90px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record as $row){
                    if ($row['aktif']=='Y'){ $icon = 'star'; $color = 'orange'; }else{ $icon = 'star'; $color = '#8a8a8a'; }
                    echo "<tr><td>$no</td>
                              <td>$row[judul]</td>
                              <td>$row[pembuat]</td>
                              <td>$row[folder]</td>
                              <td>$row[aktif]</td>
                              <td><center>
                                <a class='btn btn-default btn-xs' title='Aktifkan' href='".base_url().$this->uri->segment(1)."/aktif_templatewebsite/$row[id_templates]/$row[aktif]'><span style='color:$color' class='nav-icon fas fa-$icon'></span></a>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url().$this->uri->segment(1)."/edit_templatewebsite/$row[id_templates]'><span class='nav-icon fas fa-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_templatewebsite/$row[id_templates]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='nav-icon fas fa-trash-alt'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div></div></div>