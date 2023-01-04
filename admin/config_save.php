<?php
	include 'includes/session.php';

	$return = 'home.php';
	if(isset($_GET['return'])){
		$return = $_GET['return'];
	}

	if(isset($_POST['save'])){
		$title = $_POST['title'];

		$file = 'config.ini';
		$content = 'election_title = '.$title;

		file_put_contents($file, $content);

		$_SESSION['success'] = 'Đã cập nhật thành công khẩu hiệu & tiêu đề  bầu cử ';

	}
	else{
		$_SESSION['error'] = "Điền vào biểu mẫu cấu hình trước ";
	}

	header('location: '.$return);

?>
