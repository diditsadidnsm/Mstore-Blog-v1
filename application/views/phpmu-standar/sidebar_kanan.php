<div class="widget">
	<?php
	  $pasangiklan2 = $this->db->query("SELECT * FROM pasangiklan where judul LIKE '%kanan%'");
	  foreach ($pasangiklan2->result_array() as $b){
		$string = $b['gambar'];
		if ($b['gambar'] != ''){
			if(preg_match("/swf\z/i", $string)) {
				echo "<embed src='".base_url()."asset/foto_pasangiklan/$b[gambar]' width=300 height=240 quality='high' type='application/x-shockwave-flash'>";
			} else {
				echo "<a href='$b[url]' target='_blank'><img style='width:100%' src='".base_url()."asset/foto_pasangiklan/$b[gambar]' alt='$b[judul]' /></a>";
			}
		}
		if (trim($b['source']) != ''){ echo "$b[source]"; }
	  }
	?>
</div><hr>

<div class="widget">
	<h3>Temukan juga kami di</h3>
	<div class="widget-social">
		<div class="social-bar">
		<?php
			$sosmed = $this->model_utama->view('identitas')->row_array();
			$pecahd = explode(",", $sosmed['facebook']);
		?>
		<a target="_BLANK" href="<?php echo $pecahd[0]; ?>" class="social-icon"><span class="facebook">Facebook</span></a>
		<a target="_BLANK" href="<?php echo $pecahd[1]; ?>" class="social-icon"><span class="twitter">Twitter</span></a>
		<a target="_BLANK" href="<?php echo $pecahd[2]; ?>" class="social-icon"><span class="linkedin">Instagram</span></a>
		<a target="_BLANK" href="<?php echo $pecahd[3]; ?>" class="social-icon"><span class="google">Youtube</span></a>
		</div>
		<p>Ikuti kami di facebook, twitter, Instagram, Youtube dan dapatkan informasi terbaru dari kami disana.</p>
	</div>
</div>

<div class="widget">
	<h3>Berita Utama</h3>
	<div class="widget-articles">
		<ul>
			<li>
				<?php 
					$terbaru = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.status' => 'Y','berita.utama' => 'Y',),'tanggal','DESC',0,3);
					foreach ($terbaru->result_array() as $r2x) {
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
			</li>
		</ul>
	</div>
</div>

<div class="widget">
	<h3>Berita Populer</h3>
	<div class="widget-articles">
		<ul>
			<li>
				<?php 
					$populer = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.status' => 'Y'),'dibaca','DESC',0,3);
					foreach ($populer->result_array() as $r2x) {
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
			</li>
		</ul>
	</div>
</div>

<div class="widget">
  <h3>Tag Berita</h3>
  <div class="tag-cloud">
  	<?php 
		$tag = $this->model_utama->view_ordering_limit('tag','id_tag','RANDOM',0,50);
  		foreach ($tag->result_array() as $row) {
			echo "<a href='".base_url()."tag/detail/$row[tag_seo]' class='badge'>$row[nama_tag]</a>";
		}
	?>
	  	

  </div>
</div>

<div class="widget">
	<h3>Komentar Terakhir</h3>
	<div class="widget-comments">
		<ul>
			<?php
				$komentar = $this->model_utama->view_where_ordering_limit('komentar',array('aktif' => 'Y'),'id_komentar','DESC',0,2);
			  	foreach ($komentar->result_array() as $r) {
					$tgl = tgl_indo($r['tgl']);
					$isi_komentar = strip_tags($r['isi_komentar']); 
					$isi = substr($isi_komentar,0,100); 
					$isi = substr($isi_komentar,0,strrpos($isi," "));
					$avatar = md5(strtolower(trim($r['email'])));
					$b = $this->model_utama->view_where('berita',array('id_berita' => $r['id_berita']))->row_array();

					echo "<li>
						<div class='comment-photo'>
							<span class='hover-effect'>";
								if ($r['email'] == ''){
									echo "<img style='width:50px; height:50px;' src='".base_url()."asset/foto_user/blank.png' alt='avatar-1' />";
								}else{
									echo "<img style='width:50px; height:50px;' src='http://www.gravatar.com/avatar/$avatar.jpg?s=100'/>";
								}
							echo "</span>
						</div>
						<div class='comment-content'>
							<h3>$r[nama_komentar]</h3>
							<p>$isi ...</p>
							<span class='meta'>
								<a href='".base_url()."$b[judul_seo]'><span class='icon-text'>&#59212;</span>View Article</a>
							</span>
						</div>
					 </li>";
				}
				
			?>
			
		</ul>
	</div>
</div>
