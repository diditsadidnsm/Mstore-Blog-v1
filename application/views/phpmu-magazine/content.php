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
							$pilihan = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.aktif' => 'Y','berita.status' => 'Y'),'tanggal','DESC',0,5);
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
		<div class="content-block left hidden-xs">
			<?php include "sidebar_kiri.php"; ?>
		</div>
	</div>
</div>
<div class="main-sidebar right hidden-xs">
	<?php include "sidebar_kanan.php"; ?>
</div>

<div style="clear: both"><br></div>
<div class="paragraph-row">
<?php 
$advetorial = $this->model_utama->view_where_ordering_limit('iklantengah',array('posisi'=>'home_tengah'),'id_iklantengah','ASC',0,6);
foreach ($advetorial->result_array() as $row) {
  echo "<div class='column4'><p></p>
	<a href='$row[url]' target='_blank'>";
		$string = $row['gambar'];
		if ($row['gambar'] != ''){
			if(preg_match("/swf\z/i", $string)) {
				echo "<embed style='margin-top:-10px' src='".base_url()."asset/foto_iklantengah/$row[gambar]' width='100%' height=90px quality='high' type='application/x-shockwave-flash'>";
			} else {
				echo "<img style='margin-top:-10px; margin-bottom:5px' width='100%' src='".base_url()."asset/foto_iklantengah/$row[gambar]' title='$row[judul]' />";
			}
		}
	echo "</a>";
	if (trim($id['source']) != ''){ echo "$id[source]"; }
  echo "<p></p></div>";
}
?>
</div>

<div class="main-page left">
	<div class="double-block">
		<div class="content-block main right">

			<div class="block">
			<?php $r = $this->model_utama->view_where('kategori',array('sidebar' => 1))->row_array(); ?>
				<div class="block-title">
					<a href="<?php echo base_url()?>kategori/detail/<?php echo $r['kategori_seo']; ?>" class="right">Semua Artikel dari kategori ini </a>
					<h2>Berita <?php echo "$r[nama_kategori]"; ?></h2>
				</div>
				<div class="block-content">
					<?php 
						$kategori1 = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $r['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',0,1);			
						foreach ($kategori1->result_array() as $r1) {
							$tglr = tgl_indo($r1['tanggal']);
							$isi_berita = strip_tags($r1['isi_berita']); 
							$isi = substr($isi_berita,0,190); 
							$isi = substr($isi_berita,0,strrpos($isi," "));
							$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r1['id_berita']))->num_rows();
							echo "<div class='wide-article'>
								<div class='article-photo hidden-xs'>";
									if ($r1['gambar'] ==''){
										echo "<a class='hover-effect' href='".base_url()."$r1[judul_seo]'><img style='width:160px;' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='' /></a>";
									}else{
										echo "<a class='hover-effect' href='".base_url()."$r1[judul_seo]'><img style='width:160px;' src='".base_url()."asset/foto_berita/$r1[gambar]' alt='' /></a>";
									}
							echo "</div>
								<div class='article-photo visible-xs'>";
															if ($r1['gambar'] ==''){
																echo "<a class='hover-effect' href='".base_url()."$r1[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
															}else{
																echo "<a class='hover-effect' href='".base_url()."$r1[judul_seo].html'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r1[gambar]' alt='$r1[gambar]' /></a>";
															}
													echo "</div>
							
								<div class='article-content'>
									<h2 class='hidden-xs'><a href='".base_url()."$r1[judul_seo]'>$r1[judul]</a></h2>
									<h4 class='visible-xs'><a href='".base_url()."$r1[judul_seo]'>$r1[judul]</a></h4>
									<span class='meta'>
										<a href='".base_url()."$r1[judul_seo]'><span class='icon-text'>&#128340;</span>$r1[jam], $tglr <span class='hidden-xs'>- Oleh : $r1[nama_lengkap]</span></a>
									</span>
									<p>$isi . . .</p>
								</div>
							</div>";
						}
					?>

					<div class="paragraph-row">
						<!-- BEGIN .column6 -->
						<div class="column6">
							<ul class="article-block">
								<?php 
									$kategori1a = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $r['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',1,3);			
									foreach ($kategori1a->result_array() as $r2) {
									$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2['id_berita']))->num_rows();
									$tglr2 = tgl_indo($r2['tanggal']);
									echo "<li>
											<div class='article-photo'>";
												if ($r2['gambar'] ==''){
													echo "<a class='hover-effect' href='".base_url()."$r2[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
												}else{
													echo "<a class='hover-effect' href='".base_url()."$r2[judul_seo].html'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r2[gambar]' alt='$r2[gambar]' /></a>";
												}
										echo "</div>
											<div class='article-content'>
												<h4><a href='".base_url()."$r2[judul_seo]'>$r2[judul]</a></h4>
												<span class='meta'>
													<a href='".base_url()."$r2[judul_seo]'><span class='icon-text'>&#128340;</span>$r2[jam], $tglr2</a>
												</span>
											</div>
										</li>";
									}
								?>
							</ul>
						<!-- END .column6 -->
						</div>
						
						<!-- BEGIN .column6 -->
						<div class="column6">
							<ul class="article-block">
								<?php 
									$kategori1b = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $r['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',4,3);			
									foreach ($kategori1b->result_array() as $r2x) {
									$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2x['id_berita']))->num_rows();
									$tglr2 = tgl_indo($r2x['tanggal']);
										echo "<li>
												<div class='article-photo'>";
													if ($r2x['gambar'] ==''){
														echo "<a class='hover-effect' href='".base_url()."$r2x[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
													}else{
														echo "<a class='hover-effect' href='".base_url()."$r2x[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r2x[gambar]' alt='$r2x[gambar]' /></a>";
													}
											echo "</div>
												<div class='article-content'>
													<h4><a href='".base_url()."$r2x[judul_seo]'>$r2x[judul]</a></h4>
													<span class='meta'>
														<a href='".base_url()."$r2x[judul_seo]'><span class='icon-text'>&#128340;</span>$r2x[jam], $tglr2</a>
													</span>
												</div>
											</li>";
									}
								?>
							</ul>
						<!-- END .column6 -->
						</div>
					</div>

				</div>
			</div>
			
			<?php
				$ic = $this->model_utama->view_where_ordering_limit('iklantengah',array('posisi'=>'home'),'id_iklantengah','ASC',1,1)->row_array();
				echo "<a href='$ic[url]' target='_blank'>";
					$string = $ic['gambar'];
					if ($ic['gambar'] != ''){
						if(preg_match("/swf\z/i", $string)) {
							echo "<embed style='margin-top:-10px' src='".base_url()."asset/foto_iklantengah/$ic[gambar]' width='100%' height=90px quality='high' type='application/x-shockwave-flash'>";
						}else{
							echo "<img style='margin-top:-10px; margin-bottom:5px' width='100%' src='".base_url()."asset/foto_iklantengah/$ic[gambar]' title='$ic[judul]' />";
						}
					}
				echo "</a>";
				if (trim($ic['source']) != ''){ echo "$ic[source]"; }
			?>

			<div class="block">
			<?php $ra = $this->model_utama->view_where('kategori',array('sidebar' => 2))->row_array(); ?>
				<div class="block-title" style="background: #2182b4;">
					<a href="<?php echo base_url(); ?>kategori/detail/<?php echo "$ra[kategori_seo]"; ?>" class="right">Semua Artikel dari kategori ini </a>
					<h2>Berita <?php echo "$ra[nama_kategori]"; ?></h2>
				</div>
				<div class="block-content">
					<?php 
						$kategori2 = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $ra['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',0,1);			
						foreach ($kategori2->result_array() as $r1m) {
						$tglr = tgl_indo($r1m['tanggal']);
						$isi_berita = strip_tags($r1m['isi_berita']); 
						$isi = substr($isi_berita,0,190); 
						$isi = substr($isi_berita,0,strrpos($isi," "));
						$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r1m['id_berita']))->num_rows();
							echo "<div class='wide-article'>
								<div class='article-photo hidden-xs'>";
									if ($r1m['gambar'] ==''){
										echo "<a class='hover-effect' href='".base_url()."$r1m[judul_seo]'><img style='width:160px;' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='' /></a>";
									}else{
										echo "<a class='hover-effect' href='".base_url()."$r1m[judul_seo]'><img style='width:160px;' src='".base_url()."asset/foto_berita/$r1m[gambar]' alt='' /></a>";
									}
							echo "</div>
								<div class='article-photo visible-xs'>";
															if ($r1m['gambar'] ==''){
																echo "<a class='hover-effect' href='".base_url()."$r1m[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
															}else{
																echo "<a class='hover-effect' href='".base_url()."$r1m[judul_seo].html'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r1m[gambar]' alt='$r1m[gambar]' /></a>";
															}
													echo "</div>
							
								<div class='article-content'>
									<h2 class='hidden-xs'><a href='".base_url()."$r1m[judul_seo]'>$r1m[judul]</a></h2>
									<h4 class='visible-xs'><a href='".base_url()."$r1m[judul_seo]'>$r1m[judul]</a></h4>
									<span class='meta'>
										<a href='".base_url()."$r1m[judul_seo]'><span class='icon-text'>&#128340;</span>$r1m[jam], $tglr<span class='hidden-xs'> - Oleh : $r1[nama_lengkap]</span></a>
									</span>
									<p>$isi . . .</p>
								</div>
							</div>";
					}
					
					?>

					<div class="paragraph-row">
						<!-- BEGIN .column6 -->
						<div class="column6">
							<ul class="article-block">
								<?php 
									$kategori2a = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $ra['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',1,3);			
									foreach ($kategori2a->result_array() as $r2) {
									$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2['id_berita']))->num_rows();
									$tglr2 = tgl_indo($r2['tanggal']);
									echo "<li>
											<div class='article-photo'>";
												if ($r2['gambar'] ==''){
													echo "<a class='hover-effect' href='".base_url()."$r2[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
												}else{
													echo "<a class='hover-effect' href='".base_url()."$r2[judul_seo].html'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r2[gambar]' alt='$r2[gambar]' /></a>";
												}
										echo "</div>
											<div class='article-content'>
												<h4><a href='".base_url()."$r2[judul_seo]'>$r2[judul]</a></h4>
												<span class='meta'>
													<a href='".base_url()."$r2[judul_seo]'><span class='icon-text'>&#128340;</span>$r2[jam], $tglr2</a>
												</span>
											</div>
										</li>";
									}
								?>
							</ul>
						<!-- END .column6 -->
						</div>
						
						<!-- BEGIN .column6 -->
						<div class="column6">
							<ul class="article-block">
								<?php 
									$kategori2b = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $ra['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',4,3);			
									foreach ($kategori2b->result_array() as $r2x) {
									$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2x['id_berita']))->num_rows();
									$tglr2 = tgl_indo($r2x['tanggal']);
									echo "<li>
											<div class='article-photo'>";
												if ($r2x['gambar'] ==''){
													echo "<a class='hover-effect' href='".base_url()."$r2x[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
												}else{
													echo "<a class='hover-effect' href='".base_url()."$r2x[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r2x[gambar]' alt='$r2x[gambar]' /></a>";
												}
										echo "</div>
											<div class='article-content'>
												<h4><a href='".base_url()."$r2x[judul_seo]'>$r2x[judul]</a></h4>
												<span class='meta'>
													<a href='".base_url()."$r2x[judul_seo]'><span class='icon-text'>&#128340;</span>$r2x[jam], $tglr2</a>
												</span>
											</div>
										</li>";
									}
								?>
							</ul>
						<!-- END .column6 -->
						</div>
					</div>

				</div>
			</div>
			
		</div>				
		<div class="content-block left hidden-xs">
			<?php include "sidebar_kiri_tengah.php"; ?>
		</div>
	</div>
</div>
<div class="main-sidebar right hidden-xs">
	<?php include "sidebar_kanan_tengah.php"; ?>
</div>




<div class="paragraph-row">
<?php 
$advetorial_bawah = $this->model_utama->view_where_ordering_limit('iklantengah',array('posisi'=>'home_bawah'),'id_iklantengah','ASC',0,6);
foreach ($advetorial_bawah->result_array() as $row) {
  echo "<div class='column4'><p></p>
	<a href='$row[url]' target='_blank'>";
		$string = $row['gambar'];
		if ($row['gambar'] != ''){
			if(preg_match("/swf\z/i", $string)) {
				echo "<embed style='margin-top:-10px' src='".base_url()."asset/foto_iklantengah/$row[gambar]' width='100%' height=90px quality='high' type='application/x-shockwave-flash'>";
			} else {
				echo "<img style='margin-top:-10px; margin-bottom:5px' width='100%' src='".base_url()."asset/foto_iklantengah/$row[gambar]' title='$row[judul]' />";
			}
		}
	echo "</a>";
	if (trim($id['source']) != ''){ echo "$id[source]"; }
  echo "<p></p></div>";
}
?>
</div>



<div class="main-page left">
	<div class="double-block">
		<div class="content-block main right">

			<div class="block">
			<?php $r = $this->model_utama->view_where('kategori',array('sidebar' => 3))->row_array(); ?>
				<div class="block-title">
					<a href="<?php echo base_url()?>kategori/detail/<?php echo $r['kategori_seo']; ?>" class="right">Semua Artikel dari kategori ini </a>
					<h2>Berita <?php echo "$r[nama_kategori]"; ?></h2>
				</div>
				<div class="block-content">
					<?php 
						$kategori1 = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $r['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',0,1);			
						foreach ($kategori1->result_array() as $r1) {
							$tglr = tgl_indo($r1['tanggal']);
							$isi_berita = strip_tags($r1['isi_berita']); 
							$isi = substr($isi_berita,0,190); 
							$isi = substr($isi_berita,0,strrpos($isi," "));
							$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r1['id_berita']))->num_rows();
							echo "<div class='wide-article'>
								<div class='article-photo hidden-xs'>";
									if ($r1['gambar'] ==''){
										echo "<a class='hover-effect' href='".base_url()."$r1[judul_seo]'><img style='width:160px;' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='' /></a>";
									}else{
										echo "<a class='hover-effect' href='".base_url()."$r1[judul_seo]'><img style='width:160px;' src='".base_url()."asset/foto_berita/$r1[gambar]' alt='' /></a>";
									}
							echo "</div>
								<div class='article-photo visible-xs'>";
															if ($r1['gambar'] ==''){
																echo "<a class='hover-effect' href='".base_url()."$r1[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
															}else{
																echo "<a class='hover-effect' href='".base_url()."$r1[judul_seo].html'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r1[gambar]' alt='$r1[gambar]' /></a>";
															}
													echo "</div>
							
								<div class='article-content'>
									<h2 class='hidden-xs'><a href='".base_url()."$r1[judul_seo]'>$r1[judul]</a></h2>
									<h4 class='visible-xs'><a href='".base_url()."$r1[judul_seo]'>$r1[judul]</a></h4>
									<span class='meta'>
										<a href='".base_url()."$r1[judul_seo]'><span class='icon-text'>&#128340;</span>$r1[jam], $tglr <span class='hidden-xs'>- Oleh : $r1[nama_lengkap]</span></a>
									</span>
									<p>$isi . . .</p>
								</div>
							</div>";
						}
					?>

					<div class="paragraph-row">
						<!-- BEGIN .column6 -->
						<div class="column6">
							<ul class="article-block">
								<?php 
									$kategori1a = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $r['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',1,3);			
									foreach ($kategori1a->result_array() as $r2) {
									$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2['id_berita']))->num_rows();
									$tglr2 = tgl_indo($r2['tanggal']);
									echo "<li>
											<div class='article-photo'>";
												if ($r2['gambar'] ==''){
													echo "<a class='hover-effect' href='".base_url()."$r2[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
												}else{
													echo "<a class='hover-effect' href='".base_url()."$r2[judul_seo].html'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r2[gambar]' alt='$r2[gambar]' /></a>";
												}
										echo "</div>
											<div class='article-content'>
												<h4><a href='".base_url()."$r2[judul_seo]'>$r2[judul]</a></h4>
												<span class='meta'>
													<a href='".base_url()."$r2[judul_seo]'><span class='icon-text'>&#128340;</span>$r2[jam], $tglr2</a>
												</span>
											</div>
										</li>";
									}
								?>
							</ul>
						<!-- END .column6 -->
						</div>
						
						<!-- BEGIN .column6 -->
						<div class="column6">
							<ul class="article-block">
								<?php 
									$kategori1b = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $r['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',4,3);			
									foreach ($kategori1b->result_array() as $r2x) {
									$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2x['id_berita']))->num_rows();
									$tglr2 = tgl_indo($r2x['tanggal']);
										echo "<li>
												<div class='article-photo'>";
													if ($r2x['gambar'] ==''){
														echo "<a class='hover-effect' href='".base_url()."$r2x[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
													}else{
														echo "<a class='hover-effect' href='".base_url()."$r2x[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r2x[gambar]' alt='$r2x[gambar]' /></a>";
													}
											echo "</div>
												<div class='article-content'>
													<h4><a href='".base_url()."$r2x[judul_seo]'>$r2x[judul]</a></h4>
													<span class='meta'>
														<a href='".base_url()."$r2x[judul_seo]'><span class='icon-text'>&#128340;</span>$r2x[jam], $tglr2</a>
													</span>
												</div>
											</li>";
									}
								?>
							</ul>
						<!-- END .column6 -->
						</div>
					</div>

				</div>
			</div>
			
			<?php
				$ic = $this->model_utama->view_where_ordering_limit('iklantengah',array('posisi'=>'home'),'id_iklantengah','ASC',2,1)->row_array();
				echo "<a href='$ic[url]' target='_blank'>";
					$string = $ic['gambar'];
					if ($ic['gambar'] != ''){
						if(preg_match("/swf\z/i", $string)) {
							echo "<embed style='margin-top:-10px' src='".base_url()."asset/foto_iklantengah/$ic[gambar]' width='100%' height=90px quality='high' type='application/x-shockwave-flash'>";
						}else{
							echo "<img style='margin-top:-10px; margin-bottom:5px' width='100%' src='".base_url()."asset/foto_iklantengah/$ic[gambar]' title='$ic[judul]' />";
						}
					}
				echo "</a>";
				if (trim($ic['source']) != ''){ echo "$ic[source]"; }
			?>

			<div class="block">
			<?php $ra = $this->model_utama->view_where('kategori',array('sidebar' => 4))->row_array(); ?>
				<div class="block-title" style="background: #2182b4;">
					<a href="<?php echo base_url(); ?>kategori/detail/<?php echo "$ra[kategori_seo]"; ?>" class="right">Semua Artikel dari kategori ini </a>
					<h2>Berita <?php echo "$ra[nama_kategori]"; ?></h2>
				</div>
				<div class="block-content">
					<?php 
						$kategori2 = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $ra['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',0,1);			
						foreach ($kategori2->result_array() as $r1m) {
						$tglr = tgl_indo($r1m['tanggal']);
						$isi_berita = strip_tags($r1m['isi_berita']); 
						$isi = substr($isi_berita,0,190); 
						$isi = substr($isi_berita,0,strrpos($isi," "));
						$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r1m['id_berita']))->num_rows();
							echo "<div class='wide-article'>
								<div class='article-photo hidden-xs'>";
									if ($r1m['gambar'] ==''){
										echo "<a class='hover-effect' href='".base_url()."$r1m[judul_seo]'><img style='width:160px;' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='' /></a>";
									}else{
										echo "<a class='hover-effect' href='".base_url()."$r1m[judul_seo]'><img style='width:160px;' src='".base_url()."asset/foto_berita/$r1m[gambar]' alt='' /></a>";
									}
							echo "</div>
								<div class='article-photo visible-xs'>";
															if ($r1m['gambar'] ==''){
																echo "<a class='hover-effect' href='".base_url()."$r1m[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
															}else{
																echo "<a class='hover-effect' href='".base_url()."$r1m[judul_seo].html'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r1m[gambar]' alt='$r1m[gambar]' /></a>";
															}
													echo "</div>
							
								<div class='article-content'>
									<h2 class='hidden-xs'><a href='".base_url()."$r1m[judul_seo]'>$r1m[judul]</a></h2>
									<h4 class='visible-xs'><a href='".base_url()."$r1m[judul_seo]'>$r1m[judul]</a></h4>
									<span class='meta'>
										<a href='".base_url()."$r1m[judul_seo]'><span class='icon-text'>&#128340;</span>$r1m[jam], $tglr<span class='hidden-xs'> - Oleh : $r1[nama_lengkap]</span></a>
									</span>
									<p>$isi . . .</p>
								</div>
							</div>";
					}
					
					?>

					<div class="paragraph-row">
						<!-- BEGIN .column6 -->
						<div class="column6">
							<ul class="article-block">
								<?php 
									$kategori2a = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $ra['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',1,3);			
									foreach ($kategori2a->result_array() as $r2) {
									$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2['id_berita']))->num_rows();
									$tglr2 = tgl_indo($r2['tanggal']);
									echo "<li>
											<div class='article-photo'>";
												if ($r2['gambar'] ==''){
													echo "<a class='hover-effect' href='".base_url()."$r2[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
												}else{
													echo "<a class='hover-effect' href='".base_url()."$r2[judul_seo].html'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r2[gambar]' alt='$r2[gambar]' /></a>";
												}
										echo "</div>
											<div class='article-content'>
												<h4><a href='".base_url()."$r2[judul_seo]'>$r2[judul]</a></h4>
												<span class='meta'>
													<a href='".base_url()."$r2[judul_seo]'><span class='icon-text'>&#128340;</span>$r2[jam], $tglr2</a>
												</span>
											</div>
										</li>";
									}
								?>
							</ul>
						<!-- END .column6 -->
						</div>
						
						<!-- BEGIN .column6 -->
						<div class="column6">
							<ul class="article-block">
								<?php 
									$kategori2b = $this->model_utama->view_join_two('berita','users','kategori','username','id_kategori',array('berita.id_kategori' => $ra['id_kategori'],'berita.status' => 'Y'),'id_berita','DESC',4,3);			
									foreach ($kategori2b->result_array() as $r2x) {
									$total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r2x['id_berita']))->num_rows();
									$tglr2 = tgl_indo($r2x['tanggal']);
									echo "<li>
											<div class='article-photo'>";
												if ($r2x['gambar'] ==''){
													echo "<a class='hover-effect' href='".base_url()."$r2x[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
												}else{
													echo "<a class='hover-effect' href='".base_url()."$r2x[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r2x[gambar]' alt='$r2x[gambar]' /></a>";
												}
										echo "</div>
											<div class='article-content'>
												<h4><a href='".base_url()."$r2x[judul_seo]'>$r2x[judul]</a></h4>
												<span class='meta'>
													<a href='".base_url()."$r2x[judul_seo]'><span class='icon-text'>&#128340;</span>$r2x[jam], $tglr2</a>
												</span>
											</div>
										</li>";
									}
								?>
							</ul>
						<!-- END .column6 -->
						</div>
					</div>

				</div>
			</div>
			
		</div>				
		<div class="content-block left hidden-xs">
			<?php include "sidebar_kiri_bawah.php"; ?>
		</div>
	</div>
</div>
<div class="main-sidebar right hidden-xs">
	<?php include "sidebar_kanan_bawah.php"; ?>
</div>