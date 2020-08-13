<?php

    echo "<div class='row'>
        <div class='col-md-6'>
          <div class='card'>
            <div class='card-header'>
              <h3 class='card-title'>Selamat Datang di Halaman $users[level]</h3>
            </div>
            <div class='card-body'>
              <p>Silahkan klik menu pilihan yang berada di sebelah kiri untuk mengelola Tulisan anda pada web ini, berikut informasi akun anda saat ini : </p>
              <table class='table table-sm table-borderless'>
                <tr><th width='120px'>Username</th> <td>$users[username]</td></tr>
                <tr><th>Password</th> <td>***********</td></tr>
                <tr><th>Nama Lengkap</th> <td>$users[nama_lengkap]</td></tr>
                <tr><th>Alamat Email</th> <td>$users[email]</td></tr>
                <tr><th>No. Telpon</th> <td>$users[no_telp]</td></tr>
                <tr><th>Level</th> <td>$users[level]</td></tr>
                <tr><th>Hak Akses</th> <td>"; 
                    $hakakses = $this->db->query("SELECT * FROM modul,users_modul WHERE modul.id_modul=users_modul.id_modul AND users_modul.id_session='".$this->session->id_session."'");
                    foreach ($hakakses->result_array() as $mod1) {
                        echo "<a href='$mod1[link]'>$mod1[nama_modul]</a>, ";
                    }
                echo "</td></tr>
              </table>
              <div class='alert alert-success alert-dismissible'>
                <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>×</button>
                <h4><i class='icon fa fa-info'></i> Info Penting!</h4>
                Diharapkan informasi akun sesuai dengan identitas pada Kartu Pengenal anda, Edit Profile klik <a href='".base_url().$this->uri->segment(1)."/edit_manajemenuser/".$this->session->username."'>disini</a>.
              </div>
            </div>
          </div>
        </div>

        <div class='col-lg-6'>";
        $feedlist = new rss('https://members.phpmu.com/forum.xml'); /* Ubah link feed disini dengan link feed Anda */
        echo $feedlist->display(5,"Forum Diskusi"); /* Angka 7 digunakan untuk menampilkan jumlah artikel */
    echo "</div>
    </div>";