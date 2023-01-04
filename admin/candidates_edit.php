<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$position = $_POST['position'];
		$platform = nl2br($_POST['platform'],false);

		$sql = "UPDATE candidates SET firstname = '$firstname', lastname = '$lastname', position_id = '$position', platform = '$platform' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Đã cập nhật ứng viên thành công ';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Điền vào biểu mẫu chỉnh sửa trước ';
	}

	header('location: candidates.php');

?>
