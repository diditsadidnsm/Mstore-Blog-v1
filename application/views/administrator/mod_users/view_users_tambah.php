<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Tambah Data User</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/tambah_manajemenuser',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <tr><th width='120px' scope='row'>Username</th>   <td><input type='text' class='form-control' name='a' onkeyup=\"nospaces(this)\" required></td></tr>
                    <tr><th scope='row'>Password</th>                 <td><input type='password' class='form-control' name='b' onkeyup=\"nospaces(this)\" required></td></tr>
                    <tr><th scope='row'>Nama Lengkap</th>             <td><input type='text' class='form-control' name='c' required></td></tr>
                    <tr><th scope='row'>Alamat Email</th>             <td><input type='email' class='form-control' name='d' required></td></tr>
                    <tr><th scope='row'>No Telepon</th>               <td><input type='number' class='form-control' name='e' required></td></tr>
                    <tr><th scope='row'>Upload Foto</th>              <td><input type='file' class='form-control' name='f'></td></tr>
                    <tr><th scope='row'>Level</th>                   <td><input type='radio' name='g' value='kontributor' checked> Kontributor &nbsp; <input type='radio' name='g' value='user'> User Biasa &nbsp; <input type='radio' name='g' value='admin'> Administrator
                    <tr><th scope='row'>Akses Modul</th>                    <td><div class='checkbox-scroll'>";
                                                                             foreach ($record as $row){
                                                                               echo "<span style='display:block'><input name='modul[]' type='checkbox' value='$row[id_modul]' /> $row[nama_modul]</span> ";
                                                                             }
                    echo "</div></td></tr>
                  </tbody></table>
              
                  <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='".base_url().$this->uri->segment(1)."/manajemenuser'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();