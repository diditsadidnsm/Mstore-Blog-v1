					<div class="main-content">
						<div class="main-page left">
							<div class="double-block">
								<div class="content-block main left">
									<div class="block">
										<div class="block-title">
											<a href="<?php echo base_url(); ?>" class="right">Back to homepage</a>
											<h2><?php echo $title; ?></h2>
										</div>
										<div class="block-content">
											<ul class="article-block">
											<?php
											  foreach ($berita->result_array() as $r) {	
												  $baca = $r['dibaca']+1;	
												  $isi_berita =(strip_tags($r['isi_berita'])); 
												  $isi = substr($isi_berita,0,220); 
												  $isi = substr($isi_berita,0,strrpos($isi," ")); 
												  $judul = $r['judul']; 
												  $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r['id_berita']))->num_rows();
												  
												  echo "<li>
														<div style='height:120px; background:#e3e3e3; overflow:hidden; margin-right:10px' class='article-photo hidden-xs'>
															<a href='".base_url()."$r[judul_seo]' class='hover-effect'>";
																if ($r['gambar'] == ''){
																	echo "<img style='width:210px;' src='".base_url()."asset/foto_berita/no-image.jpg' alt='no-image.jpg' /></a>";
																}else{
																	echo "<img style='width:210px;' src='".base_url()."asset/foto_berita/$r[gambar]' alt='$r[gambar]' /></a>";
																}
															echo "</a>
														</div>
														<div class='article-photo visible-xs'>";
															if ($r['gambar'] ==''){
																echo "<a class='hover-effect' href='".base_url()."$r[judul_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
															}else{
																echo "<a class='hover-effect' href='".base_url()."$r[judul_seo].html'><img style='width:59px; height:42px' src='".base_url()."asset/foto_berita/$r[gambar]' alt='$r[gambar]' /></a>";
															}
													echo "</div>

														<div class='article-content'>
															<h2 class='hidden-xs h2-judul'><a title='$r[judul]' href='".base_url()."$r[judul_seo]'>$judul</a></h2>
															<h4 class='visible-xs'><a title='$r[judul]' href='".base_url()."$r[judul_seo]'>$judul</a></h4>
															<span class='meta'>
																<a href='".base_url()."kategori/detail/$r[kategori_seo]'><b>$r[nama_kategori]</b></a>
																<a href='".base_url()."$r[judul_seo]'><span class='icon-text'>&#128340;</span>$r[jam], ".tgl_indo($r['tanggal'])."</a>
															</span>
															<p class='hidden-xs'>$isi . . .</p>
														</div>
													</li>";
											  }
										?>
											</ul>
											<div class="pagination">
												<?php echo $this->pagination->create_links(); ?>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="main-sidebar right">
							<?php include "sidebar_kanan.php"; ?>
						</div>
						<div class="clear-float"></div>
					</div>
