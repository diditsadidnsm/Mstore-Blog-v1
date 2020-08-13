<?php 
    echo "
              <div class='card card-info'>
                <div class='card-header with-border'>
                  <h3 class='card-title'>Tambah Poling / jajak Pendapat</h3>
                </div>
              <div class='card-body'>";
              $attributes = array('class'=>'form-horizontal','role'=>'form');
              echo form_open_multipart($this->uri->segment(1).'/tambah_jajakpendapat',$attributes); 
          echo "
                  <table class='table table-sm table-borderless'>
                  <tbody>
                    <input type='hidden' name='id' value=''>
                    <tr><th scope='row' width='120px'>Pertanyaan</th> <td><input type='text' class='form-control' name='a' required></td></tr>
                    <tr><th scope='row'>Status</th>                 <td><input type='radio' name='b' value='Jawaban' checked> Jawaban &nbsp; <input type='radio' name='b' value='Pertanyaan'> Pertanyaan</td></tr>
                    <tr><th scope='row'>Aktif </th>                 <td><input type='radio' name='c' value='Y' checked> Ya &nbsp; <input type='radio' name='c' value='N'> Tidak</td></tr>
                  </tbody>
                  </table>
              
              <div class='card-footer'>
                    <button type='submit' name='submit' class='btn btn-info'>Tambahkan</button>
                    <a href='".base_url().$this->uri->segment(1)."/jajakpendapat'><button type='button' class='btn btn-default pull-right'>Cancel</button></a>
                    
                  </div>
            </div></div>";
            echo form_close();
