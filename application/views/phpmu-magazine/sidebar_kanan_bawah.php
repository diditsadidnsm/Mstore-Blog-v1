<div class="block">
	<?php $r = $this->model_utama->view_where('kategori',array('sidebar' => 12))->row_array(); ?>
	<h2 class="list-title" style="color: #dd8229;border-bottom: 2px solid #dd8229;">Berita <?php echo "$r[nama_kategori]"; ?></h2>
	<ul class="article-block">
	<?php 
		$kategori5 = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $r['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',0,5);			
		foreach ($kategori5->result_array() as $r2x) {
		$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2x['id_berita']))->num_rows();
			echo "<li>
					<div class='article-photo'>";
						if ($r2x['gambar'] ==''){
							echo "<a href='".base_url()."$r2x[judul_seo]' class='hover-effect'><img style='width:59px; height:42px;' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='' /></a>";
						}else{
							echo "<a href='".base_url()."$r2x[judul_seo]' class='hover-effect'><img style='width:59px; height:42px;' src='".base_url()."asset/foto_berita/$r2x[gambar]' alt='' /></a>";
						}
					echo "</div>
					<div class='article-content'>
						<h4><a href='".base_url()."$r2x[judul_seo]'>$r2x[judul]</a></h4>
						<span class='meta'>
							<a href='".base_url()."$r2x[judul_seo]'><span class='icon-text'>&#128340;</span>$r2x[jam], ".tgl_indo($r2x['tanggal'])."</a>
						</span>
					</div>
				  </li>";
		}
	?>
	</ul>
	<a href="<?php echo "".base_url()."kategori/detail/$r[kategori_seo]"; ?>" class="more">Read More</a>
</div>

<div style="clear:both"><br></div>
<div class="block">
	<?php $r = $this->model_utama->view_where('kategori',array('sidebar' => 13))->row_array(); ?>
	<h2 class="list-title" style="color: #dd8229;border-bottom: 2px solid #dd8229;">Berita <?php echo "$r[nama_kategori]"; ?></h2>
	<ul class="article-block">
	<?php 
		$kategori5 = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $r['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',0,5);			
		foreach ($kategori5->result_array() as $r2x) {
		$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2x['id_berita']))->num_rows();
			echo "<li>
					<div class='article-photo'>";
						if ($r2x['gambar'] ==''){
							echo "<a href='".base_url()."$r2x[judul_seo]' class='hover-effect'><img style='width:59px; height:42px;' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='' /></a>";
						}else{
							echo "<a href='".base_url()."$r2x[judul_seo]' class='hover-effect'><img style='width:59px; height:42px;' src='".base_url()."asset/foto_berita/$r2x[gambar]' alt='' /></a>";
						}
					echo "</div>
					<div class='article-content'>
						<h4><a href='".base_url()."$r2x[judul_seo]'>$r2x[judul]</a></h4>
						<span class='meta'>
							<a href='".base_url()."$r2x[judul_seo]'><span class='icon-text'>&#128340;</span>$r2x[jam], ".tgl_indo($r2x['tanggal'])."</a>
						</span>
					</div>
				  </li>";
		}
	?>
	</ul>
	<a href="<?php echo "".base_url()."kategori/detail/$r[kategori_seo]"; ?>" class="more">Read More</a>
</div>