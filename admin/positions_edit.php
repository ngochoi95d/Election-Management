<?php
	include 'includes/session.php';

	if(isset($_POST['edit'])){
		$id = $_POST['id'];
		$description = $_POST['description'];
		$max_vote = $_POST['max_vote'];

		$sql = "UPDATE positions SET description = '$description', max_vote = '$max_vote' WHERE id = '$id'";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Chức vụ đã được cập nhập';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}
	}
	else{
		$_SESSION['error'] = 'Điền vào biểu mẫu chỉnh sửa trước ';
	}

	header('location: positions.php');

?>
