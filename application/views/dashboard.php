<!DOCTYPE html>
<html lang="en">
<head>
<title>Dashboard page</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="icon" type="image/png" href="<?= base_url() ?>assets/images/logo.png"/>
	
	<link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="<?= base_url() ?>assets/css/main.css">
</head>

<body >
<a class="navbar-brand" href="/">
      <div class="logo-image">
            <img src="<?php echo base_url('assets/images/logo.png'); ?>" class="img-fluid">
      </div>
</a>
	<div class="container">
		<div class="wrap">
            <div class="card">
                <div class="card-body">
                <?php foreach($user as $user){?>
                    <H3>Hai <?php echo $user["nama"];?>, Have a Nice Day</H3>
                    <img src="<?php echo base_url('assets/images/illustration-2.png'); ?>" width="30%" style="float:right;">
                </div>
            </div>
                <h4>Your Current Information</h4>
                    <div class="card">
                        <div class="card-body">
                            Username : <span><?php echo $user["username"];?></span><br>
                            Nama : <span><?php echo $user["nama"];?></span><br>
                            Address : <span><?php echo $user["alamat"];?></span><br>
                        </div>
                        <?php }?>
                    </div>
            </div>  
        </div>
    </div>
    <!-- /# row -->
    <script src="<?= base_url() ?>assets/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="<?= base_url() ?>assets/vendor/animsition/js/animsition.min.js"></script>
	<script src="<?= base_url() ?>assets/vendor/bootstrap/js/popper.js"></script>
	<script src="<?= base_url() ?>assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="<?= base_url() ?>assets/vendor/select2/select2.min.js"></script>
	<script src="<?= base_url() ?>assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="<?= base_url() ?>assets/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="<?= base_url() ?>assets/vendor/countdowntime/countdowntime.js"></script>
	<script src="<?= base_url() ?>assets/js/main.js"></script>
</body>
</html>