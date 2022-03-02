<?php
$sub_menu3 = strtolower($this->uri->segment(3)); ?>
<!-- Main content -->
<div class="content-wrapper">
    <!-- Content area -->
    <div class="content">

        <!-- Dashboard content -->
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="panel panel-flat">

                    <div class="panel-body">

                        <fieldset class="content-group">
                            <legend class="text-bold"><i class="icon-user-plus"></i> Pembagian Pembimbing</legend>
                            <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label class="control-label col-lg-3">Nama Siswa</label>
                                    <div class="col-lg-9">
                                        <select class="form-control cari_kelas" name="siswa" required style="width:100%;">
                                            <option value="">-- Pilih Siswa --</option>
                                            <?php foreach ($siswa->result() as $s) { ?>
                                                <option value="<?php echo $s->nis; ?>"><?php echo $s->nama_lengkap; ?></option>
                                            <?php }; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-lg-3">Nama Pembimbing</label>
                                    <div class="col-lg-9">
                                        <select class="form-control cari_kelas" name="pembimbing" required style="width:100%;">
                                            <option value="">-- Pilih Pembimbing --</option>
                                            <?php foreach ($v_pemb->result() as $pembimbing) { ?>
                                                <option value="<?php echo $pembimbing->kdpemb; ?>"><?php echo $pembimbing->nama_lengkap; ?></option>
                                            <?php }; ?>
                                        </select>
                                    </div>
                                </div>

                                <a href="javascript:history.back()" class="btn btn-default">
                                    << Kembali</a> <button type="submit" name="btnUpdatePembimbing" class="btn btn-primary" style="float:right;">
                                            Simpan</button>
                            </form>
                        </fieldset>


                    </div>

                </div>
            </div>
        </div>
        <!-- /dashboard content -->