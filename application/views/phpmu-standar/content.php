<div class="main-page left">
	<div class="double-block">
		<div class="content-block main right">
			<div class="block">
				<div class="featured-block">
					<?php
						$cekslide = $this->model_utama->view_single('berita',array('headline' => 'Y','status' => 'Y'),'id_berita','DESC');
						if ($cekslide->num_rows() > 0){
						  include "slide.php";
						}
					?>	
				</div>
			</div>
			
			<div class="block">
				<div class="block-title">
					<a href="<?php echo base_url(); ?>berita/indeks_berita" class="right">+ Indexs Berita</a>
					<h2>Berita Terbaru</h2>
				</div>
				<div class="block-content">
					<ul class="article-block">
						<?php 
							$no = 1;
							$hot = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('status' => 'Y'),'tanggal','DESC',0,5);
                			foreach ($hot->result_array() as $row) {	
							$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $row['id_berita']))->num_rows();
							$tgl = tgl_indo($row['tanggal']);
							$isi_berita =(strip_tags($row['isi_berita'])); 
							  $isi = substr($isi_berita,0,170); 
							  $isi = substr($isi_berita,0,strrpos($isi," ")); 
							  $judul = $row['judul']; 
							echo "<li>
							<div style='height:100px; background:#e3e3e3; overflow:hidden; margin-left:10px; float:right' class='article-photo hidden-xs'>
								<a href='".base_url()."$row[judul_seo]' class='hover-effect'>";
									if ($row['gambar'] == ''){
										echo "<img style='width:180px;' src='".base_url()."asset/foto_berita/no-image.jpg' alt='no-image.jpg' /></a>";
									}else{
										echo "<img style='width:180px;' src='".base_url()."asset/foto_berita/$row[gambar]' alt='$row[gambar]' /></a>";
									}
								echo "</a>
							</div>
							<div class='article-photo visible-xs' style='margin-right:10px'>";
								if ($row['gambar'] ==''){
									echo "<a class='hover-effect' href='".base_url()."$row[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
								}else{
									echo "<a class='hover-effect' href='".base_url()."$row[judul_seo].html'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$row[gambar]' alt='$row[gambar]' /></a>";
								}
						echo "</div>

							<div class='article-content' style='margin-left:0px'>
								<h2 class='hidden-xs h2-judul'><a title='$row[judul]' href='".base_url()."$row[judul_seo]'>$judul</a></h2>
								<h4 class='visible-xs'><a title='$row[judul]' href='".base_url()."$row[judul_seo]'>$judul</a></h4>
								<span class='meta'>
									<a href='".base_url()."kategori/detail/$row[kategori_seo]'><b>$row[nama_kategori]</b></a>
									<a href='".base_url()."$row[judul_seo]'><span class='icon-text'>&#128340;</span>$row[jam], ".tgl_indo($row['tanggal'])."</a>
								</span>
								<p class='hidden-xs'>$isi . . .</p>
							</div>
						</li>";
							}
						?>
					</ul>
				</div>
			</div>

			<?php
				$ia = $this->model_utama->view_where_ordering_limit('iklantengah',array('posisi'=>'home'),'id_iklantengah','ASC',0,1)->row_array();
				echo "<a href='$ia[url]' target='_blank'>";
					$string = $ia['gambar'];
					if ($ia['gambar'] != ''){
						if(preg_match("/swf\z/i", $string)) {
							echo "<embed style='margin-top:-10px' src='".base_url()."asset/foto_iklantengah/$ia[gambar]' width='100%' height=90px quality='high' type='application/x-shockwave-flash'>";
						} else {
							echo "<img style='margin-top:-10px; margin-bottom:5px' width='100%' src='".base_url()."asset/foto_iklantengah/$ia[gambar]' title='$ia[judul]' />";
						}
					}
				echo "</a>";
				if (trim($ia['source']) != ''){ echo "$ia[source]"; }
			?>

			<div class="block">
				<div class="block-title" style="background: #dd8229;">
					<h2>Pilihan Redaksi</h2>
				</div>
				<div class="block-content">
					<ul class="article-block">
						<?php 
							$pilihan = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.aktif' => 'Y','berita.status' => 'Y'),'tanggal','DESC',0,3);
							foreach ($pilihan->result_array() as $pi) {
							$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $pi['id_berita']))->num_rows();
							  $tgl = tgl_indo($pi['tanggal']);
							  $isi_berita =(strip_tags($pi['isi_berita'])); 
							  $isi = substr($isi_berita,0,170); 
							  $isi = substr($isi_berita,0,strrpos($isi," ")); 
							  $judul = $pi['judul']; 
								echo "<li>
										<div style='height:100px; background:#e3e3e3; overflow:hidden; margin-left:10px; float:right' class='article-photo hidden-xs'>
											<a href='".base_url()."$pi[judul_seo]' class='hover-effect'>";
											if ($pi['gambar'] == ''){
												echo "<img style='width:180px;' src='".base_url()."asset/foto_berita/no-image.jpg' alt='no-image.jpg' /></a>";
											}else{
												echo "<img style='width:180px;' src='".base_url()."asset/foto_berita/$pi[gambar]' alt='$pi[gambar]' /></a>";
											}
											echo "</a>
										</div>
										<div class='article-photo visible-xs' style='margin-right:10px'>";
											if ($pi['gambar'] ==''){
												echo "<a class='hover-effect' href='".base_url()."$pi[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
											}else{
												echo "<a class='hover-effect' href='".base_url()."$pi[judul_seo].html'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$pi[gambar]' alt='$pi[gambar]' /></a>";
											}
									echo "</div>

										<div class='article-content' style='margin-left:0px'>
											<h2 class='hidden-xs h2-judul'><a title='$pi[judul]' href='".base_url()."$pi[judul_seo]'>$judul</a></h2>
											<h4 class='visible-xs'><a title='$pi[judul]' href='".base_url()."$pi[judul_seo]'>$judul</a></h4>
											<span class='meta'>
												<a href='".base_url()."kategori/detail/$pi[kategori_seo]'><b>$pi[nama_kategori]</b></a>
												<a href='".base_url()."$pi[judul_seo]'><span class='icon-text'>&#128340;</span>$pi[jam], ".tgl_indo($pi['tanggal'])."</a>
											</span>
											<p class='hidden-xs'>$isi . . .</p>
										</div>
									</li>";
							}
						?>
					</ul>
				</div>
			</div>
			

			
		</div>				

	</div>
</div>
<div class="main-sidebar right hidden-xs">
	<?php include "sidebar_kanan.php"; ?>
</div>

