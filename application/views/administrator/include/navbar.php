<!-- Left navbar links -->
<ul class="navbar-nav">
    <li class="nav-item">
    <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
    </li>
    <li class="nav-item">
    <a class="nav-link" target='_BLANK' href="<?php echo base_url(); ?>"> Kunjungi Situs</a>
    </li>
</ul>


<!-- Right navbar links -->
<ul class="navbar-nav ml-auto">
    <!-- Messages Dropdown Menu -->
    <?php if ($this->session->level=='admin'){ ?>
    <li class="nav-item dropdown">
    <a class="nav-link" data-toggle="dropdown" href="#">
        <i class="far fa-comments"></i>
        <?php 
            $jumlah_pesan = $this->model_app->view_where('hubungi', array('dibaca'=>'N'))->num_rows(); 
            echo "<span class='badge badge-danger navbar-badge'>$jumlah_pesan</span>";
        ?>
    </a>
    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
        <?php 
        $pesan = $this->model_app->view_ordering_limit('hubungi','id_hubungi','DESC',0,5);
        foreach ($pesan->result_array() as $row) {
            $isi_pesan = substr($row['pesan'],0,20);
            $waktukirim = cek_terakhir($row['tanggal'].' '.$row['jam']);
            if ($row['dibaca']=='N'){ $color = 'warning'; }else{ $color = 'muted'; }
            echo "<a class='dropdown-item' href='".base_url().$this->uri->segment(1)."/detail_pesanmasuk/$row[id_hubungi]'>
                    <div class='media'>
                        <img src='".base_url()."asset/foto_user/blank.png'  class='img-size-50 mr-3 img-circle' alt='User Image'>
                        <div class='media-body'>
                            <h3 class='dropdown-item-title'>
                                $row[nama]
                                <span class='float-right text-sm text-$color'><i class='fas fa-star'></i></span> 
                            </h3>
                            <p class='text-sm'>$isi_pesan...</p>
                            <p class='text-sm text-muted'><i class='far fa-clock mr-1'></i> $waktukirim</p>
                        </div>
                    </div>
                    </a>
                    <div class='dropdown-divider'></div>";
        }
        ?>
        <a href="<?php echo base_url().$this->uri->segment(1); ?>/pesanmasuk" class="dropdown-item dropdown-footer">See All Messages</a>
    </div>
    </li>
    <?php } ?>
    <!-- Notifications Dropdown Menu -->
    <li class="nav-item">
    <a class="nav-link" href="<?php echo base_url().$this->uri->segment(1); ?>/edit_manajemenuser/<?php echo $this->session->username; ?>"><i class="nav-icon fas fa-user-edit"></i></a></li>
    <li class="nav-item">
    <a class="nav-link" data-widget="control-sidebar" data-slide="true" target='_BLANK' href="<?php echo base_url(); ?>"><i
        class="fas fa-cog"></i></a>
    </li>
</ul>
