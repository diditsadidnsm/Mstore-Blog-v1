<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Tambah Agenda Baru</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/tambah_agenda',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                    <tbody>
                      <input type='hidden' name='id' value=''>
                      <tr><th width='120px' scope='row'>Tema</th>   <td><input type='text' class='form-control' name='a'></td></tr>
                      <tr><th scope='row'>Isi Agenda</th>           <td><textarea id='editor1' class='form-control' name='b' style='height:260px'></textarea></td></tr>
                      <tr><th scope='row'>Gambar</th>               <td><input type='file' class='form-control' name='c'></td></tr>
                      <tr><th scope='row'>Tempat</th>               <td><input type='text' class='form-control' name='d'></td></tr>
                      <tr><th scope='row'>Jam <small>s/d</small> Selesai</th><td><input type='text' class='form-control' name='e'></td></tr>
                      <tr><th scope='row'>Tgl <small>s/d</small> Selesai</th><td><input type='text' class='form-control' id='rangepicker' name='f' autocomplete='off'></td></tr>
                      <tr><th scope='row'>Pengirim</th>             <td><input type='text' class='form-control' name='g'></td></tr>
                    </tbody>
                  </table>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='".base_url().$this->uri->segment(1)."/agenda'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();
