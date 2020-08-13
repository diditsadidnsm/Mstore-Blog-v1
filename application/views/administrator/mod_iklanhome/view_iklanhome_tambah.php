<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Tambah Iklan Home</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/tambah_iklanhome',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th width='120px' scope='row'>Judul</th>    <td><input type='text' class='form-control' name='a' required></td></tr>
                    <tr><th scope='row'>Url</th>    <td><input type='url' class='form-control' name='b'></td></tr>
                    <tr><th scope='row'>Source</th>    <td><textarea class='form-control' style='height:120px' name='source'></textarea></td></tr>
                    <tr><th scope='row'>Posisi</th>    <td><select class='form-control' name='posisi' required>
                                                              <option value=''>- Pilih -</option>";
                                                              $data = array('home','home_tengah','home_bawah','berita_detail','detail_video','berita_foto','hal_download','detail_agenda','hal_statis');
                                                              for ($i=0; $i < count($data) ; $i++) { 
                                                                echo "<option value='".$data[$i]."'>".$data[$i]."</option>";
                                                              }
                                                           echo "</select></td></tr>
                    <tr><th scope='row'>Upload</th>    <td><input type='file' class='form-control' name='c'></td></tr>
                  </tbody>
                  </table>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='".base_url().$this->uri->segment(1)."/iklanhome'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();
