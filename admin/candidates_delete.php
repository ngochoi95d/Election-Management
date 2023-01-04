<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$id = $_POST['id'];
		$sql = "DELETE FROM candidates WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Đã xóa ứng viên thành công ';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Chọn mục để xóa trước tiên ';
	}

	header('location: candidates.php');

?>
