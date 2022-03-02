<?php
$ceks = $this->session->userdata('prakrin_smk@Proyek-2017'); ?>
<!-- Page content of course! -->
<main class="row" id="content" role="main" style="margin-left:-10px;margin-right:-10px;margin-top:-5px;">
 <div class="container">
	 <center>
		 <img src="foto/lp.jpg" alt="Logo" class="img-responsive" height="100" width="200">
	 </center>
	 <div>
	 	<br>
	 <p class="lead">
		   Selamat datang di Sistem Informasi Prakerin SMK Ma'arif 1 Ajibarang Berbasis Web. Sistem informasi yang digunakan untuk mengelola praktik kerja industri mulai dari persiapan, pelaksana dan evaluasi
	 </p>
	</div>
	 <p class="lead">
		 <?php
		 if ($ceks) {?>
		 	<!-- <a href="web/logout" class="btn btn-outline-inverse btn-lg">Keluar</a> -->
			<br>
		<?php
		 }else{ ?>
			 <a href="web/login" class="btn btn-primary btn-lg">Masuk</a>
		<?php
		 } ?>
	 </p>
	 <!-- <?php
	 if (!$ceks) {?>
	 <p class="version">v1.0</p>
	 <?php
 	 } ?> -->
 </div>
</main>
