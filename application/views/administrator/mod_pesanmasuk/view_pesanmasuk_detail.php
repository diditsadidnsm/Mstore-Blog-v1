<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>LIhat dan Balas Pesan Masuk</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/detail_pesanmasuk/'.$rows['id_hubungi'],$attributes); 

                    if (isset($_POST['submit'])){
                       echo "<div class='alert alert-success alert-dismissible fade in' role='alert'> 
                                <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
                                <span aria-hidden='true'>×</span></button> <strong>Success!</strong> - Email success Terkirim ke $_POST[b].
                              </div>";
                    }
                  echo "<table class='table table-sm table-borderless'>
                  <tbody>

                    <tr><th width='120px' scope='row'>Nama Pengirim</th>  <td><input type='text' class='form-control' name='a' value='$rows[nama]' readonly='on'></td></tr>
                    <tr><th width='120px' scope='row'>Email Pengirim</th> <td><input type='text' class='form-control' name='b' value='$rows[email]' readonly='on'></td></tr>
                    <tr><th width='120px' scope='row'>Subjek Pesan</th>   <td><input type='text' class='form-control' name='c' value='$rows[subjek]' readonly='on'></td></tr>
                    <tr><th scope='row'>Isi Pesan</th>                    <td><textarea class='form-control' name='isi' style='height:120px'  readonly='on'>$rows[pesan]</textarea></td></tr>
                    <tr><th scope='row'>Balas Pesan</th>                    <td><textarea id='editor1' class='form-control' name='d' style='height:120px'></textarea></td></tr>
      
                  </tbody>
                  </table>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Kirimkan Balasan</button>
                    <a href='".base_url().$this->uri->segment(1)."/pesanmasuk'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();