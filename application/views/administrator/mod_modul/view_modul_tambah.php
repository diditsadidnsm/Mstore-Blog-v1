<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Tambah Modul Website</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/tambah_manajemenmodul',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th width='120px' scope='row'>Nama Modul</th>  <td><input type='text' class='form-control' name='a' required></td></tr>
                    <tr><th scope='row'>Link</th>              <td style='color:red'><b>".base_url()."administrator/</b> <input type='text' class='form-control' name='b' style='width:50%; display:inline-block' required></td></tr>
                    <tr><th scope='row'>Publish</th>                <td><input type='radio' name='c' value='Y' checked> Ya &nbsp; <input type='radio' name='c' value='N'> Tidak</td></tr>
                    <tr><th scope='row'>Aktif</th>                <td><input type='radio' name='d' value='Y' checked> Ya &nbsp; <input type='radio' name='d' value='N'> Tidak</td></tr>
                    <tr><th scope='row'>Status</th>                <td><input type='radio' name='e' value='admin' checked> Admin &nbsp; <input type='radio' name='e' value='user'> User</td></tr>
                  </tbody>
                  </table>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='".base_url().$this->uri->segment(1)."/manajemenmodul'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();
