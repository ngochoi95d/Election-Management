<?php
	include 'includes/session.php';

	if(isset($_POST['add'])){
		$firstname = $_POST['firstname'];
		$lastname = $_POST['lastname'];
		$position = $_POST['position'];
		$platform = nl2br($_POST['platform'], false);
		$filename = $_FILES['photo']['name'];
		if(!empty($filename)){
			move_uploaded_file($_FILES['photo']['tmp_name'], '../images/'.$filename);
		}

		$sql = "INSERT INTO candidates (position_id, firstname, lastname, photo, platform) VALUES ('$position', '$firstname', '$lastname', '$filename', '$platform')";
		if($conn->query($sql)){
			$_SESSION['success'] = 'Ứng viên đã được thêm thành công ';
		}
		else{
			$_SESSION['error'] = $conn->error;
		}

	}
	else{
		$_SESSION['error'] = 'Điền vào biểu mẫu trước ';
	}

	header('location: candidates.php');
?>
