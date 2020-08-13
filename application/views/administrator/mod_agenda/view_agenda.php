  
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Semua Agenda</h3>
                  <div class="card-tools">
                  <a class='pull-right btn btn-primary btn-sm' href='<?php echo base_url().$this->uri->segment(1); ?>/tambah_agenda'>Tambahkan Data</a>
                  </div>
                </div><!-- /.card-header -->
                <div class="card-body">
                <div class="table-responsive">
                  <table id="example1" class="table table-sm table-striped">
                    <thead>
                      <tr>
                        <th style='width:40px'>No</th>
                        <th>Tema</th>
                        <th>Tgl Mulai</th>
                        <th>Tgl Selesai</th>
                        <th>Jam</th>
                        <th style='width:70px'>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                  <?php 
                    $no = 1;
                    foreach ($record as $row){
                    $tgl_mulai = tgl_indo($row['tgl_mulai']);
                    $tgl_selesai = tgl_indo($row['tgl_selesai']);
                    echo "<tr><td>$no</td>
                              <td>$row[tema]</td>
                              <td>$tgl_mulai</td>
                              <td>$tgl_selesai</td>
                              <td>$row[jam]</td>
                              <td><center>
                                <a class='btn btn-success btn-xs' title='Edit Data' href='".base_url().$this->uri->segment(1)."/edit_agenda/$row[id_agenda]'><span class='nav-icon fas fa-edit'></span></a>
                                <a class='btn btn-danger btn-xs' title='Delete Data' href='".base_url().$this->uri->segment(1)."/delete_agenda/$row[id_agenda]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><span class='nav-icon fas fa-trash-alt'></span></a>
                              </center></td>
                          </tr>";
                      $no++;
                    }
                  ?>
                  </tbody>
                </table>
              </div></div></div>