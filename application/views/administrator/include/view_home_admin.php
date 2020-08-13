<?php 
  $number1 = $this->model_app->view('berita')->num_rows(); 
  $number2 = $this->model_app->view('halamanstatis')->num_rows(); 
  $number3 = $this->model_app->view('agenda')->num_rows(); 
  $number4 = $this->model_app->view('users')->num_rows();   
  echo $this->session->flashdata('message'); 
       $this->session->unset_userdata('message');
?>
 <!-- Info boxes -->
  <div class="row">
    
    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box">
        <span class="info-box-icon bg-info elevation-1"><i class="fas fa-cog"></i></span>
        <div class="info-box-content">
          <span class="info-box-text">List Berita</span>
          <span class="info-box-number">
            <?php echo $number1; ?>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <!-- /.col -->
    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box mb-3">
        <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-thumbs-up"></i></span>
        <div class="info-box-content">
          <span class="info-box-text">Halaman</span>
          <span class="info-box-number"><?php echo $number2; ?></span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <!-- /.col -->

    <!-- fix for small devices only -->
    <div class="clearfix hidden-md-up"></div>

    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box mb-3">
        <span class="info-box-icon bg-success elevation-1"><i class="fas fa-shopping-cart"></i></span>
        <div class="info-box-content">
          <span class="info-box-text">Agenda</span>
          <span class="info-box-number"><?php echo $number3; ?></span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <!-- /.col -->
    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box mb-3">
        <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>
        <div class="info-box-content">
          <span class="info-box-text">Users</span>
          <span class="info-box-number"><?php echo $number4; ?></span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->

  <div class="row">
    <div class="col-lg-6">
      <?php 
        $jmlpesan = $this->model_app->view_where('hubungi', array('dibaca'=>'N'))->num_rows(); 
        $jmlberita = $this->model_app->view_where('komentar', array('aktif'=>'N'))->num_rows(); 
        $jmlvideo = $this->model_app->view_where('komentarvid', array('aktif'=>'N'))->num_rows(); 
      ?>
      <div class='card'>
        <div class='card-header'>
          <h3 class='card-title'>Komentar Terbaru</h3>
          <div class="card-tools">
          <a href='<?php echo base_url().$this->uri->segment(1); ?>/komentarberita'>Lihat Semua</a>
          </div>
        </div>
        <div class='card-body'>
          <?php 
            $no = 1;
            $record = $this->db->query("SELECT a.*, b.judul, b.judul_seo FROM komentar a JOIN berita b ON a.id_berita=b.id_berita ORDER BY a.id_komentar DESC LIMIT 5");
            foreach ($record->result_array() as $row){
            if ($row['aktif']=='N'){ $color = 'orange'; $bold = '800'; $bg = '#fef7f1'; }else{ $color = 'black'; $bold = '800'; $bg = '#fff'; }
            
            $isi_komentar =(strip_tags($row['isi_komentar'])); 
            $isi = substr($isi_komentar,0,120); 
            $isi = substr($isi_komentar,0,strrpos($isi," ")); 
            $waktu = cek_terakhir($row['tgl'].' '.$row['jam_komentar']);            
            echo "<div style='background:$bg; padding:3px 8px; border-bottom:1px solid #e3e3e3'>
                   <a target='_BLANK' href='".base_url()."berita/detail/$row[judul_seo]'>$row[judul]</span></a><br>
                  <span style='color:$color; font-weight:$bold'><i class='fas fa-user'></i> $row[nama_komentar]</span>, <i class='text-success'>$waktu Lalu</i><br>
                  <a href='".base_url().$this->uri->segment(1)."/edit_komentarberita/$row[id_komentar]'><i class='fas fa-edit'></i></a> 
                  <a href='".base_url().$this->uri->segment(1)."/delete_komentarberita/$row[id_komentar]' onclick=\"return confirm('Apa anda yakin untuk hapus Data ini?')\"><i class='fas fa-trash-alt'></i></a>
                  $isi,..
                  </div>";
              $no++;
            }
          ?>
        </div>
      </div>
  </div><!-- /.Left col -->

  <div class="col-lg-6">
    <div class="card">
      <?php include "grafik.php"; ?>
    </div>
  </div><!-- right col -->
</div>
  <!-- /.row -->

