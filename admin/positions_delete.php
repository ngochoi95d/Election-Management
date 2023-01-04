<?php
	include 'includes/session.php';

	if(isset($_POST['delete'])){
		$id = $_POST['id'];
		$sql = "DELETE FROM positions WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Xóa thành công chức vụ';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Chọn mục để xóa trước tiên ';
	}

	header('location: positions.php');

?>
