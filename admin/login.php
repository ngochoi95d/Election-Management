<?php
	session_start();
	include 'includes/conn.php';

	if(isset($_POST['login'])){
		$username = $_POST['username'];
		$password = $_POST['password'];

		$sql = "SELECT * FROM admin WHERE username = '$username'";
		$query = $conn->query($sql);

		if($query->num_rows < 1){
			$_SESSION['error'] = 'Không thể tìm thấy tài khoản với tên người dùng ';
		}
		else{
			$row = $query->fetch_assoc();
			if(password_verify($password, $row['password'])){
				$_SESSION['admin'] = $row['id'];
			}
			else{
				$_SESSION['error'] = 'Mật khẩu không đúng ';
			}
		}

	}
	else{
		$_SESSION['error'] = 'Nhập thông tin đăng nhập quản trị viên trước tiên';
	}

	header('location: index.php');

?>
