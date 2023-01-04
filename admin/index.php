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
    	header('location:home.php');
  	}
?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition login-page">
<div class="login-box">
  	<div class="login-logo">
  		<b>QUẢN LÝ BẦU CỬ</b>
  	</div>

  	<div class="login-box-body">
    	<p class="login-box-msg">Đăng nhập để quản lý</p>

    	<form action="login.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="text" class="form-control" name="username" placeholder="Username" required>
        		<span class="glyphicon glyphicon-user form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-4">
          			<button type="submit" class="btn btn-primary  btn-flat " name="login"><i class="fa fa-sign-in"></i> Đăng Nhập</button>
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
<p><center><b>Lưu ý: </b>Chỉ có người quản trị mới có thể đăng nhập. Nếu bạn là cử tri vui lòng bấm vào đây <a href="http://localhost/Voting_Management_System/index.php" target="_blank">Bỏ phiếu bầu cử </a>  <center></p></footer>
</html>
