<html>
    <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
    <link rel="manifest" href="/site.webmanifest">
    <link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
<footer>
<p><center><b>CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM</b> </p></center>
<p><center><b>Độc lập - Tự do - Hạnh Phúc</b> </p></center>
</div>
</html>
<?php
  	session_start();
  	if(isset($_SESSION['admin'])){
    	header('location: admin/home.php');
  	}

    if(isset($_SESSION['voter'])){
      header('location: home.php');
    }
?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition login-page">
<div class="login-box">
    
  	<div class="login-logo">
  		<b>BỎ PHIẾU BẦU CỬ</b>
  	</div>

  	<div class="login-box-body">
    	<p class="login-box-msg">Đăng nhập để có thể bỏ phiếu</p>

    	<form action="login.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="text" class="form-control" name="voter" placeholder="ID Cử tri" required>
        		<span class="glyphicon glyphicon-user form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Mật Khẩu" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-4">
          			<button type="submit" class="btn btn-primary  btn-flat" name="login"><i class="fa fa-sign-in"></i> Đăng nhập</button>
        		</div>
      		</div>
    	</form>
  	</div>
  	<?php
  		if(isset($_SESSION['error'])){
  			echo "
  				<div class='callout callout-danger text-center mt20'>
			  		<p>".$_SESSION['error']."</p>
			  	</div>
  			";
  			unset($_SESSION['error']);
  		}
  	?>
</div>

<?php include 'includes/scripts.php' ?>
</body>

<footer>
<p><center><b>Lưu ý: </b>Thông qua người quản trị để có thể tạo ID và mật khẩu cử tri mới </p></center>
</div>
</html>
