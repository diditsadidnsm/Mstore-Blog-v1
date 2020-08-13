<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Edit Komentar Video</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/edit_komentarvideo',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <input type='hidden' name='id' value='$rows[id_komentar]'>
                    <tr><th width='120px' scope='row'>Nama</th>    <td><input type='text' class='form-control' name='a' value='$rows[nama_komentar]'></td></tr>
                    <tr><th scope='row'>Email</th>    <td><input type='text' class='form-control' name='b' value='$rows[url]'></td></tr>
                    <tr><th scope='row'>Komentar</th>             <td><textarea id='editor1' class='form-control' name='c' style='height:200px'>$rows[isi_komentar]</textarea></td></tr>
                    <tr><th scope='row'>Aktif</th>    <td>"; if ($rows['aktif']=='Y'){ echo "<input type='radio' name='d' value='Y' checked> Ya <input type='radio' name='d' value='N'> Tidak"; }else{ echo "<input type='radio' name='d' value='Y'> Ya <input type='radio' name='d' value='N' checked> Tidak"; } echo "</td></tr>

                  </tbody>
                  </table>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Update</button>
                    <a href='".base_url().$this->uri->segment(1)."/komentarvideo'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();