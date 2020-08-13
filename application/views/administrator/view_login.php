<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Users | Log in</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>/asset/admin_mu/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>/asset/admin_mu/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="#"><b>USERS</b> Login</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>
        <?php 
            echo $this->session->flashdata('message');
            echo form_open($this->uri->segment(1).'/index'); 
        ?>
        <div class="input-group mb-3">
          <input type="text" class="form-control" name='a' placeholder="Username" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" name='b' placeholder="Password" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
        <?php echo $image; ?>
        </div>
        <div class="input-group mb-3">
        <input type="text" class="form-control" name='security_code' placeholder="Security Code" required>
        </div>

        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
            <a data-dismiss="modal" aria-hidden="true" data-toggle='modal' href='#lupapass' data-target='#lupapass'>I forgot my password</a>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" name='submit' class="btn btn-primary btn-block">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
      </form>
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="<?php echo base_url(); ?>/asset/admin_mu/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="<?php echo base_url(); ?>/asset/admin_mu/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>/asset/admin_mu/dist/js/adminlte.min.js"></script>

<div class="modal fade" id="lupapass">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Lupa Password?</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <?php 
        $attributes = array('class'=>'form-horizontal');
        echo form_open('administrator/lupapassword',$attributes); 
      ?>
      <div class="modal-body">
      <div class="card-body">
          <div class="form-group row">
              <label class="col-sm-2 col-form-label">E-mail</label>
              <div class="input-group col-sm-10">
                  <input style='text-transform:lowercase;' placeholder='tulis.email.anda@---.---' type="email" class="required form-control" name="email">
              </div>
          </div>

          <div class="form-group row">
              <label class="col-sm-2 col-form-label"></label>
              <div class="input-group col-sm-10">
              <button style='margin-right:5px' type="submit" name='lupa' class="btn btn-primary">Kirimkan</button> 
              <button type="button" class="btn btn-default" data-dismiss="modal">Tutup</button>
              </div>
          </div>
      </div>
      </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>