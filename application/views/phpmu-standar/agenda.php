					<div class="main-content">
						<div class="main-page left">
							<div class="double-block">
								<div class="content-block main left">
									<div class="block">
										<div class="block-title">
											<a href="<?php echo base_url(); ?>" class="right">Back to homepage</a>											
											<h2>Agenda</h2>	
										</div>
										<div class="block-content">
										<ul class="article-block">
											<?php
											  foreach ($agenda->result_array() as $r) {	
												  $tgl_posting = tgl_indo($r['tgl_posting']);
												  $tgl_mulai   = tgl_indo($r['tgl_mulai']);
												  $tgl_selesai = tgl_indo($r['tgl_selesai']);
												  $baca = $r['dibaca']+1;
												  $judull = substr($r['tema'],0,33); 
												  $isi_agenda =(strip_tags($r['isi_agenda'])); 
												  $isi = substr($isi_agenda,0,280); 
												  $isi = substr($isi_agenda,0,strrpos($isi," "));
												  echo "<li>
														<div style='height:120px; background:#e3e3e3; overflow:hidden; margin-right:10px' class='article-photo hidden-xs'>
															<a href='".base_url()."$r[judul_seo]' class='hover-effect'>";
															if ($r['gambar']==''){
																echo "<img width='210px' src='".base_url()."asset/foto_agenda/small_no-image.jpg'>";
															}else{
																echo "<img width='210px' src='".base_url()."asset/foto_agenda/$r[gambar]'>";
															}	
															echo "</a>
														</div>
														<div class='article-photo visible-xs'>";
															if ($r['gambar'] ==''){
																echo "<a class='hover-effect' href='".base_url()."agenda/detail/$r[tema_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_agenda/small_no-image.jpg' alt='small_no-image.jpg' /></a>";
															}else{
																echo "<a class='hover-effect' href='".base_url()."agenda/detail/$r[tema_seo]'><img style='width:59px; height:42px' src='".base_url()."asset/foto_agenda/$r[gambar]' alt='$r[gambar]' /></a>";
															}
													echo "</div>

														<div class='article-content'>
															<h2 class='hidden-xs h2-judul'><a title='$r[judul]' href='".base_url()."agenda/detail/$r[tema_seo]'>$judull</a></h2>
															<h4 class='visible-xs'><a title='$r[judul]' href='".base_url()."agenda/detail/$r[tema_seo]'><b>$judull</b></a></h4>
															<span class='meta'>
																<a href='".base_url()."agenda/detail/$r[tema_seo]'><span class='icon-text'>&#128340;</span>$tgl_posting - $baca view</a>
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
				<!-- END .wrapper -->